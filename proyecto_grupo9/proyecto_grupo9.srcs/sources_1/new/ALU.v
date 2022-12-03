`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2022 18:37:44
// Design Name: 
// Module Name: Function_Unit
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


module ALU(
    input       [7:0] A,
    input       [7:0] B,
    input       [3:0] G,
    output reg  [7:0] F
    );
    
    wire [7:0] F_inter;
    
    always @(*) begin
        case(G)
            // F = A
            4'b0000: begin
               F <= A;
            end
            //////////////////////
            // F = A + 1
            4'b0001: begin
                sumador_ocho_bits(A, 8'b00000001, 1'b0, F);
            end
            //////////////////////
            // F = A + B
            4'b0010: begin
                sumador_ocho_bits(A, B, 1'b0, F);
            end
            //////////////////////
            // F = A + B + 1
            4'b0011: begin
                sumador_ocho_bits(A, B, 1'b0, F_inter);
                sumador_ocho_bits(F_inter, 8'b00000001, 1'b0, F);
            end
            //////////////////////
            // F = A + ~B
            4'b0100: begin
                sumador_ocho_bits(A, ~B, 1'b0, F);
            end
            //////////////////////
            // F = A + ~B + 1
            4'b0101: begin
                sumador_ocho_bits(A, ~B, 1'b0, F_inter);
                sumador_ocho_bits(F_inter, 8'b00000001, 1'b0, F);
            end
            //////////////////////
            // F = A - 1
            4'b0110: begin
                sumador_ocho_bits(A, 8'b00000001, 1'b1, F);
            end
            //////////////////////
            // F = A
            4'b0111: begin
                F <= A;
            end
            //////////////////////
            // F = A (AND) B
            4'b1000: begin
                F <= A & B;
            end
            4'b1100: begin
                F <= A & B;
            end
            //////////////////////
            // F = A (OR) B
            4'b1001: begin
                F <= A | B;
            end
            4'b1101: begin
                F <= A | B;
            end
            //////////////////////
            // F = A (XOR) B
            4'b1010: begin
                F <= A^B;
            end
            4'b1110: begin
                F <= A^B;
            end
            //////////////////////
            // F = ~A
            4'b1011: begin
                F <= ~A;
            end
            4'b1111: begin
                F <= ~A;
            end
            //////////////////////
        endcase
    end
endmodule