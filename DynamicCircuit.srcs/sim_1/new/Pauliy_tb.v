`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/04 15:12:47
// Design Name: 
// Module Name: Pauliy_tb
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


module Pauliy_tb(

    );
    
    reg signed [31:0] c0;
    reg signed [31:0] c1;
    wire signed [31:0] t0;
    wire signed [31:0] t1;
//    reg signed [31:0] result;
    
    Pauliy Py_test (
        .i_q0(c0),
        .i_q1(c1),
        .o_q0(t0),
        .o_q1(t1)
    );
    
    initial begin
    
    c0 <= 0;
    c1 <= 0;
    #100;
      
    c0 <= {8'd1,8'd2,8'd3,8'd4};
    c1 <= {8'd5,8'd6,8'd7,8'd8};
    
    end
    
endmodule
