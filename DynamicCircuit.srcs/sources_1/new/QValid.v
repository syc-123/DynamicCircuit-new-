`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/02/04 18:56:33
// Design Name: 
// Module Name: QValid
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


module QValid(
    input [31:0] i_q0,
    input [31:0] i_q1,
    output [31:0] o_q0,
    output [31:0] o_q1,
    output Q_valid
    );
    
    reg Q_valid_r = 1'b1;
    
    reg signed [15:0] q0_r;
    reg signed [15:0] q0_i;
    reg signed [15:0] q1_r;    
    reg signed [15:0] q1_i;
            
//    reg signed [31:0] intermediate_prob0 = 0;
//    reg signed [31:0] intermediate_prob1 = 0;
    
    reg signed [31:0] prob_sum = 0;    
    
    always@(*)
    begin
        q0_r <= i_q0[31:16];
        q0_i <= i_q0[15:0];
        q1_r <= i_q1[31:16];
        q1_i <= i_q1[15:0];
    
//        intermediate_prob0 <= q0_r * q0_r + q0_i * q0_i;
//        intermediate_prob1 <= q1_r * q1_r + q1_i * q1_i;

//        if(intermediate_prob0 + intermediate_prob1 < 32'h3e00)
//            Q_valid_r <= 1'b0;
//        else if(intermediate_prob0 + intermediate_prob1>32'h3fff) begin
//            Q_valid_r <= 1'b0;
//        end else
//            Q_valid_r = 1'b1;
//        end
        
        prob_sum <= q0_r * q0_r + q0_i * q0_i + q1_r * q1_r + q1_i * q1_i;
        

        
        if(prob_sum < 32'h3ffe0000)
            Q_valid_r <= 1'b0;
        else if(prob_sum > 32'h40000000) begin
            Q_valid_r <= 1'b0;
        end else
            Q_valid_r = 1'b1;
        end   
           
        //if the sum of two probability is 1, then the qubit is valid, else invalid
        //if(intermediate_prob0 + intermediate_prob1 == 32'hffff)
        // == is not proper due to the precision problem.
        // maybe > ff00? >0.99999
        //  Q_valid <= 1;
     assign Q_valid = Q_valid_r;
     assign o_q0 = i_q0;
     assign o_q1 = i_q1;     
    
endmodule
