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
    input En,
    input sysclk,
    input [31:0] i_q0,
    input [31:0] i_q1,
    output [31:0] o_q0,
    output [31:0] o_q1,
    output o_Q_value,
    output o_Measure_Done
    );
    
    localparam [1:0] s_set = 2'b00,
                     s_getvalue = 2'b01,
                     s_compare = 2'b10,
                     s_wait = 2'b11;

    reg [1:0] state = 2'b00;
     
    reg signed [15:0] q0_r = 0;
    reg signed [15:0] q0_i = 0;
    reg signed [31:0] intermediate_prob0 = 0;
    wire RNGvalue;
    reg signed [31:0] r_RNGvalue = 0;

    reg r_Q_value = 1'b0;   
    reg r_Measure_Done = 1'b0;
    reg [31:0] r_q0_o = 0;
    reg [31:0] r_q1_o = 0;
    
    //the state of qubit if measured result is 0
    reg [31:0] r_q0_0 = 32'h80000000;
    reg [31:0] r_q1_0 = 32'h00000000;
    //the state of qubit if measured result is 1
    reg [31:0] r_q0_1 = 32'h00000000;
    reg [31:0] r_q1_1 = 32'h80000000;
    
    integer counter = 0;


    RORNG RNG(sysclk, En, RNGvalue);
//    reg simRNG = 1'b0;
//    always@(posedge sysclk)begin
//        simRNG = ~simRNG;
//    end
 
 
    always@(posedge sysclk)begin
        case(state)
            s_set:begin
                if(En == 1'b1)begin
                    r_Q_value <= 1'b0;
                    r_Measure_Done <= 1'b0;
                    q0_r <= i_q0[31:16];
                    q0_i <= i_q0[15:0];                                
                    state <= s_getvalue;
                end else begin
                    state <= s_set;
                end
            end
            
            s_getvalue:begin
                if(counter == 30)begin
                    counter <= 0;
                    state <= s_compare;
                end else begin
                    // the bits are sequentially acquired
                    // first in bits are on the MSBs, starting from [29] since it only needs 30 bits
                    r_RNGvalue[29-counter] <= RNGvalue;
//                    r_RNGvalue[29-counter] <= simRNG;                                                      
                    counter <= counter + 1;
                    state <= s_getvalue;
                end
            end
            
            s_compare:begin
                intermediate_prob0 = q0_r * q0_r + q0_i * q0_i;              
                if(intermediate_prob0 < r_RNGvalue)begin
                    r_Q_value <= 1'b0;
                    r_Measure_Done <= 1'b1;
                    r_q0_o <= r_q0_0;
                    r_q1_o <= r_q1_0;
                end else begin
                    r_Q_value <= 1'b1;
                    r_Measure_Done <= 1'b1;
                    r_q0_o <= r_q0_1;
                    r_q1_o <= r_q1_1;                                                                                                                             
                end
                state <= s_set;                         
            end

        endcase    
    end
    
    assign o_Measure_Done = r_Measure_Done;
    assign o_Q_value = r_Q_value;
    assign o_q0 = r_q0_o;
    assign o_q1 = r_q1_o;    
    
    
endmodule
