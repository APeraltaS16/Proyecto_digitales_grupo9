`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2022 11:21:13 PM
// Design Name: 
// Module Name: Control_Unit
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


module Control_Unit(clk,A,Z,N, DA, BA, AA, MB, FS, MD, RW, MW,  IM_cut_out);
    input [7:0]A;
    input Z,N, clk;
    output [2:0]DA, AA,BA;
    output [7:0]IM_cut_out;
    output [3:0]FS;
    output MB, MD, RW, MW;
    
    wire PL, JB, BC;
    wire [7:0]PC_out;
    wire [15:0]IM_out;
    wire [7:0]IM_out_in_pc;
    wire [19:0] control_word;
    
    assign IM_cut_out = {5'b00000,IM_out[2:0]}; // zero fill IR(2:0)
    assign IM_out_in_pc = {2'b00,IM_out[8:6],IM_out[2:0]}; // extend señal IR(8:6)...
    
    Clock_Divider CD1(clk, 2'b01, clock); //00 full, 01 fast, 10 normal, 11 slow
    PC PC1(A,IM_out_in_pc,BC_out,clock,PC_out); //PC, si BC_out 00 O 11 sigue siguiente señal, 01 el valor de A, 10 IM
    
    Instruction_Memory IM1(PC_out,IM_out); // ROM de Intrucion memory
    
    Intruciton_Decoder ID1(IM_out, control_word); // Intruction decoder, foto whatsapp
    
    assign DA = control_word[19:17]; // separamos la control word en las distintas señales
    assign AA = control_word[16:14];
    assign BA = control_word[13:11];
    assign MB = control_word[10];
    assign FS = control_word[9:6];
    assign MD = control_word[5];
    assign RW = control_word[4];
    assign MW = control_word[3];
    assign PL = control_word[2];
    assign JB = control_word[1];
    assign BC = control_word[0];
    
    Branch_Control BC1(N,Z, PL,JB,BC,clock, BC_out);
    
    
endmodule
