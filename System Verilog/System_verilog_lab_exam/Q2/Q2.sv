class Palindrome_rand;
  rand bit [31:0] rand_var;

  constraint palindrome {
  	rand_var[31:28]==rand_var[3:0];							// this are the constraints 
  	rand_var[27:24]==rand_var[7:4];
  	rand_var[23:20]==rand_var[11:8];
  	rand_var[19:16]==rand_var[15:12];
  }

  function void print_var();								//print function to display values in hex
    $display("Palindrome number in hex: %h", rand_var);
  endfunction

endclass

module test();
  Palindrome_rand p;								//creating the handle of the class Palindrome_rand

  initial begin
    p = new();
    repeat(10) begin
      assert(p.randomize());						//randomizing the values of rand_var
      p.print_var();
    end
  end
endmodule