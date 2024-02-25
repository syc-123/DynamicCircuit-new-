`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/01/30 13:13:19
// Design Name: 
// Module Name: invert
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


module invert(
    input x,
    output wire y
    );
    
    LUT1 #(
      .INIT(2'b01)  // Specify LUT Contents
    ) LUT1_inst (
      .O(y),   // LUT general output
      .I0(x)  // LUT input
    );
endmodule
