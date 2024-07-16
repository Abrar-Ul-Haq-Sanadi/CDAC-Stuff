`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.06.2024 01:40:35
// Design Name: 
// Module Name: tb_Assignment_3_HDLSS
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


module tb_asign_3_elevator();
                            reg [3:0] requested_floor;
                            reg clk;
                            reg reset_n;
                            wire reached_dest;



assign_3_elevator uut(
                            requested_floor,
                            clk,
                            reset_n,
                            reached_dest
                            
    );
    
initial fork
#7 requested_floor = 4'b0101;
clk = 1'b0;
reset_n = 1'b0;

#2 reset_n = 1'b1;

#70 requested_floor = 4'b1010;
#122 requested_floor = 4'b0100;
#207 requested_floor = 4'b1001;
#284 requested_floor = 4'b0010;
#375 requested_floor = 4'b1111;
#525 requested_floor = 4'b0000;

#1000 $finish();
join


always #5 clk = ~clk;

endmodule
