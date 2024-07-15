`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.05.2024 16:12:46
// Design Name: 
// Module Name: staic_vs_automatic_task
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


module staic_vs_automatic_task( );
initial begin
    print();
end

task print();
    begin
        integer i=0;
        i=i+1;
        $display("the value of i=%0d", i);
    end
endtask

endmodule
