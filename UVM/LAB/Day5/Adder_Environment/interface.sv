interface adder_intf (input i_clk, i_reset_n);

		logic 		i_valid;
		logic [3:0]	i_data1;
		logic [3:0]	i_data2;
		logic [4:0]	o_sum;

endinterface