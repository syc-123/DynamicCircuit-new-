`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/22 08:39:51
// Design Name: 
// Module Name: Paulix
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

//The input qubit is Q = [c0; c1] is a 2x1 matrix, where c0 stands for the coefficient of |0> and c1 for |1>. c0, c1 are both complex numbers.
// Both i_q0 and i_q1 are 32-bit signals.
// i_q0 [31:16] refers to the real part of c0, i_q0 [15:0] refers to the imagine part of c0
// i_q1 [31:16] refers to the real part of c1, i_q1 [15:0] refers to the imagine part of c1
// All coefficient are 16-bit fixed point signed decimals. The first bit is a sign identifier, where 0 indicates positive and 1 indicates negative.
// The range of all coefficients is within -1 to 1.

module Paulix(    
    input signed [31:0] i_q0,
    input signed [31:0] i_q1,
    output signed [31:0] o_q0,
    output signed [31:0] o_q1              
    );

    assign o_q0 = i_q1;
    assign o_q1 = i_q0;
       
endmodule
