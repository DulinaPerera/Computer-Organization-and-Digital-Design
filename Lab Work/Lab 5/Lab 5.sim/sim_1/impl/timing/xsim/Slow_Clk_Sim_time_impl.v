// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Apr  8 13:14:07 2023
// Host        : LAPTOP-G708DRG3 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {E:/Education/Campus Documents/4. Semester
//               02/Computer Organization and Digital Design/Lab Materials/5. Counter/Lab 5/Lab
//               5.sim/sim_1/impl/timing/xsim/Slow_Clk_Sim_time_impl.v}
// Design      : Slow_Clk
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "7ee04852" *) 
(* NotValidForBitStream *)
module Slow_Clk
   (Clk_in,
    Clk_out);
  input Clk_in;
  output Clk_out;

  wire Clk_in;
  wire Clk_in_IBUF;
  wire Clk_in_IBUF_BUFG;
  wire Clk_out;
  wire Clk_out_OBUF;
  wire Clk_status;
  wire Clk_status_i_1_n_0;
  wire Clk_status_reg_n_0;
  wire [31:0]Count;
  wire \Count[31]_i_3_n_0 ;
  wire \Count[31]_i_4_n_0 ;
  wire \Count[31]_i_5_n_0 ;
  wire \Count[31]_i_6_n_0 ;
  wire \Count[31]_i_7_n_0 ;
  wire \Count[31]_i_8_n_0 ;
  wire \Count[31]_i_9_n_0 ;
  wire \Count_reg[12]_i_1_n_0 ;
  wire \Count_reg[16]_i_1_n_0 ;
  wire \Count_reg[20]_i_1_n_0 ;
  wire \Count_reg[24]_i_1_n_0 ;
  wire \Count_reg[28]_i_1_n_0 ;
  wire \Count_reg[4]_i_1_n_0 ;
  wire \Count_reg[8]_i_1_n_0 ;
  wire [31:0]p_1_in;
  wire [2:0]\NLW_Count_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_Count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_Count_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_Count_reg[24]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_Count_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_Count_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_Count_reg[31]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_Count_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_Count_reg[8]_i_1_CO_UNCONNECTED ;

initial begin
 $sdf_annotate("Slow_Clk_Sim_time_impl.sdf",,,,"tool_control");
