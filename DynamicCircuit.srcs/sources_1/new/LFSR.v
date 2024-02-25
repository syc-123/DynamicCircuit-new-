`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/01/21 18:09:55
// Design Name: 
// Module Name: LFSR
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


module LFSR(
    input i_Clk,
    input i_Enable,
    
    input i_Seed_DV,
//    input [15:0] i_Seed_data,
    input [31:0] i_Seed_data,
    
//    output [15:0] o_LFSR_data,
    output [31:0] o_LFSR_data
//    output o_LFSR_done
    );
    
//    reg [15:0] r_LFSR = 16'h00;
    reg [31:0] r_LFSR = 32'h0000;
    reg r_XNOR;
    reg r_LFSR_Done = 1'b0;
    
   // Purpose: Load up LFSR with Seed if Data Valid (DV) pulse is detected.
   // Othewise just run LFSR when enabled.
    always @(posedge i_Clk)
      begin
        if (i_Enable == 1'b1)
          begin
              if (i_Seed_DV == 1'b1)
                  r_LFSR <= i_Seed_data;
              else
//                  r_LFSR <= {r_LFSR[14:0], r_XNOR};
                  r_LFSR <= {r_LFSR[30:0], r_XNOR};
          end
       end
 
  // Create Feedback Polynomials.  Based on Application Note:
  // http://www.xilinx.com/support/documentation/application_notes/xapp052.pdf
    always @(*)
      begin
//        r_XNOR = r_LFSR[15] ^~ r_LFSR[14] ^~ r_LFSR[12] ^~ r_LFSR[3];
        r_XNOR = r_LFSR[31] ^~ r_LFSR[21] ^~ r_LFSR[1] ^~ r_LFSR[0];
                
//        if (r_LFSR == i_Seed_data)
//          begin
//            r_LFSR_Done = 1'b1;
//        end else begin
//            r_LFSR_Done = 1'b0;
//        end 
      end
    
    assign o_LFSR_data = r_LFSR;
    
//    assign o_LFSR_Done = (r_LFSR == i_Seed_data)? 1'b1 : 1'b0;
//    assign o_LFSR_Done = r_LFSR_Done;
    
endmodule
