`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/27 10:14:05
// Design Name: 
// Module Name: Pauliy
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

//pauli y = [0 -i; i 0]

module Pauliy(    
    input signed [31:0] i_q0,
    input signed [31:0] i_q1,
    output signed [31:0] o_q0,
    output signed [31:0] o_q1
    );

    reg signed [15:0] r_q0_r = 0;
    reg signed [15:0] r_q0_i = 0;    
    reg signed [15:0] r_q1_r = 0;
    reg signed [15:0] r_q1_i = 0;

    reg signed [15:0] o_q0_r = 0;
    reg signed [15:0] o_q0_i = 0;                
    reg signed [15:0] o_q1_r = 0;           
    reg signed [15:0] o_q1_i = 0; 
               
    always@(*)begin
        o_q0_r <= 0 - r_q1_i;
        o_q0_i <= r_q1_r;
        o_q1_r <= r_q0_i;
        o_q1_i <= 0 - r_q0_r;
    end           
               
    assign o_q0 = {o_q0_r, o_q0_i};
    assign o_q1 = {o_q1_r, o_q1_i};
    
endmodule
