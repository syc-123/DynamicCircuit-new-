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
    input sysclk,
    input signed [31:0] i_qubit,
    output Q_value
//    output Measure_done
    );
    
    reg Q_value_r = 0;    
    reg signed [31:0] intermediate_prob0 = 0;
//    reg signed [31:0] intermediate_prob1 = 0;
    wire RNGvalue;
    reg [7:0] MSB;
//    genvar i;
    
//    generate
//        for(i=0;i<31;i=i+1) begin
////            RNGvalue[i] = load RNG
//        end    
//    endgenerate

    RORNG RNG(sysclk, 1'b1, RNGvalue);
 
    integer counter = 0;
    
    always@(posedge sysclk)begin
        if(counter == 8)begin
           counter <= 0;
        end else begin
           MSB[counter] <= RNGvalue;
           counter <= counter + 1;
        end
    end
    
    always@(i_qubit)
    begin
        intermediate_prob0 = i_qubit[31:16] * i_qubit[31:16];
        if(intermediate_prob0[31:24]<MSB)begin
            Q_value_r <= 1'b0;
        end else begin
            Q_value_r <= 1'b1;
        end
    end

    assign Q_value = Q_value_r;
    
endmodule
