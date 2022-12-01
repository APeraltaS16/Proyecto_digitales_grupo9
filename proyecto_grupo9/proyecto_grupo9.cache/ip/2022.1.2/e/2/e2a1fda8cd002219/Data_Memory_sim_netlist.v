// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1.2 (win64) Build 3605665 Fri Aug  5 22:53:37 MDT 2022
// Date        : Wed Nov 30 23:26:00 2022
// Host        : vic_aperalts running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Data_Memory_sim_netlist.v
// Design      : Data_Memory
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Data_Memory,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2022.1.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9728)
`pragma protect data_block
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
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
