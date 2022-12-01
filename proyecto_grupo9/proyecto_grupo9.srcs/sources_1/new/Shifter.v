`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2022 10:26:42 PM
// Design Name: 
// Module Name: Shifter
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


module Shifter(
    input       [7:0] B,
    input       [1:0] H,
    output reg  [7:0] F
    );
    
    always @(*) begin
        case(H)
            
            // F = B
            2'b00: begin
                F <= B;
            end
            
            // F = sr B
            2'b00: begin
                F <= B >> 1;
            end
            
            // F = sl B
            2'b00: begin
                F <= B << 1;
            end
        endcase
    end
endmodule
