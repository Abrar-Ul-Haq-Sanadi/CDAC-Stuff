`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2024 18:55:46
// Design Name: 
// Module Name: lab86_tb_8to1_Mux
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


module lab86_tb_8to1_Mux();
        wire y_out;
        reg sel_in_2, sel_in_1,sel_in_0;
        reg d_in_3, d_in_2 , d_in_1 , d_in_0;


lab86_4to1_Mux uut1(
         y_out, 
         sel_in_1, sel_in_0,
         d_in_3, d_in_2 , d_in_1 , d_in_0
        
    );    
    
lab86_4to1_Mux uut2(
         y_out, 
         sel_in_1, sel_in_0,
         d_in_3, d_in_2 , d_in_1 , d_in_0
        
    ); 

lab84_Mux_2to1_UDP uut3(
                        y_out,                        
                        sel_in,
                        a_in, b_in
                        );
                            
initial begin
         sel_in_2 = 1'b0;
         sel_in_1 = 1'b0; 
         sel_in_0 = 1'b0;
         d_in_3 = 1'b0; 
         d_in_2 = 1'b0;
         d_in_1 = 1'b0; 
         d_in_0 = 1'b0;
#2000 $finish();

end   


always #50 sel_in_2 = ~sel_in_2;
always #100 sel_in_1 = ~sel_in_1;
always #150 sel_in_0 = ~sel_in_0;

always #10 d_in_0 = ~d_in_0;    
always #10 d_in_1 = ~d_in_1;    
always #10 d_in_2 = ~d_in_2;    
always #10 d_in_3 = ~d_in_3;    


endmodule
