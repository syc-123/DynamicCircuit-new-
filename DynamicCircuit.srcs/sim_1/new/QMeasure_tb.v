`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/12 10:45:59
// Design Name: 
// Module Name: QMeasure_tb
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


module QMeasure_tb(

    );
    
    reg sysclk = 1'b1;
    reg signed [31:0] i_q0 = 32'h38003800;
    reg signed [31:0] i_q1 = 0;
    wire o_Q_value;
    wire o_Measure_Done;
    wire [1:0] o_state;
    
    QMeasure  M(
     sysclk,
     i_q0,
     i_q1,
     o_Q_value,
     o_Measure_Done,
     o_state
    );
    
//    initial begin
//    #0 i_q0 <= 32'h30003000;
//    end
  
    
  always @(*)
    #5 sysclk <= ~sysclk; 
    
endmodule
