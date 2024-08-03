//4 bit adder design

module four_bit_adder(
				input 		i_clk,
				input 		i_reset_n,
				input 		i_valid,
				input [3:0] i_data1,
				input [3:0] i_data2,
				output reg [4:0] o_sum
				);

// always@(posedge i_clk)
// 	begin
// 		if(i_reset_n&&i_valid) begin
// 			o_sum <= i_data1 + i_data2;
// 		end
// 		else begin
// 			o_sum <= 5'b0;
// 		end
// 	end

// endmodule

always @(posedge i_clk)
	begin
		if(i_reset_n) begin
			if(i_valid)
				o_sum <= i_data1 + i_data2;
			else
				o_sum <= o_sum;
		end
		else begin
			o_sum <= 5'b0;
		end
	end

endmodule



// always@(posedge i_clk or negedge i_reset_n)
// 	begin
// 		if(!i_reset_n)
// 			o_sum <= 5'b0;
// 		else if(i_valid)
// 			o_sum <= i_data1 + i_data2;
// 		else
// 			o_sum <= o_sum; 
// 	end

// endmodule