`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2024 15:45:52
// Design Name: 
// Module Name: lab92_Bidir_Port_RAM_64x8bit
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


module lab92_Bidir_Port_RAM_64x8bit #(parameter DEPTH = 64, DATA_SIZE = 8)(
                        input                       clk, 
                        input                       CS,
                        input                       wr_en,
                        input                       out_en,
                        input [$clog2(DEPTH)-1:0]   addr_in,
                        inout [DATA_SIZE-1:0]       data_in_out                  
    );

reg [DATA_SIZE-1 : 0 ] memory [ 0: DEPTH-1] ;
reg [DATA_SIZE-1 : 0 ]temp_data_out ;

//writing data to memory
always @(posedge clk)
begin
    if(CS && wr_en)
        memory[addr_in] <= data_in_out ;
    
end    

//reading data from memory
always @(posedge clk)
begin
    if(CS && !wr_en)
        temp_data_out <= memory[addr_in] ;              //temp_data_out is used as temporary output during read
end

// this data_in_out is the output during memory read 
assign data_in_out = (CS && !wr_en && out_en) ? temp_data_out : 8'hz ;

endmodule
