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
    input sysclk,
    input En,
//    input CE,
//    input R,
    output rn_out
    );
    
    wire En_n;
    wire [RO_STAGE-1:0] ro_out;
    wire [RO_STAGE-1:0] ff_out;
    reg r_XOR;
    
//    reg clk_slow = 1'b0;
//    integer counter = 0;
    //change when need
    
//    assign En_n = ~En;
    
//    always@(posedge sysclk) begin
//        if(counter == 3000000)begin
//            clk_slow <= ~clk_slow;
//            counter <= 0;
//        end else begin
//            counter <= counter + 1;
//        end
//    end
    
    genvar i;
    
    generate
        for(i=0;i<RO_STAGE;i=i+1) begin
            RingOscillator ro(En,ro_out[i]);
            
            FDRE #(
                .INIT(1'b0) // Initial value of register (1'b0 or 1'b1)
            ) RO_DFF (
                .Q(ff_out[i]),      // 1-bit Data output
                .C(sysclk),      // 1-bit Clock input
                .CE(1'b1),    // 1-bit Clock enable input
                .R(1'b0),      // 1-bit Synchronous reset input
                .D(ro_out[i])       // 1-bit Data input
            );
                                                 
        end
    endgenerate
    
//    genvar j;
    
//    generate
//        for(j=0;j<RO_STAGE;j=j+1) begin
//            RingOscillator ro(En,ro_out[j+RO_STAGE]);
            
//            FDRE #(
//                .INIT(1'b0) // Initial value of register (1'b0 or 1'b1)
//            ) RO_DFF (
//                .Q(ff_out[j+RO_STAGE]),      // 1-bit Data output
//                .C(sysclk),      // 1-bit Clock input
//                .CE(1'b1),    // 1-bit Clock enable input
//                .R(1'b0),      // 1-bit Synchronous reset input
//                .D(ro_out[j+RO_STAGE])       // 1-bit Data input
//            );
                                                 
//        end
//    endgenerate    

    always@(*) begin
        r_XOR <= ^ff_out;
    end
    
    FDRE #(
     .INIT(1'b0) // Initial value of register (1'b0 or 1'b1)
     ) DFF (
     .Q(rn_out),      // 1-bit Data output
     .C(sysclk),      // 1-bit Clock input
     .CE(1'b1),    // 1-bit Clock enable input
     .R(1'b0),      // 1-bit Synchronous reset input
     .D(r_XOR)       // 1-bit Data input
            );
        
endmodule
