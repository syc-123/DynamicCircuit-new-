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
    input signed [31:0] i_q0,
    input signed [31:0] i_q1,
    output o_Q_value,
    output o_Measure_Done
    );
    
    localparam [1:0] s_set = 2'b00,
                     s_getvalue = 2'b01,
                     s_compare = 2'b10,
                     s_send = 2'b11;

    reg [1:0] state = 2'b00;
     
    reg signed [15:0] q0_r = 0;
    reg signed [15:0] q0_i = 0;
    reg signed [31:0] intermediate_prob0 = 0;
    wire RNGvalue;
    reg signed [31:0] r_RNGvalue = 0;

    reg r_Q_value = 1'b0;   
    reg r_Measure_Done = 1'b0;

    integer counter = 0;


    RORNG RNG(sysclk, 1'b1, RNGvalue);
//    reg simRNG = 1'b0;
//    always@(posedge sysclk)begin
//        simRNG = ~simRNG;
//    end
 
 
    always@(posedge sysclk)begin
        case(state)
            s_set:begin
                q0_r <= i_q0[31:16];
                q0_i <= i_q0[15:0];                                
                state <= s_getvalue;
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
                end else begin
                    r_Q_value <= 1'b1;
                    r_Measure_Done <= 1'b1;                                           
                end                         
            end

        endcase    
    end
    
    assign o_Measure_Done = r_Measure_Done;
    assign o_Q_value = r_Q_value;
    
endmodule
