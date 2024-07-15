`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2024 09:56:12
// Design Name: 
// Module Name: Q1_calculator
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

`define Artimethic_op 0
`define logical_op 1


module Q1_calculator(
        input   wire    [2:0] in_dt1 ,
        input   wire    [2:0] in_dt2 ,
        input   wire          Clk,
        input   wire          Rst,
        input   wire          Opr_sel,
        input           [1:0] aritmetic_operation, 
        input           [1:0] logical_operation,      
        output  reg     [3:0] Out_a,
        output  reg           Out_l         
    );
    
 
       
       
    always @(posedge Clk , negedge Rst)
    begin
        if(!Rst) begin
            Out_a <= 4'b0;
            Out_l <= 1'b0;
        end
        
        else begin
            if((in_dt2 % 2) == 1) begin                             // if in_dt2 is odd       
            case (Opr_sel)      
            `Artimethic_op : begin
                if((in_dt1 >= 3'b000) && (in_dt2 >=3'b000)) begin
                    case(aritmetic_operation)
                    2'b00 : Out_a <= in_dt1 + in_dt2 ; 
                    2'b01 : Out_a <= in_dt1 - in_dt2 ;
                    2'b01 : Out_a <= in_dt1 / in_dt2 ;
                    endcase
                    end
                end
                
                `logical_op : begin
                    case (logical_operation)
                    2'b00 : Out_l <= (in_dt1 == in_dt2) ;
                    2'b01 : Out_l <= (in_dt1 > in_dt2) ;
                    2'b10 : Out_l <= (in_dt1 < in_dt2) ;
                    endcase
                    end
               endcase
              end 
              else begin
                Out_a <= Out_a;
                Out_l <= Out_l;
              end            
          end   
          
                     
    end
    
    
endmodule
