`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.06.2024 20:34:04
// Design Name: 
// Module Name: Assignment_3_elevator
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


module Assignment_3_elevator(
                            input [3:0] current_floor,
                            input [3:0] entered_floor,
                            input clk,
                            input reset_n,
                            output reg reached_dest
                            
    );
    
parameter idle = 2'b00, moving_up = 2'b01, moving_down = 2'b10, finish = 2'b11;

reg [1:0]present_state;   
reg [1:0]next_state;   

//wire [3:0]greater_than;
//wire [3:0]equal_to;
//wire lesser_than;
//Desiging the comparator with respect to Entered floor


//assign equal_to = current_floor ~^ entered_floor ;
//assign greater_than = (current_floor < entered_floor) ;
//assign lesser_than = (current_floor & (~entered_floor)) ;


// this is our present state logic

always @(posedge clk or negedge reset_n)
begin
    if(!reset_n)
        begin
            present_state <= idle;
        end
    else
        begin
            present_state <= next_state;
        end
end


// this is our next state logic
reg [3:0] temp_current_floor= 4'b0000;


always @(present_state, next_state, temp_current_floor)
begin
    case(present_state)
    idle : begin
            if(current_floor == entered_floor )
               begin
                next_state = idle;
                temp_current_floor = current_floor ;
               end
               
            
            else if(current_floor < entered_floor)
                begin
                    next_state = moving_up;
                  //  temp_current_floor = current_floor + 4'b0001;
                end
            else
                begin
                    next_state = moving_down;            
                    temp_current_floor = current_floor - 4'b0001;
                end
            end
            
            
    moving_up : 
            begin
                if(temp_current_floor == entered_floor)
                begin   
                    next_state = finish;
                    temp_current_floor = current_floor ;
                end
                
                else
                    begin
                        next_state = moving_up;
                        temp_current_floor = current_floor + 4'b0001;
                    end
            end

    moving_down : 
            begin
                if(current_floor == entered_floor)
                     begin
                     next_state = finish;
                     temp_current_floor = current_floor ;
                     end
                
                else 
                    begin
                    next_state = moving_down;
                    temp_current_floor = current_floor - 4'b0001;
                    end
            end

    finish:
            begin
                next_state = idle;
                temp_current_floor = current_floor ;
            end
    endcase
end



// output combo logic

always @(present_state, next_state, temp_current_floor)
begin

case(present_state)
     idle           : reached_dest = 1'b0;
     moving_up      : reached_dest = 1'b0;
     moving_down    : reached_dest = 1'b0;
     finish         : reached_dest = 1'b1;
    
     default: reached_dest = 1'b0;
endcase
end


endmodule
