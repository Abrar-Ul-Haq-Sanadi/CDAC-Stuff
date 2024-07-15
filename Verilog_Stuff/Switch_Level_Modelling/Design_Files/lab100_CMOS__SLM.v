`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2024 11:05:47
// Design Name: 
// Module Name: lab100_cmos__SLM
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


module lab100_cmos_slm(
                input data_in,
                input control,
                output data_out
    );
  
  
 // pmos(data_out, data_in , ~control);
 // nmos(data_out, data_in ,  control);
  

  //  cmos (data_out, data_in , ncontrol, pcontrol);
    cmos(data_out, data_in, control, ~control);

endmodule
