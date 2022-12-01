// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1.2 (win64) Build 3605665 Fri Aug  5 22:53:37 MDT 2022
// Date        : Wed Nov 30 23:46:07 2022
// Host        : vic_aperalts running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/alons/Desktop/puc/2022-2/sistemas_digitales/proyecto_grupo9/Proyecto_digitales_grupo9/proyecto_grupo9/proyecto_grupo9.gen/sources_1/ip/dist_mem_gen_0_1/dist_mem_gen_0_sim_netlist.v
// Design      : dist_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_0,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2022.1.2" *) 
(* NotValidForBitStream *)
module dist_mem_gen_0
   (a,
    d,
    clk,
    we,
    spo);
  input [5:0]a;
  input [15:0]d;
  input clk;
  input we;
  output [15:0]spo;

  wire [5:0]a;
  wire clk;
  wire [15:0]d;
  wire [15:0]spo;
  wire we;
  wire [15:0]NLW_U0_dpo_UNCONNECTED;
  wire [15:0]NLW_U0_qdpo_UNCONNECTED;
  wire [15:0]NLW_U0_qspo_UNCONNECTED;

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
  (* c_addr_width = "6" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "64" *) 
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
  (* c_width = "16" *) 
  (* is_du_within_envelope = "true" *) 
  dist_mem_gen_0_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(clk),
        .d(d),
        .dpo(NLW_U0_dpo_UNCONNECTED[15:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[15:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[15:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 16384)
`pragma protect data_block
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
f9wYF9R1OSbjDjXF7QeqETOxc1HUAmPU0A==
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
