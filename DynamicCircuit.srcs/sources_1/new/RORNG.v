`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/02/19 06:54:25
// Design Name: 
// Module Name: RORNG
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


module RORNG#(
    parameter RO_STAGE = 4
    )(
    input CLK100MHZ,
    input En,
    input CE,
    input R,
    output rn_out
    );
    
    wire [RO_STAGE-1:0] ro_out;
    wire [RO_STAGE-1:0] ff_out;
    reg r_XOR;
    integer j;

    //change when need

    
    genvar i;
    
    generate
        for(i=0;i<RO_STAGE;i=i+1) begin
            RingOscillator ro(En,ro_out[i]);
            
            FDRE #(
                .INIT(1'b0) // Initial value of register (1'b0 or 1'b1)
            ) RO_DFF (
                .Q(ff_out[i]),      // 1-bit Data output
                .C(CLK100MHZ),      // 1-bit Clock input
                .CE(CE),    // 1-bit Clock enable input
                .R(R),      // 1-bit Synchronous reset input
                .D(ro_out[i])       // 1-bit Data input
            );
                                                 
        end
    endgenerate
    
    always@(*) begin
    for(j=0;j<RO_STAGE-1;j=j+1)begin
        if(j==0)
            r_XOR = ff_out[j] ^ ff_out[j+1];
        else
            r_XOR = r_XOR ^ ff_out[j+1];
        end
    end
    
    FDRE #(
     .INIT(1'b0) // Initial value of register (1'b0 or 1'b1)
     ) DFF (
     .Q(rn_out),      // 1-bit Data output
     .C(CLK100MHZ),      // 1-bit Clock input
     .CE(CE),    // 1-bit Clock enable input
     .R(R),      // 1-bit Synchronous reset input
     .D(r_XOR)       // 1-bit Data input
            );
    
    
//    assign rn_out = r_XOR;    
    
endmodule
