class Queue;
	int queue[$];					//delacring the queue

	function void enqueue (int element);		//function for adding the elements in the queue
		queue.push_back(element);		
	endfunction 

	function void sort();						//function to sort the queue
		queue.sort();
	endfunction 

	function void display ();					//function to display the elements of the queue
		foreach(queue[i]) begin
			$display("%0d",queue[i]);
		end
	endfunction

endclass : Queue


module test();
	Queue q;										//creating an handle of the class--> queue

	initial begin
		q=new();									//creating an object of the class and assiging memory to the object
		
		for (int i = 0; i < 10; i++) begin			
			q.enqueue($urandom_range(0,100));		//initialzing the 10 random values and add into the queue
		end
		
		$display("ORIGINAL QUEUE IS: ");
		q.display();								//prints the original queue

		q.sort();									//sorting the queue
		$display("SORTED QUEUE IS: ");
		q.display();								//print the sorted queue

	end

endmodule