module tb_jcntr_4bit ();
							reg reset_n;
							reg clk;
							wire [3:0] q_out;

Jcntr_4bit uut (
							 .reset_n(reset_n), 
							 .clk(clk),
							 .q_out(q_out)
							);

initial begin
	reset_n = 1'b0;
	clk = 1'b1;
	#5 reset_n = 1'b1;
#100 $finish;
end

always #5 clk = ~clk;

endmodule