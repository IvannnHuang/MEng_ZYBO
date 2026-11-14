// usbmouse.c -- bare-metal USB host driver for one HID mouse on the Zynq-7000 PS USB0
// controller (ChipIdea core, EHCI-compatible host registers) behind the Zybo Z7's
// USB3320 ULPI PHY. Xilinx's xusbps driver is device-mode only, so this builds the EHCI
// async (control) and periodic (interrupt) schedules by hand. Polled, no IRQs, one device
// plugged straight into the board's host port (no hubs).
//
// qTD/QH bit layouts follow the EHCI 1.0 spec tables and Linux drivers/usb/host/ehci.h.
#include "xil_io.h"
#include "xil_mmu.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xgpiops.h"
#include "xtime_l.h"
#include "usbmouse.h"

// ------------------------------------------------------------------ controller registers
#define USB_BASE         XPAR_PS7_USB_0_BASEADDR
#define R_USBCMD         0x140
#define R_USBSTS         0x144
#define R_PERIODICBASE   0x154
#define R_ASYNCADDR      0x158
#define R_TTCTRL         0x15C
#define R_ULPIVIEW       0x170
#define R_PORTSC1        0x184
#define R_USBMODE        0x1A8

#define CMD_RS           (1u << 0)
#define CMD_RST          (1u << 1)
#define CMD_PSE          (1u << 4)
#define CMD_ASE          (1u << 5)

#define PORTSC_CCS       (1u << 0)
#define PORTSC_CSC       (1u << 1)
#define PORTSC_PE        (1u << 2)
#define PORTSC_PEC       (1u << 3)
#define PORTSC_OCC       (1u << 5)
#define PORTSC_PR        (1u << 8)
#define PORTSC_PP        (1u << 12)
#define PORTSC_W1C       (PORTSC_CSC | PORTSC_PEC | PORTSC_OCC)
#define PORTSC_SPEED(p)  (((p) >> 26) & 0x3)          // same encoding as the QH EPS field

#define USBMODE_HOST     0x3

#define ULPI_WU          (1u << 31)
#define ULPI_RUN         (1u << 30)
#define ULPI_RW          (1u << 29)
#define ULPI_OTG_CTRL_SET 0x0B                         // write-1-to-set alias of OTG Control
#define ULPI_OTG_HOSTBITS ((1u << 1) | (1u << 2) | (1u << 5) | (1u << 6)) // D+/D- pulldowns, DrvVbus(+Ext)

#define USB0_PHY_RESET_MIO 46                          // PCW_USB0_RESET_IO, active-low USB3320 reset

#define SPEED_FULL       0
#define SPEED_LOW        1
#define SPEED_HIGH       2
#define DEV_ADDR         1

// ------------------------------------------------------------------ EHCI descriptors
typedef struct { u32 next, alt, token, buf[5]; } Qtd;           // 32 bytes
typedef struct { u32 link, info1, info2, cur; Qtd ov; } Qh;     // 48 bytes, ov = transfer overlay

#define LINK_TERM        1u
#define LINK_QH          0x2u

#define QTD_TOGGLE       (1u << 31)
#define QTD_IOC          (1u << 15)
#define QTD_CERR3        (3u << 10)
#define QTD_ACTIVE       (1u << 7)
#define QTD_ERRS         0x7Cu                         // halted | buffer err | babble | xact err | missed uframe
#define PID_OUT          0u
#define PID_IN           1u
#define PID_SETUP        2u

#define QH_INFO1(addr, ep, speed, mps, dtc, head, ctrl) \
    (((addr) & 0x7Fu) | (((ep) & 0xFu) << 8) | (((speed) & 0x3u) << 12) | ((dtc) ? (1u << 14) : 0u) \
     | ((head) ? (1u << 15) : 0u) | (((mps) & 0x7FFu) << 16) | ((ctrl) ? (1u << 27) : 0u))
// Split-transaction routing for FS/LS devices through the controller's built-in TT: hub address
// 0 (matches TTCTRL), port number = root port 1 -- same as Linux ehci qh_make() for TDI/ChipIdea
// "integrated root hub TT". Mult = 1.
#define QH_INFO2(smask, cmask) \
    (((smask) & 0xFFu) | (((cmask) & 0xFFu) << 8) | (0u << 16) | (1u << 23) | (1u << 30))

