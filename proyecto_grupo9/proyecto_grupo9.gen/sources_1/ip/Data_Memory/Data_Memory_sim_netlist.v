// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1.2 (win64) Build 3605665 Fri Aug  5 22:53:37 MDT 2022
// Date        : Wed Nov 30 23:26:00 2022
// Host        : vic_aperalts running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/alons/Desktop/puc/2022-2/sistemas_digitales/proyecto_grupo9/Proyecto_digitales_grupo9/proyecto_grupo9/proyecto_grupo9.gen/sources_1/ip/Data_Memory/Data_Memory_sim_netlist.v
// Design      : Data_Memory
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Data_Memory,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2022.1.2" *) 
(* NotValidForBitStream *)
module Data_Memory
   (a,
    d,
    clk,
    we,
    spo);
  input [6:0]a;
  input [7:0]d;
  input clk;
  input we;
  output [7:0]spo;

  wire [6:0]a;
  wire clk;
  wire [7:0]d;
  wire [7:0]spo;
  wire we;
  wire [7:0]NLW_U0_dpo_UNCONNECTED;
  wire [7:0]NLW_U0_qdpo_UNCONNECTED;
  wire [7:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_CLK = "1" *) 
  (* C_HAS_D = "1" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "1" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "7" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "128" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_i_ce = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_parser_type = "1" *) 
  (* c_pipeline_stages = "0" *) 
  (* c_qualify_we = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "8" *) 
  (* is_du_within_envelope = "true" *) 
  Data_Memory_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(clk),
        .d(d),
        .dpo(NLW_U0_dpo_UNCONNECTED[7:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[7:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[7:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(we));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
LeGfW11jhaz2J+tJMaenLWkjLcTVui+VxPBx+8rOGcckNXfLMz6hIBva/LtsV+2wJyibTPCiSmwc
7a2w1hZUFyVACV9GGi8y0WJ9q3A8RsB7QVTtaZcibjDRLXg4k/3rZRfntRBGdrwRUbZYkRFSEnTl
2OduqlE12sj5Y7iF6zk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
r8t9cQzglpowIt4+xcz/IaQ6hIJgvokVIVr1+ofeCnSW1AhoNDkBOVCYed5NZwqv58LAQ1joHKNg
5DeRcjUda86YtfHgnunZeWDMosIcbOUTFIhSSQAlGnKGBtjOG2QWfhBUsjtxkaPPPm91iippLBYA
9PmfS3n5qJlhEaXlMcWx0HjWoE7ugZGHVyFz4hf50hWWMW/JHymATMtuBic9wb+uq0a4oI0HyS/l
iUI/ZwfztlvtKg5XQGpHcMLZxY2SIWdjrUIBT+0/NjomElyFl9kJeuz+6tBdE7JPsmel3cbxC1fW
sz6ZsGtad7GZn1WyYqCJ9UoNPozkAxmABGY8uA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
kShj4t8lODJ929HlsKCY/+5ZeTnPI9puI9QoNxPLe6eNy/+KnFhGrS0u5vusA6SvacoSwNgJhKUJ
2a++O1t2UCEbOBHpBwE904A4FnPrjLrNRV5TSkHTZxPO3LQJcNGnoe6zS3+hmNfVLL5eQUN1clV7
5ffErvjamS6EB7Ll25M=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
IesG4t3FxfHK+fEs4aT02sI8WVDIDncfRFbvXnWC8GwE91EP/dgDdTolq3nbrXf/+Qc6n54MCAyK
X2UodnEGcvj55W2heas/mBgClp8MOVqdBT10qZGgkvoVeLV9ov0bKgKJwFORTJZHhhou5ANX9/j0
+7drtgFvrYOeSaldsQDCIs91T+ZjNX8R7D2K3RnxjohFgZ1KMhogeqPIlFmpLiFHK4NdmgzC+lK5
W2FDcKN4fsdHtQX7qxZVJf25BL4+D1b0KgV6R5Q8O6uNPo+4FPAzb8rVVXda3EdmCQVgDdKd6hbi
N88MJoBnLd9Xbm0nQ7ir9ICJaQg7i2IQmFUL5w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ZRawUDY2fbiuyochuUH5I82q+us23iyqE0jz9w5r3v2OmTWRs0lTLKFf7sj6u0rlH6HlaUU9lfv/
kgZjpeombPnZI6sc5Q2/InLei90Es6fcUz0KM/0aW6lEq09pYS8jDU/zb8vFEkPyY8uFpgl1lgIh
sqTKAwub+VhJqkTaMghX64hneZ4H8k1CDqZ0JsQYvMKVqHZ8l3sh0ZujpYQC1NiLQUgyfwmebC/p
qkQYA1GGWRqKO+cg/dPVl7evcaRMQjhtgPQ/Zdl2UadJpT4N3lhwKiwjt4Y7vTswI7IlEVY/KFOU
s8WTCNCg5Z0uB7tL2fd9V9MH0D/BWZk1loGi1Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qXrHOJ4zjC6mSLsS/WK+Z/7gei2W4oZM7/nhA46tliEiiwNr8xFMmmhjhF2165yByTNOp5u/G4yc
WqvvVCktSptdefOgNeS7cjhYYUt4rD5NRCLNNWClDYyLB1Jd9OtRM4WTPdxE57cHrWQTgNFOeYec
MBPsYJ9vZC1/rbscprGo2u7dfscYqxwzEJfrmKue+dVEqdpfJLlSdqobjrKDGKr2JZyEuH+wnA0s
feX9R6OeA8QHRJ5Rt+wSRK5x6jjAQImEriVwbZzWU490bTOGFVoMPrlsFAHz4bhgK5T+vR899UqI
TTEW9zxG0lhTE1sLa5DS8Y3YRrH0q2XxVP2TmA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bhYdz5Gt8Cr+8bSoHN+XQ1ZpiSyf1FbANMacYm4zOGxLYIUOltMC7URrvaM51stDXTvBSVgDpKll
oNKLYr7jWqII3JpNoTThJngO8baOsV+/enItW2oAABSEV/u56OPBBChP43TU+tAy2cwEdjTf5oz9
0/7l2w9V3t2QGjcAZjHEvLOWz6jial7M63OeeowHD0Zjo2a9FxLiD8H7m0B2S63OyqxQoZ/8lo41
SiEHSG+PlBzGa6PJ95XFRqVELCYSHdh6kixD4Ez3Zz5ZtrMU5vuDTM9YPpIICoPLhBFcE9Htn0sL
9PU5SMgLpaa6/AcWScKU4DhXVcbo0l8fc9fFpQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
bbaFvGRmVr/tPJfM/Q5k750HlhRIwDxp1MLbFyafdE1N7QWhihDkGadzmBS2ssFPPb/ZkRFqpIA4
SZR+uc47mdbYEtlrJiCLQOjcqKYn+DPf/5cG+tp7wz3zKxD3fO+dI4e4tMEMkIVC0XrN/LbUOq9g
sexgUi9nu+Mc+BsHmuuWGCDrgfBZa+9C/VTvR3ZIGAhy1tAqgC2r85JOCLT+AuXdMcqV2pEMxoCJ
NJERkNwLFdqn1tcBtzgvAD+AjkJEXJETOkGZvnD8ljo2yezC1siJ/Y78AHRdu4mWbiw2+7YEzPfd
frX0hVweSToMTo5xX/FXL4ESH1uq+d3OxgPMbmvd4c8ocahCUmrKB1yS5NZwV/psMSC6nY6d5gxA
9iQxVWasJv4CYeAQOnuv3tnxIk3yNSjazhS2m5Zjo6UQ87BlLx5YoFybI3dJJfRgF/rWdTrjdnyk
3lpSq5ZudxQzQm+W9YDgO37MR5yqGD4ytr1UBeIM0YNEsTcMQuHxrtu0

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lr93mz6+I7varyuqCVsB7oDLzaoSs0HZFAGTXXCo/sbdlFjDN1mru6nXV9d9mgX2xN1Noy9dJw7d
8UiK6Uvm6oH/lQXrwXiPQfZ2De1Fu20NJnc01icgxnDfMBufXQDjFQz4k0quolkgw+Cpk/aesBym
6E/Dx6fF7X9gZoVjVl6I/K0wFOHiWKPC0lepToEKvexOESyXo1PdBxKhaX+0d1+yaUxcH42E/TLN
+6tc+ZIo2QvKIeBHJ66M/8kIhChGRdGrwP9p1+cP3Tf5GroIu11oiwtP+he0DpVbpzPRD4D3yQ41
ptt5uxo6Sx5OHcF7EIhdBVHhbH1qQpVT9P5zJw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9712)
`pragma protect data_block
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
44+gZLDXujm9G0NSeEeerh5Q2jYwIw==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
