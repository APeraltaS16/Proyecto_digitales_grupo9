`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.12.2022 23:38:20
// Design Name: 
// Module Name: Branch_Control
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


module Branch_Control(N,Z,PL,JB,BC,clk, BC_out);
    input N,Z,PL,JB,BC,clk;
    output reg[1:0]BC_out; // 00 O 11 sigue siguiente señal, 01 el valor de A, 10 IM
    
    always @(posedge clk)
    
    begin
        if(PL == 0)
            BC_out = 2'b00;
        else if (PL == 0)
            begin
            if (JB == 1)
                BC_out = 2'b01;
            else
                begin
                    if (BC == 0) // branh cero, ni idea cual es la dif con branch negativo
                        BC_out = 2'b10; 
                    else // branch negativo, tampoco se que es
                        BC_out = 2'b10; 
                end
            end
    end
endmodule
