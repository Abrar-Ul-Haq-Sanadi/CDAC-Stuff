`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2024 15:44:07
// Design Name: 
// Module Name: lab91_RAM_64x8bit
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


//RTL Deisgn of a single port RAM for 64x8 bit


module lab91_RAM_64x8bit #(parameter DATA_SIZE = 8, DEPTH = 64)
     (

                input                               clk,
                input                               CS,               // this is chip select            
                input                               wr_en,            //write enable signal
                input                               out_en,         // enables the output (read)
                input       [$clog2(DEPTH)-1:0]     addr_in,        // 6 bit address line
                input       [DATA_SIZE-1:0]         data_in,        //8 bit data_in
                output reg  [DATA_SIZE-1:0]         data_out         //8 bit data_out
                
    );
//declaring Memory 
//reg [7:0] memory[0:63];         //width is 8-bit and depth is 64
reg [DATA_SIZE-1:0] memory [0:DEPTH-1] ;
// reg temp_data_in;

//write  to Memory 
always @(posedge clk)
begin
    if(CS && wr_en)
        memory[addr_in] <= data_in;
    else
        memory[addr_in] <= memory[addr_in] ;
end


//Read from Memory
always @(posedge clk)
begin
    if(CS && !wr_en && out_en)
        data_out <= memory[addr_in];
    else
        data_out <= 8'bz;
end

//assign data_out = (CS && !wr_en && out_en) ? temp_data_in : 8'bz ;

endmodule
