`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/04 16:05:53
// Design Name: 
// Module Name: Hadamard
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


module Hadamard(    
    input [31:0] i_q0,  
    input [31:0] i_q1,
    output [31:0] o_q0,
    output [31:0] o_q1
    );
    
    parameter [15:0] sqrt2_inv = 16'b0101101010000010; //16-bit fixed point of 1/sqrt(2)
    
    reg signed [15:0] r_q0_r;
    reg signed [15:0] r_q0_i;
    reg signed [15:0] r_q1_r;    
    reg signed [15:0] r_q1_i;
         
    reg signed [31:0] o_q0_r = 0;
    reg signed [31:0] o_q0_i = 0;
    reg signed [31:0] o_q1_r = 0;
    reg signed [31:0] o_q1_i = 0;
 
    always @(*)begin
        r_q0_r <= i_q0[31:16];
        r_q0_i <= i_q0[15:0];
        r_q1_r <= i_q1[31:16];
        r_q1_i <= i_q1[15:0];
            
        o_q0_r <= (i_q0[31:16] + i_q1[31:16]) * sqrt2_inv;
        o_q0_i <= (i_q0[15:0] + i_q1[15:0]) * sqrt2_inv;
        o_q1_r <= (i_q0[31:16] - i_q1[31:16]) * sqrt2_inv;
        o_q1_i <= (i_q0[15:0] - i_q1[15:0]) * sqrt2_inv;
    end        
    
    assign o_q0 = {o_q0_r[30:15], o_q0_i[30:15]};
    assign o_q1 = {o_q1_r[30:15], o_q1_i[30:15]};
    
endmodule