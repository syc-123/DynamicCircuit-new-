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
    input [31: 0] i_qa,
    input [31: 0] i_qb,
    output [31: 0] o_qa,
    output [31: 0] o_qb,
    output [1:0] m_result
    );
    
    localparam [2:0]  s_valid = 3'b000,
                      s_measure1 = 3'b001,
                      s_measure2 = 3'b010,
                      s_x = 3'b011,
                      s_h = 3'b100;                      
                       
    reg [2:0] state = 3'b000;
           
    reg [31:0] r_qa = 0;
    reg [31:0] r_qb = 0;
    
    //set the output of m_result to 11 which stands for no result yet.
    //10 stands for invalid qubit state
    //00 stands for measured as 0
    //01 stands for measured as 1
    reg [1:0] r_result = 2'b11;
    
    reg m_en = 1'b0;    
    
    wire [31:0] w_qa;
    wire [31:0] w_qb;
    wire [1:0] w_valid;
    QValid V(
    i_qa,
    i_qb,
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
    r_qa,
    r_qb,
    w_m1_qa,
    w_m1_qb,
    w_m1_value,
    w_m1_done
    );  
    
    wire [31:0] w_x_qa;
    wire [31:0] w_x_qb;
    Paulix X(    
    r_qa,
    r_qb,
    w_x_qa,
    w_x_qb              
    );
    
    wire [31:0] w_h_qa;
    wire [31:0] w_h_qb;    
    Hadamard H(
    r_qa,
    r_qb,
    w_h_qa,
    w_h_qb    
    );
        
    always@(posedge sysclk) begin
        case(state)
            s_valid:begin
                if(w_valid == 2'b00)begin
                    r_qa <= 32'h00000000;
                    r_qb <= 32'h00000000;                                
                    r_result <= 2'b10;    
                end else if (w_valid == 2'b01) begin
                    r_qa <= w_qa;
                    r_qb <= w_qb;                   
                    state <= s_h;
                end else begin
                    state <= s_valid;
                end        
            end
            
            s_h:begin
                r_qa <= w_h_qa;
                r_qb <= w_h_qb;
                state <= s_measure1;    
            end
            
            s_measure1:begin
                m_en <= 1'b1;
                if(w_m1_done == 1'b0)begin
                    state <= s_measure1;
                end else begin
                    m_en <= 1'b0;
                    r_qa <= w_m1_qa;
                    r_qb <= w_m1_qb;
                    if(w_m1_value == 1'b0) begin
                        state <= s_measure2;
                    end else begin
                        state <= s_x;
                    end
                end
            end
            
            s_x:begin
                r_qa <= w_x_qa;
                r_qb <= w_x_qb;
                state <= s_measure2;
            end
            
            s_measure2:begin
                m_en <= 1'b1;
                if(w_m1_done == 1'b0)begin
                    state <= s_measure2;
                end else begin
                    m_en <= 1'b0;
                    r_qa <= w_m1_qa;
                    r_qb <= w_m1_qb;
                    if(w_m1_value == 1'b0) begin
                        r_result <= 1'b00;
                    end else begin
                        r_result <= 1'b01;
                    end
                end                
            end
            
        endcase    
    end
       
    assign o_qa = r_qa;
    assign o_qb = r_qb;    
    assign m_result = r_result;
        
endmodule
