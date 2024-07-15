`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2024 08:39:03
// Design Name: 
// Module Name: lab88_tb_resister_8_bit_UDP
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


module lab88_tb_resister_8_bit_UDP();
                    wire [7:0]  q_out  ;
                    reg         reset_n ;          //active low reset
                    reg         clk     ;
                    reg  [7:0]  d_in    ;          
    
    
genvar i;
generate
begin
        for(i=0 ; i < 8; i =i+1)
        begin
            lab88_register_1_bit uut( q_out[i],
                                     reset_n,          //active low reset
                                     clk,
                                     d_in[i]
                                     );
        end
end
endgenerate

initial begin
reset_n = 1'b1  ;
clk     = 1'b0  ;
d_in    = 8'b0  ;

#5000 $finish();

end    

always #100 reset_n     = ~ reset_n;
always #5 clk           = ~ clk;
always #12 d_in         = $random();

endmodule
