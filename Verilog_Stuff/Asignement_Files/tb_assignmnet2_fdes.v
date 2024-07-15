`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2024 19:16:30
// Design Name: 
// Module Name: tb_assignmnet2_fdes
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



module tb_assignmnet2_fdes #(parameter DATA_SIZE = 8)();

	// Inputs
	reg [DATA_SIZE-1:0] a_in;
	reg [DATA_SIZE-1:0] b_in;
	reg opcode;
	reg clk;
	reg reset_n;

	// Outputs
	wire [DATA_SIZE-1:0] result_out_reg;
	wire flag_reg;

	// Instantiate the Unit Under Test (UUT) -> assignment_2_FDES
	assignment_2_FDES uut (
		.a_in(a_in), 
		.b_in(b_in), 
		.opcode(opcode), 
		.clk(clk), 
		.reset_n(reset_n), 
		.result_out_reg(result_out_reg), 
		.flag_reg(flag_reg)
	);

	initial begin
	   $monitor ("The value a_in=%0h, b_in =%0h, opcode=%0b  at time=%0t and the Result=%0h, Flag=%0b" ,a_in, b_in, opcode, $time ,result_out_reg, flag_reg );
		// Initialize Inputs
		a_in = 0;
		b_in = 0;
		opcode = 0;
		clk = 0;
		reset_n = 1;
		
		#10;
		a_in = 8'hab;
		b_in = 8'hca;
		opcode = 0;
		reset_n = 1;
	
		#20;
		a_in = 8'h23;
		b_in = 8'h67;
		opcode = 0;
		reset_n = 1;
		
		#30;
		a_in = 8'h44;
		b_in = 8'h65;
		opcode = 1;
		reset_n = 1;	
		#400 $finish; 
	end
   
	always #10 clk = ~clk;
//	always #17 a_in = a_in + 1;
//	always #20 b_in = b_in + 1;
   always #100 opcode = ~opcode ; 
endmodule