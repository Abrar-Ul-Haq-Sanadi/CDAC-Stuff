`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2024 20:38:50
// Design Name: 
// Module Name: lab_45_specify
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



module lab_45_specify(
                        input [7:0]d_in,
                        input clk,
                        input reset_n,
                        output reg [7:0]q_out
    );
always @(posedge clk or negedge reset_n)
begin
    if(!reset_n)
        q_out <= 8'b0;
    else
        begin
            q_out <= d_in;
        end
end

specify
    
    specparam c_to_q = 2;
 // specparam tsu = 1;
    (clk => q_out) = c_to_q;
    
endspecify    

endmodule
