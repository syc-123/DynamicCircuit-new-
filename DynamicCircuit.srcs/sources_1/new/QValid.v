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
    input signed [31:0] i_qubit,
    output signed [31:0] o_qubit,
    output Q_valid
    );
    
    reg Q_valid_r = 1'b1;
    reg signed [31:0] intermediate_prob0 = 0;
    reg signed [31:0] intermediate_prob1 = 0;
    
    always@(i_qubit)
    begin
        intermediate_prob0 <= i_qubit[31:16] * i_qubit[31:16];
        intermediate_prob1 <= i_qubit[15:0] * i_qubit[15:0];
        
        if(intermediate_prob0 + intermediate_prob1 < 32'h3e00)
            Q_valid_r <= 1'b0;
        else if(intermediate_prob0 + intermediate_prob1>32'h3fff) begin
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
     assign o_qubit = i_qubit;     
    
endmodule
