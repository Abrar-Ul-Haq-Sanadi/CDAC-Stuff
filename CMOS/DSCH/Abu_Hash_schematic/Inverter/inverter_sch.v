// DSCH3
// 10-07-2024 19:40:37
// C:\Users\vlsi\Desktop\CMOS\DSCH\Abu_Hash_schematic\inverter_sch.sch

module inverter_sch( clk1,out5);
 input clk1;
 output out5;
 wire ;
 pmos #(17) pmos_1(out5,vdd,clk1); // 2u 0.12u
 nmos #(17) nmos_2(out5,vss,clk1); // 1.0u 0.12u
endmodule

// Simulation parameters in Verilog Format
always
#5000 clk1=~clk1;

// Simulation parameters
// clk1 CLK 50.000 50.000
