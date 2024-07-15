`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2024 11:31:23
// Design Name: 
// Module Name: Q_1
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

//port 1 is written as p0
//port 2 is written as p1
module Q_1#(parameter DATA_SIZE = 16 , DEPTH = 16)
            (
            input wr_en,
            input out_en,
            input clk,
            input reset_n,
            input [$clog2(DEPTH)-1 : 0] wr_addr,
            input [$clog2(DEPTH)-1 : 0] rd_addr,
            input [DATA_SIZE - 1 : 0 ]  wr_data,
            input [DATA_SIZE - 1 : 0 ]  rd_data,
            output [DATA_SIZE-1  : 0 ] q_out
      
    );
//initializing the memory  
reg [DATA_SIZE-1:0] memory [0 : DEPTH-1];          

//reg [DATA_SIZE-1:0]temp_data_out_P0;
reg [DATA_SIZE-1:0]temp_data_out_P1;
    
    
//writing into the memory with port 0
always@(posedge clk,negedge reset_n)
begin
    if(wr_en)
        begin
            memory[wr_addr] <= wr_data ;       
        end
    else
        begin
            memory[rd_addr] <= memory[wr_addr];
        end   
end
//reading in port 1
always @(posedge clk,negedge reset_n)
begin
    if(out_en)
    begin
        temp_data_out_P1 <= memory[rd_addr];
    end
end
    
assign q_out = (!wr_en && out_en) ? temp_data_out_P1 : 'bz ; 

endmodule

