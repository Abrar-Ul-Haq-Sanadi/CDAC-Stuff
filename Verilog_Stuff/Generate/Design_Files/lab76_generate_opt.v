`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2024 18:32:12
// Design Name: 
// Module Name: lab76_generate_opt
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

`define opt 1            // this is optimise and i have set it to 1
module lab76_generate_opt(
                    input a, b, c, d, 
                    output y
    );
 generate
 begin
    case(`opt)  
    
             
    1'b0 : begin            // this is for opt 0 (this is optimised solution)
                    lab76_and_ladder uut2(
                     .a(a), .b(b), .c(c), .d(d), 
                     .y(y)
                       );   
            end
            
     1'b1 : begin             // this is for opt 1 (this is optimised solution
                    lab76_and_with_grouping uut1(
                            .a(a), .b(b), .c(c), .d(d), 
                            .y(y)
                       );   
           end
      endcase
 end
 endgenerate   
endmodule
