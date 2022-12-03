// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1.2 (win64) Build 3605665 Fri Aug  5 22:53:37 MDT 2022
// Date        : Wed Nov 30 23:46:07 2022
// Host        : vic_aperalts running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/alons/Desktop/puc/2022-2/sistemas_digitales/proyecto_grupo9/Proyecto_digitales_grupo9/proyecto_grupo9/proyecto_grupo9.gen/sources_1/ip/dist_mem_gen_0_1/dist_mem_gen_0_stub.v
// Design      : dist_mem_gen_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2022.1.2" *)
module dist_mem_gen_0(a, d, clk, we, spo)
/* synthesis syn_black_box black_box_pad_pin="a[5:0],d[15:0],clk,we,spo[15:0]" */;
  input [5:0]a;
  input [15:0]d;
  input clk;
  input we;
  output [15:0]spo;
endmodule
