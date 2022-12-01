`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2022 11:24:05 PM
// Design Name: 
// Module Name: Function_Unit_tb
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


module Function_Unit_tb();
    
    reg     [7:0] A, B;
    reg     [3:0] G;
    reg     [1:0] H;
    reg           MF;
    wire    [7:0] F;
    wire          Z, N;

    Function_Unit uut (A, B, MF, G, H, F, Z, N); 
    
    initial begin
        A = 8'b001001;
        // cachar si es comp 2 para tb y sumas aaaa
    
    end
endmodule