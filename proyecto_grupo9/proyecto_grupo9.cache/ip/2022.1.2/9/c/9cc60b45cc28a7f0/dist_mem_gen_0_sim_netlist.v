// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1.2 (win64) Build 3605665 Fri Aug  5 22:53:37 MDT 2022
// Date        : Wed Nov 30 23:46:06 2022
// Host        : vic_aperalts running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dist_mem_gen_0_sim_netlist.v
// Design      : dist_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_0,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2022.1.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 U0
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
YjVYIJYnJySpRz9/u1H6RQ5wdUPExwoDmRw8O/83bCuzYRAihPSw7lYde6Y7Hg/6BPC8JQp2wZnN
ic3IQkejHvH89iCWyWUPfg4lVLfv9U6j6RIAaLfO1fePr2LA8vM6jCj5m6K84mc3sK4L7IC50OSe
1ctkrAhmq3Er7Ge47Rv9jB+XSBglY0qWlqWsN2UKbV8XkklEeFeiVFfu7ugAOZZIpMc1+8jliEM+
JGhC+CEmkL8Mu9XQWvBTiPj/93QhD6d76nJk3lxP0+nNxhjxX9ObdCkK+FSvKpdrMBxiDw4vPtYl
EW3S0CZrIpnf4xuO/xWVQeEHnU4suq+JXG8jdUP4M/hzbXlt/KCij9AJ6WvwWWprDOZ8lZgnJEOM
F7RCMYQ85dNv4mge+Ji31P+3KNBfRR72lYGbMIotpyea8Mjn4Ta6pEN3n0xQJcl4XAIlpaRyoKCZ
S6T49+jt0As0qruK2jsztD/37rEkvJLooypEcIe7SJfzB1hv100bvMCPBA+foPdDc98Hhxlq+OjM
Lnd2c05wlDpXZuNTMZBu2WvdrP9mjg/QFt4lbe410USBnGut2iWMnj6uLOyP5xjtbWi82f/DwbIN
xv7tf7JbB+Xs6VT2K1pNFgy+5bM/EepaBKY/2oQpgqf2vvm7Ii92u7hlXV982k1DBpGe/myYrzXp
IQiCBM+bwKDtyMGIg33ccKA909iZUumrGFX3zrEQiit9st9MxIbOeO/EiykiD1HnzJSqaDaoET8w
LYewwEz26JqRll7N/1RaKmuMIPmKHu+CW4DOnW4MvahZ9KVj6iR1Ykyn/bCKYoWPf4Zg/kEMjtZO
n15qGg5J2UD685pM9exBAEUkfWy3s92UgfAFcKusY9UUiSM4vvIy21TR0a92P6MEHUPTGOlm0/Km
AGuuqeI7eojkx7pc2VTNLwa9aW+mvfc5IRETk9y71iBb/rLswN3s1l+OS/ZvZfQ1GxCPkKnbj+Ff
gj5tRS0P7mezK6ic8jKujj+XjFpZytqp1/SmctjqiXDB5mld5cxr0bDf2Vs78pyQyqdJjstxXw9/
qXBaBWHu+CjhS47BzqNn9Nhm8LrKlCGFejh3dsjTeLTvfj2xg2MAi+kKHgLdJfGDfE8tIeo8KvD7
SqKWzYMs8Icrm0u4TAoJ6nV1waMJnNlo3CEI8bIriE3A4w5hS7Es7FHpEX2qt4mEcZ81J/jm0OuL
fw6/v0VAIrq3uKZ8Wg36O1AreH0ts6KR2NeMsD4M1SftO0XdFT0ooc+4Hl7aQ1JB8DEIv2d1vxmi
x0TfgG2p/aYiWz/Lg2pxy8PTcGLiv2AWOJSSR7LXG+38A4VlsyqhxDB9QFBcVeojrtkjs//g+q7F
3wALAGBQgK/ezEb9dnyIcPJ2J90Xho2PDdg05BehLiiTM0VBaPaXImgahg08mLbMhoTe6JGrCJeI
AEedFC0lkJj1aV3Q73908/ZcX88FFuyb4MEQNEYCEuRynJCm0kyzNHvLDP6o2Aww6OQPg8+69EER
dLs9k5ZqC8UdhPlFJyi8T3JDjizsJy4A1LLASyAZXSEyCA1VdR9gYoVsOcIY4s8bD6bHa/gbM2DM
U9RkjiXJq7Lxi+ywDccjKGgUUkl2/2Oxq7WUiN3pORbQNX1Up2X+pjDHVVUfSAQxQAa8DQVTXztC
BTzlowfDUf0OTErxu+CkYriHFXPOhu/veskZtymnW5KLtDZGaRnjw2AVnuqO4UgO+3It8nNu48iM
RPPQIrFLrNnKytHw1LVvW8rgtsEeSEMV/kHW9Ye2guwoYSdviiF8Eh3poEF1iBrx3ilN0vkSXZMc
j4c0PrZmpWyURzQvFPsaBkzrRK7I1xq4JkbK+xKwWZxyC1wnplAn02ouSDLaUWmS16/s2wDohNZf
O99yjdGzonxK4yrch/mMfNaaaABThVqgWBbsHm1sZIS7FE8wXElaYImynvjyCWEaiO+b0SRAPNMt
cdXKoXL6eK7M9Y6cGxKyiROv0zbhTA1CrwnHJ0PXBDosWzm1eIYdm0dQTk2xt02QFfDTlkwjYnfV
7l+LT8nBMVJ3M1DwZ288s/K7uPEafVSGgeNQJwTGUiPFCxBLsGhGtsjpjIqcSzaG30OGyfO3idts
Iy5ZBethYx7/qT+0qloms6rS1gJ7Vsgr0u3K2Y1qkPCwz3P4bb1S1AGLSnvrMZLhDekgAI5vz8LW
LnSdw8Sicj4M9DCuEoZn9G5hTig5cs4EjHHNIQEXIkPf7U9LWKV0vFTUwBCZwgcOo0oSiQn7cPjz
MtOOpbTCaqOvwJ+/WsowArRRHkd5luV3LtHbistEUEDz6kadc57NuhfnCg2zJ8flCHvRIIHK7Qpl
WwbIT4lRng7KtNEd6LfZYdIU0Ccm2MH1Z3S2CSp/GXDdIBNsGqF1Y9EWqCHhEDwF+Ufne49pNSsI
ds4sgnmgcLzxbXTxIDQSyuaQsvkJeyACVTV93sJ9A36tgyPJIsROiFcRqlDh+oZvEcTH/86qycvt
jlsOuiVU6IMmp0msSGDTalReK8FiAUDPHDpBETYnWCrLAaoazBSghoIc4tok1F/wn6A9ZbUy+QYb
xHtNTk16LxUHUzMLtMlXKLi4AQl48UrDI9KgDYki4v+3j53ooN81N+R+qZnX7fQUsTYKBKv0FkSQ
KBnuAWfU6i8OwVChAXKE0ERDM1vVYghcR6qyHP5As3VngMKRKIP3kbzjzYD4y3pwu/BCgJ1TiCBo
+M8as3XinasFSSZ8rRCUXJzb7zknwRNqd3BuoLHNU+f/DSJlmlyyOZRFd4sZmFGvG6YDRF+vj1i3
qd6jdq4uD1V+Bz2Tcw5HFRrw4zB3cIcST3GqDTETcwIO1dupT2ELdCw6NRoMll7LHSR0dEDogYzQ
YxxVWp7k0l9QvSR+ZrrG2Fj8GdMKZb7Mi/y/k+yqcT2SME3eXPKFyawgNx8AVJGGudVaiVyBhuv+
sYci6u+W4OR6jTbBEf3Mr8nrGlen/DhaGQ3sxtvwlFK031RpfiagNXbkhwXSyTGi3LnIGgKnZ5MB
FBDFTVlo35Mf09ljb8+Eiy4C0rd9wdV+gLhjCMj5sy3HvamoJgzkgCIOIwpHsCobbvnrggQbSA37
1HJ9bHImjvyXhY0BHIVY75YDsOncyhjNBd20VPIEh6fUDOS2y8Qz0iCCAzRgFWysd4EXhlgWdb9D
KTvuDElYKjYj+IzvaikAniFmStfiP941He3FuOLhvYJ5SjkZu2HOPXpuWZ1jAh3RQGg8Quz6kHxt
qDpPPG31P5uK2GnbyM0iU3BWDBY+oslcdqEDeuZ4qwdqLhedUjE1tg4xhzZC+eKITHOyK4YTRp4E
tVT6wfrTRlMw8PXCxtVzYmbjlX3HQeqMaXNB3oq8NCt+3G6KJBU6CJVcSDm7r/KhnHi/SyrOR2zK
sX5XWKTUQEcIa7PczgP0F3HDM6KsHtPWxWb+s0vH8PkASaPJ0YrsClWNiQC16ZlWiJUd4+jzdmRt
ZjNU6JZNjN426ARgM0538TcHt9PRc4c109bQCAmwYPvC2fDawlMSjGXvcoBFudp6ccqEQmecSnJj
50v2Ld9yNdKMpr/hrklsh0Z5Niujwb16jKVs/J3XFQqxD6PO8FUQLJbFh9gcKpJCI8kG/RvA903X
YWx33MwXgpYpN7mcWHFX3iN107vBCFv96y60lDxzdyAsof5UaQPpesBOcki709y4cG9YD00rLYjb
LdQgkTusfrqsIkeTTWZxK7A+olSvEKtJZUDy25t/InaR/a36MZATyrdS5LBFA7UmooGeVjfwD3hw
VKu1DmarQAK/ye5T4dDrSMh/s1dGASbtrvbCwy9pjwIpoV8fGVNKxE7zDys3L5Px5uoA0mZU8J1l
iz4jTUYzWB5s/0PPUDhfFQd98GzugxuIvKlv9p1HSGHNVkBsx0JQaEKc+JhMbTu5cAdf2B4BxDrG
otjtheQLorkomqfShSuku/t82KmBKjL+5qYdgGZ2/0V329vxmz0gfkHSCqESuPDrbf0R3+aJuqjc
3ifz9ROflzk2PgBV1UlzzziaBWQtNY9QsOHjhZJdO0Ne1ca1DaZh0W1aUo5DcIC5K4MH9XzcZ6la
Lvm0IOfcheUR5PnZms/ZYihXLuTpCuG1GuprHGN+OH63kcjGUOAOt3NbjhzvKOR0PUpIKvLeK9f1
XGind2dpWcFiNNc242pzfnfzpMSdQnqgG1qoGie3g74K5qiTXrPQrgH+uNrY8K6n1GH0sPP8yPQh
4Ff4oWxO0gt3M8R0lr46q8+YWp+k+2QL2X1pa47GS/+Hx8mbcuLX7gwz6pFoOEtgLY2hujNfGUYJ
Q/mqargwltHM8baSns7UCgRWE3pDMelGPTN+v/znq6VZ8GHSb3KMRt+EppcBSjZVU53MSjKS9XwG
XCXqLKcfvtnR+HgrT8JRdQvPCeb7MnrmLJ5r+G4+OtHQzQJnOqJHibDIplf6iQC0L2nQ9wOSI7yl
m/Y6qcsDnBxCc42U7RmGiv5nx4m8maRu74V5v+NKsEjgVCUMJ6DsqhcIbiQDSfGpoB2fgwft/SWp
YNxwRQsRL1wP+NJwfhwM4ncGzwmna16u5gMJk0107LKpIgi523GE8FqvWljExJlQqArXjHU4n93g
mQSvL3+0jRe6IbPlKsg2CaiD51mGazv7LXitBmQ5pq7BqmVi7ckIPW+79VlNgMZ13et8JclVgDCI
H5OImmcUgzDkFJ98wG26W5KShM914FN8Ow2ejcXpyI9s4li+FxOB2lAT11Kt4oybcY05udtkHhlJ
mIuOHoCjkXSFViLMxDpSYkrm8SvqI0KWbYCXp51BWsiKSgqHJeYEKGMwEAGz4OglbMSRlVKU8hnq
0/0pTtDX7UgwbNSeaQjkcRa/K314FG/dA6hxFX110vn+Ls62vkwuXtRhVn/dGTUeEMaRlLz/9pPz
93hvcXB9Q396+ci/PcTZYHybV7JOqUiBsZMOuBvROrIj0qD5fIdnMXzDGD7L7QSWlgFxUNIFDZKU
BwFGwBLE/mK7+1UvnFjhBrKfydtYHqUP9S8xeMUDOdOoAL7SWFshvAD4Bbhzr4dBHpJ7WWUR7sUu
keczQfo+XLpPLS8Xy5c8Re6Ddrws/69VSDVar+QCx6z0+92XBVaUQDiaWj+i4wftJ2CQKRVhFfbY
yrcea8Yo3tAuK84liGQb1q01Dpya1bDOEuNdq2vPMqRDGaOEQqZiaEz6apEGpLw5QcAxwfBkdq48
aeo1YFpbJqUCmUbi9eC6IhjBCtRNwQm+kOCTeNExi2ePVzODUaGc+Rk6gItBac50iiEb4S2HGmUZ
rN5hwcM2Kc/sfKQPt1GkezPtxL3xEIteU3oJtTyzhEHn2/ijk7Z5abv+zWApY5SHFTndrXtxIgSz
we48AUrk6mGPx//jU6KbiGNtRtFTo8fukRcC8+L1y9qhF8Xt67c013JjRSSIzRuKokheoPyGZVQL
O/8iyT3poL3JrVjtJP5zT3Lqw0+bMTfzNwQWkzRDNJnzB/piNaV0/il+596riP5MQHl4RCFQ94bH
N7VSi70UMDi3gwqVJKmspq3BqTbLgGGDQ5vFfA35oxhM6MAy5tKwsqeRsockiZT9jU1maiW0ohy5
dfzUBbuuoeJSLq2w1O0wATzvp+zl/hSU4rSgH8JvXpKfcAlXA85edOtWP1si2q3lxc96IvCJ1on2
S69kok+wcwlLPx0aob+NmQetnbnZ9xe1hdMhZJTFMdOZ+H8LC6F9K9EX7PhUS1sNp3TAmB+0Bu0K
FnIQF59iRTNruE24uPQbMNaNc1/zPRoIupHHDFCekhKp9zAkNesf4ue/3wp/oN2UVsg/DebNxkiy
lGZRCAPD3UnBqi0eWJKjdHWS/tbmRPFLmBeKI1pH4M+X0vRTo1/qWPnpezhsdrV+Fkn4q95NM0gm
VPhWravYhwWjCm+cMPkLvUh9Y2Bdk6jxZuY0i42T3AAn6OsVbuXKt5CReRohPuzvbgBKzUI/IKV5
MX/cgHZhgSTct/0ArJo9plB9mUpltK5YH8qiMZvLfJO++aT58cd6tkyK3FEfqb4IxAUhcTahERs/
x8FJaCYWcGbDqipTQ0Sv9QtwEL0FgseDkwPOBLvskeZD30Yx1eXkFHORMM9uJi0xJ+pflHiVTpQw
Wa6A6AS05Y24h7YkqYTCvcPQW4CzUpHTySteKLrp22ouPKPD59DU5uYi2hwnYtGOU4A65lxCbP87
cuuEML60SvkXUq/gDbklmolvKWqao5WFMxdOqg2+uw7G3RUkRLg7aBOvQ7U2IB5Y4iCPFTF09fX1
8rrqf20LYcIfT3MRvroXlWNB5dOsxO1vvv9yuaNaadFoniAyKhyhakyhOy/8UMFOgOY/NTMf45GP
klgwbaFQaoJ2EhBpcl/MGTqic/GF8aaAZAxUKOcJpf8tA6/ZucN6etS6EhnVTpPl2D42PaT1C7n1
YiGu8kXfY47lJUUp1IqZrNfbHa7QM5RINQhdToP8tR7hGTmuSHaENQBzninEotIApl1WBbtFxqUL
CnTet52AspI648acW/IlNZqEFJEkSY8yNhW+xvgEdnLakbDEtKHiJ3Hcrw7QjjA0tmcXLRoAsBqt
LEp8oBINjMO/6rq13NJSyYU+U6PEgzLqm7LLZUk1xrgwkbUKgbCSjCqgiDYN1mqDaxUswMXg/XZp
sL4MzPCkFne4JnH0yi5MqzI4GuyCB45vueFBunwPdrw81ol4TphWvk0DJtc2Rs/ZhYbEFCi00SRr
403KS5CA2Jotdi7N2yauwfzdt7gMGft0eY/ubAdCkvTV+x0uMbHJXCnqNsJbGp62pckvB+3ygVD1
QLSXdUIea4UooNpleaO4HRT0r0CZuOsFuy1ZaDVnQZzYpO10O3HWVrGGZvTai6MGTlsmDtDCB8oy
/NEd0Am6mzmnYApCfEp/JTnKF6oNIogaX96aM56rCwa+HmMRc/rm0xx+3q+GR28G44QGThoiPbsl
iDcRt/w0MM06wwZZ6qgb4Kl5EkmxogfL9leefGK2oKloULJcIjzkCiB7UQJBj4FR+KmuNldgIWK5
G3fKHtGMSaXVn9huszNuT9jXhHFY2noqzhn3zjLLvEVYnEzTxnfAQiKWQiqUBsenEG+PTAF2PzSY
+p7xMj+B1CzqMD5QF+mpx1H2M0zQ1u3VTBGD/AhmHBjlOA2dmSAV1JMq8AG1Pb8SXo6pxfOudDwr
QDcIm/0+o5paMUsWFRtWZc0HWnOlrSyx/VM7pX6ofBnfPvU6NnOcInDQuLn/uqznWHrUo1Vg+ups
qDfFBDdV/XMXQJNff9EovlBYeyOybG73PT4ONciWlgIYDoskwazOoc1NhptitlLLYpNvRLngQW8j
NMQA9IyHMrGHXtTjBXrejmtWXPC5MtbbYLIFzwuzkPr1UC8jdBPnnF4H1HzVbVWn507tZ53qtZV5
K9uWtVKDg3Cp5PXkXMmpg0XE0GqoA/oaKWMfElC9seftG1iv63oajx1txLtsO7OgY4OMc6UC/Dxu
bHmIBbQVmkJ3RQYxFWjd7faycMTdvSf6CB+p+Dfa3VKvOfbTRGNOuDAfBHZZcPCwPOqpTLSx6mzL
1DVmhUdGgyhQaUCkvbzCY3PXWPVA6lx4ur6FOzAd4yBi91U/b/pLP4H6B0GTHC0u9KdG0/xUXzCU
Y8qtbbCKMe3pE/+Z0rxTQnSPcejmtE60QYgplqmOrfZqwO0TVUMX1kagB+1IchBNL8CQhRN53r64
IiZXGnl0G0FQD4jVfWUQr534UHY8dqfAp2dKOKQTE8hv1Wa2xPARopFonN2bm3DXJisQ9O6AvzB/
EijCxETIQc0IORDlmR0bGOeF/peW//3xSxExBeX/++iGxpxLyyR30Frb0tsyVY9efHNQDxsv76Lf
ip4qD2FpKFidP5xn0YTnp8cInxIlgYd3/AzUsbRu6yNSghFHceuw7lEQ6i4jogGKM4CYiAQE08mm
G4XUaCuTYMY4ma9k6EL95xpXcDB1erFsuV0wMJ2LBZFtdnyoG6TKJpuZHokmr86MLoUUNk7pG7CH
l3Nsd5eDN+KTUA2C3JkcqycVsCzNg980l9PB+ieJe4pv+LcPqQ0ssjPEeCLujwrmWBrJvFPl37vB
GkQjjX+BRkyZPIkuDdWswEJNY2yZ3lFV7ysggyQPjsBTJIt+Sp1GH/N0pg6eHayXu95RMn8EHUTl
gzDD3l9iuAd057omPcpfEw/zkq9vVvmkgwVbscYgpZtOHg7cN8w0+rsdOWqX/SJ13LjeXGYuUEEb
3HQ9Egsuk/MtCoTHS1lZUp30eDo9MnpG1TMeezac/upYQzZGI5wndy/NtuDW6zeMf/jxHGOBlshA
ooNVOsHD/9E3i93Eu1QseNMBl8Gu6lSoJuU7gzCBDKpnJmx5Z1o82ctvBiBuDJ6RCCFUN0DUWK+t
mGy3fmDmmFavoFf5HLDfDauJz2QFN/pNipB/+4iYlJ6IkuPupsftGilNsjHsRkt+/9b/ohbf8h6O
7go4WMLVmBVGFow4mFxTYrNq8sS/6fainyjdqubQosVMhj+UwvAMwvKxywcZrbmUh28kCOVBTe3V
QTnhIq85uCVjoNJyqcHQ3SIT9Z5K1L+bQeswmO1DZzP4VUwD3isLh8XPB6kHs4jgLtH1jGzQaNcP
s7PLn/BwmfCRH27xckE/tINoLDapV/fhvIdsQnWmQvr5AwDBCb81lrj7U1f9XPGhFxpF8qzBwX7s
YawfU8xZLtNk4PxCAshHRLEGizEXCNG90rEIl31xvqMebkZ1XHkR8fDY5pGwDs4MGCRJMshPWIAQ
b7lZKQHoHbUjoV3AlHhgSL1ixb2soCXoB7goAdUlSA+cPMA7q4cXFfRPBaZisiqpa6GiLf8aNBbo
5+3HM4b32KAQ1IDkPqsphRJqUGMLak/NVp2K6YtqlikzcCKRIunq0hV4fL/oOQAai9N5svYDMC1Q
Xd7jUl2wdNspcmGv/WiPLjhiSMZ0xheaTFD6UyGeHaj32zHx+NuiGawit8Jd9YACd9VvRbqfdy1O
ROyjO2OEuG1PltwC/7T3+02fyrMLZEF75g490vw4AOSzUlHKI+FRCVd2XSbs6wsi0+/Yb6DMtvng
9hHcdHtjGTCPzKhkmZlJ0wdAhbr1fOlJxrVvVsR4Fsla1G2Lie+CzFdryT6mLo0jQ0A+Kpt+DHm4
MweCbP21AcJb3nZzXJFaXUcXeGp2y6521ym3mq45+7ZLYps/HDqOSSibixrOJIMDl1PR0nzmlMqF
njUkGLqVgFzqbhGa4qyV3Z5RE8VrtnkKbjY+SE9I1bqY9g+4bmla9xbXGJLNOcnwrVGfkKFnMkzD
zJAHH5kjc1iAVKMSa+JfLN7+Ejg9LGPCSAthxlcJIjQU28D9adHjuliOIeUjtCrcdkMnSxMazutN
yH09DbrdOoXUIdAd1esX2Coa167dM7o3pJygFtf5Keh8XQwymj6dvulRvpjLtuW0GcZq1JuRg+F5
iF/kvBgxOK6twJ0FW0YoyA0iz0s0emlrb1iIqS39kGvacAe80G3G/k3tkKu5vz3tuOzlfl20jZah
WUJW4RI7y9QUYZIj9ojzqXdJI4ANa/1oatLzNSx5AZiqmCJhTM6KGxjlsPH24nhl/2vxDdB5qf3k
fFRqaqN76PSAlzvvdgO2RdfAKv0rslcMgueTvS3kV/Zm/288QuLvXDYGZA8uY58tpJl96yt0uvEW
N0snI9Yk1OhAO1fFiONSs31rveNkrVttad6AjrvovLoV1l8ObzctHT2KlwBrwg1h4uMNteIYkQeG
AyFVgLbQeWbxeG+xMtREx4L5uDKn0goaXvm0cExKYG7laozu0hII7SCf9srIwzGFwnbuxj6YjYvs
oW+EOAL0L50C8aFxEqC5JUxzOHQrpgtFsczhUdhM0HhzgX0/FB46SkiEHTCoxUMLHIb3e3cuS9j6
wzO3TfHHNbxRG20FQkbPjFiDWvrI40qTxhrgetriBbRBE3T2fAY6qTZwuWSVCZAwl9IDpyDto0S+
nNvbi+Ux3HRYlFJS7GYPopL2i4oIh0rEREKd2fYShQj7yeJFM77Dx4l0gl2s2Z/ZaGgTNM6/o9X5
VBVlxR1R3phLiROQf8MgN6fr1pEb+uvwX2S7+KiGK1yHrqzaaOLMwJfZlf+8gVRf/oCyXiWNakro
MVo3zZW15YTee6Wqb7soYgzztxPNI6XFela7qRLAcAyvoBIGQ0pHR6quuCU5OrXwNwC33dG95uYq
xDbUmtf2YPpdJO8BqalmoGnqpzTXLLShqo2wO8zq3KedpCmulSfu5xITss3R7+dLxJph+ErJwNd6
A9rDVdTHfLKvnjZpbN7+w0YFSJerzfoiTX/Am2I2ELUupcdMjzZjb627hZrGJMtnZE5wrEvyLNRn
Hr7fBXHf5ZVC7LyF6pcvXtJH3XxiQZScNLFMYVcqCwz7VO5FvZHWTsBJN0d8fQJClirnYpwtIGa9
JtDJyxpV1XeMos+6qeAl6BHewHdcE4sMemNM0bAyX/94YBPeqydSFRsh6MBBbCoBIts7Iwf9gwBq
zETcSbpWGpkvRVctgGM6QDmmsBXr/2YuR72oOeRJxAu+txaP2Rh2IrY3AiPhEsfUDshjWrZrAF6Y
B/di5BK5vaoHRJZvdKrLNLa5XZ+qnUwpQX79Lhn4ni8Kpa162uc0l0Z7pc/8hNBUgKIigrMgP0x8
4/Jf9xzsDp5UXc6Khi6vN6YNUnySKd/T99IJ/GcQmgT+jgGuDK2P42GmT0Llmx9b0PWFXkTW5209
dD5YKOLtjMKP/4P4supMIWmHxJh3JCxvlgTiuzJldtk8CI+iZbR2phht5cGV6etpHOhPJ4mUl7js
Rm8gQJ6Je3Po5I1xuExZ4L65LavhJK+BnoMyPpA2qRUrBbRpFI5W7yQxI2ZEDFe2fvhVrCAwTHLW
1o308Ru2SOrUg9prAq/EVe1ftS6dAsV3YQC/IKPcb14o0tUKjuWJUSRpi/Fb+fnaZJnPElgEemJ2
Vz4egOfVSg3mm5hkrbvaJYijx+tI36dog076x5TFea9RK4bryfpj39tByuvBArN6SokAHhx+Thnu
pabiAoSzQrEI4UZiJhOsjm3q6f/T5a3Nk9XS9t4AhDjGcs9HCYPugA5u1ZI31oEJuC+ptnusTMt7
aoVmlQcjwYUMXdSOv0E3DgOiEEC6GtYDABAU1OC8tvoVATEitA9JWUylWia6wGi4sQGlLN1q8GUr
sOwTyRNFiOewkBeh7SH4jBCWAqUJ+m1Ie9Rbp7FjF50G6qK+k/aRuQEjdmkeuj3Oo1+rgEQCsn0n
Cg3FmZ2SPxVkdXKB8pKvhErEzrynnlPPWKkU47PEu7JSNU2xuRBOIkNNU3zgQVs8XmZwrbVUE6ul
FENMkxx8VX/RzgOuu+RLNBQEluQWR53dGdV8DsOgDfsijn6eLx3ysZLKCCYKzcKTUtnujmaqGRzq
MHW7HhHcRZ+1KvQTWwdnY6mpdAyGrk4MX5T30RbSzq6fpJ6LyTiG3PphR56x1loJqlRU+qZI9+MA
yl9HnsJibVvKQjCJUzdCqyujPxyeP49/oFWQOhLc38RElGYpm5uKLx9Kio0gcyZP4Q4tAxi902qY
Q0mnRlk5vWtCM9bVXtXrwPi3u0ws8aN6gOdpJlTrX01gmc3927lyITE5jmg0RlmuZda8EusUDr9I
tBAEcRTp05ZS7wDpDUGl25lpsG7ykUqtTWPyhugsdE6dOz+hC1DE5gnEh8wtLmeT/WcWIOaGbRMl
oD54Shs+JAPWqquSccX4i4t+IIIwZawQ7QbsEUCeDUSXAlgekakKdDXF5fGi+f02Z+QHCDFMUAnK
CIEBY1Wj/tG8rYtx7ukH34LAS0yX6LalrWX+5VmyTDVJol4qcyGHYFfcSUTuxzf5VElVGV9ZBvvw
zKA+X1ISBdLZhbkjPAAWbKmufgEW1/8q3fBRVHegFjjNL3TTYdqUH47jflGhP4ma9WXwNfMkoUJf
4P3TPy8hY0XdG91TpMyXI9WKTNbq9mRF5f6Vs2q5RFIr9dF7mc4i/jeu3+YF83d8yPTFK0FOjRT2
9Gn2vhZwGm3wCXdgxcOYxLCFPBnBBPbIRBDWw3itRIG0cSGYjmoZKyFZlpgmk21eqf0nEPwh01Er
iyozPw1iBonO+lrMa5hU1ynCCRSGYrC5zBPrt9ObvpV1hAwjfVlmJ75TLKeWJn2jAane0laH6L44
YaxbICEzQrms9yoXxD55nYVuHI0f+M7M7VAqrn6aYxIspDBWkWj9WaEm905ZTQVkFNdeIc5abmSt
Ws3kH1ss9ot9OYsQWecIg57P7sHNYzkzPDcuucuu3VwFLxO7AvxeLmu9oggcskqiR2fHtGRuObV2
qW87vQffuniOdMKwVgayaFAGVA/mOBph8ERoQXED03KbUg2xHq95ZNLLXMLw4yAhwRbOYdUeGyAB
YlmB+uYjLeUsQqL+iEWJaESbLWcrsUAsd8mkAMJE7bxTGhhgu6w3QdTQH/IoadM7T54gLiIbDc2e
U9JsU4vVKqwa0vgGp+WTBK1HGoyWAea3Enr2rLcjrIpYUn5fu7laLyDMq1nlQhOBd7fonixD4LLX
qFnNxExwg3g6T5JEhT4ziES0NtssoVLwJXvDFIj886V4kDxveQWwTs6IebygESdwv/Da9nXDkdnM
sixwijHx0FBfim4BhU/Irhd+tfWBPC/i2GfvWbIM0RrzsWZlFea4qSndOAjKrFAofIP8YpLcSD+m
9kI+fZLdBmHAJjBjZ8JsmlFHTIB82fAQgtXq1tTg1Ew636nSY/NygEX0JM55R6NOWFxhzV2InIJ3
v3V0SLeD2QwLjoiZ1F8cnhl6rxxxOo1T8MFISiDO4l42JYLQQ5pesBren2J+YcXPMzIAIfTPwoQh
+VGGWP+oQRqarDYa/Tfm6Q7rupkfo9X9Tjf8mvmBkiupLtQasdIv65++Gurhwbgvkh7YKVjQ4Pr5
JfQtHkGFK95TQRgGQMlE8YLI+Nki9ey5ssVSn9lTjX/GpOqc9AL65BA04xUbVl5f5YiA2ElZu8ts
Hm8sC4qIc0noQuaGWCJoPPmNjMkyrZWpEcU8vwxvv0WnKGDlJNn77+azF52Noh3XHpRWUHQAcm80
WZ6As/1Stl1N+GZ+Lxv61gDTBVzWtqEfOWQ52BPl3I+1+e6utx2oCpDQq4yIKBH9zLH0ZpjGziYi
5YKhl7xjUlX6+6thD6pWm1fTzf4xqp9MHag6iFqXm5SyIy41LL0rfzbZHWrsGQDBcCSX7fvSlQm+
3jr8hpYVs2z0koVE4dMmE03W08r6N0N7KUB0JCpuiU94yj0wJu5nhBJi0D4AfOCKFH48BaU0a9LS
GuVNDKrY93JMv8pezCIM1WcA/UcU+Oxy+y6LAnHkOHppbvGNUjACI+6VvwhAbkMaBf/jaE185FNI
HNUHrVl+9PJyeH3gYadGOL4k+XhvZWENiFSVTsJrr/t5CJnIw06dcN1e5yN3gkNEEmkrHVwGoFD9
ChVKAcjLz8EIUrN1ApEJUMe8xIecIMRWiGymQQJlZfHL6NpR65YJkZ91FRyt8eAJcYMgvvU3nIdU
BFhd58M3y7dkDC0WMSuX4hyiHSv+6REB0HhPDLhxfN1OmY4gQM2EJCLezHQ6ffBQpKO6Gpf589Rk
1b9z5mH4TXtcMB4R9NKrD9KSqnivODZQlz4meGxu8NmGoHw/NC9I4cgpPWjQ59NrJJUUwUDAG7KT
3Xpo1ScXcDupA93wF5afZxv80zdGWQOLqvBqk47sdGBQ7rTWdx4UfN0j6OmFba1LqP9Am47fgDQI
kmjkBdjV1c4BXoDM8wO2O6IJ14IIMe2MqEzu40Y7aOxJh/6CzqLenX2FMDw4fvWRun8WeK5HFYf6
OxxOz08CjvxL90/Tzq8WluxIc+DeL3i6UB5O3Vjj63NWn323jzpyAD0qaS6GekzQ1CzfkgEUOsq9
v+8fRni1sDCo5ejGpFN5pWRPCbIL5P7la2VcFpPpS4/3SpmNuues8qrYXZKjtaHpDR1/M17erUDE
gRoEVa0lzOZ0MQXHFCJREa+umlYgpVDFCqbfGlTIqXkhlQDVsFqNADg5IW9ME398Cqq0oHkd24ag
78VsgYZShP8BzLiCdtqzqbwVgTUKFY19fGqp2QDKPjkMppGKdPg+TBSLNWhw25PzovnIkYaCE7Fd
HBHmG8MoqQx9iysIV18iFOVFFsri+kHk27/Gwps/EHgIeLQ92vWnHZbDLh0kD0spw7MgOrWKwvxo
2/qrkrMeYxuwbdrV58eNWu1dYG3J00ugWh0P10HTfNTUVElpKpKZeiqBCFgetoQmuxoWWxSKIrvt
cEY6OqiNXLOdF3W7wGPVMJLqPWfX0ltTqyjS0c6jHPpypz6BNIR4h2EPt+CrBGG9mr3ScvFExDqD
EeFe3ZqtjFTOdK6eB3OhVuyVykHMaTRej3oWB7kgnHin5its+z9CvSgeG86jkqgHBKeNIqyevwua
7oR1pmN+GbMxtSHG3baNsLaCYImi7FO8/1buVC/yxFrtl0GLA/QGNi7m1TR7lh0RIvIcEAfbxvMg
I7MjL0DVY+RNIvXzkhKVH7w5X7PvP8j1F0uKDXjMCnes2pw1TKFknS5IF6LcQQVvTcWSzKxj78pE
r+r8/RUlVPcNzSloqJOJNrH5XnayjwRYbilirse3UXLMKUqKvuKnOm34dn2DreS6GWnJO9Rn25s3
JAvHiXpIdVyGxvyAWQwzLbQnDiaUaGBy1HRPx54IW1h+JyJo/3Ib513lkHqQP5yxaYto7aWXtU/2
H14INAoB47BauTaC/HF3gpXkSohaYYmYOMVbjwEr3UcLF2KA06tGRvMXzo76EvHtYsSxNIchN7+w
EUMw2zyai5fcVhOdxDuQzO8hcOvoGb6v1VNIC92P0bTlobYRO/b17Ctlxi/iUxw29KKg0zwsSw1D
Hn6vskM31n3+HiXKiZUctFzahmuHhNxEGKBqr7DtmYOTjNFCMTANl8gbL8Fdm4eyDJcf5p7/V62B
jGogiceOmp3orhAEMvU1ntUltx50XJ6B34/e4WnFqRYwj6Hk/EGlBDyl5lva2fezyJ2qXnakrU15
yv0mOrtvK3JfLTiP/5YsqPtHdOJJ3BYbr6iHcc0ea4Skrnr9NSc/WjG9YGH6bCsprP70OMA0Y6DW
wA5bdl1PLkWpeqiC/Vkg+p0BQgxdFqaHH4uNPnQGov16CQq/XY5Nr7y+RggI7cR6iXpAni+QdKcZ
zGlxJCEY/1E2TXfexLemtGNvRRjdOjL8i9HB0ZO6BsOw4uWeqfF7+Dae29HCV5b7/di4ji1YAOma
OKLd69TuvlgqI3D4DXRn2IIae6ldF+ae5t1h2+NbrmD1tVxB7U2ejm6FOBfLzpS3R5lJ7Jgnb8Hg
teGE7uEi/yycjSNyt33wXCEXQgBi4nA4GzOMd+hkXsCd2iiag9quLBILOuNEm3MbseGB/0kHA0kk
z9e7e5Zoi2s6VHMZ9sgrXZlroJBIlMmEYw1XKMYRpZEP9925jWjTPMgjRTluAMUYECWehSUvUWtR
hSOK+ePE3xT2/opd6eyGkw8rlrZmTzYfbPUk6lIwW8qU7tfr9D4jNyPti1NDbXs10N0yxrYQO1t+
bBQoqbzOfY2zPPYBVyFbCNrPl7zTD6P5f74TuIgImeApIi6oRN3XEQRgvzIISeHg9nWyJBknJzso
qYzFLDiDZ7yOgsvv2LPt6cRQQMVO39MCSq7LJ3wi+kWkjShsuLshtQ+Nl6WuNKZAXL22x4iWHwdA
DUvRXAHC2V2amWxd6yV4osIEDJEe0Kd6UxmyAw2QygoyVavn6hRuTDJaxDOjktREyMRPJ8WP7QeJ
FbObFkJrbSX5hsluAzqcoWYdVSLL6SIykS1fMmEwVBTtkfWr9I5spOCCn8DJLlRF2TMjRZJc+60u
lan/N55VwrzT6uh+nNS98fdqwxPm00Q2bDiGVHuZ5ZHpDfSwJTFm8tO/TRmox6y/f793tLCmuPQi
9imGxXjhn4LS/jdVdpO4En0MnXPwN9T303jgHY3ucOMb8Lz3TwA9INdPvrmYfe4IV6uXdYH9SU9v
6fFsELAREUPr3VR3Wsk4DiRuaRFXdatQVHhJ3ZWecTCAuqKDFh6DHTpO1npjaTYaLn2/Ug9VUhgd
AZntsbW4+TDAQktBnC9YKm6pqUA1eY9YxDEcanZJ3J3VDlTgpZyjBA7VgBBBCgMY930Qrj15aFm1
FVvhO/djdHq0TPupfU1X5l2e0epe5zo8rpMpwl4kweA9bfsEmex8UGYVxkjvNAVUwgiwxIE/+y+N
QUIGsOxSX560LuxncJYpDezwtIOJ9lZdYP5gkqcMwt7xllLIHmSsGrKdMAj/sy9CYmCL/vYo5PVB
GPY754bkROXOQRStR0LckJIJ1IbDvYfGEdRNP42AfyrYSZAmao+E5k31yN0FAAXGWeKbxQpIMtFX
P4udwojiXUNY8nUuo6byetf6P08Ab+CMkm5tsEgC/jH6WSe0QQ1WM9YkWYB8CG5sdNJJz6xnCTtz
1EJW1FTAoWN5wqAHv7yznSRualk4ZvtODozbXVwSt0wCBMDuYaQvk3+tT2yGD8DHinK6/6NWLv0q
9Jw06fb5tDu557f4e3m0TMLhb1lntwJg3mdX3V2lrOzyAYKNXRIINuzsn7IVuPb8zKQfDPfpRUBP
W4wlQdSJI3HGouGvJOWNW8Bk+ibCFBLtmjvHMLfYSyjyZiHdjAwcmRju6dWT0kiIatiK4E5iPgPK
XqumP9SwKPH0ZvDT71CTNfy9h3l+Cf3ZRLuHxTOqUW7gcinrvfvxE80T5yFrQddayJBBJrJimlTN
1YTQ1L19fKgJ5FKDGyo12c6cScN4rBtM6rQpx+42kN4W9Dp9a+jLfC5cGP6OZb01+N1Miyc1uasL
QxnpBIcb+ufEk4hheUf99uB1Tj4jx62E9uv+AUm/PGB6yOUxQ11+RGKrKLTSX9qm3z5iqK8RAzMV
DJuY6YU+XIeTyDx1Pe5j44MYWFQoFisyj7iNEhafZoYxXkBO1CLIdviCQbJuEr9Q8iNHvGbCNglJ
91fecOuhd0yu7x8nhAjhNj7ucvvU58EEIodZmcpTevAZxRrVaSjrgUXiMRCgd2FqYadvKx+tpa1d
TNXrZ3F+X10vBVZgBrdmTPnUA3QsQPE6NJbzjn1ZnSybLQdpMTF9OK0mcjaxZ/Nq4OteaOEPhQbZ
uCzF+uWEh0f2NOX4CrvVXLTw9W9rRlhaRqqKF4gIBKDvrsoNXbwExt8dU3MoWBVbzuIPiNvY0c8F
tJVq4cXgSn/LY+phjJhUNttcs/n3Zt322yjfG3jUjM0aDnpIOnsZkerxZbLiHqSqD36xZjzJ4QlW
rYdtnVTbVjxJDAA1xlD+D/JwWNxzH9tPs2qgXUQZJUIfVJ8QfA4RKQ5pnc+qS92SuoiO3HePnQoW
R3B3gJJ9a7NtCbzUf+Ff771qWNA9aqDSN4grfMWh458krdnGeJNrlH43eokf/hkzU/QQSoapxzSl
ZidDaX2Ccmp28LVFOTNV35rNA4qAawPWaHEoZaBHpfwO7C1YAqVHzOqEapej5hujOVpIaZnADN/B
5NHlCVmNYnjnyJB3JJ5wYXsvBKUjEkU/lpxLjcyuRpK5qUb5V0vz5/j01rliUsu7qcd5ItwVkobF
6kq7y3VHo9mC1esQKguNXMY+BbTeLU60foSriZkBhgtEBtyG9K1pZyG1gxDw42dD1SCNtWXgj8N4
DCambG0+cKnvrWI6cfzU/ME1xsJl8bFZ6yQoLRvltDSjRgUttv2gB9L3sPq4qPZqwMLYbYetLgOS
30DSKKEKyaLHftXwo/ffr3AWe+G5xzwrPADX/145Ftt6nKNubKdYsUAXWedOqZSwIKByGVM15c25
1kems3r0+zTCGgKJ3lyZdNN/+66YE+qb5LsxCcWxpbuXsJ4ISnLfEgs1jUDedjwQ18UB2GJSlALj
5wPXHKWA6K8/yfAiAwF7qShXSnqHKy4syImFQ57p6TyyhFvkMa52bZ1+z0w9IQE39QQvX7ne6Nen
YRSAfmrs++7tQUAQB1A7jIYsuyYRcW1BKVZtkGDvggVN+EeVOQVNg+VPVmtIUxy4aXxFeULN7Wdf
jxZvj7ID651TsYHpFKne0h8aUw6bQHjK1ocrgMdGBx89+dQuVQ290SxyUEFl8/+j/hUKU3NcXcei
iMuaAP74vI+GAQ5SxASajocVKRUgsrTiB8Vshs48Ciaj3efbrz3IFkYWVaw4NU+T7pGbiDoFCVky
WOJM0ZN+PUu66BHyQfUjrKThnGL8bDe8r7ul4wLmw3X/HRckjdlDpstgy2x6XfviN22MYrbZ7xCp
8iNt3sSZJMkH4MJIvPd5+xHB6HVYRuPe+5A9Z1piO/KtQ1Jx/DTt/UV7nO9ZetkTZMH5zRnTXSiJ
tir9YL/BOxOfFnrIPGmb64GE5l5dQeSRJd5MdnkL8Cq4HWUnM0ddxSNdyUx1wrD6A1Fx4YalgrxG
1GD9e/+pcfUTK4nO5xbqiTtCUyiiJQlIPpCkRnQ8X8Ts+ptjdd7bMLqKvSGMGtxMocFa7SVJxfod
gghx73YY57Hk6SWntaPhjYVvVYW5UK4beQdNm6UpioiIjDd3/bgaSNPwWT+OBY3cULKic1R/zZnV
jXyOc0/pKBmjKyt2t7VSiSbFtjaN+Cv+4EbWJwPn74boV01IIo2zo8Re8Q9+s2mCeoIikfomDih5
0PN/Vt80QckTkaJnhgwui08vVpwsYS74rQbS2HPtWTH9USNPE34j9I9L9BgZvlnSo01l+mCX+oRI
4/PWUmykqp9FTv6TuPADtr+gbVdmeg81tuNJvwmnAfAyvKhXCpovV/ZNxevat8ozOvsowrYcTqqt
oYY/dCqiDlXeXrHi0XXFIODVXvvuHeTmILZfmMd2t/hBpelBI3lxBN2NnkjtnphwY96OtDM29YEk
CoCBNg3KHIJ69usawPC+wsRzBjVnGjJ6PE9S+gJJ9tiQpMgNNqM6hi0iBU0WHFI+++vWzsQPrMeV
mIKL2ZHxhn10/MM1FkeTVDLGeOI96cMCfsruRKMcxcuybeqZFPIOhTsoGYM70srNNOUtlasCVjbh
96gdtaknDC4EhsNh7FluyIeHnmtfk60Ipu9Tlec7Pf+/OXZhW94m4Nuh5piVyN8x0zqM9N9joPT2
kW7WK5sjM8IYtzwDE4aOD3OeT0Jds9l4wcBZRlIAnyQcKttB7lxcacrHJSi563Kp9oHfSsbMz45q
D6xz8/VuQFvnCm58MvWOzAd9jPfNqqCJJOxXEeynKUccz2KwKvpnAc3fe8jQL75XKwsqNqcWB3Qb
qS0qxTVWYR3BJP8Dn76l34h9KujiBBHp7OtZmsxtj7dTof9DdDyYVYrMmNBd6A6VIt7nlZeecnat
GJgkwRNeGPxwUMvsteezAdMzWJu5rRx1aYXEdBG00mHrTmpJVDyEJlR0NOwQj9iDy9FSa3MV3ccC
D7gOSn8wqOhq/adX8daB+KeDZxFrosjec/CqjRbF7xnD6jRfasrZKdeAQQ5BxRBDkRzLyULsIEqH
hUv1WPiOn7UgS1qSPd96S5ZnKJuGVmB57CghiTGkB5p7tl1MG+ltWc/NN7N6TOEX64RE287qJ2YN
uCXXWDlMBCEuGQyNO80B4U/aYVwGjhPSDxICT7GABq+XREM95+tesAbRvgQ9nXCLHxHqXL3e1Fhk
Bx0FKdQFDc/93I7QyuQ8IyVeOKTLZAFcmuoMKVtt050kDtp/uUV6MB8/NAjn9AZi9rsu9wJcrYzt
lErqSsPX4nQs/6hfNxv7OeNcJz3k3nPJl8pppSaMVMZVhne/vE8r3RRX/3wY8PPfhxpoZpZ+8CUl
7yWITAMWP8jxqjl4PyNKpljoG9Kxp/Hxc94hhRYmzmz7wupGtSckLzxaDP2TWk9O8uONsYytjIzU
T4E1oQg7nxWuU5qbXfFiKwP9dQGANBCEhiCi6gfAYaHKU+TclTV9euANJApkmzStMWAOnMjyrw6p
gkKNprSi4KkZPS01Zlw6VQR2jlBcz2BDLeW8GY/CwILuYFIZS5PYsOYW25WcOb1+bQiuQwJ+IEbI
z/2ZSdIzVxFprmMO5wUxQBCEz9nSE9vFe/4ohQpxQcbqaI8UZN+Mg9vVh92pe5EhPELQiSiUQWsO
5nek0/aMLk5pZEnkJYOR0EUcPnJdHK/0lLiPbicQFu0kVamveGBT6lB6N0Nj5SkBNpy0yuJbAi2B
XvSPuS3JzGClBk82ZjOvxMdW+JroooP81x0/tCkkp7xxynSfic6QV/Djst00y1MreUiRwFjSLydL
Vjn52YwroOTnHHpXKbAN/SnnxgjfxjqAeA+W/FkQ+4+FeQXdS+4CP60NLqAtMxMDo/+eXyE6jGUd
2T008VvSiMtXsUEVbH7HjnlXspgSAT/CABPGWwZqi5VwsfcNOeek8CbvipIDd/a6pDlAC4tMAImv
VjWWozoUNrUHRfNvOuUZHyAfWXZjusfqMohxRhfbpDndsSdHqSOmtyDv7ldUoskeJjDrvnDzQGWJ
7t2iy2yFtJRRkhNf3QBxA+R62go33jZojgMmaVLAv196ojXylRDnveeVjO7d36ozIegLWbUylknG
VeQmEWAmY/w2GflpPMt3om9O9u++Y0n4cjPWpCDWi6dPCTLlwfwdRWuX2ivu9Jc1StaFyp80H3no
Hsn8ROWw6/z34JMhTjwa3cCJlLeNsivpj4NOyDiPWrlrj5OjzdLOob12bXE3I7eGCjQRQxNKjYD3
zAtLKVmRzBZiIeyISgfhlG/QxcIeqXHLOO9L3qclPNZhuXSxhIWhI9Lhy+ROxW1h8nJA9t5tgowU
LBnUV2GP9E3lMXHuuCkzjQ1X2GRJscf0Z+LJjJJb23KmdWgDQu0atz9ilrnMoqSijoQNeT8bkGBm
dHlfb70ykAma1mWEHygPncnbFr/3PhtCgOfb+YJBlu/CXBQLyuIHovoyIakWQJq4yfO55bBLsvS+
UW1uMPEHusVe/GtfA3w5aI5b5xgRbFRI3oSHD+Geeej3WlQN3E3suDmItN9muK4XR2/VpDtHmHrm
iG3ta82dKwR1vXGVF/fhVIb65t5SpXxMR9DrEeAZGT1ZPNKpgJXzFltVuaddDdQ9crJYWQ5zS+ur
I0aTlncIblrL96ghudmN6CMcbxHH73YZ19itZuFIxn/aaEN+ZMoSHnLhlinA24YkRhr0R0fkde/D
AYMagGgqsLxzONI5J/ziBGBCvsVBkr6OExaTcta6j3ngzrrfRBfovoFpq8nwe5vcFXIjeC4+XHlq
e+807WWZzmLL0gb77syiYVgKKMsdXI1XTc9HxXAU7tMP+ODiy6qfM9c6oWJS3/UKNQxV/1ejuysW
+QSDcpaiuSSjK1ZJyHT7Pk2V26rjNBuc6zDyYp8imr9gETMuO2vTt1cv0+Obcx5ySH0nHxULNxuG
f5TVSCY5QgoRyVxB7Q4GoHzRVbgZJWCQw6yHRHDVaUxGCPz7yJib1NSjbdstst3Z+zvo2oGQZSTm
x8rdF3++MXhmOcZf8oDoTcDzm5lHhQzGoPmuBWy7kXM1vlHO52qqG7dAb8olwe0AMMU8XPCyTNq4
nPwrooCY4Ib+5BKhM+Y8Eeo3kgEuRQ4de000p5kQ3KYAMcRndJ79EbKoV2nYr/LvmY6VE/Z2pP2n
sN+FrRzDClwn79/qFxZ1ViNtJ/uTKoDYJgF8sm5jBIQmm3A14jeuc83gNDPOUrm8oGonDYfBd4dv
R3i4HuaD9ZOGD8VC3jPD8lF86yMcOIdcNQ==
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
