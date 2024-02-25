`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/01/23 16:37:26
// Design Name: 
// Module Name: RingOscillator
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


module RingOscillator#(
        parameter STAGE = 5
    )(
    input start,
    output r_out
    );
    
    wire [STAGE-1:0] wi;
    
    reg rout /* synthesis keep */;
        
    and a(wi[STAGE-1],r_out,start);
    
    genvar i;
    
    generate 
        for(i=0;i<STAGE-1;i=i+1) begin
            if(i==0)
                invert (wi[STAGE-1],wi[0]);
            else
                invert (wi[i-1],wi[i]);
        end
    endgenerate
    
    invert xn(wi[STAGE-2],r_out);
    
endmodule

