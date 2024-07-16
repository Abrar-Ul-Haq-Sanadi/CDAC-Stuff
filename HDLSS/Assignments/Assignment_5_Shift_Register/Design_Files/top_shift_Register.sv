`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2024 16:33:36
// Design Name: 
// Module Name: top_shift_Register
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

// top module to integrate all cicuits


module top_shift_Register
            # (parameter integer DEPTH = 4, WIDTH = 4)
(
                    input wire              clk,
                    input wire              reset,
                    input wire              reset_shift,
                    input wire              reset_mux,
                    input wire              load,
                    input wire  [WIDTH-1:0] data_in,
                    input wire              CS,
                    
                    output                  full,
                    output                  empty,
                    output      [3:0]       anode,
                    output      [6:0]       segments
                           
    );
 
 wire [DEPTH-1:0][WIDTH-1:0]temp_shr;
 wire [29:0]clk_div; 
 wire [3:0] temp_data_out;  
 wire [7:0] temp_bcd_out;
   
    clock_divider U1(
                   .clk(clk),
                   .reset(reset),
                   .clk_div(clk_div)
    );
    
    
    shifter_module #(
    .DEPTH(DEPTH),                    //depth of the register = 4
    .WIDTH(WIDTH)
    )                    // width of the register = 3 bit wide register 
                    U2 (
                        .shr(temp_shr),         // output is 3 bit wide with depth 4
                        .empty(empty),
                        .full(full),
                        
                        .data_in(data_in > 4'h9 ? 4'h9 : data_in),     // data_in is 3 bit 
                        .load(load),
                        .clk(clk_div[26]),                  // this clock us to changed
                        .rst(reset_shift)
                     );
  
  
       multiplexer U3(
                    .a_in(temp_shr[0]),
                    .b_in(temp_shr[1]),
                    .c_in(temp_shr[2]),
                    .d_in(temp_shr[3]),
                    
                    .clk(clk_div[16]),
                    .reset(reset_mux),
                    
                    .data_out(temp_data_out),
                    .an(anode)
                );  
   
   
   
        Bin_Bcd U4(
                    .bin(temp_data_out),
                    .bcd_out(temp_bcd_out)
                );
    
        seven_segment_disp U5(
                                    .in(temp_bcd_out[3:0]),                 
                                    .CS(CS),                 
                                    .display(segments)            
                       );
    
//       seven_segment_display U6(
//                                    .in(temp_bcd_out[7:4]),                 
//                                    .CS(CS),                 
//                                    .display(segments)            
//                       );

endmodule


