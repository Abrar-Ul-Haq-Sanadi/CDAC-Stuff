`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2024 19:15:23
// Design Name: 
// Module Name: assignment_2_FDES
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


module assignment_2_FDES #(parameter DATA_SIZE = 8)(	
			input [DATA_SIZE-1:0] a_in, b_in, 
			input opcode,
			input clk , reset_n,
			output reg[DATA_SIZE-1:0] result_out_reg,
			output reg flag_reg
			);


//fetch stage --------------------------
reg [DATA_SIZE-1:0]a_in_f;
reg [DATA_SIZE-1:0]b_in_f;

always @(posedge clk or negedge reset_n)
begin
	if(!reset_n)
		begin
		a_in_f <= 8'b0;
		b_in_f <= 8'b0;
		end
	else
begin
		a_in_f <= a_in;
		b_in_f <= b_in;
		end
end

// for decoding stage
reg opcode_d;
reg [DATA_SIZE-1:0]a_in_d;
reg [DATA_SIZE-1:0]b_in_d;


always @(posedge clk or negedge reset_n)
begin
	if(!reset_n)
		begin
		a_in_d <= 8'b0;
		b_in_d <= 8'b0;
		opcode_d <= 1'b0;
		end
	else
		begin
		a_in_d <= a_in_f;
		b_in_d <= b_in_f;
		opcode_d <= opcode;
		end
end

//executing  Stage --------------------  
reg [DATA_SIZE-1:0]result_out;
reg flag;

always @(posedge clk or negedge reset_n)
begin
	if(!reset_n)
		begin
			result_out <= 8'b0;
			flag <= 1'b0;
		end
	else
		begin                     // storing the result in flag register  and  result_out after executing 
			case(opcode_d)                  
			1'b0 : begin {flag, result_out} <= a_in_d + b_in_d ; end   
			1'b1 : begin {flag, result_out} <= a_in_d - b_in_d ; end  
			endcase
		end
end

// store stage

always @(posedge clk or negedge reset_n)
begin
	if(!reset_n)
		begin
			result_out_reg <= 8'b0;
			flag_reg <= 1'b0;
		end
	else
	   begin
	       result_out_reg <= result_out;
	       flag_reg <= flag ;
	   end

end

endmodule