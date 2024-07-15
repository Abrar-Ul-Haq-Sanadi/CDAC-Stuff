`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2024 17:23:22
// Design Name: 
// Module Name: lab85_tb_2to4_decoder
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


module lab85_tb_2to4_decoder( );
                    wire y_out_0;
                    reg EN;
                    reg sel_in_1;
                    reg sel_in_0;

lab85_2to4_deocoder_0_udp(y_out_0, EN, sel_in_1, sel_in_0 );
lab85_2to4_deocoder_1_udp(y_out_1, EN, sel_in_1, sel_in_0 );
lab85_2to4_deocoder_2_udp(y_out_2, EN, sel_in_1, sel_in_0 );
lab85_2to4_deocoder_3_udp(y_out_3, EN, sel_in_1, sel_in_0 );

initial begin
EN = 1'b0;
sel_in_0 = 1'b0;
sel_in_1 = 1'b0;

#500 $finish();
end

always #100 EN = ~EN ;
always #10 sel_in_0 = ~sel_in_0;
always #20 sel_in_1 = ~sel_in_1;
endmodule
