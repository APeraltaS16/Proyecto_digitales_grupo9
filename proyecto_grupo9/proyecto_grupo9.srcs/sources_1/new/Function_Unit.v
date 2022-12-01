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


module Function_Unit(
    input       [7:0] A,
    input       [7:0] B,
    input             MF, 
    input       [3:0] G,
    input       [1:0] H,
    output reg  [7:0] F,
    output reg        Z,
    output reg        N
    );
    
    wire [7:0] F_ALU, F_Shifter;
    
    ALU(A, B, G, F_ALU);
    Shifter(B, H, F_Shifter);
    
    
    always @(*) begin
        
        // Flags
        if(F_ALU < 0) begin
            Z <= 1'b0;
            N <= 1'b1;
        end
        else if(F_ALU == 0) begin
            Z <= 1'b1;
            N <= 1'b0;
        end
        else begin
            Z <= 1'b0;
            N <= 1'b0;
        end
        
        /////////////////////////////////
        // MUX
        case(MF)
            1'b0: F <= F_ALU;
            1'b1: F <= F_Shifter;
        endcase
        
    end
endmodule
