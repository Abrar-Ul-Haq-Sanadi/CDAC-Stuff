`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2024 11:00:24
// Design Name: 
// Module Name: lab100_tb_CMOS_SLM
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


module lab100_tb_CMOS_SLM();
            reg data_in;
            reg control;
            wire dataout;
    
 lab100_cmos_slm uut(
                 .data_in(data_in),
                .control(control),
                .data_out(data_out)
    );   
    
    initial begin
    data_in = 1'b0;
    control = 1'b0;
    #100 $finish();
    end
    
    always #10 control = ~control;
    always #10 data_in = $random();
    
endmodule