// Everything the controller DMAs lives in one 1 MB section mapped non-cacheable, so the
// CPU and the controller always see the same bytes without cache maintenance.
typedef struct {
    u32 frame_list[1024];                              // 4 KB aligned (offset 0 of the section)
    Qh  qh_ctrl  __attribute__((aligned(64)));
    Qh  qh_int   __attribute__((aligned(64)));
    Qtd qtd_ctrl __attribute__((aligned(32)));
    Qtd qtd_int  __attribute__((aligned(32)));
    u8  setup[8] __attribute__((aligned(32)));
    u8  data[256] __attribute__((aligned(32)));
    u8  report[64] __attribute__((aligned(32)));
} UsbDma;                                              // < 8 KB, so no buffer crosses a 4 KB page

static union { UsbDma d; u8 section[0x100000]; } dma_mem __attribute__((aligned(0x100000)));
#define DMA ((volatile UsbDma *)&dma_mem.d)

#define GET_DESCRIPTOR    0x06
#define SET_ADDRESS       0x05
#define SET_CONFIGURATION 0x09
#define HID_SET_IDLE      0x0A
#define HID_SET_PROTOCOL  0x0B
#define DESC_DEVICE       1
#define DESC_CONFIG       2
#define DESC_INTERFACE    4
#define DESC_ENDPOINT     5

static int ready = 0, armed = 0;
static u32 int_len;

// ------------------------------------------------------------------ helpers
static inline void wr32(u32 off, u32 v) { Xil_Out32(USB_BASE + off, v); }
static inline u32  rd32(u32 off)        { return Xil_In32(USB_BASE + off); }
static inline void usb_dsb(void)        { __asm__ __volatile__("dsb" ::: "memory"); }
static inline u32  phys(volatile void *p) { return (u32)(UINTPTR)p; }

static double now_ms(void)
{
    XTime t;
    XTime_GetTime(&t);
    return (double)t * 1000.0 / COUNTS_PER_SECOND;
}

static void delay_ms(u32 ms)
{
    double t0 = now_ms();
    while (now_ms() - t0 < ms) { }
}

static int wait_reg(u32 off, u32 mask, u32 want, u32 timeout_ms)
{
    double t0 = now_ms();
    while ((rd32(off) & mask) != want)
        if (now_ms() - t0 > timeout_ms) return -1;
    return 0;
}

// Read-modify-write PORTSC without accidentally acking the write-1-to-clear change bits.
static void portsc_update(u32 set, u32 clr)
{
    wr32(R_PORTSC1, ((rd32(R_PORTSC1) & ~PORTSC_W1C) & ~clr) | set);
}

static int ulpi_write(u8 addr, u8 val)
{
    wr32(R_ULPIVIEW, ULPI_WU);
    if (wait_reg(R_ULPIVIEW, ULPI_WU, 0, 10)) return -1;
    wr32(R_ULPIVIEW, ULPI_RUN | ULPI_RW | ((u32)addr << 16) | val);
    return wait_reg(R_ULPIVIEW, ULPI_RUN, 0, 10);
}

static void phy_reset(void)
{
    XGpioPs gpio;
    XGpioPs_Config *cfg = XGpioPs_LookupConfig(XPAR_XGPIOPS_0_DEVICE_ID);

    if (!cfg || XGpioPs_CfgInitialize(&gpio, cfg, cfg->BaseAddr) != XST_SUCCESS) return;
    XGpioPs_SetDirectionPin(&gpio, USB0_PHY_RESET_MIO, 1);
    XGpioPs_SetOutputEnablePin(&gpio, USB0_PHY_RESET_MIO, 1);
    XGpioPs_WritePin(&gpio, USB0_PHY_RESET_MIO, 0);
    delay_ms(2);
    XGpioPs_WritePin(&gpio, USB0_PHY_RESET_MIO, 1);
    delay_ms(10);
}

