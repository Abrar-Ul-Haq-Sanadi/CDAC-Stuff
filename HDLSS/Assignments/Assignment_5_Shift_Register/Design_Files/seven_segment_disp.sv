`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2024 16:38:39
// Design Name: 
// Module Name: seven_segment_disp
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

// seven segment Display ROM

module seven_segment_disp(
                        input   wire    [3:0]   in,                  // taking the reg in binary from user
                        input   wire            CS,                  //chip select is connected with the reset button
                        output  reg     [6:0]   display             // display is the led display with 7 segments
    );
    
    always @*
    begin
            if(CS)
            begin
                
                
                case(in)
                    4'b0000 :  display = 7'b1000000;        //0
                    4'b0001 :  display = 7'b1111001;        //1
                    4'b0010 :  display = 7'b0100100;        //2
                    4'b0011 :  display = 7'b0110000;        //3
                    4'b0100 :  display = 7'b0011001;        //4
                    4'b0101 :  display = 7'b0010010;        //5
                    4'b0110 :  display = 7'b0000010;        //6
                    4'b0111 :  display = 7'b1111000;        //7
                    4'b1000 :  display = 7'b0000000;        //8
                    4'b1001 :  display = 7'b0010000;        //9
                    default :  display = 7'b1111111;        //diplays nothing 
                 endcase
             end
             
             else 
                begin
                    display = 7'b1111111;                   //0
                end  
      end
    
endmodule