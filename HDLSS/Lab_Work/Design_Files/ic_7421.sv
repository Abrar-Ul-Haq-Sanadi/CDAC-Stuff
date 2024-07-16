module ic7421 (input a_in_1 , b_in_2 , c_in_4 ,d_in_5,
				input a_in_9 , b_in_10 , c_in_12 , d_in_13,

				output y_out_6, y_out_8);



assign y_out_6 = a_in_1 & b_in_2 & c_in_4 & d_in_5;
assign y_out_8 = a_in_9 & b_in_10 & c_in_12 & d_in_13;

endmodule