// Queue one qTD behind an idle QH. The controller picks it up the next time it visits the QH.
static void qtd_start(volatile Qh *qh, volatile Qtd *q, u32 pid, volatile void *buf, u32 len, int toggle)
{
    int i;

    q->next = LINK_TERM;
    q->alt  = LINK_TERM;
    q->buf[0] = phys(buf);
    for (i = 1; i < 5; i++) q->buf[i] = 0;
    q->token = (toggle ? QTD_TOGGLE : 0) | (len << 16) | QTD_IOC | QTD_CERR3 | (pid << 8) | QTD_ACTIVE;
    usb_dsb();
    qh->ov.alt   = LINK_TERM;
    qh->ov.token &= QTD_TOGGLE;                        // clear Halted from any earlier error, keep the toggle
    usb_dsb();
    qh->ov.next  = phys(q);
    usb_dsb();
}

// Returns bytes actually transferred, or -1 on error/timeout.
static int qtd_wait(volatile Qtd *q, u32 len, u32 timeout_ms)
{
    double t0 = now_ms();
    u32 tok;

    while ((tok = q->token) & QTD_ACTIVE)
        if (now_ms() - t0 > timeout_ms) return -1;
    if (tok & QTD_ERRS) return -1;
    return (int)(len - ((tok >> 16) & 0x7FFF));
}

// Status bits: 0x80 active (never finished), 0x40 halted, 0x20 buffer err, 0x10 babble,
// 0x08 xact err (no/garbled reply), 0x04 missed uframe. USBSTS bit4 = host system (DMA) error.
static int ctrl_fail(u8 bReq, const char *stage)
{
    volatile UsbDma *d = DMA;
    xil_printf("usb:   req 0x%02x %s stage failed: qTD tok=0x%08x  QH ov tok=0x%08x cur=0x%08x\r\n",
               bReq, stage, d->qtd_ctrl.token, d->qh_ctrl.ov.token, d->qh_ctrl.cur);
    xil_printf("usb:   USBSTS=0x%08x USBCMD=0x%08x PORTSC=0x%08x\r\n",
               rd32(R_USBSTS), rd32(R_USBCMD), rd32(R_PORTSC1));
    return -1;
}

// Setup / optional data / status. Data (if any) goes through DMA->data. Returns data bytes moved or -1.
static int control(u8 bmReq, u8 bReq, u16 wVal, u16 wIdx, u16 wLen)
{
    volatile UsbDma *d = DMA;
    int in = bmReq & 0x80, n = 0;

    if (wLen > sizeof(d->data)) wLen = sizeof(d->data);
    d->setup[0] = bmReq;             d->setup[1] = bReq;
    d->setup[2] = wVal & 0xFF;       d->setup[3] = wVal >> 8;
    d->setup[4] = wIdx & 0xFF;       d->setup[5] = wIdx >> 8;
    d->setup[6] = wLen & 0xFF;       d->setup[7] = wLen >> 8;

    qtd_start(&d->qh_ctrl, &d->qtd_ctrl, PID_SETUP, d->setup, 8, 0);
    if (qtd_wait(&d->qtd_ctrl, 8, 500) < 0) return ctrl_fail(bReq, "setup");

    if (wLen) {
        qtd_start(&d->qh_ctrl, &d->qtd_ctrl, in ? PID_IN : PID_OUT, d->data, wLen, 1);
        if ((n = qtd_wait(&d->qtd_ctrl, wLen, 500)) < 0) return ctrl_fail(bReq, "data");
    }

    // Status stage runs opposite to the data stage, and is IN when there is no data stage.
    qtd_start(&d->qh_ctrl, &d->qtd_ctrl, (wLen && in) ? PID_OUT : PID_IN, d->data, 0, 1);
    if (qtd_wait(&d->qtd_ctrl, 0, 500) < 0) return ctrl_fail(bReq, "status");
    return n;
}

static int fail(const char *why)
{
    xil_printf("usb: %s\r\n", why);
    return -1;
}

