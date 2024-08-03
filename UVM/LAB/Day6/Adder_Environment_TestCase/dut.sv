module adder (
		input wire i_clk,
		input wire i_reset_n,
		input wire i_valid,
		input wire [3:0]i_data1,
		input wire [3:0]i_data2,

		output reg [4:0]o_sum
		);

always_ff @(posedge i_clk) 
	begin 
		if(!i_reset_n) begin
			o_sum <= 5'b0;
		end

		else if(i_valid) begin				// if reset is 0 its asserted if its reset-1 its deasserted
			o_sum <= i_data1 + i_data2;
		end 

		else begin
			o_sum <= o_sum;
		end
	end
endmodule