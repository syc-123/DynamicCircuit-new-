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
    
    reg [31:0] c0;
    reg [31:0] c1;
    wire [31:0] t0;
    wire [31:0] t1;
    
    Hadamard H_test (
        .i_q0(c0),
        .i_q1(c1),
        .o_q0(t0),
        .o_q1(t1)
    );
    
    initial begin
    
    
    #100;
      
    c0 <= {16'd10,16'd20};
    c1 <= {16'd30,16'd40};
    #100
    
    c0 <= {16'd50,16'd60};
    c1 <= {16'd30,16'd40};
    
    end        
    
endmodule
