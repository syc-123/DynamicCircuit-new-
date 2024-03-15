`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/15 09:56:09
// Design Name: 
// Module Name: Sample_Circuit3
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


module Sample_Circuit3(
    input sysclk,
    input [31: 0] i_qa_0,
    input [31: 0] i_qb_0,
    input [31: 0] i_qa_1,
    input [31: 0] i_qb_1,    
    output [31: 0] o_qa_0,
    output [31: 0] o_qb_0,
    output [31: 0] o_qa_1,
    output [31: 0] o_qb_1,    
    output [2:0] m_result
    );
    localparam [2:0]  s_valid = 3'b000,
                      s_measure1 = 3'b001,
                      s_measure2 = 3'b010,
                      s_x = 3'b011,
                      s_h1 = 3'b100,
                      s_h2 = 3'b101;                      
                       
    reg [2:0] state = 3'b000;
           
    reg [31:0] r_qa_0 = 0;
    reg [31:0] r_qb_0 = 0;
    reg [31:0] r_qa_1 = 0;
    reg [31:0] r_qb_1 = 0;
    
    //set the output of m_result to 111 which stands for no result yet.
    //100 stands for invalid qubit state
    //there're 4 other states of result: 000 001 010 011
    //as long as the first bit become 0, the output makes sense
    //the second bit refers to the result of first measurement
    //the third bit refers to the result of second measurement
    reg [2:0] r_result = 3'b111;
    
    reg m_en = 1'b0;    
    
    wire [31:0] w_qa;
    wire [31:0] w_qb;
    wire [1:0] w_valid;
    QValid V(
    i_qa_0,
    i_qb_0,
    w_qa,
    w_qb,
    w_valid
    );
    
    wire [31:0] w_m1_qa;
    wire [31:0] w_m1_qb;
    wire w_m1_value;
    wire w_m1_done;  
    QMeasure M1(
    m_en,
    sysclk,
    r_qa_0,
    r_qb_0,
    w_m1_qa,
    w_m1_qb,
    w_m1_value,
    w_m1_done
    );  

    wire [31:0] w_m2_qa;
    wire [31:0] w_m2_qb;
    wire w_m2_value;
    wire w_m2_done;  
    QMeasure M2(
    m_en,
    sysclk,
    r_qa_1,
    r_qb_1,
    w_m2_qa,
    w_m2_qb,
    w_m2_value,
    w_m2_done
    );
    
    wire [31:0] w_x_qa;
    wire [31:0] w_x_qb;
    Paulix X(    
    r_qa_1,
    r_qb_1,
    w_x_qa,
    w_x_qb              
    );
    
    wire [31:0] w_h_qa_0;
    wire [31:0] w_h_qb_0;    
    Hadamard H1(
    r_qa_0,
    r_qb_0,
    w_h_qa_0,
    w_h_qb_0    
    );
 
    wire [31:0] w_h_qa_1;
    wire [31:0] w_h_qb_1;    
    Hadamard H2(
    r_qa_1,
    r_qb_1,
    w_h_qa_1,
    w_h_qb_1    
    );
           
    always@(posedge sysclk) begin
        case(state)
            s_valid:begin
                if(w_valid == 2'b00)begin
                    r_qa_0 <= 32'h00000000;
                    r_qb_0 <= 32'h00000000;                                
                    r_result <= 2'b10;    
                end else if (w_valid == 2'b01) begin
                    r_qa_0 <= w_qa;
                    r_qb_0 <= w_qb;
                    r_result[2] <= 1'b0;                   
                    state <= s_h1;
                end else begin
                    state <= s_valid;
                end        
            end
            
            s_h1:begin
                r_qa_0 <= w_h_qa_0;
                r_qb_0 <= w_h_qb_0;
                state <= s_measure1;    
            end
            
            s_measure1:begin
                m_en <= 1'b1;
                if(w_m1_done == 1'b0)begin
                    state <= s_measure1;
                end else begin
                    m_en <= 1'b0;
                    r_qa_0 <= w_m1_qa;
                    r_qb_0 <= w_m1_qb;
                    if(w_m1_value == 1'b0) begin
                        r_result[1] <= 1'b0;
                        state <= s_x;
                    end else begin
                        r_result[1] <= 1'b1;
                        state <= s_h2;
                    end
                end
            end
            
            s_x:begin
                r_qa_1 <= w_x_qa;
                r_qb_1 <= w_x_qb;
                state <= s_measure2;
            end
            
            s_h2:begin
                r_qa_1 <= w_h_qa_1;
                r_qb_1 <= w_h_qb_1;
            end
            
            s_measure2:begin
                m_en <= 1'b1;
                if(w_m2_done == 1'b0)begin
                    state <= s_measure2;
                end else begin
                    m_en <= 1'b0;
                    r_qa_1 <= w_m2_qa;
                    r_qb_1 <= w_m2_qb;
                    if(w_m2_value == 1'b0) begin
                        r_result[0] <= 1'b0;
                    end else begin
                        r_result[0] <= 1'b1;
                    end
                end                
            end
            
        endcase    
    end
       
    assign o_qa_0 = r_qa_0;
    assign o_qb_0 = r_qb_0;
    assign o_qa_1 = r_qa_1;
    assign o_qb_1 = r_qb_1;          
    assign m_result = r_result;

endmodule
