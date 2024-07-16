`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2024 16:51:44
// Design Name: 
// Module Name: wrap_shift_register
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


module wrap_shift_register
 # (parameter integer DEPTH = 4, WIDTH = 4)
 (
                input wire clk,
                input wire btnR,            //for main reset
                input wire btnU,            //for reseting the shift register
                input wire btnD,            // for reseting the mux module
                input wire btnL,            // for loading the input
                input wire [4:0] sw,        // 5 switches (4 for inputs and 1 for chip select)
                
                
                output wire [1:0] led,    // led[0]-> indicate empty and led[1]-> for full      
                output wire [3:0] an,       // 4 anodes(displays)
                output wire [6:0] seg       // 7 segments on the anode

    );


top_shift_Register
            # (.DEPTH(DEPTH), .WIDTH(WIDTH))
            uut_top_shifter
(
                    .clk(clk),
                    .reset(~btnR),
                    .reset_shift(~btnU),
                    .reset_mux(~btnD),
                    .load(btnL),
                    .data_in(sw[3:0]),
                    .CS(sw[4]),
                    
                    
                    .full(led[1]),
                    .empty(led[0]),
                    .anode(an),
                    .segments(seg)
                           
    );
 
 
 endmodule