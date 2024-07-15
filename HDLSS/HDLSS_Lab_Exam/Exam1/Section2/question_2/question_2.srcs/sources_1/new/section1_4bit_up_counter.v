`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2024 16:37:41
// Design Name: 
// Module Name: section1_4bit_up_counter
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

module up_counter_4bit #(parameter DATA_SIZE  = 4 )(
            input   wire                    clk,
            input   wire                    reset_n,
            output  reg [DATA_SIZE-1:0]     q_out
    );
    
    always@(posedge clk, negedge reset_n)
    begin
        if(!reset_n) begin
            q_out <= 4'b0;
        end
           
        else if(q_out == 4'b1111) begin
                q_out <= 4'b0000;
            end
        
        else begin
                q_out <= q_out + 1;
            end
    end   
endmodule
