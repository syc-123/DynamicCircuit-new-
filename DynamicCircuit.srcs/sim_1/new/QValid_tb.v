`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/12 17:53:52
// Design Name: 
// Module Name: QValid_tb
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


module QValid_tb(

    );
    reg [31:0] i_q0;
    reg [31:0] i_q1;
    wire [31:0] o_q0;
    wire [31:0] o_q1;
    wire Q_valid;
    
    QValid valid(
    i_q0,
    i_q1,
    o_q0,
    o_q1,
    Q_valid
    );
    
    initial begin
    i_q0 <= 32'h00000000;
    i_q1 <= 32'h00000000;
    
    #100
    i_q0 <= 32'h3fff4000;
    i_q1 <= 32'h40004000;
    
    #100
    i_q0 <= 32'h40004000;
    i_q1 <= 32'h40004000;
    
    #100
    i_q0 <= 32'h50005000;
    i_q1 <= 32'h50005000;
    
    end
        
    
endmodule
