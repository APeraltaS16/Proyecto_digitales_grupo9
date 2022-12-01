`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2022 23:02:47
// Design Name: 
// Module Name: MUX_Reg
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


module MUX_Reg(Value1, Value2, selector ,Salida);
    input [7:0] Value1, Value2;
    input selector;
    output reg [7:0] Salida;
    
    always @*
    case(selector)
        1'b0:
            Salida <= Value1;
        1'b1:
            Salida <= Value2;
    endcase
endmodule
