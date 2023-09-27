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


module Paulix(A,B
              
    );
    //The input qubit is [c0; c1] which is a 2x1 matrix
    input [15:0] A;
    output [15:0] B;
    //Internal variables
    reg [7:0] A1 [0:1];
    reg [7:0] B1 [0:1];
    
    always@ (A or B)
    begin
//        B[0] = A[1];
//        B[1] = A[0];
    end
    
endmodule
