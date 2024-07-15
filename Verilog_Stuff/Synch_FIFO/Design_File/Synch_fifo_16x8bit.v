`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2024 15:25:14
// Design Name: 
// Module Name: Synch_fifo_16x8bit
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


    module synch_fifo_16x8bit
                #(parameter integer DATA_SIZE = 8, DEPTH = 16)
            
            (   input [DATA_SIZE-1:0]       data_in,
                input                       wr_en,
                input                       rd_en,
                input                       clk,
                input                       reset_n,
                output                      fifo_full,
                output                      fifo_empty,
                output [DATA_SIZE-1:0]      data_out     
    );
    
    reg [DATA_SIZE-1:0] FIFO [0: DEPTH-1];      //initialzing the FIFO(Memory)
    reg [DATA_SIZE-1:0] temp_data_out;
       
    reg [4:0]   wr_ptr;
    reg [4:0]   rd_ptr;
    
     //this is the write logic for the fifo
    always @(posedge clk or negedge reset_n)
    begin
        if(!reset_n)
            begin
                FIFO[wr_ptr]    <= 1'b0;
                wr_ptr          <= 'b0 ;
            end
        
        else if(wr_en && !fifo_full)
             begin
                 FIFO[wr_ptr]   <= data_in ;
                 wr_ptr <= wr_ptr +1;
             end 
       
    end
  
  
    //logic for reading from the fifo
    always@(posedge clk or negedge reset_n)
    begin
        if(!reset_n)
            begin
                rd_ptr          <= 'b0;
                temp_data_out   <= 1'b0;
            end
    
        else if (rd_en && !fifo_empty)
            begin
                temp_data_out  <= FIFO[rd_ptr] ;
                rd_ptr <= rd_ptr +1;
            end
    end  
    
assign data_out = temp_data_out ;
  
 
assign fifo_full = ({~wr_ptr[4], wr_ptr[3:0]}== rd_ptr[4:0]);
//assign fifo_full = ((wr_ptr + 1) == rd_ptr);
assign fifo_empty = (wr_ptr == rd_ptr);
 
 endmodule
