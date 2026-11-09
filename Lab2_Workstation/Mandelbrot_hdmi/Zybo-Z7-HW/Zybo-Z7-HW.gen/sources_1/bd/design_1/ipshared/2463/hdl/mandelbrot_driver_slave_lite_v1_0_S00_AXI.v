`timescale 1 ns / 1 ps

	module mandelbrot_driver_slave_lite_v1_0_S00_AXI #
	(
		// Users to add parameters here
		parameter integer NSOLV = 8,                 // solvers built in hardware (read back in N_ACTIVE)
		// User parameters ends
		// Do not modify the parameters beyond this line

		// Width of S_AXI data bus
		parameter integer C_S_AXI_DATA_WIDTH	= 32,
		// Width of S_AXI address bus
		parameter integer C_S_AXI_ADDR_WIDTH	= 6
	)
	(
		// Users to add ports here

		output wire                  start,          // 1-clock pulse: render a frame
		output wire                  soft_rst,       // 1-clock pulse: abort and clear the engine
		output wire        [31:0]    fb_addr,        // DDR address of the frame (128-byte aligned)
		output wire signed [26:0]    cr_left,        // real part of c at column 0 (Q4.23)
		output wire signed [26:0]    ci_top,         // imaginary part of c at row 0 (Q4.23)
		output wire signed [26:0]    step,           // size of one pixel (Q4.23)
		output wire        [15:0]    max_iter,       // iteration limit
		output wire        [7:0]     n_active,       // solvers to use (engine clamps to 1..NSOLV)

		input  wire                  busy,           // frame in progress
		input  wire                  done,           // frame finished, held until next start
		input  wire        [31:0]    cycles,         // clocks from start to done
		input  wire        [3:0]     btn,            // board buttons (asynchronous)
		input  wire        [3:0]     sw,             // board switches (asynchronous)

		// User ports ends
		// Do not modify the ports beyond this line

		// Global Clock Signal
		input wire  S_AXI_ACLK,
		// Global Reset Signal. This Signal is Active LOW
		input wire  S_AXI_ARESETN,
		// Write address (issued by master, acceped by Slave)
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
		// Write channel Protection type. This signal indicates the
    		// privilege and security level of the transaction, and whether
    		// the transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_AWPROT,
		// Write address valid. This signal indicates that the master signaling
    		// valid write address and control information.
		input wire  S_AXI_AWVALID,
		// Write address ready. This signal indicates that the slave is ready
    		// to accept an address and associated control signals.
		output wire  S_AXI_AWREADY,
		// Write data (issued by master, acceped by Slave)
		input wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
		// Write strobes. This signal indicates which byte lanes hold
    		// valid data. There is one write strobe bit for each eight
    		// bits of the write data bus.
		input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
		// Write valid. This signal indicates that valid write
    		// data and strobes are available.
		input wire  S_AXI_WVALID,
		// Write ready. This signal indicates that the slave
    		// can accept the write data.
		output wire  S_AXI_WREADY,
		// Write response. This signal indicates the status
    		// of the write transaction.
		output wire [1 : 0] S_AXI_BRESP,
		// Write response valid. This signal indicates that the channel
    		// is signaling a valid write response.
		output wire  S_AXI_BVALID,
		// Response ready. This signal indicates that the master
    		// can accept a write response.
		input wire  S_AXI_BREADY,
		// Read address (issued by master, acceped by Slave)
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,
		// Protection type. This signal indicates the privilege
    		// and security level of the transaction, and whether the
    		// transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_ARPROT,
		// Read address valid. This signal indicates that the channel
    		// is signaling valid read address and control information.
		input wire  S_AXI_ARVALID,
		// Read address ready. This signal indicates that the slave is
    		// ready to accept an address and associated control signals.
		output wire  S_AXI_ARREADY,
		// Read data (issued by slave)
		output wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
		// Read response. This signal indicates the status of the
    		// read transfer.
		output wire [1 : 0] S_AXI_RRESP,
		// Read valid. This signal indicates that the channel is
    		// signaling the required read data.
		output wire  S_AXI_RVALID,
		// Read ready. This signal indicates that the master can
    		// accept the read data and response information.
		input wire  S_AXI_RREADY
	);

	// AXI4LITE signals
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr;
	reg  	axi_awready;
	reg  	axi_wready;
	reg [1 : 0] 	axi_bresp;
	reg  	axi_bvalid;
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr;
	reg  	axi_arready;
	reg [1 : 0] 	axi_rresp;
	reg  	axi_rvalid;

	// Example-specific design signals
	// local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
	// ADDR_LSB is used for addressing 32/64 bit registers/memories
	// ADDR_LSB = 2 for 32 bits (n downto 2)
	// ADDR_LSB = 3 for 64 bits (n downto 3)
	localparam integer ADDR_LSB = (C_S_AXI_DATA_WIDTH/32) + 1;
	localparam integer OPT_MEM_ADDR_BITS = 3;
	//----------------------------------------------
	//-- Signals for user logic register space
	//------------------------------------------------
	//-- Register map (word index, byte offset = 4 * index)
	localparam integer REG_CTRL     = 0;  // W  bit0 = start pulse, bit1 = soft reset pulse (reads 0)
	localparam integer REG_STATUS   = 1;  // R  bit0 = busy, bit1 = done
	localparam integer REG_FB_ADDR  = 2;  // RW frame address in DDR
	localparam integer REG_CR_LEFT  = 3;  // RW Q4.23, sign-extended to 32 bits
	localparam integer REG_CI_TOP   = 4;  // RW Q4.23
	localparam integer REG_STEP     = 5;  // RW Q4.23
	localparam integer REG_MAX_ITER = 6;  // RW [15:0]
	localparam integer REG_CYCLES   = 7;  // R  render time in clocks
	localparam integer REG_N_ACTIVE = 8;  // RW [7:0] solvers to use, read [15:8] = NSOLV
	localparam integer REG_BUTTONS  = 9;  // R  [3:0] = btn, [7:4] = sw
	localparam [7:0]   NSOLV8       = NSOLV;

	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg_fb_addr;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg_cr_left;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg_ci_top;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg_step;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg_max_iter;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg_n_active;
	reg                         	start_r;        // CTRL bit0 pulse
	reg                         	soft_rst_r;     // CTRL bit1 pulse
	integer	 byte_index;

	// Registered copies of engine outputs, for AXI reads
	reg        busy_reg;
	reg        done_reg;
	reg [31:0] cycles_reg;
	always @(posedge S_AXI_ACLK) begin
	  if (S_AXI_ARESETN == 1'b0) begin
	    busy_reg   <= 1'b0;
	    done_reg   <= 1'b0;
	    cycles_reg <= 32'd0;
	  end else begin
	    busy_reg   <= busy;
	    done_reg   <= done;
	    cycles_reg <= cycles;
	  end
	end

	// Two-flop synchronizers for the asynchronous board inputs
	reg [3:0] btn_s1, btn_s2, sw_s1, sw_s2;
	always @(posedge S_AXI_ACLK) begin
	  btn_s1 <= btn;  btn_s2 <= btn_s1;
	  sw_s1  <= sw;   sw_s2  <= sw_s1;
	end

	// Drive the engine inputs straight from the register file
	assign start    = start_r;
	assign soft_rst = soft_rst_r;
	assign fb_addr  = slv_reg_fb_addr;
	assign cr_left  = slv_reg_cr_left[26:0];
	assign ci_top   = slv_reg_ci_top[26:0];
	assign step     = slv_reg_step[26:0];
	assign max_iter = slv_reg_max_iter[15:0];
	assign n_active = slv_reg_n_active[7:0];

	// I/O Connections assignments

	assign S_AXI_AWREADY	= axi_awready;
	assign S_AXI_WREADY	= axi_wready;
	assign S_AXI_BRESP	= axi_bresp;
	assign S_AXI_BVALID	= axi_bvalid;
	assign S_AXI_ARREADY	= axi_arready;
	assign S_AXI_RRESP	= axi_rresp;
	assign S_AXI_RVALID	= axi_rvalid;
	 //state machine varibles
	 reg [1:0] state_write;
	 reg [1:0] state_read;
	 //State machine local parameters
	 localparam Idle = 2'b00,Raddr = 2'b10,Rdata = 2'b11 ,Waddr = 2'b10,Wdata = 2'b11;
	// Implement Write state machine
	// Outstanding write transactions are not supported by the slave i.e., master should assert bready to receive response on or before it starts sending the new transaction
	always @(posedge S_AXI_ACLK)
	  begin
	     if (S_AXI_ARESETN == 1'b0)
	       begin
	         axi_awready <= 0;
	         axi_wready <= 0;
	         axi_bvalid <= 0;
	         axi_bresp <= 0;
	         axi_awaddr <= 0;
	         state_write <= Idle;
	       end
	     else
	       begin
	         case(state_write)
	           Idle:
	             begin
	               if(S_AXI_ARESETN == 1'b1)
	                 begin
	                   axi_awready <= 1'b1;
	                   axi_wready <= 1'b1;
	                   state_write <= Waddr;
	                 end
	               else state_write <= state_write;
	             end
	           Waddr:        //At this state, slave is ready to receive address along with corresponding control signals and first data packet. Response valid is also handled at this state
	             begin
	               if (S_AXI_AWVALID && S_AXI_AWREADY)
	                  begin
	                    axi_awaddr <= S_AXI_AWADDR;
	                    if(S_AXI_WVALID)
	                      begin
	                        axi_awready <= 1'b1;
	                        state_write <= Waddr;
	                        axi_bvalid <= 1'b1;
	                      end
	                    else
	                      begin
	                        axi_awready <= 1'b0;
	                        state_write <= Wdata;
	                        if (S_AXI_BREADY && axi_bvalid) axi_bvalid <= 1'b0;
	                      end
	                  end
	               else
	                  begin
	                    state_write <= state_write;
	                    if (S_AXI_BREADY && axi_bvalid) axi_bvalid <= 1'b0;
	                   end
	             end
	          Wdata:        //At this state, slave is ready to receive the data packets until the number of transfers is equal to burst length
	             begin
	               if (S_AXI_WVALID)
	                 begin
	                   state_write <= Waddr;
	                   axi_bvalid <= 1'b1;
	                   axi_awready <= 1'b1;
	                 end
	                else
	                 begin
	                   state_write <= state_write;
	                   if (S_AXI_BREADY && axi_bvalid) axi_bvalid <= 1'b0;
	                 end
	             end
	          endcase
	        end
	      end

	// Implement memory mapped register select and write logic generation
	// The write data is accepted and written to memory mapped registers when
	// axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
	// select byte enables of slave registers while writing.
	// These registers are cleared when reset (active low) is applied.
	// Slave register write enable is asserted when valid address and data are available
	// and the slave is ready to accept the write address and write data.
	 wire [OPT_MEM_ADDR_BITS:0] reg_waddr = (S_AXI_AWVALID) ? S_AXI_AWADDR[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] : axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB];

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      slv_reg_fb_addr  <= 0;
	      slv_reg_cr_left  <= 0;
	      slv_reg_ci_top   <= 0;
	      slv_reg_step     <= 0;
	      slv_reg_max_iter <= 1000;                   // default limit
	      slv_reg_n_active <= NSOLV;                  // default: all solvers
	      start_r          <= 1'b0;
	      soft_rst_r       <= 1'b0;
	    end
	  else begin
	    start_r    <= 1'b0;                           // pulses last one clock
	    soft_rst_r <= 1'b0;
	    if (S_AXI_WVALID)
	      begin
	        case ( reg_waddr )
	          REG_CTRL:
	            if ( S_AXI_WSTRB[0] == 1 ) begin
	              start_r    <= S_AXI_WDATA[0];
	              soft_rst_r <= S_AXI_WDATA[1];
	            end
	          REG_FB_ADDR:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 )
	                slv_reg_fb_addr[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	          REG_CR_LEFT:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 )
	                slv_reg_cr_left[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	          REG_CI_TOP:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 )
	                slv_reg_ci_top[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	          REG_STEP:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 )
	                slv_reg_step[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	          REG_MAX_ITER:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 )
	                slv_reg_max_iter[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	          REG_N_ACTIVE:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 )
	                slv_reg_n_active[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	          default : begin
	                      slv_reg_fb_addr  <= slv_reg_fb_addr;
	                      slv_reg_cr_left  <= slv_reg_cr_left;
	                      slv_reg_ci_top   <= slv_reg_ci_top;
	                      slv_reg_step     <= slv_reg_step;
	                      slv_reg_max_iter <= slv_reg_max_iter;
	                      slv_reg_n_active <= slv_reg_n_active;
	                    end
	        endcase
	      end
	  end
	end

	// Implement read state machine
	  always @(posedge S_AXI_ACLK)
	    begin
	      if (S_AXI_ARESETN == 1'b0)
	        begin
	         //asserting initial values to all 0's during reset
	         axi_arready <= 1'b0;
	         axi_rvalid <= 1'b0;
	         axi_rresp <= 1'b0;
	         state_read <= Idle;
	        end
	      else
	        begin
	          case(state_read)
	            Idle:     //Initial state inidicating reset is done and ready to receive read/write transactions
	              begin
	                if (S_AXI_ARESETN == 1'b1)
	                  begin
	                    state_read <= Raddr;
	                    axi_arready <= 1'b1;
	                  end
	                else state_read <= state_read;
	              end
	            Raddr:        //At this state, slave is ready to receive address along with corresponding control signals
	              begin
	                if (S_AXI_ARVALID && S_AXI_ARREADY)
	                  begin
	                    state_read <= Rdata;
	                    axi_araddr <= S_AXI_ARADDR;
	                    axi_rvalid <= 1'b1;
	                    axi_arready <= 1'b0;
	                  end
	                else state_read <= state_read;
	              end
	            Rdata:        //At this state, slave is ready to send the data packets until the number of transfers is equal to burst length
	              begin
	                if (S_AXI_RVALID && S_AXI_RREADY)
	                  begin
	                    axi_rvalid <= 1'b0;
	                    axi_arready <= 1'b1;
	                    state_read <= Raddr;
	                  end
	                else state_read <= state_read;
	              end
	           endcase
	          end
	        end
	// Implement memory mapped register select and read logic generation
	  wire [OPT_MEM_ADDR_BITS:0] reg_raddr = axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB];
	  assign S_AXI_RDATA = (reg_raddr == REG_CTRL)     ? 32'b0 :
	                       (reg_raddr == REG_STATUS)   ? {30'b0, done_reg, busy_reg} :
	                       (reg_raddr == REG_FB_ADDR)  ? slv_reg_fb_addr :
	                       (reg_raddr == REG_CR_LEFT)  ? slv_reg_cr_left :
	                       (reg_raddr == REG_CI_TOP)   ? slv_reg_ci_top :
	                       (reg_raddr == REG_STEP)     ? slv_reg_step :
	                       (reg_raddr == REG_MAX_ITER) ? {16'b0, slv_reg_max_iter[15:0]} :
	                       (reg_raddr == REG_CYCLES)   ? cycles_reg :
	                       (reg_raddr == REG_N_ACTIVE) ? {16'b0, NSOLV8, slv_reg_n_active[7:0]} :
	                       (reg_raddr == REG_BUTTONS)  ? {24'b0, sw_s2, btn_s2} :
	                       32'b0;
	// Add user logic here

	// User logic ends

	endmodule
