`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.05.2024 16:40:01
// Design Name: 
// Module Name: lab62_101_Seq_mealy
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

// this is Mealy machine to detect the sequence 101 
// we have three stages as per the mealy machine 

module lab62_101_Seq_mealy(
                        input d_in, clk, reset_n,
                        output reg q_out
    );
    
parameter s0 = 2'b00, s1 = 2'b01, s2 = 2'b10;   
reg [1:0] present_state, next_state;


// this is the state resgister or memory element or flip-flop from the "Mealy Model"
always @(posedge clk , negedge reset_n)
begin
    if(!reset_n)
        present_state <= s0;
    else
        present_state <= next_state ; 
end        
   
   
// this is the Next state logic (combo logic from the Mealy Model) 
always @(*)   
begin
        case(present_state)
        s0 : begin 
                next_state = d_in ? s1 : s0 ;
             end
             
        s1 : begin
                next_state = d_in ? s1 : s2 ;
             end          
          
        s2 : begin
                next_state = d_in ? s1 : s0 ;
             end 
             
        default :  
                next_state = s0;
        endcase        
end 

// this always block is for the output combo logic
always @(*)
begin
    case (present_state) 
    s0 : q_out = 1'b0;
    s1 : q_out = 1'b0;
    s2 : q_out = d_in ? 1'b1 : 1'b0;
    default : q_out = 1'b0;
    endcase
end
endmodule





