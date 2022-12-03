`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.12.2022 00:25:00
// Design Name: 
// Module Name: TOP
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


module TOP(clk,led,seg,an);
    input clk;
    output led,seg,an;
    
    wire PL, JB, BC,Z,N,MB, MD, RW, MW;
    wire [3:0]FS;
    wire [2:0]DA, AA,BA;
    wire [7:0]Data_in, A_output,mux_B_output,IM_cut_out;
    
    Datapath DP1(clk, DA, BA, AA, MB, FS, MD, RW, MW,  IM_cut_out,Data_in, A_output,mux_B_output,Z,N);
    Control_Unit CU1(clk,A_output,Z,N, DA, BA, AA, MB, FS, MD, RW, MW,  IM_cut_out);
    Data_Memory DM1(mux_B_output, A_output,clk,MW,Data_in);
endmodule
