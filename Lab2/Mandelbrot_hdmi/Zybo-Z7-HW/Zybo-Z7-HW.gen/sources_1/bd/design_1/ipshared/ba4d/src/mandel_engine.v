// mandel_engine.v -- renders one frame into DDR: dispenser -> NSOLV solvers -> row buffer -> AXI burst writer
// Frame layout: 24-bit packed pixels, bytes [R, B, G], stride FW*3; fb_addr must be 128-byte aligned.
`timescale 1ns/1ps

module mandel_engine #(
    parameter NSOLV  = 8,       // solvers built
    parameter W      = 27,      // number width (Q4.23)
    parameter F      = 23,      // fractional bits
    parameter IW     = 16,      // iteration counter width
    parameter XW     = 11,      // x width (FW <= 2^XW)
    parameter YW     = 11,      // y width (FH <  2^YW)
    parameter FW     = 1920,    // frame width, multiple of 128
    parameter FH     = 1080,    // frame height
    parameter RB     = 3,       // row buffer holds 2^RB rows
    parameter ML     = 2,       // solver multiplier register levels
    parameter AXI_AW = 32,      // AXI address width
    parameter AXI_DW = 64       // AXI data width (packing below assumes 64)
)(
    input  wire                 clk,
    input  wire                 rst,          // AXI reset or soft reset
    input  wire                 start,        // 1-clock pulse, ignored while busy
    input  wire        [31:0]   fb_addr,
    input  wire signed [W-1:0]  cr_left,
    input  wire signed [W-1:0]  ci_top,
    input  wire signed [W-1:0]  step,
    input  wire        [IW-1:0] max_iter,
    input  wire        [7:0]    n_active,
    output wire                 busy,
    output wire                 done,         // held until next start
    output wire        [31:0]   cycles,       // clocks from start to done

    output wire [AXI_AW-1:0]    m_awaddr,     // AXI4 write address
    output wire [7:0]           m_awlen,
    output wire [2:0]           m_awsize,
    output wire [1:0]           m_awburst,
    output wire                 m_awvalid,
    input  wire                 m_awready,
    output wire [AXI_DW-1:0]    m_wdata,      // AXI4 write data
    output wire [AXI_DW/8-1:0]  m_wstrb,
    output wire                 m_wlast,
    output wire                 m_wvalid,
    input  wire                 m_wready,
    input  wire [1:0]           m_bresp,      // AXI4 write response (not checked)
    input  wire                 m_bvalid,
    output wire                 m_bready
);

    localparam ROWS   = 1 << RB;              // rows in the buffer
    localparam BPR    = FW * 3 / 128;         // 128-byte bursts per row (45 at 1920)
    localparam TOTALB = BPR * FH;             // bursts per frame (48600 at 1080p)
    localparam [7:0] NS8 = NSOLV;

    // ================================================================ control
    reg                 busy_r, done_r;
    reg        [31:0]   cycles_r;
    reg        [31:0]   fb_r;
    reg signed [W-1:0]  cl_r, step_r;         // cr_left and step, latched at start
    reg        [IW-1:0] max_r;
    reg        [7:0]    nact_r;               // solvers in use, 1..NSOLV
    reg        [15:0]   b_cnt;                // write responses received

    wire frame_start = start & ~busy_r;
    wire clr         = rst | frame_start;     // clears all per-frame state

    always @(posedge clk) begin
        if (rst) begin
            busy_r   <= 1'b0;
            done_r   <= 1'b0;
            cycles_r <= 32'd0;
        end else if (frame_start) begin
            busy_r   <= 1'b1;
            done_r   <= 1'b0;
            cycles_r <= 32'd0;
            fb_r     <= fb_addr;
            cl_r     <= cr_left;
            step_r   <= step;
            max_r    <= max_iter;
            nact_r   <= (n_active == 8'd0) ? 8'd1 : (n_active > NS8) ? NS8 : n_active;
        end else if (busy_r) begin
            cycles_r <= cycles_r + 1;
            if (b_cnt == TOTALB) begin        // last burst acknowledged by DDR
                busy_r <= 1'b0;
                done_r <= 1'b1;
            end
        end
    end

    assign busy   = busy_r;
    assign done   = done_r;
    assign cycles = cycles_r;

    // ============================================================== dispenser
    // Next pixel in raster order goes to the lowest-numbered free solver; c is built by adding step.
    // Stops when it would get more than ROWS rows ahead of the row being written out.
    reg        [XW-1:0] disp_x;
    reg        [YW-1:0] disp_y;
    reg signed [W-1:0]  cr_cur, ci_cur;
    reg        [YW-1:0] rd_row;               // oldest row not yet written out (from writer)

    wire [NSOLV-1:0] s_in_ready;
    reg              found;
    reg        [7:0] sel;
    integer          i;
    always @(*) begin
        found = 1'b0;
        sel   = 8'd0;
        for (i = 0; i < NSOLV; i = i + 1)
            if (!found && s_in_ready[i] && (i < nact_r)) begin
                found = 1'b1;
                sel   = i;
            end
    end

    wire disp_active = busy_r && (disp_y < FH) && ({1'b0, disp_y} < {1'b0, rd_row} + ROWS);
    wire disp_fire   = disp_active && found;
    wire [NSOLV-1:0] s_in_valid = disp_fire ? ({{(NSOLV-1){1'b0}}, 1'b1} << sel) : {NSOLV{1'b0}};

    always @(posedge clk) begin
        if (clr) begin
            disp_x <= {XW{1'b0}};
            disp_y <= {YW{1'b0}};
            cr_cur <= cr_left;
            ci_cur <= ci_top;
        end else if (disp_fire) begin
            if (disp_x == FW-1) begin         // next row
                disp_x <= {XW{1'b0}};
                disp_y <= disp_y + 1'b1;
                cr_cur <= cl_r;
                ci_cur <= ci_cur - step_r;
            end else begin
                disp_x <= disp_x + 1'b1;
                cr_cur <= cr_cur + step_r;
            end
        end
    end

    // ================================================================ solvers
    wire [NSOLV-1:0]    s_out_valid;
    wire [NSOLV-1:0]    s_out_ready;
    wire [NSOLV*XW-1:0] s_out_x;
    wire [NSOLV*YW-1:0] s_out_y;
    wire [NSOLV*IW-1:0] s_out_cnt;

    genvar g;
    generate
        for (g = 0; g < NSOLV; g = g + 1) begin : SOLV
            mandel_solver #(.W(W), .F(F), .IW(IW), .XW(XW), .YW(YW), .ML(ML)) u_solver (
                .clk       (clk),
                .rst       (rst),
                .max_iter  (max_r),
                .in_valid  (s_in_valid[g]),
                .in_ready  (s_in_ready[g]),
                .in_x      (disp_x),
                .in_y      (disp_y),
                .in_cr     (cr_cur),
                .in_ci     (ci_cur),
                .out_valid (s_out_valid[g]),
                .out_ready (s_out_ready[g]),
                .out_x     (s_out_x[g*XW +: XW]),
                .out_y     (s_out_y[g*YW +: YW]),
                .out_count (s_out_cnt[g*IW +: IW]),
                .idle      ()
            );
        end
    endgenerate

    // ===================================================== result arbiter
    // Round-robin: one finished pixel per clock goes to the row buffer; the others circle once more.
    reg       [7:0] rr_ptr;
    reg             g_found;
    reg       [7:0] g_idx;
    integer         k, idx;
    always @(*) begin
        g_found = 1'b0;
        g_idx   = 8'd0;
        for (k = 0; k < NSOLV; k = k + 1) begin
            idx = rr_ptr + k;
            if (idx >= NSOLV) idx = idx - NSOLV;
            if (!g_found && s_out_valid[idx]) begin
                g_found = 1'b1;
                g_idx   = idx;
            end
        end
    end
    assign s_out_ready = g_found ? ({{(NSOLV-1){1'b0}}, 1'b1} << g_idx) : {NSOLV{1'b0}};

    reg            w1_v;                      // granted result, registered
    reg   [XW-1:0] w1_x;
    reg   [YW-1:0] w1_y;
    reg   [IW-1:0] w1_cnt;
    always @(posedge clk) begin
        if (rst) begin
            rr_ptr <= 8'd0;
            w1_v   <= 1'b0;
        end else begin
            w1_v <= g_found;
            if (g_found)
                rr_ptr <= (g_idx == NSOLV-1) ? 8'd0 : g_idx + 1'b1;
        end
        w1_x   <= s_out_x[g_idx*XW +: XW];
        w1_y   <= s_out_y[g_idx*YW +: YW];
        w1_cnt <= s_out_cnt[g_idx*IW +: IW];
    end

    // ======================================================== colour (lab palette)
    // RGB332 by count vs max_iter >> k, as in the lab guide; inside the set = black.
    function [7:0] palette;
        input [IW-1:0] c;
        input [IW-1:0] m;
        begin
            if      (c >= m)        palette = 8'b000_000_00;
            else if (c >= (m >> 1)) palette = 8'b011_001_00;
            else if (c >= (m >> 2)) palette = 8'b011_001_00;
            else if (c >= (m >> 3)) palette = 8'b101_010_01;
            else if (c >= (m >> 4)) palette = 8'b011_001_01;
            else if (c >= (m >> 5)) palette = 8'b001_001_01;
            else if (c >= (m >> 6)) palette = 8'b011_010_10;
            else if (c >= (m >> 7)) palette = 8'b010_100_10;
            else if (c >= (m >> 8)) palette = 8'b010_100_10;
            else                    palette = 8'b010_100_10;
        end
    endfunction

    // RGB332 -> 3 bytes in memory order [R, B, G] (byte 0 in the low bits)
    function [23:0] px24;
        input [7:0] c;
        begin
            px24 = { {c[4:2], c[4:2], c[4:3]},              // G
                     {c[1:0], c[1:0], c[1:0], c[1:0]},      // B
                     {c[7:5], c[7:5], c[7:6]} };            // R
        end
    endfunction

    // ============================================================= row buffer
    // 2^RB rows x 2^XW pixels x 8 bits (4 BRAM36); address = {row mod 2^RB, x}.
    reg  [7:0]  rowbuf [0:(1<<(RB+XW))-1];
    reg  [11:0] row_cnt [0:ROWS-1];           // pixels written into each buffered row
    wire [RB-1:0] w_slot = w1_y[RB-1:0];

    always @(posedge clk)
        if (w1_v) rowbuf[{w_slot, w1_x}] <= palette(w1_cnt, max_r);

    // ================================================================= reader
    // Reads the oldest row once all FW pixels are in, 1 pixel per clock, packs 8 pixels into 3 beats.
    // The 8th pixel of a group is only read when the 3-beat hold register is empty.
    reg  [XW-1:0] rd_x;
    reg           rd_active;
    reg  [7:0]    rd_data;
    reg           rd_dv;
    reg  [63:0]   grp;                        // pixels 0..6 of the current group
    reg  [2:0]    gcnt;
    reg  [191:0]  hold;                       // 3 beats waiting for the FIFO
    reg  [1:0]    hold_n;

    wire [RB-1:0] rd_slot   = rd_row[RB-1:0];
    wire          row_ready = (row_cnt[rd_slot] == FW);
    wire          row_start = busy_r && !rd_active && (rd_row < FH) && row_ready;
    wire          rd_issue  = rd_active && ((rd_x[2:0] != 3'd7) || (hold_n == 2'd0));
    wire          rd_last   = rd_issue && (rd_x == FW-1);

    always @(posedge clk) begin
        if (clr) begin
            rd_row    <= {YW{1'b0}};
            rd_active <= 1'b0;
            rd_x      <= {XW{1'b0}};
        end else if (row_start) begin
            rd_active <= 1'b1;
            rd_x      <= {XW{1'b0}};
        end else if (rd_issue) begin
            rd_x <= rd_x + 1'b1;
            if (rd_last) begin
                rd_active <= 1'b0;
                rd_row    <= rd_row + 1'b1;
            end
        end
    end

    always @(posedge clk) begin
        if (rd_issue) rd_data <= rowbuf[{rd_slot, rd_x}];
        if (clr) rd_dv <= 1'b0;
        else     rd_dv <= rd_issue;
    end

    // row counters: +1 per pixel written, cleared when the row has been read out
    integer r;
    always @(posedge clk) begin
        if (clr) begin
            for (r = 0; r < ROWS; r = r + 1) row_cnt[r] <= 12'd0;
        end else begin
            if (w1_v)    row_cnt[w_slot]  <= row_cnt[w_slot] + 1'b1;
            if (rd_last) row_cnt[rd_slot] <= 12'd0;     // never the same slot as w_slot
        end
    end

    // ============================================================== beat FIFO
    reg  [63:0] fifo [0:15];
    reg  [4:0]  f_wp, f_rp;
    wire [4:0]  f_cnt  = f_wp - f_rp;
    wire        f_full = (f_cnt == 5'd16);
    wire        f_push = (hold_n != 2'd0) && !f_full;
    wire        f_pop  = m_wvalid && m_wready;

    always @(posedge clk) begin
        if (clr) begin
            gcnt   <= 3'd0;
            hold_n <= 2'd0;
        end else begin
            if (f_push) begin                 // hold -> FIFO, one beat per clock
                hold   <= hold >> 64;
                hold_n <= hold_n - 1'b1;
            end
            if (rd_dv) begin                  // collect pixels; 8th completes a group
                grp[gcnt*8 +: 8] <= rd_data;
                gcnt <= gcnt + 1'b1;
                if (gcnt == 3'd7) begin
                    hold   <= { px24(rd_data),    px24(grp[55:48]), px24(grp[47:40]), px24(grp[39:32]),
                                px24(grp[31:24]), px24(grp[23:16]), px24(grp[15:8]),  px24(grp[7:0]) };
                    hold_n <= 2'd3;
                end
            end
        end
    end

    always @(posedge clk)
        if (f_push) fifo[f_wp[3:0]] <= hold[63:0];

    always @(posedge clk) begin
        if (clr) f_wp <= 5'd0;
        else if (f_push) f_wp <= f_wp + 1'b1;
        if (clr) f_rp <= 5'd0;
        else if (f_pop) f_rp <= f_rp + 1'b1;
    end

    // ============================================================ AXI write
    // One 16-beat (128-byte) burst per 1/45 row; frame is contiguous so burst n is at fb + 128*n.
    reg              aw_v;
    reg [AXI_AW-1:0] aw_addr;
    reg [15:0]       aw_issued, aw_allow;
    reg [3:0]        w_beat;

    always @(posedge clk) begin
        if (rst) begin
            aw_v      <= 1'b0;
            aw_issued <= 16'd0;
            aw_allow  <= 16'd0;
        end else if (frame_start) begin
            aw_v      <= 1'b0;
            aw_issued <= 16'd0;
            aw_allow  <= 16'd0;
            aw_addr   <= fb_addr;
        end else begin
            if (row_start) aw_allow <= aw_allow + BPR;     // a row's addresses open when it is read
            if (aw_v) begin
                if (m_awready) begin
                    aw_v      <= 1'b0;
                    aw_issued <= aw_issued + 1'b1;
                    aw_addr   <= aw_addr + 128;
                end
            end else if (aw_issued < aw_allow) begin
                aw_v <= 1'b1;
            end
        end
    end

    always @(posedge clk) begin
        if (clr) begin
            w_beat <= 4'd0;
            b_cnt  <= 16'd0;
        end else begin
            if (f_pop)    w_beat <= w_beat + 1'b1;
            if (m_bvalid) b_cnt  <= b_cnt + 1'b1;
        end
    end

    assign m_awaddr  = aw_addr;
    assign m_awlen   = 8'd15;                 // 16 beats
    assign m_awsize  = 3'd3;                  // 8 bytes per beat
    assign m_awburst = 2'b01;                 // INCR
    assign m_awvalid = aw_v;
    assign m_wdata   = fifo[f_rp[3:0]];
    assign m_wstrb   = {(AXI_DW/8){1'b1}};
    assign m_wlast   = (w_beat == 4'd15);
    assign m_wvalid  = (f_cnt != 5'd0);
    assign m_bready  = 1'b1;

endmodule
