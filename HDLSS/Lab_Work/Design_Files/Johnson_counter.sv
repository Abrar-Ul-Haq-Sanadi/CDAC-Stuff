module johnson_counter_4bit (
							input reset_n, 
							input clk,
							output reg [3:0] q_out
							);

always@(posedge clk or negedge reset_n)
begin
	if(~reset_n)
		q_out <= 4'b0000;
	else
		begin
		q_out[3] <= ~q_out[0];
		q_out[2] <= q_out[3];
		q_out[1] <= q_out[2];
		q_out[0] <= q_out[1];
		end
end

endmodule
