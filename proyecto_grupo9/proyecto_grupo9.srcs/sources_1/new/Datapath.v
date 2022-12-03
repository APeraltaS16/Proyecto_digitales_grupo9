`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2022 18:35:54
// Design Name: 
// Module Name: Datapath
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


module Datapath(clk, DA, BA, AA, MB, FS, MD, RW, MW,  IM_cut_out,Data_in, A_output,mux_B_output,Z,N);
    input [2:0]DA, AA,BA;
    input [7:0]IM_cut_out;
    input [3:0]FS;
    input MB, MD, RW, MW,clk;
    input [7:0]Data_in;
    output [7:0]A_output,mux_B_output;
    output Z,N;
    
    wire [7:0]A,B_out,F,BUS_D;
    
    assign A_output = A;
    assign mux_B_output = B_out;
    MUX_Reg MUXB(B,IM_cut_out,MB,B_out); // mux b B valor 0, IM_cut_out 1
    MUX_Reg MUXD(F,Data_in, MD, BUS_D ); // mux d F valor 0, Data_in 1
    
    Register_File RF1(AA, BA, A, B,RW, DA, BUS_D, clk); // el register file :)
    
    Function_Unit FU1(A,B_out,FS, G,H,F,Z,N); // cambiarlo con lo de frobs
    
endmodule