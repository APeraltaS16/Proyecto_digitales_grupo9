`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2022 20:24:45
// Design Name: 
// Module Name: Intruciton_Decoder
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


module Intruciton_Decoder(intruction, control_word);
    input [15:0] intruction;
    output [19:0] control_word;
    
    wire value6,value3,value2;
    
    assign value3 = (intruction[14] & ~intruction[15]);
    assign value2 = (intruction[14] & intruction[15]);
    assign value6 = (intruction[9] & ~value2);
    
    assign control_word = {intruction[8:0], intruction[15], intruction[12:10], value6,intruction[5],~intruction[13],value3,value2,intruction[9]};
endmodule
