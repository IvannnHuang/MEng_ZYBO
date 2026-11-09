# Lab 2 optimization log + plan (DSPs, chip view, code changes)

Running record of every optimization step: what changed in the code, what it cost in DSPs and other resources, and what it bought in render time. Fill in one section per step.

## Plan (from 2026-11-09)
1. **Track DSPs at every step**: they're the resource that limits multiplication, a core idea of the lab. Record DSPs used / 80 and multiplies per iterator for every build (table below).
2. **DE1 vs Zybo DSP side-by-side** (done below): how many multiplies each board can do at each width.
3. **Chip-viewer pictures** for every step: Vivado → *Open Implemented Design* → *Device* tab → highlight the Mandelbrot IP (and the solvers) → save a screenshot into `Lab2_Workstation/figures/chip_<step>.png`. Script: `Mandelbrot_hdmi/scripts/chip_view.tcl` (opens the GUI, colours the blocks; take the screenshot, then close Vivado).
4. **Exact code changes per optimization** (below, as diffs), so the next step can be planned from what changed and what it cost.
5. Next optimization: shared cardioid + period-2-bulb test in the dispenser (DSP budget: only 8 left, see below).

## DSPs: how many multiplications fit
| | DE1-SoC (Cyclone V 5CSEMA5) | Zybo Z7-10 (Zynq xc7z010) |
|---|---|---|
| DSP blocks | **87** | **80** (DSP48E1) |
| Native multiplier per block | 27×27 (or 2× 18×18, or 3× 9×9) | 25×18 |
| 27×27 multiplies possible | **87** (1 block each) | **26** (measured: 3 DSPs each) |
| 18×18 multiplies possible | 174 | 80 |
| Multiplies per iterator (zr², zi², zr·zi) | 3 | 3 |
| DSPs per iterator at 27-bit (Q4.23) | 3 | **9** (measured) |
| Max iterators at 27-bit | 29 (report built 24 = 72 DSPs) | **8** (built: 72/80 DSPs) |
| Max iterators at ≤18-bit numbers | 58 (by DSPs) | 26 (by DSPs; LUTs then limit to ~12–15) |

So the DE1 has slightly more DSP blocks (87 vs 80), but the real difference is that **each Cyclone V block does a full 27×27 multiply, while a Zynq DSP48E1 only does 25×18**. A 27-bit Mandelbrot iterator costs 3× more DSPs on the Zybo.

## Step-by-step record
| Step | Branch / commit | Iterators | DSPs | LUTs | WNS @100 MHz | Full set (ms) |
|---|---|---|---|---|---|---|
| v1 | `main` | 4 | 36 (45 %) | 11,623 (66 %) | +0.255 | 792.2 |
| HDMI input removed | `strip-hdmi-in` `4ab3558` | 4 | 36 (45 %) | 8,187 (46.5 %) | +0.223 | 792.2 |
| 8 iterators, original engine | `nsolv-8` `5b7b0e5` | 8 | 72 (90 %) | 11,496 (65 %) | **−0.731** | 399.9 (out of spec) |
| 8 iterators, pipelined engine | `engine-pipeline` `e226f79` | 8 | 72 (90 %) | 11,267 (64 %) | +0.147 | **399.4** |

### Step 1: remove HDMI input (no RTL change)
- Block design only: `Mandelbrot_hdmi/scripts/strip_hdmi_in.tcl` deletes `dvi2rgb`, `v_vid_in_axi4s`, `v_tc_in`, `axis_subset_converter_in`, the RX reset, `axi_gpio_video`; turns off the VDMA write channel and FCLK2; moves the IP to `hp0/S01` (FCLK0). Constraints: HDMI RX pins commented out in `Zybo-Z7-Master.xdc`.
- Also: driver `Makefile` typo fixed in the IP (`LIBSOURCES=($wildcard *.c)` → `$(wildcard *.c)`).
- Effect: −3,436 LUTs, −6,063 FFs, −7 BRAM, −1 MMCM, **0 DSPs**, same speed.

### Step 2: 4 → 8 iterators (no RTL change)
- One IP parameter: `NSOLV` 4 → 8 (`scripts/set_nsolv.tcl -tclargs 8`). DSPs 36 → 72.
- Effect: 2× speed, but timing failed: the **result arbiter** (pick 1 of 8 + 8:1 data mux in one clock) and the **dispenser → solver entry** ("first free of 8" + inject + adder in one clock).

### Step 3: pipeline the arbiter and the solver entry (RTL change)
- `mandel_engine.v`: the round-robin arbiter now registers a one-hot `grant` (masked priority: requests above the last winner first), and the data moves next clock through a one-hot AND-OR mux.
- `mandel_solver.v`: a one-pixel input buffer (`ib_*`); `in_ready = ~ib_v` is a flip-flop, so the dispenser never waits on the ring combinationally.
- Verified: `tb_engine_compare.v` (old vs new engine, 3 frames, random AXI stalls), identical bytes, +0.35 % cycles. Same DSPs (72).
- Exact diff (`strip-hdmi-in` → `engine-pipeline`):

