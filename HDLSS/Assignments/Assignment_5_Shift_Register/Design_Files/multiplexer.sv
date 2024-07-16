`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2024 16:36:56
// Design Name: 
// Module Name: multiplexer
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


// multiplexer is used to make the anode transitions on the display
module multiplexer(
                input wire  [3:0] a_in,
                input wire  [3:0] b_in,
                input wire  [3:0] c_in,
                input wire  [3:0] d_in,
                
                input wire        clk,
                input wire        reset,
                
                output reg [3:0]  data_out,
                output reg [3:0]  an
    );
        
    parameter one = 2'b00, two = 2'b01, three = 2'b10, four = 2'b11 ;
   
    reg [1:0]state; 
    always_ff @(posedge clk)
    begin
        if(!reset)
            begin
                an          <= 4'b1111;
                data_out    <= a_in;
                state       <= one;
            end
           
        else
        begin
            case(state)
            one : begin
                    an          <= 4'b1110;
                    data_out    <= a_in; 
                    state       <= two ;
                    end
                    
            two: begin
                    an         <= 4'b1101;
                    data_out   <= b_in; 
                    state      <= three ;
                 end
                    
            three: begin
                    an          <= 4'b1011;
                    data_out    <= c_in; 
                    state       <= four ;
                    end
                    
            four: begin
                    an          <= 4'b0111;
                    data_out    <= d_in;
                    state       <= one ;
                  end
                    
             default: begin
                    an          <= 4'b1111; 
                    data_out    <= a_in; 
                    state       <= one; 
                    end    
             endcase
          end
    end
 endmodule