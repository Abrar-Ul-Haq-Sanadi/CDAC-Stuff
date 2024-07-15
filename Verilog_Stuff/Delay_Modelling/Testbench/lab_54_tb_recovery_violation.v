`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2024 18:09:11
// Design Name: 
// Module Name: lab_54_tb_recovery_violation
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


module lab_54_tb_recovery_violation(    );
                    reg [7:0]data_in;
                    reg enable;
                    wire [7:0] data_out;


wire d_in, enable_in;
assign d_in = data_in;
assign enable_in = enable;


lab54_recovery_violation uut(
                    .data_in(data_in),
                    .enable(enable),
                    .data_out(data_out)
    );
initial fork
enable = 1'b1;

data_in = 8'b0;
#1 data_in = 8'b00100110;
#9 data_in = 8'b10101100;
#11 data_in = 8'b01010010;
#18 data_in = 8'b10100110;
#21 data_in = 8'b01101101;
//#30 data_in = 8'b11001010;
#32 data_in = 8'b01000100;
#50 $finish;
join

specify
    specparam trecovery = 2;
    $recovery(posedge enable_in, d_in, trecovery);

endspecify

always #5 enable = ~enable ;    

initial begin
$monitor("the value of enable=%0b, data_in = %0b at time t= %0t  ", enable, data_in,  $time);
end
  
endmodule