```diff
diff --git a/Lab2_Workstation/Mandelbrot_hdmi/Zybo-Z7-HW/ip_repo/mandelbrot_driver_1_0/src/mandel_engine.v b/Lab2_Workstation/Mandelbrot_hdmi/Zybo-Z7-HW/ip_repo/mandelbrot_driver_1_0/src/mandel_engine.v
index 20be381..5406a3b 100644
--- a/Lab2_Workstation/Mandelbrot_hdmi/Zybo-Z7-HW/ip_repo/mandelbrot_driver_1_0/src/mandel_engine.v
+++ b/Lab2_Workstation/Mandelbrot_hdmi/Zybo-Z7-HW/ip_repo/mandelbrot_driver_1_0/src/mandel_engine.v
@@ -165,41 +165,53 @@ module mandel_engine #(
     endgenerate
 
     // ===================================================== result arbiter
-    // Round-robin: one finished pixel per clock goes to the row buffer; the others circle once more.
-    reg       [7:0] rr_ptr;
-    reg             g_found;
-    reg       [7:0] g_idx;
-    integer         k, idx;
-    always @(*) begin
-        g_found = 1'b0;
-        g_idx   = 8'd0;
-        for (k = 0; k < NSOLV; k = k + 1) begin
-            idx = rr_ptr + k;
-            if (idx >= NSOLV) idx = idx - NSOLV;
-            if (!g_found && s_out_valid[idx]) begin
-                g_found = 1'b1;
-                g_idx   = idx;
-            end
+    // Two stages so the pick and the data move are in different clocks:
+    //   1. pick: a registered one-hot grant, round-robin (requests above the last winner first)
+    //   2. move: the granted solver's output is taken through a one-hot AND-OR mux
+    // A solver holds its result until it sees out_ready, so the result is still there when the
+    // registered grant arrives. The solver granted this clock is masked out of the next pick.
+    reg  [NSOLV-1:0] grant;                   // stage 1 result, one-hot or zero
+    reg  [NSOLV-1:0] last;                    // one-hot of the most recent winner
+    wire [NSOLV-1:0] req     = s_out_valid & ~grant;
+    wire [NSOLV-1:0] above   = ~((last << 1) - 1'b1) & ~last;   // positions strictly above the last winner
+    wire [NSOLV-1:0] req_hi  = req & above;
+    wire [NSOLV-1:0] pick_hi = req_hi & (~req_hi + 1'b1);       // lowest set bit
+    wire [NSOLV-1:0] pick_lo = req    & (~req    + 1'b1);
+    wire [NSOLV-1:0] pick    = (|req_hi) ? pick_hi : pick_lo;
+
+    always @(posedge clk) begin
+        if (rst) begin
+            grant <= {NSOLV{1'b0}};
+            last  <= {{(NSOLV-1){1'b0}}, 1'b1} << (NSOLV-1);     // so solver 0 is first
+        end else begin
+            grant <= pick;
+            if (|pick) last <= pick;
         end
     end
-    assign s_out_ready = g_found ? ({{(NSOLV-1){1'b0}}, 1'b1} << g_idx) : {NSOLV{1'b0}};
+    assign s_out_ready = grant;
 
     reg            w1_v;                      // granted result, registered
     reg   [XW-1:0] w1_x;
     reg   [YW-1:0] w1_y;
     reg   [IW-1:0] w1_cnt;
-    always @(posedge clk) begin
-        if (rst) begin
-            rr_ptr <= 8'd0;
-            w1_v   <= 1'b0;
-        end else begin
-            w1_v <= g_found;
-            if (g_found)
-                rr_ptr <= (g_idx == NSOLV-1) ? 8'd0 : g_idx + 1'b1;
+    reg   [XW-1:0] mx_x;
+    reg   [YW-1:0] mx_y;
+    reg   [IW-1:0] mx_cnt;
+    integer        k;
+    always @(*) begin                         // one-hot AND-OR mux
+        mx_x = {XW{1'b0}}; mx_y = {YW{1'b0}}; mx_cnt = {IW{1'b0}};
+        for (k = 0; k < NSOLV; k = k + 1) begin
+            mx_x   = mx_x   | (s_out_x[k*XW +: XW]   & {XW{grant[k]}});
+            mx_y   = mx_y   | (s_out_y[k*YW +: YW]   & {YW{grant[k]}});
+            mx_cnt = mx_cnt | (s_out_cnt[k*IW +: IW] & {IW{grant[k]}});
         end
-        w1_x   <= s_out_x[g_idx*XW +: XW];
-        w1_y   <= s_out_y[g_idx*YW +: YW];
-        w1_cnt <= s_out_cnt[g_idx*IW +: IW];
+    end
+    always @(posedge clk) begin
+        if (rst) w1_v <= 1'b0;
+        else     w1_v <= |grant;
+        w1_x   <= mx_x;
+        w1_y   <= mx_y;
+        w1_cnt <= mx_cnt;
     end
 
     // ======================================================== colour (lab palette)
diff --git a/Lab2_Workstation/Mandelbrot_hdmi/Zybo-Z7-HW/ip_repo/mandelbrot_driver_1_0/src/mandel_solver.v b/Lab2_Workstation/Mandelbrot_hdmi/Zybo-Z7-HW/ip_repo/mandelbrot_driver_1_0/src/mandel_solver.v
index 26ecc59..3485426 100644
--- a/Lab2_Workstation/Mandelbrot_hdmi/Zybo-Z7-HW/ip_repo/mandelbrot_driver_1_0/src/mandel_solver.v
+++ b/Lab2_Workstation/Mandelbrot_hdmi/Zybo-Z7-HW/ip_repo/mandelbrot_driver_1_0/src/mandel_solver.v
@@ -79,11 +79,30 @@ module mandel_solver #(
     reg        [YW-1:0] o_y;
     reg        [IW-1:0] o_cnt;
 
+    // One-pixel input buffer: in_ready is a flip-flop, so the dispenser's "first free solver"
+    // scan never runs through this ring's recirculate logic in the same clock.
+    reg                 ib_v;
+    reg        [XW-1:0] ib_x;
+    reg        [YW-1:0] ib_y;
+    reg signed [W-1:0]  ib_cr, ib_ci;
+
     wire emit   = h_v & h_f & ~o_v;        // finished pixel moves to the output buffer
     wire recirc = h_v & ~emit;             // HEAD stays in the ring
-    wire inject = ~recirc & in_valid;      // new pixel enters the free slot
+    wire inject = ~recirc & ib_v;          // buffered pixel enters the free slot
+
+    assign in_ready  = ~ib_v;
 
-    assign in_ready  = ~recirc;
+    always @(posedge clk) begin
+        if (rst)                      ib_v <= 1'b0;
+        else if (in_valid & ~ib_v)    ib_v <= 1'b1;
+        else if (inject)              ib_v <= 1'b0;
+        if (in_valid & ~ib_v) begin
+            ib_x  <= in_x;
+            ib_y  <= in_y;
+            ib_cr <= in_cr;
+            ib_ci <= in_ci;
+        end
+    end
     assign out_valid = o_v;
     assign out_x     = o_x;
     assign out_y     = o_y;
@@ -103,10 +122,10 @@ module mandel_solver #(
     // New pixel starts with z = 0: saved products 0, count 0.
     wire                 e_v    = recirc | inject;
     wire                 e_f    = recirc & h_f;
-    wire        [XW-1:0] e_x    = recirc ? h_x    : in_x;
-    wire        [YW-1:0] e_y    = recirc ? h_y    : in_y;
-    wire signed [W-1:0]  e_cr   = recirc ? h_cr   : in_cr;
-    wire signed [W-1:0]  e_ci   = recirc ? h_ci   : in_ci;
+    wire        [XW-1:0] e_x    = recirc ? h_x    : ib_x;
+    wire        [YW-1:0] e_y    = recirc ? h_y    : ib_y;
+    wire signed [W-1:0]  e_cr   = recirc ? h_cr   : ib_cr;
+    wire signed [W-1:0]  e_ci   = recirc ? h_ci   : ib_ci;
     wire        [IW-1:0] e_cnt  = recirc ? h_cnt  : {IW{1'b0}};
     wire signed [W-1:0]  e_zr2  = recirc ? h_zr2  : {W{1'b0}};
     wire signed [W-1:0]  e_zi2  = recirc ? h_zi2  : {W{1'b0}};
@@ -219,6 +238,6 @@ module mandel_solver #(
         for (j = 0; j < ML; j = j + 1)
             any_m = any_m | m_v[j];
     end
-    assign idle = ~(a_v | any_m | h_v | o_v);
+    assign idle = ~(ib_v | a_v | any_m | h_v | o_v);
 
 endmodule
```

### Chip view, 8 iterators (pipelined)
![8 iterators on the xc7z010](figures/chip_8iter_pipelined.png)

Each colour = one iterator's LUTs/FFs/DSPs as placed by Vivado (`scripts/chip_view.tcl`, screenshot of the Device view). Together they cover most of the fabric; the DSP columns are the narrow strips they cluster around.

### Step 4 (next): shared inside-set test
- DSP budget: **8 DSPs free**. An exact 27-bit cardioid/bulb test needs ~5 multiplies ≈ 15 DSPs at 27-bit, too many. Options: narrower numbers for the test (it only has to be conservative), or LUT multipliers (LUTs at 64 %).
- Record the diff, DSPs, LUTs, WNS and render time here when done.
