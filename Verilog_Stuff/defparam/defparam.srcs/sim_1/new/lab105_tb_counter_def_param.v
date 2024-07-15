`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2024 18:35:00
// Design Name: 
// Module Name: lab105_tb_counter_def_param
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

// In this Test_Bench we are learning to use defparam and # and do overriding the variables from the design
module lab105_tb_counter_def_param( );
        reg clk;
        reg reset_n;
        wire [3:0]data_out ;
        
lab105_Up_counter_defparam  
       // #(/*.DATA_SIZE(2)*/  /*, .UP(1)*/)  // by adding the value of up as .up(1) in tb in
                                //sensitivvity list
                             // we are able to OVERIDE the value of UP from the design and mak it count upwards
            dut(   
                .clk(clk),
                .reset_n(reset_n),
                .data_out(data_out)
                );
                
//defparam dut.UP=1;                  // or we can override the up value by using defparam       
//defparam dut.DATA_SIZE=4 ;          // By defparam we can OverRide the value Data Size here we have changed from 2 bit to 4 bit  
initial begin
clk = 1'b0;
reset_n = 1'b0;
#15 reset_n = 1'b1;
#200 $finish();
end

always #5 clk = ~clk;
        
endmodule
