`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/01/24 15:02:29
// Design Name: 
// Module Name: QMeasure
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


module QMeasure(
    input signed [31:0] i_qubit,
    output Q_value
//    output measure_done
    );
    
    reg Q_value_r = 0;    
    reg signed [31:0] intermediate_prob0 = 0;
//    reg signed [31:0] intermediate_prob1 = 0;
    reg [31:0]RNGvalue = 32'h0000;
    
    integer i;
    reg [5:0] ones;


//    genvar i;
    
//    generate
//        for(i=0;i<31;i=i+1) begin
////            RNGvalue[i] = load RNG
//        end    
//    endgenerate
    
    always@(i_qubit)
    begin
        intermediate_prob0 = i_qubit[31:16] * i_qubit[31:16];
//        intermediate_prob1 = i_qubit[15:0] * i_qubit[15:0];
        
        ones = 0;
        for(i=0;i<32;i=i+1)
            ones = ones + intermediate_prob0[i];
    end

    
endmodule
