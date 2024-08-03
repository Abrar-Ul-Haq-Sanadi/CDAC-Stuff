module calc_time( );
	reg clk;
	wire q_out;
	wire time1, time2;

initial begin
	clk = 1'b0;
	#100 $finish();
end

initial begin
@(posedge clk)
	q_out = 1'b1;
	$display("time1=%0t", $time);

@(negedge clk)
	q_out = 1'b0;
	$display("time2=%0t", $time);
end

always #5 clk = ~clk;



endmodule