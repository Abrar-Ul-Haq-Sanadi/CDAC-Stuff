`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2024 16:16:41
// Design Name: 
// Module Name: lab103_tb_encoder_casez
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


module lab103_tb_encoder_casez();
     reg [3:0] In;
     wire [1:0] y_out;
     wire  valid;

lab103_priority_encoder_casez dut(
                                    .In(In),
                                    .y_out(y_out),
                                    .valid(valid)
                                    );
initial begin
In= 4'b0;

$display ("Welcome to the Priority Encoder");
//$monitor ("At time t=%0t, In =%0b, the value of y_out = %0b and valid=%0b", $time, In, y_out, valid);
#20 $display ("diplay-> At time t=%0t, In =%4b, the value of y_out = %0b and valid=%0b", $time, In, y_out, valid);
$strobe ("strobe-> At time t=%0t, In =%4b, the value of y_out = %0b and valid=%0b", $time, In, y_out, valid);

#200 $finish;
end

always #10 In = In+1;

endmodule
