`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/14 09:06:17
// Design Name: 
// Module Name: Sample_Circuit2
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

// this is another sample quantum circuit
// random state -> Hadamard gate -> measure -> zero state -> nothing to do -> measure (the result should always be 0)
//                                          -> one state -> x gate
module Sample_Circuit2(
    input sysclk,
    input [31: 0] i_q0,
    input [31: 0] i_q1,
    output [31: 0] o_q0,
    output [31: 0] o_q1,
    output [1:0] m_result
    );
    
    localparam [2:0]  s_valid = 3'b000,
                      s_measure1 = 3'b001,
                      s_measure2 = 3'b010,
                      s_x = 3'b011,
                      s_h = 3'b100;                      
                       
    reg [2:0] state = 3'b000;
           
    reg [31:0] r_q0 = 0;
    reg [31:0] r_q1 = 0;
    
    //set the output of m_result to 11 which stands for no result yet.
    //10 stands for invalid qubit state
    //00 stands for measured as 0
    //01 stands for measured as 1
    reg [1:0] r_result = 2'b11;
    
    reg m_en = 1'b0;    
    
    wire [31:0] w_q0;
    wire [31:0] w_q1;
    wire [1:0] w_valid;
    QValid V(
    i_q0,
    i_q1,
    w_q0,
    w_q1,
    w_valid
    );
    
    wire [31:0] w_m1_q0;
    wire [31:0] w_m1_q1;
    wire w_m1_value;
    wire w_m1_done;  
    QMeasure M1(
    m_en,
    sysclk,
    r_q0,
    r_q1,
    w_m1_q0,
    w_m1_q1,
    w_m1_value,
    w_m1_done
    );  
    
    wire [31:0] w_x_q0;
    wire [31:0] w_x_q1;
    Paulix X(    
    r_q0,
    r_q1,
    w_x_q0,
    w_x_q1              
    );
    
    wire [31:0] w_h_q0;
    wire [31:0] w_h_q1;    
    Hadamard H(
    r_q0,
    r_q1,
    w_h_q0,
    w_h_q1    
    );
        
    always@(posedge sysclk) begin
        case(state)
            s_valid:begin
                if(w_valid == 2'b00)begin
                    r_q0 <= 32'h00000000;
                    r_q1 <= 32'h00000000;                                
                    r_result <= 2'b10;    
                end else if (w_valid == 2'b01) begin
                    r_q0 <= w_q0;
                    r_q1 <= w_q1;                   
                    state <= s_h;
                end else begin
                    state <= s_valid;
                end        
            end
            
            s_h:begin
                r_q0 <= w_h_q0;
                r_q1 <= w_h_q1;
                state <= s_measure1;    
            end
            
            s_measure1:begin
                m_en <= 1'b1;
                if(w_m1_done == 1'b0)begin
                    state <= s_measure1;
                end else begin
                    m_en <= 1'b0;
                    r_q0 <= w_m1_q0;
                    r_q1 <= w_m1_q1;
                    if(w_m1_value == 1'b0) begin
                        state <= s_measure2;
                    end else begin
                        state <= s_x;
                    end
                end
            end
            
            s_x:begin
                r_q0 <= w_x_q0;
                r_q1 <= w_x_q1;
                state <= s_measure2;
            end
            
            s_measure2:begin
                m_en <= 1'b1;
                if(w_m1_done == 1'b0)begin
                    state <= s_measure2;
                end else begin
                    m_en <= 1'b0;
                    r_q0 <= w_m1_q0;
                    r_q1 <= w_m1_q1;
                    if(w_m1_value == 1'b0) begin
                        r_result <= 1'b00;
                    end else begin
                        r_result <= 1'b01;
                    end
                end                
            end
            
        endcase    
    end
       
    assign o_q0 = r_q0;
    assign o_q1 = r_q1;    
    assign m_result = r_result;
        
endmodule