// ------------------------------------------------------------------ public API
int UsbMouseInit(void)
{
    static int mapped = 0;
    volatile UsbDma *d = DMA;
    volatile u32 *w = (volatile u32 *)d;
    u32 i, portsc, speed, total, pos, mps0, int_mps = 0;
    u8 cfg, int_ep = 0, int_if = 0, cur_if = 0, cur_class = 0, cur_proto = 0;
    int n, found = 0, found_mouse = 0;

    ready = 0;
    armed = 0;
    if (!mapped) {
        Xil_SetTlbAttributes((INTPTR)&dma_mem, NORM_NONCACHE);   // also flushes the D-cache
        mapped = 1;
    }
    for (i = 0; i < sizeof(UsbDma) / 4; i++) w[i] = 0;

    // PHY, controller reset, host mode, VBUS on.
    phy_reset();
    wr32(R_USBCMD, CMD_RST);
    if (wait_reg(R_USBCMD, CMD_RST, 0, 500)) return fail("controller reset timed out");
    wr32(R_USBMODE, USBMODE_HOST);
    if (ulpi_write(ULPI_OTG_CTRL_SET, ULPI_OTG_HOSTBITS))
        xil_printf("usb: warning: ULPI write (VBUS on) timed out -- is the PHY out of reset?\r\n");
    wr32(R_TTCTRL, 0);                                 // embedded TT hub address 0, matches QH_INFO2

    // Schedules: one self-linked control QH on the async list; periodic list empty for now.
    d->qh_ctrl.link   = phys(&d->qh_ctrl) | LINK_QH;
    d->qh_ctrl.info1  = QH_INFO1(0, 0, SPEED_FULL, 8, 1, 1, 1);
    d->qh_ctrl.info2  = QH_INFO2(0, 0);
    d->qh_ctrl.ov.next = LINK_TERM;
    d->qh_ctrl.ov.alt  = LINK_TERM;
    for (i = 0; i < 1024; i++) d->frame_list[i] = LINK_TERM;
    usb_dsb();
    wr32(R_ASYNCADDR, phys(&d->qh_ctrl));
    wr32(R_PERIODICBASE, phys(d->frame_list));
    wr32(R_USBCMD, rd32(R_USBCMD) | CMD_RS | CMD_ASE);

    // Port power, wait for attach, reset.
    portsc_update(PORTSC_PP, 0);
    xil_printf("usb: looking for a device on the USB host port...\r\n");
    if (wait_reg(R_PORTSC1, PORTSC_CCS, PORTSC_CCS, 3000))
        return fail("nothing connected (mouse plugged in? board USB host power jumper set?)");
    delay_ms(100);                                     // attach debounce

    portsc_update(PORTSC_PR, PORTSC_PE);               // EHCI: write PE=0 together with PR=1
    delay_ms(60);
    if (rd32(R_PORTSC1) & PORTSC_PR)                   // ChipIdea ends reset itself; plain EHCI needs this
        portsc_update(0, PORTSC_PR);
    if (wait_reg(R_PORTSC1, PORTSC_PR, 0, 100)) return fail("port reset did not finish");
    delay_ms(20);                                      // reset recovery

    portsc = rd32(R_PORTSC1);
    speed  = PORTSC_SPEED(portsc);
    xil_printf("usb: PORTSC=0x%08x (%s speed)\r\n", portsc,
               speed == SPEED_LOW ? "low" : speed == SPEED_HIGH ? "high" : "full");
    if (!(portsc & PORTSC_PE)) return fail("port not enabled after reset");

    // Enumerate.
    d->qh_ctrl.info1 = QH_INFO1(0, 0, speed, 8, 1, 1, speed != SPEED_HIGH);
    for (i = 0; i < 3; i++) {
        if (control(0x80, GET_DESCRIPTOR, DESC_DEVICE << 8, 0, 8) == 8) break;
        delay_ms(50);
    }
    if (i == 3) return fail("GET_DESCRIPTOR(device) failed 3 times");
    mps0 = d->data[7] ? d->data[7] : 8;
    d->qh_ctrl.info1 = QH_INFO1(0, 0, speed, mps0, 1, 1, speed != SPEED_HIGH);

    if (control(0x00, SET_ADDRESS, DEV_ADDR, 0, 0) < 0) return fail("SET_ADDRESS failed");
    delay_ms(10);
    d->qh_ctrl.info1 = QH_INFO1(DEV_ADDR, 0, speed, mps0, 1, 1, speed != SPEED_HIGH);

    if (control(0x80, GET_DESCRIPTOR, DESC_DEVICE << 8, 0, 18) < 18) return fail("GET_DESCRIPTOR(device, 18) failed");
    xil_printf("usb: device %04x:%04x\r\n", d->data[8] | (d->data[9] << 8), d->data[10] | (d->data[11] << 8));

    if (control(0x80, GET_DESCRIPTOR, DESC_CONFIG << 8, 0, 9) < 9) return fail("GET_DESCRIPTOR(config) failed");
    total = d->data[2] | (d->data[3] << 8);
    if ((n = control(0x80, GET_DESCRIPTOR, DESC_CONFIG << 8, 0, total)) < 9) return fail("GET_DESCRIPTOR(config, full) failed");
    total = n;
    cfg = d->data[5];

    // Find a HID interrupt-IN endpoint, preferring an interface that says it is a mouse
    // (wireless receivers often put a keyboard interface first).
    for (pos = 0; pos + 2 <= total; pos += d->data[pos]) {
        u8 len = d->data[pos], type = d->data[pos + 1];
        if (len < 2 || pos + len > total) break;
        if (type == DESC_INTERFACE && len >= 9) {
            cur_if = d->data[pos + 2];
            cur_class = d->data[pos + 5];
            cur_proto = d->data[pos + 7];
        } else if (type == DESC_ENDPOINT && len >= 7 && cur_class == 3) {
            u8 ea = d->data[pos + 2], attr = d->data[pos + 3];
            int is_mouse = (cur_proto == 2);
            if ((ea & 0x80) && (attr & 0x3) == 3 && (!found || (is_mouse && !found_mouse))) {
                int_ep  = ea & 0x0F;
                int_mps = (d->data[pos + 4] | (d->data[pos + 5] << 8)) & 0x7FF;
                int_if  = cur_if;
                found = 1;
                found_mouse = is_mouse;
            }
        }
    }
    if (!found) return fail("no HID interrupt-IN endpoint -- not a mouse?");
    if (!found_mouse) xil_printf("usb: warning: HID device does not report itself as a mouse\r\n");

    if (control(0x00, SET_CONFIGURATION, cfg, 0, 0) < 0) return fail("SET_CONFIGURATION failed");
    if (control(0x21, HID_SET_PROTOCOL, 0, int_if, 0) < 0)            // 0 = boot protocol
        xil_printf("usb: warning: SET_PROTOCOL(boot) refused; reports may not be in boot format\r\n");
    control(0x21, HID_SET_IDLE, 0, int_if, 0);                          // report only on change; optional

    // Interrupt endpoint: one QH on every frame-list slot -> polled once per 1 ms frame.
    // FS/LS devices go through the embedded TT: start-split in uframe 0, complete-splits in 2..4.
    int_len = int_mps && int_mps < sizeof(d->report) ? int_mps : sizeof(d->report);
    d->qh_int.link   = LINK_TERM;
    d->qh_int.info1  = QH_INFO1(DEV_ADDR, int_ep, speed, int_mps, 0, 0, 0);
    d->qh_int.info2  = QH_INFO2(0x01, speed == SPEED_HIGH ? 0x00 : 0x1C);
    d->qh_int.ov.next = LINK_TERM;
    d->qh_int.ov.alt  = LINK_TERM;
    d->qh_int.ov.token = 0;                            // DATA0 after SET_CONFIGURATION
    for (i = 0; i < 1024; i++) d->frame_list[i] = phys(&d->qh_int) | LINK_QH;
    usb_dsb();
    wr32(R_USBCMD, rd32(R_USBCMD) | CMD_PSE);

    qtd_start(&d->qh_int, &d->qtd_int, PID_IN, d->report, int_len, 0);
    armed = 1;
    ready = 1;
    xil_printf("usb: mouse ready (interface %u, ep %u, %u-byte reports)\r\n",
               (unsigned)int_if, (unsigned)int_ep, (unsigned)int_len);
    return 0;
}

int UsbMousePoll(s8 *dx, s8 *dy, u8 *buttons)
{
    volatile UsbDma *d = DMA;
    int got = 0;

    if (!ready) return 0;
    if (armed) {
        u32 tok = d->qtd_int.token;
        int n;
        if (tok & QTD_ACTIVE) return 0;                // mouse hasn't sent anything new yet
        n = (int)int_len - (int)((tok >> 16) & 0x7FFF);
        if (!(tok & QTD_ERRS) && n >= 3) {             // boot report: buttons, dx, dy[, wheel]
            *buttons = d->report[0] & 0x07;
            *dx = (s8)d->report[1];
            *dy = (s8)d->report[2];
            got = 1;
        }
    }
    qtd_start(&d->qh_int, &d->qtd_int, PID_IN, d->report, int_len, 0);
    armed = 1;
    return got;
}
