// DSCH3
// 10-07-2024 19:21:24
// C:\Users\vlsi\Desktop\CMOS\DSCH\inverter.sch

module inverter( in1,clk1,out2,out2);
 input in1,clk1;
 output out2,out2;
 wire ;
 not #(10) inv_1(out2,clk1);
 not #(10) inv_2(out2,in1);
endmodule

// Simulation parameters in Verilog Format
always
#1000 in1=~in1;
#1000 clk1=~clk1;

// Simulation parameters
// in1 CLK 10 10
// clk1 CLK 10.00 10.00
