`timescale 1 ns / 1 ps

//---------------------------------------------------------------------------
// AXI4-Lite slave for reading the board switches.
//
// This follows the standard Xilinx-generated AXI4-Lite slave template
// (the same one "Tools -> Create and Package New IP -> AXI4 Peripheral"
// produces) so the handshake logic on the AW/W/B/AR/R channels is the
// well-tested boilerplate, not hand-rolled.
//
// Register map (word addressed, C_S_AXI_ADDR_WIDTH = 4 -> 4 x 32-bit regs):
//   0x0  REG0  [read-only] {28'b0, sw[3:0]} - synchronized switch value
//   0x4  REG1  [read/write scratch, unused]
//   0x8  REG2  [read/write scratch, unused]
//   0xC  REG3  [read/write scratch, unused]
//---------------------------------------------------------------------------
module switch_reader_v1_0_S00_AXI #
(
    parameter integer C_S_AXI_DATA_WIDTH = 32,
    parameter integer C_S_AXI_ADDR_WIDTH = 4
)
(
    // Switches: async board input, synchronized internally to S_AXI_ACLK
    input wire [3:0] sw,

    input  wire                                S_AXI_ACLK,
    input  wire                                S_AXI_ARESETN,
    input  wire [C_S_AXI_ADDR_WIDTH-1 : 0]     S_AXI_AWADDR,
    input  wire [2 : 0]                        S_AXI_AWPROT,
    input  wire                                S_AXI_AWVALID,
    output wire                                S_AXI_AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1 : 0]     S_AXI_WDATA,
    input  wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
    input  wire                                S_AXI_WVALID,
    output wire                                S_AXI_WREADY,
    output wire [1 : 0]                        S_AXI_BRESP,
    output wire                                S_AXI_BVALID,
    input  wire                                S_AXI_BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1 : 0]     S_AXI_ARADDR,
    input  wire [2 : 0]                        S_AXI_ARPROT,
    input  wire                                S_AXI_ARVALID,
    output wire                                S_AXI_ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1 : 0]     S_AXI_RDATA,
    output wire [1 : 0]                        S_AXI_RRESP,
    output wire                                S_AXI_RVALID,
    input  wire                                S_AXI_RREADY
);

    // AXI4LITE signals
    reg [C_S_AXI_ADDR_WIDTH-1 : 0]   axi_awaddr;
    reg                              axi_awready;
    reg                              axi_wready;
    reg [1 : 0]                      axi_bresp;
    reg                              axi_bvalid;
    reg [C_S_AXI_ADDR_WIDTH-1 : 0]   axi_araddr;
    reg                              axi_arready;
    reg [C_S_AXI_DATA_WIDTH-1 : 0]   axi_rdata;
    reg [1 : 0]                      axi_rresp;
    reg                              axi_rvalid;

    localparam integer ADDR_LSB          = (C_S_AXI_DATA_WIDTH/32) + 1;
    localparam integer OPT_MEM_ADDR_BITS = 1;

    // Register scratch space (reg0 is overridden by the switch value on read)
    reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg0;
    reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg1;
    reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg2;
    reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg3;
    wire                          slv_reg_rden;
    wire                          slv_reg_wren;
    reg [C_S_AXI_DATA_WIDTH-1:0]  reg_data_out;
    integer                       byte_index;

    // ---------------------------------------------------------------
    // 2-flip-flop synchronizer for the async switch inputs into the
    // S_AXI_ACLK domain. Cheap insurance against metastability even
    // though switches change slowly relative to the clock.
    // ---------------------------------------------------------------
    reg [3:0] sw_meta;
    reg [3:0] sw_sync;

    always @(posedge S_AXI_ACLK) begin
        if (S_AXI_ARESETN == 1'b0) begin
            sw_meta <= 4'b0;
            sw_sync <= 4'b0;
        end else begin
            sw_meta <= sw;
            sw_sync <= sw_meta;
        end
    end

    // I/O connections assignments
    assign S_AXI_AWREADY = axi_awready;
    assign S_AXI_WREADY  = axi_wready;
    assign S_AXI_BRESP   = axi_bresp;
    assign S_AXI_BVALID  = axi_bvalid;
    assign S_AXI_ARREADY = axi_arready;
    assign S_AXI_RDATA   = axi_rdata;
    assign S_AXI_RRESP   = axi_rresp;
    assign S_AXI_RVALID  = axi_rvalid;

    // Implement axi_awready generation
    always @(posedge S_AXI_ACLK) begin
        if (S_AXI_ARESETN == 1'b0) begin
            axi_awready <= 1'b0;
        end else begin
            if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID) begin
                axi_awready <= 1'b1;
            end else begin
                axi_awready <= 1'b0;
            end
        end
    end

    // Implement axi_awaddr latching
    always @(posedge S_AXI_ACLK) begin
        if (S_AXI_ARESETN == 1'b0) begin
            axi_awaddr <= 0;
        end else begin
            if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID) begin
                axi_awaddr <= S_AXI_AWADDR;
            end
        end
    end

    // Implement axi_wready generation
    always @(posedge S_AXI_ACLK) begin
        if (S_AXI_ARESETN == 1'b0) begin
            axi_wready <= 1'b0;
        end else begin
            if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID) begin
                axi_wready <= 1'b1;
            end else begin
                axi_wready <= 1'b0;
            end
        end
    end

    assign slv_reg_wren = axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID;

    // Register write logic. reg0 is writable here for AXI-protocol
    // completeness (a write must still be ACKed), but its stored value
    // is never used for reads - reads of reg0 always return sw_sync.
    always @(posedge S_AXI_ACLK) begin
        if (S_AXI_ARESETN == 1'b0) begin
            slv_reg0 <= 0;
            slv_reg1 <= 0;
            slv_reg2 <= 0;
            slv_reg3 <= 0;
        end else if (slv_reg_wren) begin
            case (axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB])
                2'h0:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1)
                            slv_reg0[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                2'h1:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1)
                            slv_reg1[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                2'h2:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1)
                            slv_reg2[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                2'h3:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1)
                            slv_reg3[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                default: ;
            endcase
        end
    end

    // Implement write response logic
    always @(posedge S_AXI_ACLK) begin
        if (S_AXI_ARESETN == 1'b0) begin
            axi_bvalid <= 1'b0;
            axi_bresp  <= 2'b0;
        end else begin
            if (axi_awready && S_AXI_AWVALID && ~axi_bvalid && axi_wready && S_AXI_WVALID) begin
                axi_bvalid <= 1'b1;
                axi_bresp  <= 2'b0; // OKAY
            end else if (S_AXI_BREADY && axi_bvalid) begin
                axi_bvalid <= 1'b0;
            end
        end
    end

    // Implement axi_arready generation
    always @(posedge S_AXI_ACLK) begin
        if (S_AXI_ARESETN == 1'b0) begin
            axi_arready <= 1'b0;
            axi_araddr  <= 0;
        end else begin
            if (~axi_arready && S_AXI_ARVALID) begin
                axi_arready <= 1'b1;
                axi_araddr  <= S_AXI_ARADDR;
            end else begin
                axi_arready <= 1'b0;
            end
        end
    end

    // Implement axi_arvalid generation / rdata capture
    always @(posedge S_AXI_ACLK) begin
        if (S_AXI_ARESETN == 1'b0) begin
            axi_rvalid <= 1'b0;
            axi_rresp  <= 2'b0;
        end else begin
            if (axi_arready && S_AXI_ARVALID && ~axi_rvalid) begin
                axi_rvalid <= 1'b1;
                axi_rresp  <= 2'b0; // OKAY
            end else if (axi_rvalid && S_AXI_RREADY) begin
                axi_rvalid <= 1'b0;
            end
        end
    end

    assign slv_reg_rden = axi_arready & S_AXI_ARVALID & ~axi_rvalid;

    // Read mux: reg0 returns the live synchronized switch value
    always @(*) begin
        case (axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB])
            2'h0   : reg_data_out = {{(C_S_AXI_DATA_WIDTH-4){1'b0}}, sw_sync};
            2'h1   : reg_data_out = slv_reg1;
            2'h2   : reg_data_out = slv_reg2;
            2'h3   : reg_data_out = slv_reg3;
            default: reg_data_out = 0;
        endcase
    end

    // Register/output rdata
    always @(posedge S_AXI_ACLK) begin
        if (S_AXI_ARESETN == 1'b0) begin
            axi_rdata <= 0;
        end else begin
            if (slv_reg_rden) begin
                axi_rdata <= reg_data_out;
            end
        end
    end

endmodule
