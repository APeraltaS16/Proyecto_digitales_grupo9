`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2022 18:37:44
// Design Name: 
// Module Name: Register_File
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


module Register_File(AA, BA, A, B,RW, DA, D, clk);
    input [2:0] AA, BA, DA;
    input RW, clk;
    input [7:0] D;
    output reg [7:0] A,B;
    
    reg [7:0]v0,v1,v2,v3,v4,v5,v6,v7;
    
    always @(clk)
    case(RW)
        1'b0:
        begin
        case(AA)
            3'b000: // 0
            A <= v0;
            3'b001: // 1
            A <= v1;
            3'b010: // 2
            A <= v2;
            3'b011: // 3
            A <= v3;
            3'b100: // 4
            A <= v4;
            3'b101: // 5
            A <= v5;
            3'b110: // 6
            A <= v6;
            3'b111: // 7 
            A <= v7;
        endcase
        case(BA)
            3'b000: // 0
            B <= v0;
            3'b001: // 1
            B <= v1;
            3'b010: // 2
            B <= v2;
            3'b011: // 3
            B <= v3;
            3'b100: // 4
            B <= v4;
            3'b101: // 5
            B <= v5;
            3'b110: // 6
            B <= v6;
            3'b111: // 7 
            B <= v7;
        endcase
        end
        1'b1:
        begin
        case(DA)
            3'b000: // 0
            v0 <= D;
            3'b001: // 1
            v1 <= D;
            3'b010: // 2
            v2 <= D;
            3'b011: // 3
            v3 <= D;
            3'b100: // 4
            v4 <= D;
            3'b101: // 5
            v5 <= D;
            3'b110: // 6
            v6 <= D;
            3'b111: // 7 
            v7 <= D;
        endcase
        end
    endcase
endmodule
