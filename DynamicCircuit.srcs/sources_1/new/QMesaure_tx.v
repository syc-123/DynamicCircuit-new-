`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/12 14:17:54
// Design Name: 
// Module Name: QMesaure_tx
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


module QMesaure_tx(
    input sysclk,
    output QMeasure_test,
    output Measure_done_test
    );
    
    reg signed [31:0] i_q0 = 32'h38003800;
    reg signed [31:0] i_q1 = 0;
    wire o_Q_value;
    wire o_Measure_Done;
    
    
    reg clk_slow = 1'b0;
    integer counter = 0;
        always@(posedge sysclk) begin
        if(counter == 3000000)begin
            clk_slow <= ~clk_slow;
            counter <= 0;
        end else begin
            counter <= counter + 1;
        end
    end
    
    
    
    QMeasure(
     clk_slow,
     i_q0,
     i_q1,
     o_Q_value,
     o_Measure_Done
    );
    
    assign QMeasure_test = o_Q_value;
    assign Measure_done_test = o_Measure_Done;
    
    
endmodule
