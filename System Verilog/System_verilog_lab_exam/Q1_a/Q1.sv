module swap ();
		reg [7:0]a,b, temp;

initial begin
		a=7;
		b=20;
	$display("Before swapping:-->: a= %0d, b= %0d",a, b);
 

 	// Swapping using Blocking assignments
	temp=a;
	a=b;
	b=temp;
	$display("Blocking swap:-->: a = %d, b = %d", a, b);

 	// Swapping using non-blocking assignments
	a<=b;		
	b<=a;
	$display("NonBlocking swap:-->: a = %d, b = %d", a, b);
	#1;
end
endmodule