module tb_ic_7421();


				reg a_in_1 , b_in_2 , c_in_4 ,d_in_5;
				reg a_in_9 , b_in_10 , c_in_12 , d_in_13;
				wire y_out_6, y_out_8;

ic7421 uut (
				.a_in_1(a_in_1) , .b_in_2(b_in_2) , .c_in_4(c_in_4) , .d_in_5(d_in_5),
				.a_in_9(a_in_9), .b_in_10(b_in_10) , .c_in_12(c_in_12) , .d_in_13(d_in_13),
				.y_out_6(y_out_6), .y_out_8(y_out_8)

			);

initial 
begin
a_in_1 = 1'b1;
b_in_2 = 1'b1;
c_in_4 = 1'b1;
d_in_5 = 1'b1;

a_in_9 = 1'b1; 
b_in_10 = 1'b1;
c_in_12 = 1'b1;
d_in_13 = 1'b1;
$monitor("The value of a_in_1=%0b , b_in_2=%0b, c_in_4=%0b, d_in_5=%0b, a_in_9=%0b, b_in_10=%0b, c_in_12=%0b, d_in_13=%0b, y_out_6=%0b, y_out_8=%0b, ", a_in_1, 
																		b_in_2, c_in_4, d_in_5, a_in_9, b_in_10, c_in_12, d_in_13, y_out_6, y_out_8);

#100 $finish;
end

always #5 a_in_1 = a_in_1 + 1;
always #5 b_in_2 = b_in_2 + 3;
always #5 c_in_4 = c_in_4 + 2;
always #5 d_in_5 = d_in_5 + 5;
always #5 a_in_9 = a_in_9 + 9;
always #5 b_in_10 = b_in_10 + 5;
always #5 c_in_12= c_in_12 + 2;
always #5 d_in_13 = d_in_13 + 1;

endmodule

