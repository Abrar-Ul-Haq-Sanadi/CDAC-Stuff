`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2024 09:07:52
// Design Name: 
// Module Name: q3_seq_detector_mealy
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


module q3_seq_detector_mealy(
        input   wire  d_in,
        input   wire  clk,
        input   wire  reset_n,
        output  reg   q_out
        
    );
                                //PS->present state
    reg [2:0]PS, NS;            //NS-> Next state
    parameter s0 = 3'b000, s1 = 3'b001, s2 = 3'b011, s3 = 3'b010, s4 = 3'b110, s5 = 3'b111; 
            
    
    // this is the present state logic
    always @(posedge clk, negedge reset_n)
    begin
        if(!reset_n) begin
            PS <= s0;
        end
        else begin
            PS <= NS;
        end  
    end
    
    // this is the next state logic
    always @(*)
    begin
        case(PS)
        s0: begin
            if(d_in) begin
                NS = s1;
            end
            else begin
                NS = s0;
            end
        end

        s1: begin
            if(d_in) begin
                NS = s2;
            end
            else begin
                NS = s0;
            end
        end  

        s2: begin
            if(!d_in) begin
                NS = s3;
            end
            else begin
                NS = s2;
            end
        end        
        
         s3: begin
            if(d_in) begin
                NS = s4;
            end
            else begin
                NS = s0;
            end
        end        
        
         s4: begin
            if(!d_in) begin
                NS = s5;
            end
            else begin
                NS = s2;
            end
        end          
        
         s5: begin
            if(d_in) begin
                NS = s0;
            end
            else begin
                NS = s0;
            end
        end    
        
        default: NS = s0 ;
        
        endcase
    end

// this is the output logic
    always @(*)
    begin
        case(PS)
        s0 :  q_out = 1'b0;
        s1 :  q_out = 1'b0;
        s2 :  q_out = 1'b0;
        s3 :  q_out = 1'b0;
        s4 :  q_out = 1'b0;
        s5 :  begin
                  if(d_in == 1'b1) begin
                    q_out = 1'b1;
                  end
                  
                  else begin
                    q_out = 1'b0;
                  end  
              end
        default : q_out = 1'b0;
        endcase
    end

    
endmodule
