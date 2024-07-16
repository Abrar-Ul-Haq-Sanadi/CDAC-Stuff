`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2024 16:37:55
// Design Name: 
// Module Name: Bin_Bcd
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

// the binary input is 4bit, so we require two bcds (total 8bits),
// we only we use one bcd since we have to go ftom 0-9 and one bcd is sufficient

module Bin_Bcd(
                    input   wire    [3:0] bin,
                    output          [7:0] bcd_out
                    
    );

    reg [11:0] shift_reg;               // the temp shift register to impliment shift and add 3 logic
    
    always @(*)
    begin
    
    // for bin to bcd we use "SHIFT AND ADD 3 LOGIC" 
    
        shift_reg = {8'b0, bin };
        
        for(int i = 1; i <= 4; i=i+1)
        begin
            if(shift_reg[7:4] >= 5) begin
                shift_reg[7:4] = shift_reg[7:4] + 3;
            end
       
            
            if(shift_reg[11:8] >= 5) begin
                shift_reg[11:8] = shift_reg[11:8] + 3;
            end       

            shift_reg = shift_reg << 1;
        end
    end
    assign bcd_out = shift_reg[11:4];
    
endmodule


