// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Mar 12 17:57:27 2024
// Host        : DESKTOP-LINHK1M running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/Quantum/DynamicCircuit/DynamicCircuit.sim/sim_1/synth/func/xsim/QValid_func_synth.v
// Design      : QMesaure_tx
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* s_compare = "2'b10" *) (* s_getvalue = "2'b01" *) (* s_send = "2'b11" *) 
(* s_set = "2'b00" *) 
module QMeasure
   (sysclk,
    i_q0,
    i_q1,
    o_Q_value,
    o_Measure_Done);
  input sysclk;
  input [31:0]i_q0;
  input [31:0]i_q1;
  output o_Q_value;
  output o_Measure_Done;

  wire RNGvalue;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[0]_i_2_n_0 ;
  wire \counter[0]_i_3_n_0 ;
  wire \counter[0]_i_4_n_0 ;
  wire \counter[0]_i_5_n_0 ;
  wire \counter[31]_i_10_n_0 ;
  wire \counter[31]_i_11_n_0 ;
  wire \counter[31]_i_12_n_0 ;
  wire \counter[31]_i_1_n_0 ;
  wire \counter[31]_i_2_n_0 ;
  wire \counter[31]_i_4_n_0 ;
  wire \counter[31]_i_5_n_0 ;
  wire \counter[31]_i_6_n_0 ;
  wire \counter[31]_i_7_n_0 ;
  wire \counter[31]_i_8_n_0 ;
  wire \counter[31]_i_9_n_0 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_2 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[16]_i_1_n_0 ;
  wire \counter_reg[16]_i_1_n_1 ;
  wire \counter_reg[16]_i_1_n_2 ;
  wire \counter_reg[16]_i_1_n_3 ;
  wire \counter_reg[20]_i_1_n_0 ;
  wire \counter_reg[20]_i_1_n_1 ;
  wire \counter_reg[20]_i_1_n_2 ;
  wire \counter_reg[20]_i_1_n_3 ;
  wire \counter_reg[24]_i_1_n_0 ;
  wire \counter_reg[24]_i_1_n_1 ;
  wire \counter_reg[24]_i_1_n_2 ;
  wire \counter_reg[24]_i_1_n_3 ;
  wire \counter_reg[28]_i_1_n_0 ;
  wire \counter_reg[28]_i_1_n_1 ;
  wire \counter_reg[28]_i_1_n_2 ;
  wire \counter_reg[28]_i_1_n_3 ;
  wire \counter_reg[31]_i_3_n_2 ;
  wire \counter_reg[31]_i_3_n_3 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire [31:1]data0;
  wire o_Measure_Done;
  wire o_Q_value;
  wire r_Q_value2_n_100;
  wire r_Q_value2_n_101;
  wire r_Q_value2_n_102;
  wire r_Q_value2_n_103;
  wire r_Q_value2_n_104;
  wire r_Q_value2_n_105;
  wire r_Q_value2_n_74;
  wire r_Q_value2_n_75;
  wire r_Q_value2_n_76;
  wire r_Q_value2_n_77;
  wire r_Q_value2_n_78;
  wire r_Q_value2_n_79;
  wire r_Q_value2_n_80;
  wire r_Q_value2_n_81;
  wire r_Q_value2_n_82;
  wire r_Q_value2_n_83;
  wire r_Q_value2_n_84;
  wire r_Q_value2_n_85;
  wire r_Q_value2_n_86;
  wire r_Q_value2_n_87;
  wire r_Q_value2_n_88;
  wire r_Q_value2_n_89;
  wire r_Q_value2_n_90;
  wire r_Q_value2_n_91;
  wire r_Q_value2_n_92;
  wire r_Q_value2_n_93;
  wire r_Q_value2_n_94;
  wire r_Q_value2_n_95;
  wire r_Q_value2_n_96;
  wire r_Q_value2_n_97;
  wire r_Q_value2_n_98;
  wire r_Q_value2_n_99;
  wire r_Q_value3_n_10;
  wire r_Q_value3_n_106;
  wire r_Q_value3_n_107;
  wire r_Q_value3_n_108;
  wire r_Q_value3_n_109;
  wire r_Q_value3_n_11;
  wire r_Q_value3_n_110;
  wire r_Q_value3_n_111;
  wire r_Q_value3_n_112;
  wire r_Q_value3_n_113;
  wire r_Q_value3_n_114;
  wire r_Q_value3_n_115;
  wire r_Q_value3_n_116;
  wire r_Q_value3_n_117;
  wire r_Q_value3_n_118;
  wire r_Q_value3_n_119;
  wire r_Q_value3_n_12;
  wire r_Q_value3_n_120;
  wire r_Q_value3_n_121;
  wire r_Q_value3_n_122;
  wire r_Q_value3_n_123;
  wire r_Q_value3_n_124;
  wire r_Q_value3_n_125;
  wire r_Q_value3_n_126;
  wire r_Q_value3_n_127;
  wire r_Q_value3_n_128;
  wire r_Q_value3_n_129;
  wire r_Q_value3_n_13;
  wire r_Q_value3_n_130;
  wire r_Q_value3_n_131;
  wire r_Q_value3_n_132;
  wire r_Q_value3_n_133;
  wire r_Q_value3_n_134;
  wire r_Q_value3_n_135;
  wire r_Q_value3_n_136;
  wire r_Q_value3_n_137;
  wire r_Q_value3_n_138;
  wire r_Q_value3_n_139;
  wire r_Q_value3_n_14;
  wire r_Q_value3_n_140;
  wire r_Q_value3_n_141;
  wire r_Q_value3_n_142;
  wire r_Q_value3_n_143;
  wire r_Q_value3_n_144;
  wire r_Q_value3_n_145;
  wire r_Q_value3_n_146;
  wire r_Q_value3_n_147;
  wire r_Q_value3_n_148;
  wire r_Q_value3_n_149;
  wire r_Q_value3_n_15;
  wire r_Q_value3_n_150;
  wire r_Q_value3_n_151;
  wire r_Q_value3_n_152;
  wire r_Q_value3_n_153;
  wire r_Q_value3_n_16;
  wire r_Q_value3_n_17;
  wire r_Q_value3_n_18;
  wire r_Q_value3_n_19;
  wire r_Q_value3_n_20;
  wire r_Q_value3_n_21;
  wire r_Q_value3_n_22;
  wire r_Q_value3_n_23;
  wire r_Q_value3_n_24;
  wire r_Q_value3_n_25;
  wire r_Q_value3_n_26;
  wire r_Q_value3_n_27;
  wire r_Q_value3_n_28;
  wire r_Q_value3_n_29;
  wire r_Q_value3_n_30;
  wire r_Q_value3_n_31;
  wire r_Q_value3_n_32;
  wire r_Q_value3_n_33;
  wire r_Q_value3_n_34;
  wire r_Q_value3_n_35;
  wire r_Q_value3_n_36;
  wire r_Q_value3_n_37;
  wire r_Q_value3_n_38;
  wire r_Q_value3_n_39;
  wire r_Q_value3_n_40;
  wire r_Q_value3_n_41;
  wire r_Q_value3_n_42;
  wire r_Q_value3_n_43;
  wire r_Q_value3_n_44;
  wire r_Q_value3_n_45;
  wire r_Q_value3_n_46;
  wire r_Q_value3_n_47;
  wire r_Q_value3_n_48;
  wire r_Q_value3_n_49;
  wire r_Q_value3_n_50;
  wire r_Q_value3_n_51;
  wire r_Q_value3_n_52;
  wire r_Q_value3_n_53;
  wire r_Q_value3_n_6;
  wire r_Q_value3_n_7;
  wire r_Q_value3_n_8;
  wire r_Q_value3_n_9;
  wire r_Q_value_i_10_n_0;
  wire r_Q_value_i_11_n_0;
  wire r_Q_value_i_12_n_0;
  wire r_Q_value_i_14_n_0;
  wire r_Q_value_i_15_n_0;
  wire r_Q_value_i_16_n_0;
  wire r_Q_value_i_17_n_0;
  wire r_Q_value_i_19_n_0;
  wire r_Q_value_i_1_n_0;
  wire r_Q_value_i_20_n_0;
  wire r_Q_value_i_21_n_0;
  wire r_Q_value_i_22_n_0;
  wire r_Q_value_i_24_n_0;
  wire r_Q_value_i_25_n_0;
  wire r_Q_value_i_26_n_0;
  wire r_Q_value_i_27_n_0;
  wire r_Q_value_i_29_n_0;
  wire r_Q_value_i_30_n_0;
  wire r_Q_value_i_31_n_0;
  wire r_Q_value_i_32_n_0;
  wire r_Q_value_i_34_n_0;
  wire r_Q_value_i_35_n_0;
  wire r_Q_value_i_36_n_0;
  wire r_Q_value_i_37_n_0;
  wire r_Q_value_i_38_n_0;
  wire r_Q_value_i_39_n_0;
  wire r_Q_value_i_40_n_0;
  wire r_Q_value_i_41_n_0;
  wire r_Q_value_i_4_n_0;
  wire r_Q_value_i_5_n_0;
  wire r_Q_value_i_6_n_0;
  wire r_Q_value_i_7_n_0;
  wire r_Q_value_i_9_n_0;
  wire r_Q_value_reg_i_13_n_0;
  wire r_Q_value_reg_i_13_n_1;
  wire r_Q_value_reg_i_13_n_2;
  wire r_Q_value_reg_i_13_n_3;
  wire r_Q_value_reg_i_18_n_0;
  wire r_Q_value_reg_i_18_n_1;
  wire r_Q_value_reg_i_18_n_2;
  wire r_Q_value_reg_i_18_n_3;
  wire r_Q_value_reg_i_23_n_0;
  wire r_Q_value_reg_i_23_n_1;
  wire r_Q_value_reg_i_23_n_2;
  wire r_Q_value_reg_i_23_n_3;
  wire r_Q_value_reg_i_28_n_0;
  wire r_Q_value_reg_i_28_n_1;
  wire r_Q_value_reg_i_28_n_2;
  wire r_Q_value_reg_i_28_n_3;
  wire r_Q_value_reg_i_2_n_0;
  wire r_Q_value_reg_i_2_n_1;
  wire r_Q_value_reg_i_2_n_2;
  wire r_Q_value_reg_i_2_n_3;
  wire r_Q_value_reg_i_33_n_0;
  wire r_Q_value_reg_i_33_n_1;
  wire r_Q_value_reg_i_33_n_2;
  wire r_Q_value_reg_i_33_n_3;
  wire r_Q_value_reg_i_3_n_0;
  wire r_Q_value_reg_i_3_n_1;
  wire r_Q_value_reg_i_3_n_2;
  wire r_Q_value_reg_i_3_n_3;
  wire r_Q_value_reg_i_8_n_0;
  wire r_Q_value_reg_i_8_n_1;
  wire r_Q_value_reg_i_8_n_2;
  wire r_Q_value_reg_i_8_n_3;
  wire \r_RNGvalue[0]_i_1_n_0 ;
  wire \r_RNGvalue[10]_i_1_n_0 ;
  wire \r_RNGvalue[11]_i_1_n_0 ;
  wire \r_RNGvalue[12]_i_1_n_0 ;
  wire \r_RNGvalue[12]_i_2_n_0 ;
  wire \r_RNGvalue[13]_i_1_n_0 ;
  wire \r_RNGvalue[13]_i_2_n_0 ;
  wire \r_RNGvalue[14]_i_1_n_0 ;
  wire \r_RNGvalue[15]_i_1_n_0 ;
  wire \r_RNGvalue[16]_i_1_n_0 ;
  wire \r_RNGvalue[17]_i_1_n_0 ;
  wire \r_RNGvalue[18]_i_1_n_0 ;
  wire \r_RNGvalue[19]_i_1_n_0 ;
  wire \r_RNGvalue[1]_i_1_n_0 ;
  wire \r_RNGvalue[20]_i_1_n_0 ;
  wire \r_RNGvalue[20]_i_2_n_0 ;
  wire \r_RNGvalue[21]_i_1_n_0 ;
  wire \r_RNGvalue[21]_i_2_n_0 ;
  wire \r_RNGvalue[22]_i_1_n_0 ;
  wire \r_RNGvalue[23]_i_1_n_0 ;
  wire \r_RNGvalue[24]_i_1_n_0 ;
  wire \r_RNGvalue[25]_i_1_n_0 ;
  wire \r_RNGvalue[26]_i_1_n_0 ;
  wire \r_RNGvalue[27]_i_1_n_0 ;
  wire \r_RNGvalue[28]_i_1_n_0 ;
  wire \r_RNGvalue[28]_i_2_n_0 ;
  wire \r_RNGvalue[29]_i_1_n_0 ;
  wire \r_RNGvalue[29]_i_2_n_0 ;
  wire \r_RNGvalue[2]_i_1_n_0 ;
  wire \r_RNGvalue[30]_i_1_n_0 ;
  wire \r_RNGvalue[30]_i_2_n_0 ;
  wire \r_RNGvalue[31]_i_1_n_0 ;
  wire \r_RNGvalue[31]_i_2_n_0 ;
  wire \r_RNGvalue[3]_i_1_n_0 ;
  wire \r_RNGvalue[4]_i_1_n_0 ;
  wire \r_RNGvalue[5]_i_1_n_0 ;
  wire \r_RNGvalue[6]_i_1_n_0 ;
  wire \r_RNGvalue[7]_i_1_n_0 ;
  wire \r_RNGvalue[8]_i_1_n_0 ;
  wire \r_RNGvalue[9]_i_1_n_0 ;
  wire \r_RNGvalue_reg_n_0_[0] ;
  wire \r_RNGvalue_reg_n_0_[10] ;
  wire \r_RNGvalue_reg_n_0_[11] ;
  wire \r_RNGvalue_reg_n_0_[12] ;
  wire \r_RNGvalue_reg_n_0_[13] ;
  wire \r_RNGvalue_reg_n_0_[14] ;
  wire \r_RNGvalue_reg_n_0_[15] ;
  wire \r_RNGvalue_reg_n_0_[16] ;
  wire \r_RNGvalue_reg_n_0_[17] ;
  wire \r_RNGvalue_reg_n_0_[18] ;
  wire \r_RNGvalue_reg_n_0_[19] ;
  wire \r_RNGvalue_reg_n_0_[1] ;
  wire \r_RNGvalue_reg_n_0_[20] ;
  wire \r_RNGvalue_reg_n_0_[21] ;
  wire \r_RNGvalue_reg_n_0_[22] ;
  wire \r_RNGvalue_reg_n_0_[23] ;
  wire \r_RNGvalue_reg_n_0_[24] ;
  wire \r_RNGvalue_reg_n_0_[25] ;
  wire \r_RNGvalue_reg_n_0_[26] ;
  wire \r_RNGvalue_reg_n_0_[27] ;
  wire \r_RNGvalue_reg_n_0_[28] ;
  wire \r_RNGvalue_reg_n_0_[29] ;
  wire \r_RNGvalue_reg_n_0_[2] ;
  wire \r_RNGvalue_reg_n_0_[30] ;
  wire \r_RNGvalue_reg_n_0_[31] ;
  wire \r_RNGvalue_reg_n_0_[3] ;
  wire \r_RNGvalue_reg_n_0_[4] ;
  wire \r_RNGvalue_reg_n_0_[5] ;
  wire \r_RNGvalue_reg_n_0_[6] ;
  wire \r_RNGvalue_reg_n_0_[7] ;
  wire \r_RNGvalue_reg_n_0_[8] ;
  wire \r_RNGvalue_reg_n_0_[9] ;
  wire [31:0]sel0;
  wire [1:0]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire sysclk;
  wire [3:2]\NLW_counter_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[31]_i_3_O_UNCONNECTED ;
  wire NLW_r_Q_value2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_r_Q_value2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_r_Q_value2_OVERFLOW_UNCONNECTED;
  wire NLW_r_Q_value2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_r_Q_value2_PATTERNDETECT_UNCONNECTED;
  wire NLW_r_Q_value2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_r_Q_value2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_r_Q_value2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_r_Q_value2_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_r_Q_value2_P_UNCONNECTED;
  wire [47:0]NLW_r_Q_value2_PCOUT_UNCONNECTED;
  wire NLW_r_Q_value3_CARRYCASCOUT_UNCONNECTED;
  wire NLW_r_Q_value3_MULTSIGNOUT_UNCONNECTED;
  wire NLW_r_Q_value3_OVERFLOW_UNCONNECTED;
  wire NLW_r_Q_value3_PATTERNBDETECT_UNCONNECTED;
  wire NLW_r_Q_value3_PATTERNDETECT_UNCONNECTED;
  wire NLW_r_Q_value3_UNDERFLOW_UNCONNECTED;
  wire [3:0]NLW_r_Q_value3_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_r_Q_value3_P_UNCONNECTED;
  wire [3:0]NLW_r_Q_value_reg_i_13_O_UNCONNECTED;
  wire [3:0]NLW_r_Q_value_reg_i_18_O_UNCONNECTED;
  wire [3:0]NLW_r_Q_value_reg_i_2_O_UNCONNECTED;
  wire [3:0]NLW_r_Q_value_reg_i_23_O_UNCONNECTED;
  wire [3:0]NLW_r_Q_value_reg_i_28_O_UNCONNECTED;
  wire [3:0]NLW_r_Q_value_reg_i_3_O_UNCONNECTED;
  wire [3:0]NLW_r_Q_value_reg_i_33_O_UNCONNECTED;
  wire [3:0]NLW_r_Q_value_reg_i_8_O_UNCONNECTED;

  (* RO_STAGE = "4" *) 
  RORNG RNG
       (.En(1'b1),
        .rn_out(RNGvalue),
        .sysclk(sysclk));
  LUT6 #(
    .INIT(64'h0000FFFFFFFE0000)) 
    \counter[0]_i_1 
       (.I0(\counter[31]_i_8_n_0 ),
        .I1(\counter[0]_i_2_n_0 ),
        .I2(\counter[0]_i_3_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(\counter[31]_i_2_n_0 ),
        .I5(sel0[0]),
        .O(\counter[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[0]_i_2 
       (.I0(\counter[31]_i_10_n_0 ),
        .I1(\counter[0]_i_4_n_0 ),
        .I2(\counter[31]_i_9_n_0 ),
        .I3(\counter[0]_i_5_n_0 ),
        .O(\counter[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \counter[0]_i_3 
       (.I0(sel0[3]),
        .I1(sel0[4]),
        .O(\counter[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[0]_i_4 
       (.I0(sel0[11]),
        .I1(sel0[10]),
        .I2(sel0[13]),
        .I3(sel0[12]),
        .O(\counter[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[0]_i_5 
       (.I0(sel0[19]),
        .I1(sel0[18]),
        .I2(sel0[21]),
        .I3(sel0[20]),
        .O(\counter[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \counter[31]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_4_n_0 ),
        .I2(\counter[31]_i_5_n_0 ),
        .I3(\counter[31]_i_6_n_0 ),
        .I4(\counter[31]_i_7_n_0 ),
        .I5(\counter[31]_i_8_n_0 ),
        .O(\counter[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[31]_i_10 
       (.I0(sel0[15]),
        .I1(sel0[14]),
        .I2(sel0[17]),
        .I3(sel0[16]),
        .O(\counter[31]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[31]_i_11 
       (.I0(sel0[27]),
        .I1(sel0[26]),
        .I2(sel0[29]),
        .I3(sel0[28]),
        .O(\counter[31]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[31]_i_12 
       (.I0(sel0[7]),
        .I1(sel0[6]),
        .I2(sel0[9]),
        .I3(sel0[8]),
        .O(\counter[31]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[31]_i_2 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\counter[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \counter[31]_i_4 
       (.I0(sel0[4]),
        .I1(sel0[3]),
        .I2(sel0[0]),
        .O(\counter[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \counter[31]_i_5 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .O(\counter[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[31]_i_6 
       (.I0(sel0[20]),
        .I1(sel0[21]),
        .I2(sel0[18]),
        .I3(sel0[19]),
        .I4(\counter[31]_i_9_n_0 ),
        .O(\counter[31]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[31]_i_7 
       (.I0(sel0[12]),
        .I1(sel0[13]),
        .I2(sel0[10]),
        .I3(sel0[11]),
        .I4(\counter[31]_i_10_n_0 ),
        .O(\counter[31]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[31]_i_8 
       (.I0(sel0[31]),
        .I1(sel0[30]),
        .I2(sel0[5]),
        .I3(\counter[31]_i_11_n_0 ),
        .I4(\counter[31]_i_12_n_0 ),
        .O(\counter[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[31]_i_9 
       (.I0(sel0[23]),
        .I1(sel0[22]),
        .I2(sel0[25]),
        .I3(sel0[24]),
        .O(\counter[31]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\counter[0]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(sysclk),
        .CE(\counter[31]_i_2_n_0 ),
        .D(data0[10]),
        .Q(sel0[10]),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(sysclk),
        .CE(\counter[31]_i_2_n_0 ),
        .D(data0[11]),
        .Q(sel0[11]),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(sysclk),
        .CE(\counter[31]_i_2_n_0 ),
        .D(data0[12]),
        .Q(sel0[12]),
        .R(\counter[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\counter_reg[12]_i_1_n_1 ,\counter_reg[12]_i_1_n_2 ,\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(sel0[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(sysclk),
        .CE(\counter[31]_i_2_n_0 ),
        .D(data0[13]),
        .Q(sel0[13]),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(sysclk),
        .CE(\counter[31]_i_2_n_0 ),
        .D(data0[14]),
        .Q(sel0[14]),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(sysclk),
        .CE(\counter[31]_i_2_n_0 ),
        .D(data0[15]),
        .Q(sel0[15]),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(sysclk),
        .CE(\counter[31]_i_2_n_0 ),
        .D(data0[16]),
        .Q(sel0[16]),
        .R(\counter[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO({\counter_reg[16]_i_1_n_0 ,\counter_reg[16]_i_1_n_1 ,\counter_reg[16]_i_1_n_2 ,\counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(sel0[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(sysclk),
        .CE(\counter[31]_i_2_n_0 ),
        .D(data0[17]),
        .Q(sel0[17]),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(sysclk),
        .CE(\counter[31]_i_2_n_0 ),
        .D(data0[18]),
        .Q(sel0[18]),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(sysclk),
        .CE(\counter[31]_i_2_n_0 ),
        .D(data0[19]),
        .Q(sel0[19]),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(sysclk),
        .CE(\counter[31]_i_2_n_0 ),
        .D(data0[1]),
        .Q(sel0[1]),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(sysclk),
        .CE(\counter[31]_i_2_n_0 ),
        .D(data0[20]),
        .Q(sel0[20]),
        .R(\counter[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[20]_i_1 
       (.CI(\counter_reg[16]_i_1_n_0 ),
        .CO({\counter_reg[20]_i_1_n_0 ,\counter_reg[20]_i_1_n_1 ,\counter_reg[20]_i_1_n_2 ,\counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(sel0[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(sysclk),
        .CE(\counter[31]_i_2_n_0 ),
        .D(data0[21]),
        .Q(sel0[21]),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(sysclk),
        .CE(\counter[31]_i_2_n_0 ),
        .D(data0[22]),
        .Q(sel0[22]),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(sysclk),
        .CE(\counter[31]_i_2_n_0 ),
        .D(data0[23]),
        .Q(sel0[23]),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(sysclk),
        .CE(\counter[31]_i_2_n_0 ),
        .D(data0[24]),
        .Q(sel0[24]),
        .R(\counter[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[24]_i_1 
       (.CI(\counter_reg[20]_i_1_n_0 ),
        .CO({\counter_reg[24]_i_1_n_0 ,\counter_reg[24]_i_1_n_1 ,\counter_reg[24]_i_1_n_2 ,\counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(sel0[24:21]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(sysclk),
        .CE(\counter[31]_i_2_n_0 ),
        .D(data0[25]),
        .Q(sel0[25]),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(sysclk),
        .CE(\counter[31]_i_2_n_0 ),
        .D(data0[26]),
        .Q(sel0[26]),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(sysclk),
        .CE(\counter[31]_i_2_n_0 ),
        .D(data0[27]),
        .Q(sel0[27]),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[28] 
       (.C(sysclk),
        .CE(\counter[31]_i_2_n_0 ),
        .D(data0[28]),
        .Q(sel0[28]),
        .R(\counter[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[28]_i_1 
       (.CI(\counter_reg[24]_i_1_n_0 ),
        .CO({\counter_reg[28]_i_1_n_0 ,\counter_reg[28]_i_1_n_1 ,\counter_reg[28]_i_1_n_2 ,\counter_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S(sel0[28:25]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[29] 
       (.C(sysclk),
        .CE(\counter[31]_i_2_n_0 ),
        .D(data0[29]),
        .Q(sel0[29]),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(sysclk),
        .CE(\counter[31]_i_2_n_0 ),
        .D(data0[2]),
        .Q(sel0[2]),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[30] 
       (.C(sysclk),
        .CE(\counter[31]_i_2_n_0 ),
        .D(data0[30]),
        .Q(sel0[30]),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[31] 
       (.C(sysclk),
        .CE(\counter[31]_i_2_n_0 ),
        .D(data0[31]),
        .Q(sel0[31]),
        .R(\counter[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[31]_i_3 
       (.CI(\counter_reg[28]_i_1_n_0 ),
        .CO({\NLW_counter_reg[31]_i_3_CO_UNCONNECTED [3:2],\counter_reg[31]_i_3_n_2 ,\counter_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[31]_i_3_O_UNCONNECTED [3],data0[31:29]}),
        .S({1'b0,sel0[31:29]}));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(sysclk),
        .CE(\counter[31]_i_2_n_0 ),
        .D(data0[3]),
        .Q(sel0[3]),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(sysclk),
        .CE(\counter[31]_i_2_n_0 ),
        .D(data0[4]),
        .Q(sel0[4]),
        .R(\counter[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(sel0[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(sel0[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(sysclk),
        .CE(\counter[31]_i_2_n_0 ),
        .D(data0[5]),
        .Q(sel0[5]),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(sysclk),
        .CE(\counter[31]_i_2_n_0 ),
        .D(data0[6]),
        .Q(sel0[6]),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(sysclk),
        .CE(\counter[31]_i_2_n_0 ),
        .D(data0[7]),
        .Q(sel0[7]),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(sysclk),
        .CE(\counter[31]_i_2_n_0 ),
        .D(data0[8]),
        .Q(sel0[8]),
        .R(\counter[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(sel0[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(sysclk),
        .CE(\counter[31]_i_2_n_0 ),
        .D(data0[9]),
        .Q(sel0[9]),
        .R(\counter[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    r_Measure_Done_reg
       (.C(sysclk),
        .CE(1'b0),
        .D(1'b0),
        .Q(o_Measure_Done),
        .S(r_Q_value_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("CASCADE"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    r_Q_value2
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({r_Q_value3_n_24,r_Q_value3_n_25,r_Q_value3_n_26,r_Q_value3_n_27,r_Q_value3_n_28,r_Q_value3_n_29,r_Q_value3_n_30,r_Q_value3_n_31,r_Q_value3_n_32,r_Q_value3_n_33,r_Q_value3_n_34,r_Q_value3_n_35,r_Q_value3_n_36,r_Q_value3_n_37,r_Q_value3_n_38,r_Q_value3_n_39,r_Q_value3_n_40,r_Q_value3_n_41,r_Q_value3_n_42,r_Q_value3_n_43,r_Q_value3_n_44,r_Q_value3_n_45,r_Q_value3_n_46,r_Q_value3_n_47,r_Q_value3_n_48,r_Q_value3_n_49,r_Q_value3_n_50,r_Q_value3_n_51,r_Q_value3_n_52,r_Q_value3_n_53}),
        .ACOUT(NLW_r_Q_value2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({r_Q_value3_n_6,r_Q_value3_n_7,r_Q_value3_n_8,r_Q_value3_n_9,r_Q_value3_n_10,r_Q_value3_n_11,r_Q_value3_n_12,r_Q_value3_n_13,r_Q_value3_n_14,r_Q_value3_n_15,r_Q_value3_n_16,r_Q_value3_n_17,r_Q_value3_n_18,r_Q_value3_n_19,r_Q_value3_n_20,r_Q_value3_n_21,r_Q_value3_n_22,r_Q_value3_n_23}),
        .BCOUT(NLW_r_Q_value2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_r_Q_value2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_r_Q_value2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(sysclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_r_Q_value2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_r_Q_value2_OVERFLOW_UNCONNECTED),
        .P({NLW_r_Q_value2_P_UNCONNECTED[47:32],r_Q_value2_n_74,r_Q_value2_n_75,r_Q_value2_n_76,r_Q_value2_n_77,r_Q_value2_n_78,r_Q_value2_n_79,r_Q_value2_n_80,r_Q_value2_n_81,r_Q_value2_n_82,r_Q_value2_n_83,r_Q_value2_n_84,r_Q_value2_n_85,r_Q_value2_n_86,r_Q_value2_n_87,r_Q_value2_n_88,r_Q_value2_n_89,r_Q_value2_n_90,r_Q_value2_n_91,r_Q_value2_n_92,r_Q_value2_n_93,r_Q_value2_n_94,r_Q_value2_n_95,r_Q_value2_n_96,r_Q_value2_n_97,r_Q_value2_n_98,r_Q_value2_n_99,r_Q_value2_n_100,r_Q_value2_n_101,r_Q_value2_n_102,r_Q_value2_n_103,r_Q_value2_n_104,r_Q_value2_n_105}),
        .PATTERNBDETECT(NLW_r_Q_value2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_r_Q_value2_PATTERNDETECT_UNCONNECTED),
        .PCIN({r_Q_value3_n_106,r_Q_value3_n_107,r_Q_value3_n_108,r_Q_value3_n_109,r_Q_value3_n_110,r_Q_value3_n_111,r_Q_value3_n_112,r_Q_value3_n_113,r_Q_value3_n_114,r_Q_value3_n_115,r_Q_value3_n_116,r_Q_value3_n_117,r_Q_value3_n_118,r_Q_value3_n_119,r_Q_value3_n_120,r_Q_value3_n_121,r_Q_value3_n_122,r_Q_value3_n_123,r_Q_value3_n_124,r_Q_value3_n_125,r_Q_value3_n_126,r_Q_value3_n_127,r_Q_value3_n_128,r_Q_value3_n_129,r_Q_value3_n_130,r_Q_value3_n_131,r_Q_value3_n_132,r_Q_value3_n_133,r_Q_value3_n_134,r_Q_value3_n_135,r_Q_value3_n_136,r_Q_value3_n_137,r_Q_value3_n_138,r_Q_value3_n_139,r_Q_value3_n_140,r_Q_value3_n_141,r_Q_value3_n_142,r_Q_value3_n_143,r_Q_value3_n_144,r_Q_value3_n_145,r_Q_value3_n_146,r_Q_value3_n_147,r_Q_value3_n_148,r_Q_value3_n_149,r_Q_value3_n_150,r_Q_value3_n_151,r_Q_value3_n_152,r_Q_value3_n_153}),
        .PCOUT(NLW_r_Q_value2_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_r_Q_value2_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    r_Q_value3
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT({r_Q_value3_n_24,r_Q_value3_n_25,r_Q_value3_n_26,r_Q_value3_n_27,r_Q_value3_n_28,r_Q_value3_n_29,r_Q_value3_n_30,r_Q_value3_n_31,r_Q_value3_n_32,r_Q_value3_n_33,r_Q_value3_n_34,r_Q_value3_n_35,r_Q_value3_n_36,r_Q_value3_n_37,r_Q_value3_n_38,r_Q_value3_n_39,r_Q_value3_n_40,r_Q_value3_n_41,r_Q_value3_n_42,r_Q_value3_n_43,r_Q_value3_n_44,r_Q_value3_n_45,r_Q_value3_n_46,r_Q_value3_n_47,r_Q_value3_n_48,r_Q_value3_n_49,r_Q_value3_n_50,r_Q_value3_n_51,r_Q_value3_n_52,r_Q_value3_n_53}),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT({r_Q_value3_n_6,r_Q_value3_n_7,r_Q_value3_n_8,r_Q_value3_n_9,r_Q_value3_n_10,r_Q_value3_n_11,r_Q_value3_n_12,r_Q_value3_n_13,r_Q_value3_n_14,r_Q_value3_n_15,r_Q_value3_n_16,r_Q_value3_n_17,r_Q_value3_n_18,r_Q_value3_n_19,r_Q_value3_n_20,r_Q_value3_n_21,r_Q_value3_n_22,r_Q_value3_n_23}),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_r_Q_value3_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_r_Q_value3_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(sysclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_r_Q_value3_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_r_Q_value3_OVERFLOW_UNCONNECTED),
        .P(NLW_r_Q_value3_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_r_Q_value3_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_r_Q_value3_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({r_Q_value3_n_106,r_Q_value3_n_107,r_Q_value3_n_108,r_Q_value3_n_109,r_Q_value3_n_110,r_Q_value3_n_111,r_Q_value3_n_112,r_Q_value3_n_113,r_Q_value3_n_114,r_Q_value3_n_115,r_Q_value3_n_116,r_Q_value3_n_117,r_Q_value3_n_118,r_Q_value3_n_119,r_Q_value3_n_120,r_Q_value3_n_121,r_Q_value3_n_122,r_Q_value3_n_123,r_Q_value3_n_124,r_Q_value3_n_125,r_Q_value3_n_126,r_Q_value3_n_127,r_Q_value3_n_128,r_Q_value3_n_129,r_Q_value3_n_130,r_Q_value3_n_131,r_Q_value3_n_132,r_Q_value3_n_133,r_Q_value3_n_134,r_Q_value3_n_135,r_Q_value3_n_136,r_Q_value3_n_137,r_Q_value3_n_138,r_Q_value3_n_139,r_Q_value3_n_140,r_Q_value3_n_141,r_Q_value3_n_142,r_Q_value3_n_143,r_Q_value3_n_144,r_Q_value3_n_145,r_Q_value3_n_146,r_Q_value3_n_147,r_Q_value3_n_148,r_Q_value3_n_149,r_Q_value3_n_150,r_Q_value3_n_151,r_Q_value3_n_152,r_Q_value3_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_r_Q_value3_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'h2)) 
    r_Q_value_i_1
       (.I0(state[1]),
        .I1(state[0]),
        .O(r_Q_value_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_Q_value_i_10
       (.I0(r_Q_value2_n_79),
        .I1(\r_RNGvalue_reg_n_0_[26] ),
        .O(r_Q_value_i_10_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_Q_value_i_11
       (.I0(r_Q_value2_n_80),
        .I1(\r_RNGvalue_reg_n_0_[25] ),
        .O(r_Q_value_i_11_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_Q_value_i_12
       (.I0(r_Q_value2_n_81),
        .I1(\r_RNGvalue_reg_n_0_[24] ),
        .O(r_Q_value_i_12_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_Q_value_i_14
       (.I0(r_Q_value2_n_82),
        .I1(\r_RNGvalue_reg_n_0_[23] ),
        .O(r_Q_value_i_14_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_Q_value_i_15
       (.I0(r_Q_value2_n_83),
        .I1(\r_RNGvalue_reg_n_0_[22] ),
        .O(r_Q_value_i_15_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_Q_value_i_16
       (.I0(r_Q_value2_n_84),
        .I1(\r_RNGvalue_reg_n_0_[21] ),
        .O(r_Q_value_i_16_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_Q_value_i_17
       (.I0(r_Q_value2_n_85),
        .I1(\r_RNGvalue_reg_n_0_[20] ),
        .O(r_Q_value_i_17_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_Q_value_i_19
       (.I0(r_Q_value2_n_86),
        .I1(\r_RNGvalue_reg_n_0_[19] ),
        .O(r_Q_value_i_19_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_Q_value_i_20
       (.I0(r_Q_value2_n_87),
        .I1(\r_RNGvalue_reg_n_0_[18] ),
        .O(r_Q_value_i_20_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_Q_value_i_21
       (.I0(r_Q_value2_n_88),
        .I1(\r_RNGvalue_reg_n_0_[17] ),
        .O(r_Q_value_i_21_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_Q_value_i_22
       (.I0(r_Q_value2_n_89),
        .I1(\r_RNGvalue_reg_n_0_[16] ),
        .O(r_Q_value_i_22_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_Q_value_i_24
       (.I0(r_Q_value2_n_90),
        .I1(\r_RNGvalue_reg_n_0_[15] ),
        .O(r_Q_value_i_24_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_Q_value_i_25
       (.I0(r_Q_value2_n_91),
        .I1(\r_RNGvalue_reg_n_0_[14] ),
        .O(r_Q_value_i_25_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_Q_value_i_26
       (.I0(r_Q_value2_n_92),
        .I1(\r_RNGvalue_reg_n_0_[13] ),
        .O(r_Q_value_i_26_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_Q_value_i_27
       (.I0(r_Q_value2_n_93),
        .I1(\r_RNGvalue_reg_n_0_[12] ),
        .O(r_Q_value_i_27_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_Q_value_i_29
       (.I0(r_Q_value2_n_94),
        .I1(\r_RNGvalue_reg_n_0_[11] ),
        .O(r_Q_value_i_29_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_Q_value_i_30
       (.I0(r_Q_value2_n_95),
        .I1(\r_RNGvalue_reg_n_0_[10] ),
        .O(r_Q_value_i_30_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_Q_value_i_31
       (.I0(r_Q_value2_n_96),
        .I1(\r_RNGvalue_reg_n_0_[9] ),
        .O(r_Q_value_i_31_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_Q_value_i_32
       (.I0(r_Q_value2_n_97),
        .I1(\r_RNGvalue_reg_n_0_[8] ),
        .O(r_Q_value_i_32_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_Q_value_i_34
       (.I0(r_Q_value2_n_98),
        .I1(\r_RNGvalue_reg_n_0_[7] ),
        .O(r_Q_value_i_34_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_Q_value_i_35
       (.I0(r_Q_value2_n_99),
        .I1(\r_RNGvalue_reg_n_0_[6] ),
        .O(r_Q_value_i_35_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_Q_value_i_36
       (.I0(r_Q_value2_n_100),
        .I1(\r_RNGvalue_reg_n_0_[5] ),
        .O(r_Q_value_i_36_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_Q_value_i_37
       (.I0(r_Q_value2_n_101),
        .I1(\r_RNGvalue_reg_n_0_[4] ),
        .O(r_Q_value_i_37_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_Q_value_i_38
       (.I0(r_Q_value2_n_102),
        .I1(\r_RNGvalue_reg_n_0_[3] ),
        .O(r_Q_value_i_38_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_Q_value_i_39
       (.I0(r_Q_value2_n_103),
        .I1(\r_RNGvalue_reg_n_0_[2] ),
        .O(r_Q_value_i_39_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_Q_value_i_4
       (.I0(r_Q_value2_n_74),
        .I1(\r_RNGvalue_reg_n_0_[31] ),
        .O(r_Q_value_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_Q_value_i_40
       (.I0(r_Q_value2_n_104),
        .I1(\r_RNGvalue_reg_n_0_[1] ),
        .O(r_Q_value_i_40_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_Q_value_i_41
       (.I0(r_Q_value2_n_105),
        .I1(\r_RNGvalue_reg_n_0_[0] ),
        .O(r_Q_value_i_41_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_Q_value_i_5
       (.I0(r_Q_value2_n_75),
        .I1(\r_RNGvalue_reg_n_0_[30] ),
        .O(r_Q_value_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_Q_value_i_6
       (.I0(r_Q_value2_n_76),
        .I1(\r_RNGvalue_reg_n_0_[29] ),
        .O(r_Q_value_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_Q_value_i_7
       (.I0(r_Q_value2_n_77),
        .I1(\r_RNGvalue_reg_n_0_[28] ),
        .O(r_Q_value_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_Q_value_i_9
       (.I0(r_Q_value2_n_78),
        .I1(\r_RNGvalue_reg_n_0_[27] ),
        .O(r_Q_value_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_Q_value_reg
       (.C(sysclk),
        .CE(r_Q_value_i_1_n_0),
        .D(r_Q_value_reg_i_2_n_0),
        .Q(o_Q_value),
        .R(1'b0));
  CARRY4 r_Q_value_reg_i_13
       (.CI(r_Q_value_reg_i_18_n_0),
        .CO({r_Q_value_reg_i_13_n_0,r_Q_value_reg_i_13_n_1,r_Q_value_reg_i_13_n_2,r_Q_value_reg_i_13_n_3}),
        .CYINIT(1'b0),
        .DI({r_Q_value2_n_86,r_Q_value2_n_87,r_Q_value2_n_88,r_Q_value2_n_89}),
        .O(NLW_r_Q_value_reg_i_13_O_UNCONNECTED[3:0]),
        .S({r_Q_value_i_19_n_0,r_Q_value_i_20_n_0,r_Q_value_i_21_n_0,r_Q_value_i_22_n_0}));
  CARRY4 r_Q_value_reg_i_18
       (.CI(r_Q_value_reg_i_23_n_0),
        .CO({r_Q_value_reg_i_18_n_0,r_Q_value_reg_i_18_n_1,r_Q_value_reg_i_18_n_2,r_Q_value_reg_i_18_n_3}),
        .CYINIT(1'b0),
        .DI({r_Q_value2_n_90,r_Q_value2_n_91,r_Q_value2_n_92,r_Q_value2_n_93}),
        .O(NLW_r_Q_value_reg_i_18_O_UNCONNECTED[3:0]),
        .S({r_Q_value_i_24_n_0,r_Q_value_i_25_n_0,r_Q_value_i_26_n_0,r_Q_value_i_27_n_0}));
  CARRY4 r_Q_value_reg_i_2
       (.CI(r_Q_value_reg_i_3_n_0),
        .CO({r_Q_value_reg_i_2_n_0,r_Q_value_reg_i_2_n_1,r_Q_value_reg_i_2_n_2,r_Q_value_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({\r_RNGvalue_reg_n_0_[31] ,r_Q_value2_n_75,r_Q_value2_n_76,r_Q_value2_n_77}),
        .O(NLW_r_Q_value_reg_i_2_O_UNCONNECTED[3:0]),
        .S({r_Q_value_i_4_n_0,r_Q_value_i_5_n_0,r_Q_value_i_6_n_0,r_Q_value_i_7_n_0}));
  CARRY4 r_Q_value_reg_i_23
       (.CI(r_Q_value_reg_i_28_n_0),
        .CO({r_Q_value_reg_i_23_n_0,r_Q_value_reg_i_23_n_1,r_Q_value_reg_i_23_n_2,r_Q_value_reg_i_23_n_3}),
        .CYINIT(1'b0),
        .DI({r_Q_value2_n_94,r_Q_value2_n_95,r_Q_value2_n_96,r_Q_value2_n_97}),
        .O(NLW_r_Q_value_reg_i_23_O_UNCONNECTED[3:0]),
        .S({r_Q_value_i_29_n_0,r_Q_value_i_30_n_0,r_Q_value_i_31_n_0,r_Q_value_i_32_n_0}));
  CARRY4 r_Q_value_reg_i_28
       (.CI(r_Q_value_reg_i_33_n_0),
        .CO({r_Q_value_reg_i_28_n_0,r_Q_value_reg_i_28_n_1,r_Q_value_reg_i_28_n_2,r_Q_value_reg_i_28_n_3}),
        .CYINIT(1'b0),
        .DI({r_Q_value2_n_98,r_Q_value2_n_99,r_Q_value2_n_100,r_Q_value2_n_101}),
        .O(NLW_r_Q_value_reg_i_28_O_UNCONNECTED[3:0]),
        .S({r_Q_value_i_34_n_0,r_Q_value_i_35_n_0,r_Q_value_i_36_n_0,r_Q_value_i_37_n_0}));
  CARRY4 r_Q_value_reg_i_3
       (.CI(r_Q_value_reg_i_8_n_0),
        .CO({r_Q_value_reg_i_3_n_0,r_Q_value_reg_i_3_n_1,r_Q_value_reg_i_3_n_2,r_Q_value_reg_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({r_Q_value2_n_78,r_Q_value2_n_79,r_Q_value2_n_80,r_Q_value2_n_81}),
        .O(NLW_r_Q_value_reg_i_3_O_UNCONNECTED[3:0]),
        .S({r_Q_value_i_9_n_0,r_Q_value_i_10_n_0,r_Q_value_i_11_n_0,r_Q_value_i_12_n_0}));
  CARRY4 r_Q_value_reg_i_33
       (.CI(1'b0),
        .CO({r_Q_value_reg_i_33_n_0,r_Q_value_reg_i_33_n_1,r_Q_value_reg_i_33_n_2,r_Q_value_reg_i_33_n_3}),
        .CYINIT(1'b1),
        .DI({r_Q_value2_n_102,r_Q_value2_n_103,r_Q_value2_n_104,r_Q_value2_n_105}),
        .O(NLW_r_Q_value_reg_i_33_O_UNCONNECTED[3:0]),
        .S({r_Q_value_i_38_n_0,r_Q_value_i_39_n_0,r_Q_value_i_40_n_0,r_Q_value_i_41_n_0}));
  CARRY4 r_Q_value_reg_i_8
       (.CI(r_Q_value_reg_i_13_n_0),
        .CO({r_Q_value_reg_i_8_n_0,r_Q_value_reg_i_8_n_1,r_Q_value_reg_i_8_n_2,r_Q_value_reg_i_8_n_3}),
        .CYINIT(1'b0),
        .DI({r_Q_value2_n_82,r_Q_value2_n_83,r_Q_value2_n_84,r_Q_value2_n_85}),
        .O(NLW_r_Q_value_reg_i_8_O_UNCONNECTED[3:0]),
        .S({r_Q_value_i_14_n_0,r_Q_value_i_15_n_0,r_Q_value_i_16_n_0,r_Q_value_i_17_n_0}));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \r_RNGvalue[0]_i_1 
       (.I0(RNGvalue),
        .I1(\r_RNGvalue[30]_i_2_n_0 ),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\r_RNGvalue_reg_n_0_[0] ),
        .O(\r_RNGvalue[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \r_RNGvalue[10]_i_1 
       (.I0(RNGvalue),
        .I1(\r_RNGvalue[12]_i_2_n_0 ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\r_RNGvalue_reg_n_0_[10] ),
        .O(\r_RNGvalue[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \r_RNGvalue[11]_i_1 
       (.I0(RNGvalue),
        .I1(\r_RNGvalue[13]_i_2_n_0 ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\r_RNGvalue_reg_n_0_[11] ),
        .O(\r_RNGvalue[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \r_RNGvalue[12]_i_1 
       (.I0(RNGvalue),
        .I1(\r_RNGvalue[12]_i_2_n_0 ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\r_RNGvalue_reg_n_0_[12] ),
        .O(\r_RNGvalue[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \r_RNGvalue[12]_i_2 
       (.I0(sel0[3]),
        .I1(sel0[4]),
        .I2(sel0[0]),
        .I3(state[0]),
        .I4(state[1]),
        .O(\r_RNGvalue[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \r_RNGvalue[13]_i_1 
       (.I0(RNGvalue),
        .I1(\r_RNGvalue[13]_i_2_n_0 ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\r_RNGvalue_reg_n_0_[13] ),
        .O(\r_RNGvalue[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \r_RNGvalue[13]_i_2 
       (.I0(sel0[3]),
        .I1(sel0[4]),
        .I2(sel0[0]),
        .I3(state[0]),
        .I4(state[1]),
        .O(\r_RNGvalue[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \r_RNGvalue[14]_i_1 
       (.I0(RNGvalue),
        .I1(\r_RNGvalue[20]_i_2_n_0 ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\r_RNGvalue_reg_n_0_[14] ),
        .O(\r_RNGvalue[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \r_RNGvalue[15]_i_1 
       (.I0(RNGvalue),
        .I1(\r_RNGvalue[21]_i_2_n_0 ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\r_RNGvalue_reg_n_0_[15] ),
        .O(\r_RNGvalue[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \r_RNGvalue[16]_i_1 
       (.I0(RNGvalue),
        .I1(\r_RNGvalue[20]_i_2_n_0 ),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\r_RNGvalue_reg_n_0_[16] ),
        .O(\r_RNGvalue[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \r_RNGvalue[17]_i_1 
       (.I0(RNGvalue),
        .I1(\r_RNGvalue[21]_i_2_n_0 ),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\r_RNGvalue_reg_n_0_[17] ),
        .O(\r_RNGvalue[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \r_RNGvalue[18]_i_1 
       (.I0(RNGvalue),
        .I1(\r_RNGvalue[20]_i_2_n_0 ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\r_RNGvalue_reg_n_0_[18] ),
        .O(\r_RNGvalue[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \r_RNGvalue[19]_i_1 
       (.I0(RNGvalue),
        .I1(\r_RNGvalue[21]_i_2_n_0 ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\r_RNGvalue_reg_n_0_[19] ),
        .O(\r_RNGvalue[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \r_RNGvalue[1]_i_1 
       (.I0(RNGvalue),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\counter[31]_i_4_n_0 ),
        .I5(\r_RNGvalue_reg_n_0_[1] ),
        .O(\r_RNGvalue[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \r_RNGvalue[20]_i_1 
       (.I0(RNGvalue),
        .I1(\r_RNGvalue[20]_i_2_n_0 ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\r_RNGvalue_reg_n_0_[20] ),
        .O(\r_RNGvalue[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \r_RNGvalue[20]_i_2 
       (.I0(sel0[4]),
        .I1(sel0[3]),
        .I2(sel0[0]),
        .I3(state[0]),
        .I4(state[1]),
        .O(\r_RNGvalue[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \r_RNGvalue[21]_i_1 
       (.I0(RNGvalue),
        .I1(\r_RNGvalue[21]_i_2_n_0 ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\r_RNGvalue_reg_n_0_[21] ),
        .O(\r_RNGvalue[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \r_RNGvalue[21]_i_2 
       (.I0(sel0[4]),
        .I1(sel0[3]),
        .I2(sel0[0]),
        .I3(state[0]),
        .I4(state[1]),
        .O(\r_RNGvalue[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \r_RNGvalue[22]_i_1 
       (.I0(RNGvalue),
        .I1(\r_RNGvalue[28]_i_2_n_0 ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\r_RNGvalue_reg_n_0_[22] ),
        .O(\r_RNGvalue[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \r_RNGvalue[23]_i_1 
       (.I0(RNGvalue),
        .I1(\r_RNGvalue[29]_i_2_n_0 ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\r_RNGvalue_reg_n_0_[23] ),
        .O(\r_RNGvalue[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \r_RNGvalue[24]_i_1 
       (.I0(RNGvalue),
        .I1(\r_RNGvalue[28]_i_2_n_0 ),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\r_RNGvalue_reg_n_0_[24] ),
        .O(\r_RNGvalue[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \r_RNGvalue[25]_i_1 
       (.I0(RNGvalue),
        .I1(\r_RNGvalue[29]_i_2_n_0 ),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\r_RNGvalue_reg_n_0_[25] ),
        .O(\r_RNGvalue[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \r_RNGvalue[26]_i_1 
       (.I0(RNGvalue),
        .I1(\r_RNGvalue[28]_i_2_n_0 ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\r_RNGvalue_reg_n_0_[26] ),
        .O(\r_RNGvalue[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \r_RNGvalue[27]_i_1 
       (.I0(RNGvalue),
        .I1(\r_RNGvalue[29]_i_2_n_0 ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\r_RNGvalue_reg_n_0_[27] ),
        .O(\r_RNGvalue[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \r_RNGvalue[28]_i_1 
       (.I0(RNGvalue),
        .I1(\r_RNGvalue[28]_i_2_n_0 ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\r_RNGvalue_reg_n_0_[28] ),
        .O(\r_RNGvalue[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \r_RNGvalue[28]_i_2 
       (.I0(sel0[4]),
        .I1(sel0[3]),
        .I2(sel0[0]),
        .I3(state[0]),
        .I4(state[1]),
        .O(\r_RNGvalue[28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \r_RNGvalue[29]_i_1 
       (.I0(RNGvalue),
        .I1(\r_RNGvalue[29]_i_2_n_0 ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\r_RNGvalue_reg_n_0_[29] ),
        .O(\r_RNGvalue[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \r_RNGvalue[29]_i_2 
       (.I0(sel0[4]),
        .I1(sel0[3]),
        .I2(sel0[0]),
        .I3(state[0]),
        .I4(state[1]),
        .O(\r_RNGvalue[29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \r_RNGvalue[2]_i_1 
       (.I0(RNGvalue),
        .I1(\r_RNGvalue[30]_i_2_n_0 ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\r_RNGvalue_reg_n_0_[2] ),
        .O(\r_RNGvalue[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \r_RNGvalue[30]_i_1 
       (.I0(RNGvalue),
        .I1(\r_RNGvalue[30]_i_2_n_0 ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\r_RNGvalue_reg_n_0_[30] ),
        .O(\r_RNGvalue[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \r_RNGvalue[30]_i_2 
       (.I0(sel0[0]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(sel0[4]),
        .I4(sel0[3]),
        .O(\r_RNGvalue[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBF88888880)) 
    \r_RNGvalue[31]_i_1 
       (.I0(RNGvalue),
        .I1(\r_RNGvalue[31]_i_2_n_0 ),
        .I2(\counter[31]_i_8_n_0 ),
        .I3(\counter[31]_i_7_n_0 ),
        .I4(\counter[31]_i_6_n_0 ),
        .I5(\r_RNGvalue_reg_n_0_[31] ),
        .O(\r_RNGvalue[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \r_RNGvalue[31]_i_2 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[4]),
        .I4(sel0[3]),
        .I5(sel0[0]),
        .O(\r_RNGvalue[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \r_RNGvalue[3]_i_1 
       (.I0(RNGvalue),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\counter[31]_i_4_n_0 ),
        .I5(\r_RNGvalue_reg_n_0_[3] ),
        .O(\r_RNGvalue[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \r_RNGvalue[4]_i_1 
       (.I0(RNGvalue),
        .I1(\r_RNGvalue[30]_i_2_n_0 ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\r_RNGvalue_reg_n_0_[4] ),
        .O(\r_RNGvalue[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \r_RNGvalue[5]_i_1 
       (.I0(RNGvalue),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\counter[31]_i_4_n_0 ),
        .I5(\r_RNGvalue_reg_n_0_[5] ),
        .O(\r_RNGvalue[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \r_RNGvalue[6]_i_1 
       (.I0(RNGvalue),
        .I1(\r_RNGvalue[12]_i_2_n_0 ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\r_RNGvalue_reg_n_0_[6] ),
        .O(\r_RNGvalue[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \r_RNGvalue[7]_i_1 
       (.I0(RNGvalue),
        .I1(\r_RNGvalue[13]_i_2_n_0 ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\r_RNGvalue_reg_n_0_[7] ),
        .O(\r_RNGvalue[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \r_RNGvalue[8]_i_1 
       (.I0(RNGvalue),
        .I1(\r_RNGvalue[12]_i_2_n_0 ),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\r_RNGvalue_reg_n_0_[8] ),
        .O(\r_RNGvalue[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \r_RNGvalue[9]_i_1 
       (.I0(RNGvalue),
        .I1(\r_RNGvalue[13]_i_2_n_0 ),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\r_RNGvalue_reg_n_0_[9] ),
        .O(\r_RNGvalue[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_RNGvalue_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_RNGvalue[0]_i_1_n_0 ),
        .Q(\r_RNGvalue_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RNGvalue_reg[10] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_RNGvalue[10]_i_1_n_0 ),
        .Q(\r_RNGvalue_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RNGvalue_reg[11] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_RNGvalue[11]_i_1_n_0 ),
        .Q(\r_RNGvalue_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RNGvalue_reg[12] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_RNGvalue[12]_i_1_n_0 ),
        .Q(\r_RNGvalue_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RNGvalue_reg[13] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_RNGvalue[13]_i_1_n_0 ),
        .Q(\r_RNGvalue_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RNGvalue_reg[14] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_RNGvalue[14]_i_1_n_0 ),
        .Q(\r_RNGvalue_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RNGvalue_reg[15] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_RNGvalue[15]_i_1_n_0 ),
        .Q(\r_RNGvalue_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RNGvalue_reg[16] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_RNGvalue[16]_i_1_n_0 ),
        .Q(\r_RNGvalue_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RNGvalue_reg[17] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_RNGvalue[17]_i_1_n_0 ),
        .Q(\r_RNGvalue_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RNGvalue_reg[18] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_RNGvalue[18]_i_1_n_0 ),
        .Q(\r_RNGvalue_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RNGvalue_reg[19] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_RNGvalue[19]_i_1_n_0 ),
        .Q(\r_RNGvalue_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RNGvalue_reg[1] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_RNGvalue[1]_i_1_n_0 ),
        .Q(\r_RNGvalue_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RNGvalue_reg[20] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_RNGvalue[20]_i_1_n_0 ),
        .Q(\r_RNGvalue_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RNGvalue_reg[21] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_RNGvalue[21]_i_1_n_0 ),
        .Q(\r_RNGvalue_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RNGvalue_reg[22] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_RNGvalue[22]_i_1_n_0 ),
        .Q(\r_RNGvalue_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RNGvalue_reg[23] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_RNGvalue[23]_i_1_n_0 ),
        .Q(\r_RNGvalue_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RNGvalue_reg[24] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_RNGvalue[24]_i_1_n_0 ),
        .Q(\r_RNGvalue_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RNGvalue_reg[25] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_RNGvalue[25]_i_1_n_0 ),
        .Q(\r_RNGvalue_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RNGvalue_reg[26] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_RNGvalue[26]_i_1_n_0 ),
        .Q(\r_RNGvalue_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RNGvalue_reg[27] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_RNGvalue[27]_i_1_n_0 ),
        .Q(\r_RNGvalue_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RNGvalue_reg[28] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_RNGvalue[28]_i_1_n_0 ),
        .Q(\r_RNGvalue_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RNGvalue_reg[29] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_RNGvalue[29]_i_1_n_0 ),
        .Q(\r_RNGvalue_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RNGvalue_reg[2] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_RNGvalue[2]_i_1_n_0 ),
        .Q(\r_RNGvalue_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RNGvalue_reg[30] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_RNGvalue[30]_i_1_n_0 ),
        .Q(\r_RNGvalue_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RNGvalue_reg[31] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_RNGvalue[31]_i_1_n_0 ),
        .Q(\r_RNGvalue_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RNGvalue_reg[3] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_RNGvalue[3]_i_1_n_0 ),
        .Q(\r_RNGvalue_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RNGvalue_reg[4] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_RNGvalue[4]_i_1_n_0 ),
        .Q(\r_RNGvalue_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RNGvalue_reg[5] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_RNGvalue[5]_i_1_n_0 ),
        .Q(\r_RNGvalue_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RNGvalue_reg[6] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_RNGvalue[6]_i_1_n_0 ),
        .Q(\r_RNGvalue_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RNGvalue_reg[7] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_RNGvalue[7]_i_1_n_0 ),
        .Q(\r_RNGvalue_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RNGvalue_reg[8] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_RNGvalue[8]_i_1_n_0 ),
        .Q(\r_RNGvalue_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RNGvalue_reg[9] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\r_RNGvalue[9]_i_1_n_0 ),
        .Q(\r_RNGvalue_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFE0000FFFF)) 
    \state[0]_i_1 
       (.I0(\counter[31]_i_8_n_0 ),
        .I1(\counter[31]_i_7_n_0 ),
        .I2(\counter[31]_i_6_n_0 ),
        .I3(\state[1]_i_2_n_0 ),
        .I4(state[1]),
        .I5(state[0]),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAAA)) 
    \state[1]_i_1 
       (.I0(state[1]),
        .I1(\counter[31]_i_8_n_0 ),
        .I2(\counter[31]_i_7_n_0 ),
        .I3(\counter[31]_i_6_n_0 ),
        .I4(\state[1]_i_2_n_0 ),
        .I5(state[0]),
        .O(\state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \state[1]_i_2 
       (.I0(sel0[0]),
        .I1(sel0[3]),
        .I2(sel0[4]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .O(\state[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
endmodule

(* NotValidForBitStream *)
module QMesaure_tx
   (sysclk,
    QMeasure_test,
    Measure_done_test);
  input sysclk;
  output QMeasure_test;
  output Measure_done_test;

  wire Measure_done_test;
  wire Measure_done_test_OBUF;
  wire QMeasure_test;
  wire QMeasure_test_OBUF;
  wire clk_slow;
  wire clk_slow_i_1_n_0;
  wire clk_slow_reg_n_0;
  wire [0:0]counter;
  wire \counter[0]_i_2_n_0 ;
  wire \counter[0]_i_3_n_0 ;
  wire \counter[0]_i_4_n_0 ;
  wire \counter[0]_i_5_n_0 ;
  wire \counter[0]_i_6_n_0 ;
  wire \counter[0]_i_7_n_0 ;
  wire \counter[0]_i_8_n_0 ;
  wire \counter[0]_i_9_n_0 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_2 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[16]_i_1_n_0 ;
  wire \counter_reg[16]_i_1_n_1 ;
  wire \counter_reg[16]_i_1_n_2 ;
  wire \counter_reg[16]_i_1_n_3 ;
  wire \counter_reg[20]_i_1_n_0 ;
  wire \counter_reg[20]_i_1_n_1 ;
  wire \counter_reg[20]_i_1_n_2 ;
  wire \counter_reg[20]_i_1_n_3 ;
  wire \counter_reg[24]_i_1_n_0 ;
  wire \counter_reg[24]_i_1_n_1 ;
  wire \counter_reg[24]_i_1_n_2 ;
  wire \counter_reg[24]_i_1_n_3 ;
  wire \counter_reg[28]_i_1_n_0 ;
  wire \counter_reg[28]_i_1_n_1 ;
  wire \counter_reg[28]_i_1_n_2 ;
  wire \counter_reg[28]_i_1_n_3 ;
  wire \counter_reg[31]_i_2_n_2 ;
  wire \counter_reg[31]_i_2_n_3 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[10] ;
  wire \counter_reg_n_0_[11] ;
  wire \counter_reg_n_0_[12] ;
  wire \counter_reg_n_0_[13] ;
  wire \counter_reg_n_0_[14] ;
  wire \counter_reg_n_0_[15] ;
  wire \counter_reg_n_0_[16] ;
  wire \counter_reg_n_0_[17] ;
  wire \counter_reg_n_0_[18] ;
  wire \counter_reg_n_0_[19] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[20] ;
  wire \counter_reg_n_0_[21] ;
  wire \counter_reg_n_0_[22] ;
  wire \counter_reg_n_0_[23] ;
  wire \counter_reg_n_0_[24] ;
  wire \counter_reg_n_0_[25] ;
  wire \counter_reg_n_0_[26] ;
  wire \counter_reg_n_0_[27] ;
  wire \counter_reg_n_0_[28] ;
  wire \counter_reg_n_0_[29] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[30] ;
  wire \counter_reg_n_0_[31] ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[5] ;
  wire \counter_reg_n_0_[6] ;
  wire \counter_reg_n_0_[7] ;
  wire \counter_reg_n_0_[8] ;
  wire \counter_reg_n_0_[9] ;
  wire [31:1]data0;
  wire sysclk;
  wire sysclk_IBUF;
  wire sysclk_IBUF_BUFG;
  wire [3:2]\NLW_counter_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[31]_i_2_O_UNCONNECTED ;

  OBUF Measure_done_test_OBUF_inst
       (.I(Measure_done_test_OBUF),
        .O(Measure_done_test));
  OBUF QMeasure_test_OBUF_inst
       (.I(QMeasure_test_OBUF),
        .O(QMeasure_test));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    clk_slow_i_1
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter[0]_i_4_n_0 ),
        .I2(\counter[0]_i_3_n_0 ),
        .I3(\counter[0]_i_2_n_0 ),
        .I4(clk_slow_reg_n_0),
        .O(clk_slow_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_slow_reg
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_slow_i_1_n_0),
        .Q(clk_slow_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \counter[0]_i_1 
       (.I0(\counter[0]_i_2_n_0 ),
        .I1(\counter[0]_i_3_n_0 ),
        .I2(\counter[0]_i_4_n_0 ),
        .I3(\counter_reg_n_0_[0] ),
        .O(counter));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \counter[0]_i_2 
       (.I0(\counter[0]_i_5_n_0 ),
        .I1(\counter[0]_i_6_n_0 ),
        .I2(\counter_reg_n_0_[31] ),
        .I3(\counter_reg_n_0_[30] ),
        .I4(\counter_reg_n_0_[1] ),
        .I5(\counter[0]_i_7_n_0 ),
        .O(\counter[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[0]_i_3 
       (.I0(\counter_reg_n_0_[4] ),
        .I1(\counter_reg_n_0_[5] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[3] ),
        .I4(\counter[0]_i_8_n_0 ),
        .O(\counter[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \counter[0]_i_4 
       (.I0(\counter_reg_n_0_[12] ),
        .I1(\counter_reg_n_0_[13] ),
        .I2(\counter_reg_n_0_[11] ),
        .I3(\counter_reg_n_0_[10] ),
        .I4(\counter[0]_i_9_n_0 ),
        .O(\counter[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[0]_i_5 
       (.I0(\counter_reg_n_0_[23] ),
        .I1(\counter_reg_n_0_[22] ),
        .I2(\counter_reg_n_0_[25] ),
        .I3(\counter_reg_n_0_[24] ),
        .O(\counter[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \counter[0]_i_6 
       (.I0(\counter_reg_n_0_[19] ),
        .I1(\counter_reg_n_0_[18] ),
        .I2(\counter_reg_n_0_[21] ),
        .I3(\counter_reg_n_0_[20] ),
        .O(\counter[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[0]_i_7 
       (.I0(\counter_reg_n_0_[27] ),
        .I1(\counter_reg_n_0_[26] ),
        .I2(\counter_reg_n_0_[29] ),
        .I3(\counter_reg_n_0_[28] ),
        .O(\counter[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \counter[0]_i_8 
       (.I0(\counter_reg_n_0_[7] ),
        .I1(\counter_reg_n_0_[6] ),
        .I2(\counter_reg_n_0_[9] ),
        .I3(\counter_reg_n_0_[8] ),
        .O(\counter[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \counter[0]_i_9 
       (.I0(\counter_reg_n_0_[15] ),
        .I1(\counter_reg_n_0_[14] ),
        .I2(\counter_reg_n_0_[16] ),
        .I3(\counter_reg_n_0_[17] ),
        .O(\counter[0]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \counter[31]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter[0]_i_4_n_0 ),
        .I2(\counter[0]_i_3_n_0 ),
        .I3(\counter[0]_i_2_n_0 ),
        .O(clk_slow));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(counter),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[10]),
        .Q(\counter_reg_n_0_[10] ),
        .R(clk_slow));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[11]),
        .Q(\counter_reg_n_0_[11] ),
        .R(clk_slow));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[12]),
        .Q(\counter_reg_n_0_[12] ),
        .R(clk_slow));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\counter_reg[12]_i_1_n_1 ,\counter_reg[12]_i_1_n_2 ,\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\counter_reg_n_0_[12] ,\counter_reg_n_0_[11] ,\counter_reg_n_0_[10] ,\counter_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[13]),
        .Q(\counter_reg_n_0_[13] ),
        .R(clk_slow));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[14]),
        .Q(\counter_reg_n_0_[14] ),
        .R(clk_slow));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[15]),
        .Q(\counter_reg_n_0_[15] ),
        .R(clk_slow));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[16]),
        .Q(\counter_reg_n_0_[16] ),
        .R(clk_slow));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO({\counter_reg[16]_i_1_n_0 ,\counter_reg[16]_i_1_n_1 ,\counter_reg[16]_i_1_n_2 ,\counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\counter_reg_n_0_[16] ,\counter_reg_n_0_[15] ,\counter_reg_n_0_[14] ,\counter_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[17]),
        .Q(\counter_reg_n_0_[17] ),
        .R(clk_slow));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[18]),
        .Q(\counter_reg_n_0_[18] ),
        .R(clk_slow));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[19]),
        .Q(\counter_reg_n_0_[19] ),
        .R(clk_slow));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[1]),
        .Q(\counter_reg_n_0_[1] ),
        .R(clk_slow));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[20]),
        .Q(\counter_reg_n_0_[20] ),
        .R(clk_slow));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[20]_i_1 
       (.CI(\counter_reg[16]_i_1_n_0 ),
        .CO({\counter_reg[20]_i_1_n_0 ,\counter_reg[20]_i_1_n_1 ,\counter_reg[20]_i_1_n_2 ,\counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S({\counter_reg_n_0_[20] ,\counter_reg_n_0_[19] ,\counter_reg_n_0_[18] ,\counter_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[21]),
        .Q(\counter_reg_n_0_[21] ),
        .R(clk_slow));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[22]),
        .Q(\counter_reg_n_0_[22] ),
        .R(clk_slow));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[23]),
        .Q(\counter_reg_n_0_[23] ),
        .R(clk_slow));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[24]),
        .Q(\counter_reg_n_0_[24] ),
        .R(clk_slow));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[24]_i_1 
       (.CI(\counter_reg[20]_i_1_n_0 ),
        .CO({\counter_reg[24]_i_1_n_0 ,\counter_reg[24]_i_1_n_1 ,\counter_reg[24]_i_1_n_2 ,\counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S({\counter_reg_n_0_[24] ,\counter_reg_n_0_[23] ,\counter_reg_n_0_[22] ,\counter_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[25]),
        .Q(\counter_reg_n_0_[25] ),
        .R(clk_slow));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[26]),
        .Q(\counter_reg_n_0_[26] ),
        .R(clk_slow));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[27]),
        .Q(\counter_reg_n_0_[27] ),
        .R(clk_slow));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[28] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[28]),
        .Q(\counter_reg_n_0_[28] ),
        .R(clk_slow));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[28]_i_1 
       (.CI(\counter_reg[24]_i_1_n_0 ),
        .CO({\counter_reg[28]_i_1_n_0 ,\counter_reg[28]_i_1_n_1 ,\counter_reg[28]_i_1_n_2 ,\counter_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S({\counter_reg_n_0_[28] ,\counter_reg_n_0_[27] ,\counter_reg_n_0_[26] ,\counter_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[29] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[29]),
        .Q(\counter_reg_n_0_[29] ),
        .R(clk_slow));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[2]),
        .Q(\counter_reg_n_0_[2] ),
        .R(clk_slow));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[30] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[30]),
        .Q(\counter_reg_n_0_[30] ),
        .R(clk_slow));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[31] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[31]),
        .Q(\counter_reg_n_0_[31] ),
        .R(clk_slow));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[31]_i_2 
       (.CI(\counter_reg[28]_i_1_n_0 ),
        .CO({\NLW_counter_reg[31]_i_2_CO_UNCONNECTED [3:2],\counter_reg[31]_i_2_n_2 ,\counter_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[31]_i_2_O_UNCONNECTED [3],data0[31:29]}),
        .S({1'b0,\counter_reg_n_0_[31] ,\counter_reg_n_0_[30] ,\counter_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[3]),
        .Q(\counter_reg_n_0_[3] ),
        .R(clk_slow));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[4]),
        .Q(\counter_reg_n_0_[4] ),
        .R(clk_slow));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(\counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\counter_reg_n_0_[4] ,\counter_reg_n_0_[3] ,\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[5]),
        .Q(\counter_reg_n_0_[5] ),
        .R(clk_slow));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[6]),
        .Q(\counter_reg_n_0_[6] ),
        .R(clk_slow));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[7]),
        .Q(\counter_reg_n_0_[7] ),
        .R(clk_slow));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[8]),
        .Q(\counter_reg_n_0_[8] ),
        .R(clk_slow));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\counter_reg_n_0_[8] ,\counter_reg_n_0_[7] ,\counter_reg_n_0_[6] ,\counter_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[9]),
        .Q(\counter_reg_n_0_[9] ),
        .R(clk_slow));
  (* s_compare = "2'b10" *) 
  (* s_getvalue = "2'b01" *) 
  (* s_send = "2'b11" *) 
  (* s_set = "2'b00" *) 
  QMeasure nolabel_line48
       (.i_q0({1'b0,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_q1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .o_Measure_Done(Measure_done_test_OBUF),
        .o_Q_value(QMeasure_test_OBUF),
        .sysclk(clk_slow_reg_n_0));
  BUFG sysclk_IBUF_BUFG_inst
       (.I(sysclk_IBUF),
        .O(sysclk_IBUF_BUFG));
  IBUF sysclk_IBUF_inst
       (.I(sysclk),
        .O(sysclk_IBUF));
endmodule

(* RO_STAGE = "4" *) 
module RORNG
   (sysclk,
    En,
    rn_out);
  input sysclk;
  input En;
  output rn_out;

  wire [3:0]ff_out;
  wire r_XOR;
  wire rn_out;
  wire ro_out_0;
  wire ro_out_1;
  wire ro_out_2;
  wire ro_out_3;
  wire sysclk;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    DFF
       (.C(sysclk),
        .CE(1'b1),
        .D(r_XOR),
        .Q(rn_out),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    DFF_i_1
       (.I0(ff_out[2]),
        .I1(ff_out[3]),
        .I2(ff_out[0]),
        .I3(ff_out[1]),
        .O(r_XOR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \genblk1[0].RO_DFF 
       (.C(sysclk),
        .CE(1'b1),
        .D(ro_out_0),
        .Q(ff_out[0]),
        .R(1'b0));
  (* STAGE = "5" *) 
  RingOscillator__4 \genblk1[0].ro 
       (.r_out(ro_out_0),
        .start(1'b1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \genblk1[1].RO_DFF 
       (.C(sysclk),
        .CE(1'b1),
        .D(ro_out_1),
        .Q(ff_out[1]),
        .R(1'b0));
  (* STAGE = "5" *) 
  RingOscillator__5 \genblk1[1].ro 
       (.r_out(ro_out_1),
        .start(1'b1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \genblk1[2].RO_DFF 
       (.C(sysclk),
        .CE(1'b1),
        .D(ro_out_2),
        .Q(ff_out[2]),
        .R(1'b0));
  (* STAGE = "5" *) 
  RingOscillator__6 \genblk1[2].ro 
       (.r_out(ro_out_2),
        .start(1'b1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \genblk1[3].RO_DFF 
       (.C(sysclk),
        .CE(1'b1),
        .D(ro_out_3),
        .Q(ff_out[3]),
        .R(1'b0));
  (* STAGE = "5" *) 
  RingOscillator \genblk1[3].ro 
       (.r_out(ro_out_3),
        .start(1'b1));
endmodule

(* STAGE = "5" *) 
module RingOscillator
   (start,
    r_out);
  input start;
  output r_out;

  wire r_out;
  wire wi_0;
  wire wi_1;
  wire wi_2;
  wire wi_3;

  invert__8 \genblk1[0].nolabel_line41 
       (.x(r_out),
        .y(wi_0));
  invert__9 \genblk1[1].nolabel_line43 
       (.x(wi_0),
        .y(wi_1));
  invert__10 \genblk1[2].nolabel_line43 
       (.x(wi_1),
        .y(wi_2));
  invert__11 \genblk1[3].nolabel_line43 
       (.x(wi_2),
        .y(wi_3));
  invert xn
       (.x(wi_3),
        .y(r_out));
endmodule

(* ORIG_REF_NAME = "RingOscillator" *) (* STAGE = "5" *) 
module RingOscillator__4
   (start,
    r_out);
  input start;
  output r_out;

  wire r_out;
  wire wi_0;
  wire wi_1;
  wire wi_2;
  wire wi_3;

  invert__16 \genblk1[0].nolabel_line41 
       (.x(r_out),
        .y(wi_0));
  invert__15 \genblk1[1].nolabel_line43 
       (.x(wi_0),
        .y(wi_1));
  invert__14 \genblk1[2].nolabel_line43 
       (.x(wi_1),
        .y(wi_2));
  invert__13 \genblk1[3].nolabel_line43 
       (.x(wi_2),
        .y(wi_3));
  invert__12 xn
       (.x(wi_3),
        .y(r_out));
endmodule

(* ORIG_REF_NAME = "RingOscillator" *) (* STAGE = "5" *) 
module RingOscillator__5
   (start,
    r_out);
  input start;
  output r_out;

  wire r_out;
  wire wi_0;
  wire wi_1;
  wire wi_2;
  wire wi_3;

  invert__21 \genblk1[0].nolabel_line41 
       (.x(r_out),
        .y(wi_0));
  invert__20 \genblk1[1].nolabel_line43 
       (.x(wi_0),
        .y(wi_1));
  invert__19 \genblk1[2].nolabel_line43 
       (.x(wi_1),
        .y(wi_2));
  invert__18 \genblk1[3].nolabel_line43 
       (.x(wi_2),
        .y(wi_3));
  invert__17 xn
       (.x(wi_3),
        .y(r_out));
endmodule

(* ORIG_REF_NAME = "RingOscillator" *) (* STAGE = "5" *) 
module RingOscillator__6
   (start,
    r_out);
  input start;
  output r_out;

  wire r_out;
  wire wi_0;
  wire wi_1;
  wire wi_2;
  wire wi_3;

  invert__26 \genblk1[0].nolabel_line41 
       (.x(r_out),
        .y(wi_0));
  invert__25 \genblk1[1].nolabel_line43 
       (.x(wi_0),
        .y(wi_1));
  invert__24 \genblk1[2].nolabel_line43 
       (.x(wi_1),
        .y(wi_2));
  invert__23 \genblk1[3].nolabel_line43 
       (.x(wi_2),
        .y(wi_3));
  invert__22 xn
       (.x(wi_3),
        .y(r_out));
endmodule

module invert
   (x,
    y);
  input x;
  output y;

  wire x;
  wire y;

  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h1)) 
    LUT1_inst
       (.I0(x),
        .O(y));
endmodule

(* ORIG_REF_NAME = "invert" *) 
module invert__10
   (x,
    y);
  input x;
  output y;

  wire x;
  wire y;

  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h1)) 
    LUT1_inst
       (.I0(x),
        .O(y));
endmodule

(* ORIG_REF_NAME = "invert" *) 
module invert__11
   (x,
    y);
  input x;
  output y;

  wire x;
  wire y;

  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h1)) 
    LUT1_inst
       (.I0(x),
        .O(y));
endmodule

(* ORIG_REF_NAME = "invert" *) 
module invert__12
   (x,
    y);
  input x;
  output y;

  wire x;
  wire y;

  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h1)) 
    LUT1_inst
       (.I0(x),
        .O(y));
endmodule

(* ORIG_REF_NAME = "invert" *) 
module invert__13
   (x,
    y);
  input x;
  output y;

  wire x;
  wire y;

  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h1)) 
    LUT1_inst
       (.I0(x),
        .O(y));
endmodule

(* ORIG_REF_NAME = "invert" *) 
module invert__14
   (x,
    y);
  input x;
  output y;

  wire x;
  wire y;

  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h1)) 
    LUT1_inst
       (.I0(x),
        .O(y));
endmodule

(* ORIG_REF_NAME = "invert" *) 
module invert__15
   (x,
    y);
  input x;
  output y;

  wire x;
  wire y;

  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h1)) 
    LUT1_inst
       (.I0(x),
        .O(y));
endmodule

(* ORIG_REF_NAME = "invert" *) 
module invert__16
   (x,
    y);
  input x;
  output y;

  wire x;
  wire y;

  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h1)) 
    LUT1_inst
       (.I0(x),
        .O(y));
endmodule

(* ORIG_REF_NAME = "invert" *) 
module invert__17
   (x,
    y);
  input x;
  output y;

  wire x;
  wire y;

  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h1)) 
    LUT1_inst
       (.I0(x),
        .O(y));
endmodule

(* ORIG_REF_NAME = "invert" *) 
module invert__18
   (x,
    y);
  input x;
  output y;

  wire x;
  wire y;

  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h1)) 
    LUT1_inst
       (.I0(x),
        .O(y));
endmodule

(* ORIG_REF_NAME = "invert" *) 
module invert__19
   (x,
    y);
  input x;
  output y;

  wire x;
  wire y;

  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h1)) 
    LUT1_inst
       (.I0(x),
        .O(y));
endmodule

(* ORIG_REF_NAME = "invert" *) 
module invert__20
   (x,
    y);
  input x;
  output y;

  wire x;
  wire y;

  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h1)) 
    LUT1_inst
       (.I0(x),
        .O(y));
endmodule

(* ORIG_REF_NAME = "invert" *) 
module invert__21
   (x,
    y);
  input x;
  output y;

  wire x;
  wire y;

  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h1)) 
    LUT1_inst
       (.I0(x),
        .O(y));
endmodule

(* ORIG_REF_NAME = "invert" *) 
module invert__22
   (x,
    y);
  input x;
  output y;

  wire x;
  wire y;

  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h1)) 
    LUT1_inst
       (.I0(x),
        .O(y));
endmodule

(* ORIG_REF_NAME = "invert" *) 
module invert__23
   (x,
    y);
  input x;
  output y;

  wire x;
  wire y;

  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h1)) 
    LUT1_inst
       (.I0(x),
        .O(y));
endmodule

(* ORIG_REF_NAME = "invert" *) 
module invert__24
   (x,
    y);
  input x;
  output y;

  wire x;
  wire y;

  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h1)) 
    LUT1_inst
       (.I0(x),
        .O(y));
endmodule

(* ORIG_REF_NAME = "invert" *) 
module invert__25
   (x,
    y);
  input x;
  output y;

  wire x;
  wire y;

  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h1)) 
    LUT1_inst
       (.I0(x),
        .O(y));
endmodule

(* ORIG_REF_NAME = "invert" *) 
module invert__26
   (x,
    y);
  input x;
  output y;

  wire x;
  wire y;

  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h1)) 
    LUT1_inst
       (.I0(x),
        .O(y));
endmodule

(* ORIG_REF_NAME = "invert" *) 
module invert__8
   (x,
    y);
  input x;
  output y;

  wire x;
  wire y;

  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h1)) 
    LUT1_inst
       (.I0(x),
        .O(y));
endmodule

(* ORIG_REF_NAME = "invert" *) 
module invert__9
   (x,
    y);
  input x;
  output y;

  wire x;
  wire y;

  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h1)) 
    LUT1_inst
       (.I0(x),
        .O(y));
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
