
`timescale 1 ns / 1 ps

	module mandelbrot_driver #
	(
		// Users to add parameters here
		parameter integer NSOLV = 4,                     // number of solvers built
		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 6,

		// Parameters of Axi Master Bus Interface M00_AXI (frame writes to DDR, write-only)
		parameter integer C_M00_AXI_ADDR_WIDTH	= 32,
		parameter integer C_M00_AXI_DATA_WIDTH	= 64
	)
	(
		// Users to add ports here
		input  wire [3:0] btn,                           // board buttons
		input  wire [3:0] sw,                            // board switches
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
		input wire  s00_axi_rready,

		// Ports of Axi Master Bus Interface M00_AXI (write channels only)
		// Clock/reset must be the same net as s00_axi_aclk / s00_axi_aresetn.
		input wire  m00_axi_aclk,
		input wire  m00_axi_aresetn,
		output wire [C_M00_AXI_ADDR_WIDTH-1 : 0] m00_axi_awaddr,
		output wire [7 : 0] m00_axi_awlen,
		output wire [2 : 0] m00_axi_awsize,
		output wire [1 : 0] m00_axi_awburst,
		output wire  m00_axi_awlock,
		output wire [3 : 0] m00_axi_awcache,
		output wire [2 : 0] m00_axi_awprot,
		output wire [3 : 0] m00_axi_awqos,
		output wire  m00_axi_awvalid,
		input wire  m00_axi_awready,
		output wire [C_M00_AXI_DATA_WIDTH-1 : 0] m00_axi_wdata,
		output wire [(C_M00_AXI_DATA_WIDTH/8)-1 : 0] m00_axi_wstrb,
		output wire  m00_axi_wlast,
		output wire  m00_axi_wvalid,
		input wire  m00_axi_wready,
		input wire [1 : 0] m00_axi_bresp,
		input wire  m00_axi_bvalid,
		output wire  m00_axi_bready
	);

	// Wiring between the AXI-Lite register file and the Mandelbrot engine
	wire               start;
	wire               soft_rst;
	wire        [31:0] fb_addr;
	wire signed [26:0] cr_left;
	wire signed [26:0] ci_top;
	wire signed [26:0] step;
	wire        [15:0] max_iter;
	wire        [7:0]  n_active;
	wire               busy;
	wire               done;
	wire        [31:0] cycles;

// Instantiation of Axi Bus Interface S00_AXI
	mandelbrot_driver_slave_lite_v1_0_S00_AXI # (
		.NSOLV(NSOLV),
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
	) mandelbrot_driver_slave_lite_v1_0_S00_AXI_inst (
		.start    (start),
		.soft_rst (soft_rst),
		.fb_addr  (fb_addr),
		.cr_left  (cr_left),
		.ci_top   (ci_top),
		.step     (step),
		.max_iter (max_iter),
		.n_active (n_active),
		.busy     (busy),
		.done     (done),
		.cycles   (cycles),
		.btn      (btn),
		.sw       (sw),

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

	// Add user logic here

	// Mandelbrot engine: dispenser, NSOLV solvers, row buffer, burst writer (Step 3).
	// Runs on the S00_AXI clock; reset by the AXI reset or the CTRL soft-reset pulse.
	mandel_engine #(
		.NSOLV      (NSOLV),
		.AXI_DW     (C_M00_AXI_DATA_WIDTH),
		.AXI_AW     (C_M00_AXI_ADDR_WIDTH)
	) engine_i (
		.clk        (s00_axi_aclk),
		.rst        (~s00_axi_aresetn | soft_rst),
		.start      (start),
		.fb_addr    (fb_addr),
		.cr_left    (cr_left),
		.ci_top     (ci_top),
		.step       (step),
		.max_iter   (max_iter),
		.n_active   (n_active),
		.busy       (busy),
		.done       (done),
		.cycles     (cycles),

		.m_awaddr   (m00_axi_awaddr),
		.m_awlen    (m00_axi_awlen),
		.m_awsize   (m00_axi_awsize),
		.m_awburst  (m00_axi_awburst),
		.m_awvalid  (m00_axi_awvalid),
		.m_awready  (m00_axi_awready),
		.m_wdata    (m00_axi_wdata),
		.m_wstrb    (m00_axi_wstrb),
		.m_wlast    (m00_axi_wlast),
		.m_wvalid   (m00_axi_wvalid),
		.m_wready   (m00_axi_wready),
		.m_bresp    (m00_axi_bresp),
		.m_bvalid   (m00_axi_bvalid),
		.m_bready   (m00_axi_bready)
	);

	// Fixed AXI master attributes
	assign m00_axi_awlock  = 1'b0;          // normal access
	assign m00_axi_awcache = 4'b0011;       // bufferable, modifiable (normal for DDR)
	assign m00_axi_awprot  = 3'b000;
	assign m00_axi_awqos   = 4'b0000;

	// User logic ends

	endmodule
