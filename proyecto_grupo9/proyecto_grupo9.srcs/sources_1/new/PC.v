`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2022 19:22:59
// Design Name: 
// Module Name: PC
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


module PC(data_in,loadPC,clk,count_out);
    input [7:0]data_in ;
    input loadPC,clk;
    output reg[7:0] count_out;
    
    
    always @(posedge clk)
    
    begin
        if(loadPC == 1)
            count_out <= data_in;
        else
            count_out = count_out + 1;
    end
    
endmodule
