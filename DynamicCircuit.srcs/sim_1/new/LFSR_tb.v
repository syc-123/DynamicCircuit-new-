`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/01/21 19:40:01
// Design Name: 
// Module Name: LFSR_tb
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


module LFSR_tb(

    );    
    reg r_Clk = 1'b0;
    reg r_Seed_DV = 1'b1;
       
    wire [31:0] w_LFSR_Data;
//    wire w_LFSR_Done;
   
    LFSR  LFSR_inst
         (.i_Clk(r_Clk),
          .i_Enable(1'b1),
          .i_Seed_DV(r_Seed_DV),
          .i_Seed_data({{16{1'b0}},{16{1'b1}}}),
//          .i_Seed_data({16{1'b0}}),
          .o_LFSR_data(w_LFSR_Data)
//          .o_LFSR_done(w_LFSR_Done)
          );
  
  initial begin
    #100 r_Seed_DV <= 1'b0;
  end
  
    
  always @(*)
    #5 r_Clk <= ~r_Clk; 
    
endmodule
