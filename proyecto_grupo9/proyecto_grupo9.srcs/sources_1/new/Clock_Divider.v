`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2022 19:30:35
// Design Name: 
// Module Name: Clock_Divider
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


module Clock_Divider(clk, speed, clock);
    input clk;
    input [1:0]speed;
    output clock;
    
    reg [26:0]full = 26'b000000000000000000000000001;
    reg [26:0]fast = 26'b000010111110101111000010000;
    reg [26:0]normal = 26'b001011111010111100001000000;
    reg [26:0]slow =   26'b010111110101111000010000000;
    
    reg [26:0]clock_divide_max;
    reg [26:0]clock_divide_counter = 26'b0;
    reg internal_clock;
always @(posedge clk)
begin
case(speed)
2'b00: assign clock_divide_max = full;
2'b01:  assign clock_divide_max = fast;
2'b10: assign clock_divide_max = normal;
2'b11:  assign clock_divide_max = slow;
endcase

if (clock_divide_counter >= clock_divide_max) 
    begin
    clock_divide_counter <= 26'b0;
    internal_clock <= ~internal_clock;
    end
else
    clock_divide_counter <= clock_divide_counter + 1;
end

assign clock = internal_clock;
endmodule
