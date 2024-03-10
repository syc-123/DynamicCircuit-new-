`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/10 12:20:21
// Design Name: 
// Module Name: RORNG_tx
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


module RORNG_tx(
//    input En,
    input sysclk,
    output o_Tx_Serial
    );
    
    localparam [2:0] s_Idle = 3'b000,
                     s_DV = 3'b001,
                     s_Wait = 3'b010
                     ;
    
    reg En = 1'b1;
    reg i_Tx_DV = 0;
    reg [7:0] i_Tx_Byte = 0;
    wire o_Tx_Active, o_Tx_Done ;
    
    wire roout;
    reg [2:0] state = 3'b010;
    
    
    RORNG ro(sysclk, En, roout);
    
    uart_tx rouart(sysclk,
          i_Tx_DV,
          i_Tx_Byte, 
          o_Tx_Active,
          o_Tx_Serial,
          o_Tx_Done);
    
    always@(posedge sysclk)begin
        case(state)
            s_DV:begin
                i_Tx_DV <= 1'b1;  
                if(roout)begin
                    i_Tx_Byte <= 8'h31;
                end else begin
                    i_Tx_Byte <= 8'h30;
                end
                
                state <= s_Wait;
                
            end
            
            s_Wait:begin
                i_Tx_DV <= 1'b0;
                if(!o_Tx_Active)begin
                    state <= s_DV;               
                end
            end
    
            
        endcase
    
    
    
    end
    
endmodule
