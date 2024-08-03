module calc_time( );
	logic clk;
	logic q_out;
	logic time1, time2;

initial begin
	clk = 1'b0;
	#100 $finish();
end

initial begin
@(posedge clk)
	begin
	q_out = 1'b1;
	$display("time1=%0t", $time);
	end
@(negedge clk)
	begin
	q_out = 1'b0;
	$display("time2=%0t", $time);
	end
end

always #5 clk = ~clk;



endmodule