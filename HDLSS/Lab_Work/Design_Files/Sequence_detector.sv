
module variable_seq_detect #(parameter integer DATA_SIZE=4)(
                input       [DATA_SIZE-1:0]     seq_in, 
                input                           clk, 
                input                           reset_n,
                input                           load,
                input                           d_in,
                
                output reg  [DATA_SIZE-1:0]     q_out,              //output of shift register
                output reg  [DATA_SIZE-1:0]     reg_loaded,         //register loaded with the sequence
                output                          seq_detected        //final output
    );  
    
    
    
parameter integer N=4;
    
wire    [DATA_SIZE-1:0]    comp;                            //comparator output by exor
reg     [DATA_SIZE-1:0]    comp_out;                        //registered output of comparator 


    //loadable register
        
    always@(posedge clk)                        //we are using the synchronous reset as the
    begin                                       //asynchronous resets cause the issue of metastablity
        if(!reset_n)
            reg_loaded <= 4'b0;
            
        else if(load)
            reg_loaded <= seq_in;       
        else
            reg_loaded <= reg_loaded;            
    end    


    
    // shift register
    always @(posedge clk)
    begin
        if(!reset_n)
            q_out <= 4'b0;
        else
            q_out <= {d_in, q_out[DATA_SIZE-1:1]} ;   
    end
    

    //exor operation beteen loadable register and shift registe
    genvar i;
    generate 
    begin
        for (i=0 ; i < N ; i=i+1)
            xor x1(comp[i], reg_loaded[i], q_out[i]);            //structural modelling (predefined primitives)
    
    end
    endgenerate
    
    
    //registerd output 
    always @(posedge clk)
    begin
        if(!reset_n)
            begin
                comp_out <= 4'b0;
            end
        else
            begin
                 comp_out <= comp ;
            end     
    end 
          
          
    assign seq_detected = (~|comp_out);

endmodule