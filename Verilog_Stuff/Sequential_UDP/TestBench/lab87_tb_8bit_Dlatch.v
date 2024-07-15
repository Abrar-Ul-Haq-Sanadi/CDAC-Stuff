`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2024 19:53:21
// Design Name: 
// Module Name: lab87_tb_8bit_Dlatch
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


module lab87_tb_8bit_Dlatch();
                wire [7:0] q_out;
                reg EN;
                reg [7:0] d_in;


/*
lab87_8bit_Dlatch dut1(q_out[7], EN, d_in[7]);
lab87_8bit_Dlatch dut2(q_out[6], EN, d_in[6]);
lab87_8bit_Dlatch dut3(q_out[5], EN, d_in[5]);
lab87_8bit_Dlatch dut4(q_out[4], EN, d_in[4]);
lab87_8bit_Dlatch dut5(q_out[3], EN, d_in[3]);
lab87_8bit_Dlatch dut6(q_out[2], EN, d_in[2]);
lab87_8bit_Dlatch dut7(q_out[1], EN, d_in[1]);
lab87_8bit_Dlatch dut8(q_out[0], EN, d_in[0]);
*/
genvar i;
generate
    begin
    for(i=0; i<8; i = i+1)
    begin
        lab87_8bit_Dlatch dut(q_out[i], EN, d_in[i]);
    end
    end
 endgenerate
                               
initial begin
EN = 1'b0;
d_in = 8'b0;
#5000 $finish;
end

always #100 EN = ~EN;
always #10 d_in = d_in +1;

endmodule
