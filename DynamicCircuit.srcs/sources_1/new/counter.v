`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/04 03:21:08
// Design Name: 
// Module Name: counter
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


module counter(
    clk, rst, up, down, load, in, out
    );
    parameter n=4;
    input clk, rst, up, down, load;
    input [n-1:0] in;
    output [n-1:0] out;
    reg [n-1:0] next;
    
    FDRE #(
n) FDRE_inst (
      .Q(out),      // 1-bit Data output
      .C(clk),      // 1-bit Clock input
      .CE(1'b1),    // 1-bit Clock enable input
      .R(1'b0),      // 1-bit Synchronous reset input
      .D(next)       // 1-bit Data input
   );
    
    always@(rst, up, down, load, in, out)begin
        casex({rst, up, down, load})
            4'b1xxx: next = {n{1'b0}};
            4'b01xx: next = out + 1'b1;
            4'b001x: next = out - 1'b1;
            4'b0001: next = in;
            default: next = out;
        endcase
    end
    
endmodule
