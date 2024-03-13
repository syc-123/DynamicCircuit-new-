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

//pauli z = [1 0; 0 -1]

module Pauliz(    
    input signed [31:0] i_q0,
    input signed [31:0] i_q1,
    output signed [31:0] o_q0,
    output signed [31:0] o_q1
    );
    
    reg signed [15:0] r_q1_r = 0;
    reg signed [15:0] r_q1_i = 0;
    
    reg signed [15:0] o_q1_r = 0;
    reg signed [15:0] o_q1_i = 0; 

    always@(*)begin
        o_q1_r <= 0 - r_q1_r;
        o_q1_i <= 0 - r_q1_i;
    end
    
    assign o_q0 = i_q0;
    assign o_q1 = {o_q1_r, o_q1_i};
    
endmodule
