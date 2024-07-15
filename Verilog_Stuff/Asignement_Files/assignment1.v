`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2024 12:29:20
// Design Name: 
// Module Name: assignment1_16_bit_Alu
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


module assignment1_16_bit_Alu(
                        input [15:0]a_in,
                        input [15:0] b_in,
                        input [3:0]opcode,
                        input clk,reset_n,
                        output reg [15:0]result_out,
                        output reg CF,
                        output  PF, ZF, SF
    );

dff1 uut( .a_in_Reg(a_in), .b_in_Reg(b_in), .opcode_Reg(opcode),
          .clk(clk), .reset_n(reset_n) );
   
       
always @(posedge clk or negedge reset_n)
begin
        if(!reset_n)
        begin
            result_out <= 16'b0;
         end
         
         else 
             begin
                case (opcode)
                4'b0000 :  begin
                            {CF,result_out} <= a_in + b_in ;
                           end
                4'b0001 : begin
                            {CF,result_out} <= a_in - b_in ;
                           end       
                4'b0010 :  begin
                            {CF,result_out } <= a_in + 1;
                           end
                4'b0011 :  begin
                            {CF,result_out } <= a_in - 1;
                           end     
                4'b0100 :  begin
                            {CF,result_out } <= a_in >> 1;
                           end
                4'b0101 :  begin
                            {CF,result_out } <= a_in << 1;
                           end         
                4'b0110 :  begin
                            result_out  <= a_in | b_in;
                           end     
                4'b0111 :  begin
                            result_out  <= a_in ^ b_in;
                           end 
                4'b1000 :  begin
                            result_out  <= a_in & b_in;
                           end     
                4'b1001 :  begin
                            result_out  <= ~a_in ;
                           end                   
                default  : 
                    begin 
                            result_out <= result_out;  
                    end            
               endcase
             end
end

assign SF = result_out[15];
assign ZF = (result_out==16'b0) ? 1'b1 : 1'b0 ;
assign PF = (^result_out) ? 1'b0 : 1'b1 ;               // if condition is true & o/p is 1 its odd parity
endmodule





