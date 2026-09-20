
`timescale 1 ns / 1 ps

	module lorenz_reader #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 4
	)
	(
		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S00_AXI
		input wire  s00_axi_aclk,
		input wire  s00_axi_aresetn,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
		input wire [2 : 0] s00_axi_awprot,
		input wire  s00_axi_awvalid,
		output wire  s00_axi_awready,
		input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
		input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
		input wire  s00_axi_wvalid,
		output wire  s00_axi_wready,
		output wire [1 : 0] s00_axi_bresp,
		output wire  s00_axi_bvalid,
		input wire  s00_axi_bready,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
		input wire [2 : 0] s00_axi_arprot,
		input wire  s00_axi_arvalid,
		output wire  s00_axi_arready,
		output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
		output wire [1 : 0] s00_axi_rresp,
		output wire  s00_axi_rvalid,
		input wire  s00_axi_rready
	);
	// ============================================================
	// >>> USER EDIT START <<<
	// None of this lives inside the wizard's "Add user logic here"
	// slot near the bottom of this file (that slot was left empty -
	// see line 134). It was inserted directly in the module body,
	// right after the AXI port list and before the S00_AXI submodule
	// instantiation, so its outputs (x_next/y_next/z_next) exist
	// before that instantiation needs to wire them in.
	// ============================================================
	// Lorenz ODE parameters, signed Q7.20 fixed point (27 bits: 7 int
	// incl. sign, 20 frac) - same reference values used elsewhere in
	// this project (lorenz.py: dt=1/256, x0=-1, y0=0.1, z0=25,
	// sigma=10, beta=8/3, rho=28).
	localparam signed [26:0] SIGMA = 27'sd10485760;  // 10.0
	localparam signed [26:0] RHO   = 27'sd29360128;  // 28.0
	localparam signed [26:0] BETA  = 27'sd2796203;   // 8/3 ~= 2.6667
	localparam signed [26:0] DT    = 27'sd8;         // right-shift amount; 1/256 = 2^-8

	localparam signed [26:0] X0 = -27'sd1048576; // -1.0
	localparam signed [26:0] Y0 = 27'sd104858;   // 0.1
	localparam signed [26:0] Z0 = 27'sd26214400; // 25.0

	wire signed [26:0] x_next;
	wire signed [26:0] y_next;
	wire signed [26:0] z_next;

	// ============================================================
	// >>> USER EDIT (start/stop feature): PS-writable control register
	// (offset 0xC / slv_reg3). Bit 0 is a run/pause flag: the CPU writes
	// 1 to start (or resume) the solver and 0 to pause it, from software
	// on the terminal. Pausing holds every integrator's register in
	// place (see integrator.sv's "run" input) instead of clearing it,
	// so resuming continues from exactly those held values.
	//
	// This does NOT gate s00_axi_aclk itself - the AXI-Lite bus (and
	// this control register's own write path) must keep running so the
	// CPU can issue the resume command in the first place; gating the
	// literal clock net would deadlock that and risks glitches besides.
	// A synchronous hold has the identical effect on the solver's state
	// without any of that risk.
	// ============================================================
	wire [C_S00_AXI_DATA_WIDTH-1:0] ctrl_reg;
	wire run = ctrl_reg[0];

	// Left completely unsupervised, this Euler-integrated fixed-point
	// solver numerically decays to (0,0,0) after tens of millions of
	// cycles (same failure mode documented in fibonacci_bram.sv, which
	// avoids it by capturing every single cycle). Since the CPU here
	// only polls occasionally, we instead periodically restart the
	// solver back to its initial conditions - same technique, same
	// period (2048 cycles) as the proven-working BRAM path. This counter
	// only advances while running, so a pause doesn't eat into the
	// countdown and doesn't trigger an unexpected restart right as the
	// solver resumes.
	localparam integer RESTART_PERIOD = 2048;
	reg [31:0] restart_counter;
	always @(posedge s00_axi_aclk) begin
		if (~s00_axi_aresetn) begin
			restart_counter <= 32'd0;
		end else if (run) begin
			if (restart_counter == RESTART_PERIOD-1) begin
				restart_counter <= 32'd0;
			end else begin
				restart_counter <= restart_counter + 1'b1;
			end
		end
	end
	wire solver_reset = (~s00_axi_aresetn) | (run && restart_counter == RESTART_PERIOD-1);

	// The solver lives entirely inside this IP, clocked by the same
	// S_AXI_ACLK the AXI-Lite bus runs on - no external ports, no
	// clock-domain crossing, no BRAM. The AXI-Lite registers below
	// just latch whatever it currently holds.
	solver solver_i (
		.clk(s00_axi_aclk),
		.reset(solver_reset),
		.run(run),

		.x_next(x_next),
		.y_next(y_next),
		.z_next(z_next),

		.x_0(X0),
		.y_0(Y0),
		.z_0(Z0),

		.beta(BETA),
		.sig(SIGMA),
		.rho(RHO),
		.dt(DT)
	);

// Instantiation of Axi Bus Interface S00_AXI
	lorenz_reader_slave_lite_v1_0_S00_AXI # (
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
	) lorenz_reader_slave_lite_v1_0_S00_AXI_inst (
		// >>> USER EDIT: these 3 port connections don't exist in the
		// stock instantiation template - they only appear because the
		// submodule below (lorenz_reader_slave_lite_v1_0_S00_AXI.v) had
		// 3 custom ports added to its "Users to add ports here" slot.
		// Whenever you add a custom port to the AXI submodule, you must
		// also add a matching connection here by hand.
		.x_next(x_next),
		.y_next(y_next),
		.z_next(z_next),
		.ctrl_reg(ctrl_reg),
		.S_AXI_ACLK(s00_axi_aclk),
		.S_AXI_ARESETN(s00_axi_aresetn),
		.S_AXI_AWADDR(s00_axi_awaddr),
		.S_AXI_AWPROT(s00_axi_awprot),
		.S_AXI_AWVALID(s00_axi_awvalid),
		.S_AXI_AWREADY(s00_axi_awready),
		.S_AXI_WDATA(s00_axi_wdata),
		.S_AXI_WSTRB(s00_axi_wstrb),
		.S_AXI_WVALID(s00_axi_wvalid),
		.S_AXI_WREADY(s00_axi_wready),
		.S_AXI_BRESP(s00_axi_bresp),
		.S_AXI_BVALID(s00_axi_bvalid),
		.S_AXI_BREADY(s00_axi_bready),
		.S_AXI_ARADDR(s00_axi_araddr),
		.S_AXI_ARPROT(s00_axi_arprot),
		.S_AXI_ARVALID(s00_axi_arvalid),
		.S_AXI_ARREADY(s00_axi_arready),
		.S_AXI_RDATA(s00_axi_rdata),
		.S_AXI_RRESP(s00_axi_rresp),
		.S_AXI_RVALID(s00_axi_rvalid),
		.S_AXI_RREADY(s00_axi_rready)
	);
	// >>> USER EDIT END <<<

	// Add user logic here
	// (left empty - all custom logic above was inserted earlier in the
	// module body instead of in this wizard-provided slot)
	// User logic ends

	endmodule
