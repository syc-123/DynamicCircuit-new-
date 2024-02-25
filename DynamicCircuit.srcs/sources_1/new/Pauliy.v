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


module Pauliy(    
    input signed [31:0] i_q0,
    input signed [31:0] i_q1,
    output signed [31:0] o_q0,
    output signed [31:0] o_q1
    );

    
    assign o_q0 = {i_q1[15:0],(0-i_q1[31:16])};
    assign o_q1 = {(0-i_q0[15:0]),i_q1[31:16]};
    
endmodule
