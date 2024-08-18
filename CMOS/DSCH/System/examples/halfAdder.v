// DSCH3
// 07-08-2014 02:43:01 PM
// D:\installed program\DSCH\System\examples\halfAdder.sch

module halfAdder( B,A,Carry,Sum);
 input B,A;
 output Carry,Sum;
 wire ;
 and #(16) and2_1(Carry,B,A);
 xor #(16) xor2_2(Sum,A,B);
endmodule

// Simulation parameters in Verilog Format
always
#1000 B=~B;
#2000 A=~A;

// Simulation parameters
// B CLK 10 10
// A CLK 20 20
