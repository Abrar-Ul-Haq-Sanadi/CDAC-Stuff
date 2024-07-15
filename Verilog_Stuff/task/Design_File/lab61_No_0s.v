`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.05.2024 14:47:05
// Design Name: 
// Module Name: lab61_No_0s
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

module lab61_No_0s(
                    input [7:0]d_in,
                    input clk, reset_n,
                    output reg [3:0]q_out
    );
    always @(posedge clk or negedge reset_n)
    begin
        if(!reset_n)
            begin
                q_out <= 4'b0;
            end
        else
            begin
                count_zero(d_in,q_out);
            end
    end

    task count_zero(input [7:0]data_in, output [3:0] result);
            integer i;
        begin
            result= 1'b0;
            for(i=0; i<8; i=i+1)
            begin
                if(data_in[i]==1'b0)
                    result= result + 1;
            end
        end
        endtask  
endmodule