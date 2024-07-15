`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2024 13:34:59
// Design Name: 
// Module Name: lab93_Dual_Port_RAM_16x8bit
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


module lab93_Dual_Port_RAM_16x8bit
            #(parameter DATA_SIZE = 8 , DEPTH = 16)
            (
            input CS_P0,
            input CS_P1,
            input wr_en_P0,
            input wr_en_P1,
            input out_en_P0,
            input out_en_P1,
            input clk,
            input [$clog2(DEPTH)-1 : 0] addr_P0,
            input [$clog2(DEPTH)-1 : 0] addr_P1,
            inout [DATA_SIZE - 1 : 0 ]  data_P0,
            inout [DATA_SIZE - 1 : 0 ]  data_P1
      
    );
    
    reg [DATA_SIZE-1:0] memory [0 : DEPTH-1];           //initializing the memory
    
    reg [DATA_SIZE-1:0]temp_data_out_P0;
    reg [DATA_SIZE-1:0]temp_data_out_P1;
    
    
   //writing into the memory with port 0
    always @(posedge clk)
    begin
        if(CS_P0 && wr_en_P0)
            begin
                memory[addr_P0] <= data_P0 ;       
            end
        else
            begin
                memory[addr_P0] <= memory[addr_P0];
            end   
    end
    //writing into the memory with port 1
    always @(posedge clk)
    begin
        if(CS_P1 && wr_en_P1)
            begin
                memory[addr_P1] <= data_P1 ;       
            end
        else
            begin
                memory[addr_P1] <= memory[addr_P1];
            end   
    end
    
    
    // read from the memory with port 0
    always @(posedge clk)
    begin
        if(CS_P0 && !wr_en_P0)
        begin
            temp_data_out_P0 <= memory[addr_P0];
        end
    end
    
        // read from the memory with port 1
    always @(posedge clk)
    begin
        if(CS_P1 && !wr_en_P1)
        begin
            temp_data_out_P1 <= memory[addr_P1];
        end
    end
    
assign data_P0 = (CS_P0 && !wr_en_P0 && out_en_P0) ? temp_data_out_P0 : 'bz ; 
assign data_P1 = (CS_P1 && !wr_en_P1 && out_en_P1) ? temp_data_out_P1 : 'bz ; 

endmodule
