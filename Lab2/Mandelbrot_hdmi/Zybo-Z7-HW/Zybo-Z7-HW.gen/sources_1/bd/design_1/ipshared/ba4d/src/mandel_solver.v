// mandel_solver.v -- pipelined Mandelbrot iterator, same arithmetic as mandel_iter.v
// Ring of ML+2 stages holds ML+2 pixels at once; 1 iteration per clock when the ring is full.
`timescale 1ns/1ps

module mandel_solver #(
    parameter W  = 27,      // total bits (Q4.23)
    parameter F  = 23,      // fractional bits
    parameter IW = 16,      // iteration counter width
    parameter XW = 11,      // x coordinate width
    parameter YW = 11,      // y coordinate width
    parameter ML = 2        // multiplier register levels (>= 1)
)(
    input  wire                 clk,
    input  wire                 rst,        // synchronous, active high
    input  wire        [IW-1:0] max_iter,   // must not change while busy

    input  wire                 in_valid,   // new pixel
    output wire                 in_ready,
    input  wire        [XW-1:0] in_x,
    input  wire        [YW-1:0] in_y,
    input  wire signed [W-1:0]  in_cr,
    input  wire signed [W-1:0]  in_ci,

    output wire                 out_valid,  // finished pixel (may be out of order)
    input  wire                 out_ready,
    output wire        [XW-1:0] out_x,
    output wire        [YW-1:0] out_y,
    output wire        [IW-1:0] out_count,  // == max_iter means inside the set

    output wire                 idle        // no pixel in the ring
);

    localparam signed [W-1:0] SAT_MAX = {1'b0, {(W-1){1'b1}}};   // largest value
    localparam signed [W-1:0] SAT_MIN = {1'b1, {(W-1){1'b0}}};   // smallest value
    localparam signed [W:0]   FOUR    = (1 << (F + 2));          // 4.0 in W+1 bits

    // Product >>> F (floor), saturated to W bits; same as mandel_iter.v.
    function signed [W-1:0] scale_sat;
        input signed [2*W-1:0] p;
        reg   [2*W-1-(W+F-1):0] hi;
        begin
            hi = p[2*W-1 : W+F-1];
            if (hi == 0 || hi == {(2*W-(W+F-1)){1'b1}})
                scale_sat = p[W+F-1 : F];
            else if (p[2*W-1])
                scale_sat = SAT_MIN;
            else
                scale_sat = SAT_MAX;
        end
    endfunction

    // Clamp a W+2 bit sum to W bits; same as mandel_iter.v.
    function signed [W-1:0] clamp;
        input signed [W+1:0] s;
        begin
            if (s > $signed({{2{SAT_MAX[W-1]}}, SAT_MAX}))
                clamp = SAT_MAX;
            else if (s < $signed({{2{SAT_MIN[W-1]}}, SAT_MIN}))
                clamp = SAT_MIN;
            else
                clamp = s[W-1:0];
        end
    endfunction

    // ---------------------------------------------------- HEAD (stage C output)
    // One pixel in flight: valid, finished, x/y, c, count and the 3 saved products.
    reg                 h_v, h_f;
    reg        [XW-1:0] h_x;
    reg        [YW-1:0] h_y;
    reg signed [W-1:0]  h_cr, h_ci;
    reg        [IW-1:0] h_cnt;
    reg signed [W-1:0]  h_zr2, h_zi2, h_zrzi;

    // ------------------------------------------------------------- entry mux
    // HEAD goes round again unless it is finished and the output buffer is free; a free slot takes a new pixel.
    // out_ready only empties the output buffer, so it never reaches the ring (keeps the arbiter out of the loop).
    reg                 o_v;                // output buffer full
    reg        [XW-1:0] o_x;
    reg        [YW-1:0] o_y;
    reg        [IW-1:0] o_cnt;

    wire emit   = h_v & h_f & ~o_v;        // finished pixel moves to the output buffer
    wire recirc = h_v & ~emit;             // HEAD stays in the ring
    wire inject = ~recirc & in_valid;      // new pixel enters the free slot

    assign in_ready  = ~recirc;
    assign out_valid = o_v;
    assign out_x     = o_x;
    assign out_y     = o_y;
    assign out_count = o_cnt;

    always @(posedge clk) begin
        if (rst)            o_v <= 1'b0;
        else if (emit)      o_v <= 1'b1;   // emit only happens when the buffer is empty
        else if (out_ready) o_v <= 1'b0;   // taken by the engine
        if (emit) begin
            o_x   <= h_x;
            o_y   <= h_y;
            o_cnt <= h_cnt;
        end
    end

    // New pixel starts with z = 0: saved products 0, count 0.
    wire                 e_v    = recirc | inject;
    wire                 e_f    = recirc & h_f;
    wire        [XW-1:0] e_x    = recirc ? h_x    : in_x;
    wire        [YW-1:0] e_y    = recirc ? h_y    : in_y;
    wire signed [W-1:0]  e_cr   = recirc ? h_cr   : in_cr;
    wire signed [W-1:0]  e_ci   = recirc ? h_ci   : in_ci;
    wire        [IW-1:0] e_cnt  = recirc ? h_cnt  : {IW{1'b0}};
    wire signed [W-1:0]  e_zr2  = recirc ? h_zr2  : {W{1'b0}};
    wire signed [W-1:0]  e_zi2  = recirc ? h_zi2  : {W{1'b0}};
    wire signed [W-1:0]  e_zrzi = recirc ? h_zrzi : {W{1'b0}};

    // ------------------------------------------------ stage A: zr', zi' (adders)
    wire signed [W+1:0] zr_ext = $signed({{2{e_zr2[W-1]}},  e_zr2})     // zr2 - zi2 + cr
                               - $signed({{2{e_zi2[W-1]}},  e_zi2})
                               + $signed({{2{e_cr[W-1]}},   e_cr});
    wire signed [W+1:0] zi_ext = ($signed({{2{e_zrzi[W-1]}}, e_zrzi}) <<< 1)   // 2*zrzi + ci
                               + $signed({{2{e_ci[W-1]}},   e_ci});

    reg                 a_v, a_f;
    reg        [XW-1:0] a_x;
    reg        [YW-1:0] a_y;
    reg signed [W-1:0]  a_cr, a_ci;
    reg        [IW-1:0] a_cnt;
    reg signed [W-1:0]  a_zr, a_zi;

    always @(posedge clk) begin
        if (rst) a_v <= 1'b0;
        else     a_v <= e_v;
        a_f   <= e_f;
        a_x   <= e_x;
        a_y   <= e_y;
        a_cr  <= e_cr;
        a_ci  <= e_ci;
        a_cnt <= e_cnt;
        a_zr  <= clamp(zr_ext);
        a_zi  <= clamp(zi_ext);
    end

    // ------------------------------------- stage M: 3 products, ML register levels
    // Level 0 holds the raw products; levels 1..ML-1 are delay for DSP pipelining.
    reg                   m_v   [0:ML-1];
    reg                   m_f   [0:ML-1];
    reg          [XW-1:0] m_x   [0:ML-1];
    reg          [YW-1:0] m_y   [0:ML-1];
    reg signed   [W-1:0]  m_cr  [0:ML-1];
    reg signed   [W-1:0]  m_ci  [0:ML-1];
    reg          [IW-1:0] m_cnt [0:ML-1];
    reg signed [2*W-1:0]  m_prr [0:ML-1];    // zr' * zr'
    reg signed [2*W-1:0]  m_pii [0:ML-1];    // zi' * zi'
    reg signed [2*W-1:0]  m_pri [0:ML-1];    // zr' * zi'

    integer k;
    always @(posedge clk) begin
        if (rst) m_v[0] <= 1'b0;
        else     m_v[0] <= a_v;
        m_f[0]   <= a_f;
        m_x[0]   <= a_x;
        m_y[0]   <= a_y;
        m_cr[0]  <= a_cr;
        m_ci[0]  <= a_ci;
        m_cnt[0] <= a_cnt;
        m_prr[0] <= a_zr * a_zr;
        m_pii[0] <= a_zi * a_zi;
        m_pri[0] <= a_zr * a_zi;
        for (k = 1; k < ML; k = k + 1) begin
            if (rst) m_v[k] <= 1'b0;
            else     m_v[k] <= m_v[k-1];
            m_f[k]   <= m_f[k-1];
            m_x[k]   <= m_x[k-1];
            m_y[k]   <= m_y[k-1];
            m_cr[k]  <= m_cr[k-1];
            m_ci[k]  <= m_ci[k-1];
            m_cnt[k] <= m_cnt[k-1];
            m_prr[k] <= m_prr[k-1];
            m_pii[k] <= m_pii[k-1];
            m_pri[k] <= m_pri[k-1];
        end
    end

    // ------------------------------ stage C: scale, escape test, count, finish
    wire signed [W-1:0] zr2_n  = scale_sat(m_prr[ML-1]);
    wire signed [W-1:0] zi2_n  = scale_sat(m_pii[ML-1]);
    wire signed [W-1:0] zrzi_n = scale_sat(m_pri[ML-1]);

    wire signed [W:0] mag2   = $signed({zr2_n[W-1], zr2_n})   // |z'|^2, cannot overflow
                             + $signed({zi2_n[W-1], zi2_n});
    wire              escape = (mag2 > FOUR);

    wire [IW-1:0] cnt_n  = m_cnt[ML-1] + 1'b1;
    wire          finish = escape || (cnt_n >= max_iter);       // max_iter 0 acts as 1

    always @(posedge clk) begin
        if (rst) h_v <= 1'b0;
        else     h_v <= m_v[ML-1];
        h_x    <= m_x[ML-1];
        h_y    <= m_y[ML-1];
        h_cr   <= m_cr[ML-1];
        h_ci   <= m_ci[ML-1];
        h_zr2  <= zr2_n;
        h_zi2  <= zi2_n;
        h_zrzi <= zrzi_n;
        if (m_f[ML-1]) begin            // finished and waiting: keep the result
            h_f   <= 1'b1;
            h_cnt <= m_cnt[ML-1];
        end else begin                  // one more iteration done
            h_f   <= finish;
            h_cnt <= cnt_n;
        end
    end

    // ------------------------------------------------------------------ idle
    reg     any_m;
    integer j;
    always @(*) begin
        any_m = 1'b0;
        for (j = 0; j < ML; j = j + 1)
            any_m = any_m | m_v[j];
    end
    assign idle = ~(a_v | any_m | h_v | o_v);

endmodule
