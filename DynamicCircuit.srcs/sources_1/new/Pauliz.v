`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/04 15:41:43
// Design Name: 
// Module Name: Pauliz
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


module Pauliz(    
    input signed [31:0] i_q0,
    input signed [31:0] i_q1,
    output signed [31:0] o_q0,
    output signed [31:0] o_q1
    );

    
    assign o_q0 = i_q0;
    assign o_q1 = 0 - i_q1;
    
endmodule
