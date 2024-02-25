`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/05 09:56:42
// Design Name: 
// Module Name: CNOT
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


module CNOT(    
    input signed [31:0] i_q0,  
    input signed [31:0] i_q1,
    input signed [31:0] i_q2,  
    input signed [31:0] i_q3,
    output signed [31:0] o_q0,
    output signed [31:0] o_q1,    
    output signed [31:0] o_q2,
    output signed [31:0] o_q3
    );
    
    assign o_q0 = i_q0;
    assign o_q1 = i_q1;
    assign o_q2 = i_q3;
    assign o_q3 = i_q2;
    
endmodule