end
  BUFG Clk_in_IBUF_BUFG_inst
       (.I(Clk_in_IBUF),
        .O(Clk_in_IBUF_BUFG));
  IBUF #(
    .CCIO_EN("TRUE")) 
    Clk_in_IBUF_inst
       (.I(Clk_in),
        .O(Clk_in_IBUF));
  OBUF Clk_out_OBUF_inst
       (.I(Clk_out_OBUF),
        .O(Clk_out));
  FDRE #(
    .INIT(1'b0)) 
    Clk_out_reg
       (.C(Clk_in_IBUF_BUFG),
        .CE(Clk_status),
        .D(Clk_status_reg_n_0),
        .Q(Clk_out_OBUF),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hEF10)) 
    Clk_status_i_1
       (.I0(\Count[31]_i_5_n_0 ),
        .I1(\Count[31]_i_4_n_0 ),
        .I2(\Count[31]_i_3_n_0 ),
        .I3(Clk_status_reg_n_0),
        .O(Clk_status_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Clk_status_reg
       (.C(Clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(Clk_status_i_1_n_0),
        .Q(Clk_status_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \Count[0]_i_1 
       (.I0(Count[0]),
        .O(p_1_in[0]));
  LUT3 #(
    .INIT(8'h02)) 
    \Count[31]_i_1 
       (.I0(\Count[31]_i_3_n_0 ),
        .I1(\Count[31]_i_4_n_0 ),
        .I2(\Count[31]_i_5_n_0 ),
        .O(Clk_status));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \Count[31]_i_3 
       (.I0(Count[7]),
        .I1(Count[10]),
        .I2(Count[2]),
        .I3(Count[3]),
        .I4(\Count[31]_i_6_n_0 ),
        .I5(\Count[31]_i_7_n_0 ),
        .O(\Count[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \Count[31]_i_4 
       (.I0(\Count[31]_i_8_n_0 ),
        .I1(Count[12]),
        .I2(Count[24]),
        .I3(Count[25]),
        .I4(Count[26]),
        .O(\Count[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \Count[31]_i_5 
       (.I0(Count[30]),
        .I1(Count[17]),
        .I2(Count[13]),
        .I3(Count[29]),
        .I4(\Count[31]_i_9_n_0 ),
        .O(\Count[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \Count[31]_i_6 
       (.I0(Count[0]),
        .I1(Count[11]),
        .I2(Count[8]),
        .I3(Count[9]),
        .O(\Count[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Count[31]_i_7 
       (.I0(Count[4]),
        .I1(Count[1]),
        .I2(Count[5]),
        .I3(Count[6]),
        .O(\Count[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \Count[31]_i_8 
       (.I0(Count[18]),
        .I1(Count[20]),
        .I2(Count[19]),
        .I3(Count[22]),
        .I4(Count[23]),
        .I5(Count[21]),
        .O(\Count[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \Count[31]_i_9 
       (.I0(Count[15]),
        .I1(Count[16]),
        .I2(Count[28]),
        .I3(Count[14]),
        .I4(Count[31]),
        .I5(Count[27]),
        .O(\Count[31]_i_9_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Count_reg[0] 
       (.C(Clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(Count[0]),
        .S(Clk_status));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[10] 
       (.C(Clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[10]),
        .Q(Count[10]),
        .R(Clk_status));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[11] 
       (.C(Clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[11]),
        .Q(Count[11]),
        .R(Clk_status));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[12] 
       (.C(Clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[12]),
        .Q(Count[12]),
        .R(Clk_status));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \Count_reg[12]_i_1 
       (.CI(\Count_reg[8]_i_1_n_0 ),
        .CO({\Count_reg[12]_i_1_n_0 ,\NLW_Count_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[12:9]),
        .S(Count[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[13] 
       (.C(Clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[13]),
        .Q(Count[13]),
        .R(Clk_status));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[14] 
       (.C(Clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[14]),
        .Q(Count[14]),
        .R(Clk_status));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[15] 
       (.C(Clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[15]),
        .Q(Count[15]),
        .R(Clk_status));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[16] 
       (.C(Clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[16]),
        .Q(Count[16]),
        .R(Clk_status));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \Count_reg[16]_i_1 
       (.CI(\Count_reg[12]_i_1_n_0 ),
        .CO({\Count_reg[16]_i_1_n_0 ,\NLW_Count_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[16:13]),
        .S(Count[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[17] 
       (.C(Clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[17]),
        .Q(Count[17]),
        .R(Clk_status));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[18] 
       (.C(Clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[18]),
        .Q(Count[18]),
        .R(Clk_status));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[19] 
       (.C(Clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[19]),
        .Q(Count[19]),
        .R(Clk_status));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[1] 
       (.C(Clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(Count[1]),
        .R(Clk_status));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[20] 
       (.C(Clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[20]),
        .Q(Count[20]),
        .R(Clk_status));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \Count_reg[20]_i_1 
       (.CI(\Count_reg[16]_i_1_n_0 ),
        .CO({\Count_reg[20]_i_1_n_0 ,\NLW_Count_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[20:17]),
        .S(Count[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[21] 
       (.C(Clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[21]),
        .Q(Count[21]),
        .R(Clk_status));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[22] 
       (.C(Clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[22]),
        .Q(Count[22]),
        .R(Clk_status));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[23] 
       (.C(Clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[23]),
        .Q(Count[23]),
        .R(Clk_status));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[24] 
       (.C(Clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[24]),
        .Q(Count[24]),
        .R(Clk_status));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \Count_reg[24]_i_1 
       (.CI(\Count_reg[20]_i_1_n_0 ),
        .CO({\Count_reg[24]_i_1_n_0 ,\NLW_Count_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[24:21]),
        .S(Count[24:21]));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[25] 
       (.C(Clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[25]),
        .Q(Count[25]),
        .R(Clk_status));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[26] 
       (.C(Clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[26]),
        .Q(Count[26]),
        .R(Clk_status));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[27] 
       (.C(Clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[27]),
        .Q(Count[27]),
        .R(Clk_status));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[28] 
       (.C(Clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[28]),
        .Q(Count[28]),
        .R(Clk_status));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \Count_reg[28]_i_1 
       (.CI(\Count_reg[24]_i_1_n_0 ),
        .CO({\Count_reg[28]_i_1_n_0 ,\NLW_Count_reg[28]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[28:25]),
        .S(Count[28:25]));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[29] 
       (.C(Clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[29]),
        .Q(Count[29]),
        .R(Clk_status));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[2] 
       (.C(Clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(Count[2]),
        .R(Clk_status));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[30] 
       (.C(Clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[30]),
        .Q(Count[30]),
        .R(Clk_status));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[31] 
       (.C(Clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[31]),
        .Q(Count[31]),
        .R(Clk_status));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \Count_reg[31]_i_2 
       (.CI(\Count_reg[28]_i_1_n_0 ),
        .CO(\NLW_Count_reg[31]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_Count_reg[31]_i_2_O_UNCONNECTED [3],p_1_in[31:29]}),
        .S({1'b0,Count[31:29]}));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[3] 
       (.C(Clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(Count[3]),
        .R(Clk_status));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[4] 
       (.C(Clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(Count[4]),
        .R(Clk_status));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \Count_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\Count_reg[4]_i_1_n_0 ,\NLW_Count_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(Count[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[4:1]),
        .S(Count[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[5] 
       (.C(Clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(Count[5]),
        .R(Clk_status));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[6] 
       (.C(Clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(Count[6]),
        .R(Clk_status));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[7] 
       (.C(Clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(Count[7]),
        .R(Clk_status));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[8] 
       (.C(Clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[8]),
        .Q(Count[8]),
        .R(Clk_status));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \Count_reg[8]_i_1 
       (.CI(\Count_reg[4]_i_1_n_0 ),
        .CO({\Count_reg[8]_i_1_n_0 ,\NLW_Count_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[8:5]),
        .S(Count[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[9] 
       (.C(Clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[9]),
        .Q(Count[9]),
        .R(Clk_status));
endmodule
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
