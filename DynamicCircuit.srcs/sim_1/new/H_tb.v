`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/04 18:50:06
// Design Name: 
// Module Name: H_tb
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


module H_tb(

    );
    
    reg signed [31:0] c0;
    reg signed [31:0] c1;
    wire signed [31:0] t0;
    wire signed [31:0] t1;
    
    reg signed [3:0] f0 = 4'b1001;
    reg signed [3:0] f1 = 4'b0111;
    
    reg signed [7:0] r;
    reg unsigned r1;
    
    Hadamard H_test (
        .i_q0(c0),
        .i_q1(c1),
        .o_q0(t0),
        .o_q1(t1)
    );
    
    initial begin
    
    c0 <= 0;
    c1 <= 0;
    
    r <= f0 * f1;
    if(f0 > f1)
        r1 = 0;
    else
        r1 = 1;
    
    #100;
      
//    c0 <= {8'd1,8'd2,8'd3,8'd4};
//    c1 <= {8'd5,8'd6,8'd7,8'd8};
    c0 <= {16'd10,16'd20};
    c1 <= {16'd30,16'd40};
    #100
    
    c0 <= {16'd50,16'd60};
    c1 <= {16'd30,16'd40};
    
    end        
    
endmodule
