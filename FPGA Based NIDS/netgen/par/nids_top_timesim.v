////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: nids_top_timesim.v
// /___/   /\     Timestamp: Sun Oct 25 16:11:00 2026
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 2 -pcf nids_top.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim nids_top.ncd nids_top_timesim.v 
// Device	: 6slx9csg324-2 (PRODUCTION 1.23 2013-10-13)
// Input file	: nids_top.ncd
// Output file	: /home/ise/MimasV2-shared/test/nids/netgen/par/nids_top_timesim.v
// # of Modules	: 1
// Design Name	: nids_top
// Xilinx        : /opt/Xilinx/14.7/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module nids_top (
  clk_100, phy_a_ref_clk, phy_a_crs_dv, phy_b_ref_clk, phy_b_crs_dv, phy_a_tx_en, phy_b_tx_en, uart_txd, phy_a_rxd, phy_b_rxd, phy_a_txd, phy_b_txd, 
SevenSegmentEnable
);
  input clk_100;
  input phy_a_ref_clk;
  input phy_a_crs_dv;
  input phy_b_ref_clk;
  input phy_b_crs_dv;
  output phy_a_tx_en;
  output phy_b_tx_en;
  output uart_txd;
  input [1 : 0] phy_a_rxd;
  input [1 : 0] phy_b_rxd;
  output [1 : 0] phy_a_txd;
  output [1 : 0] phy_b_txd;
  output [2 : 0] SevenSegmentEnable;
  wire \u_fifo_a2b/cptr_r[0] ;
  wire \u_fifo_a2b/rd_empty121_7283 ;
  wire N297;
  wire \u_fifo_a2b/rd_empty124_7285 ;
  wire phy_b_ref_clk_BUFGP;
  wire \u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<5>_0 ;
  wire \u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<6>_0 ;
  wire a2b_rd_en;
  wire \u_fifo_a2b/rd_empty12 ;
  wire \u_fifo_a2b/rrst_n_inv ;
  wire N285;
  wire \u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<1>_0 ;
  wire \u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<2>_0 ;
  wire N312;
  wire \u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<11>_0 ;
  wire \u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<10>_0 ;
  wire N300;
  wire \u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<7>_0 ;
  wire N288;
  wire \u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<3>_0 ;
  wire N303;
  wire \u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<8>_0 ;
  wire N440;
  wire \u_engine/Mmux_GND_6_o_s_tindex[15]_MUX_167_o13_7324 ;
  wire \u_engine/Mmux_GND_6_o_s_tindex[15]_MUX_167_o12_7325 ;
  wire \u_engine/Mmux_GND_6_o_s_tindex[15]_MUX_167_o1 ;
  wire \u_engine/s_tindex[15]_idx_dport_lo[15]_equal_47_o_0 ;
  wire phy_a_ref_clk_BUFGP;
  wire \u_engine/trigger_port_scan_7329 ;
  wire \u_engine/ver_ok_0 ;
  wire \u_engine/frag_ok_7333 ;
  wire N35;
  wire \u_engine/rst_n_inv ;
  wire \u_engine/port_done_7345 ;
  wire \u_rx_a/_n0213_inv ;
  wire \u_rx_a/state_FSM_FFd2_7366 ;
  wire \u_rx_a/state_FSM_FFd1_7367 ;
  wire \u_rx_a/_n0160 ;
  wire \u_rx_a/_n0213_inv4_7369 ;
  wire \u_rx_a/crs_r_crs_prev_AND_2_o ;
  wire \u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT11 ;
  wire \u_tx_a/state_FSM_FFd1_7378 ;
  wire \u_tx_a/state_FSM_FFd2_7379 ;
  wire \u_tx_a/Madd_pcnt[5]_GND_5_o_add_21_OUT_cy<3> ;
  wire N50;
  wire \u_tx_b/state_FSM_FFd1_7386 ;
  wire \u_tx_b/state_FSM_FFd2_7387 ;
  wire \u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT1 ;
  wire \u_tx_b/pcnt[5]_GND_5_o_equal_7_o ;
  wire \u_fifo_a2b/rd_empty122_7390 ;
  wire \u_tx_b/Madd_pcnt[5]_GND_5_o_add_21_OUT_cy<3> ;
  wire \u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT11_0 ;
  wire \u_uart/idx_1_1_7400 ;
  wire \u_rx_a/_n0178_inv ;
  wire \u_rx_a/crs_prev_7412 ;
  wire \u_rx_a/crs_r_7413 ;
  wire \u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<10>_0 ;
  wire b2a_rd_en;
  wire \u_fifo_b2a/rd_empty121_7418 ;
  wire \u_fifo_b2a/rd_empty1241 ;
  wire N275;
  wire \u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<1>_0 ;
  wire \u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<2>_0 ;
  wire \u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<3>_0 ;
  wire \u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<4>_0 ;
  wire \u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<5>_0 ;
  wire \u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<6>_0 ;
  wire \u_fifo_b2a/rd_empty122_7439 ;
  wire \u_fifo_b2a/cptr_r[7] ;
  wire clk_100_BUFGP;
  wire \por_cnt<7>_inv ;
  wire N217;
  wire \u_engine/Result<7>_0 ;
  wire N369;
  wire \u_engine/Result<6>_0 ;
  wire N371;
  wire \u_engine/Result<5>_0 ;
  wire N373;
  wire \u_engine/Result<4>_0 ;
  wire N375;
  wire \u_engine/Result<3>_0 ;
  wire N377;
  wire \u_engine/Result<2>_0 ;
  wire N21;
  wire N37;
  wire N67;
  wire \u_engine/ihl_ok_7478 ;
  wire \u_engine/is_ipv4_7479 ;
  wire \u_rx_a/m_tvalid_7480 ;
  wire \u_rx_a/m_tlast_0 ;
  wire \u_rx_a/state[1]_GND_3_o_Mux_40_o ;
  wire N121;
  wire \u_uart/Sh198111 ;
  wire \u_fifo_b2a/Mxor_cptr_r<0>_xo<0>1_7509 ;
  wire N119;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT16_7512 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT13_7513 ;
  wire \u_uart/GND_7_o_GND_7_o_sub_36_OUT<5>1 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT29_7515 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT18_7516 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT14 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT11 ;
  wire N448;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT19_7523 ;
  wire N447_0;
  wire \u_uart/GND_7_o_tx_busy_MUX_9398_o ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT122_7526 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT114 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT125_7528 ;
  wire \u_uart/rst_n_100_inv ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT26_7531 ;
  wire \u_uart/Sh86341 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT1612 ;
  wire N59;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT12_7535 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT163 ;
  wire \u_uart/GND_7_o_GND_7_o_sub_38_OUT<2>1 ;
  wire \u_uart/GND_7_o_GND_7_o_sub_38_OUT<3>1 ;
  wire \u_uart/GND_7_o_GND_7_o_sub_38_OUT<4>1 ;
  wire \u_uart/GND_7_o_GND_7_o_sub_38_OUT<5>1 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT28_7541 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT25 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT52_7543 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT64 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT519_7546 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT53_0 ;
  wire N425;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT515_7549 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT5 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT56_7552 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT51_7553 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT55 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT65_0 ;
  wire N223;
  wire N222;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT61_7558 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT613_7559 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT75_0 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT74_7562 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT78 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT72_7564 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT711 ;
  wire \u_fifo_a2b/wr_ok1_cepot ;
  wire \u_fifo_a2b/used<11>_0 ;
  wire N234;
  wire \u_fifo_b2a/rd_empty12 ;
  wire N53;
  wire \u_fifo_b2a/rd_empty124_7572 ;
  wire N52;
  wire \u_fifo_b2a/cptr_r[0] ;
  wire N230;
  wire N232;
  wire N49;
  wire N238;
  wire N240;
  wire \u_rx_a/_n0171_inv ;
  wire N280;
  wire \u_fifo_a2b/rd_empty1241 ;
  wire \u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<4>_0 ;
  wire \u_engine/win_end<18>1_7607 ;
  wire \u_engine/win_end ;
  wire \u_engine/win_end<18>2_7617 ;
  wire \u_rx_b/_n0171_inv ;
  wire \u_engine/Mmux_len_gt_GND_6_o_MUX_94_o1 ;
  wire \u_engine/Mmux_len_gt_GND_6_o_MUX_94_o11_7635 ;
  wire N115_0;
  wire \u_engine/_n0409_inv1 ;
  wire \u_engine/len_gt_7639 ;
  wire \u_tx_a/Mmux_state[1]_GND_5_o_wide_mux_25_OUT11_7640 ;
  wire \u_tx_a/bcnt_FSM_FFd1_7641 ;
  wire \u_tx_a/bcnt_FSM_FFd2_7642 ;
  wire \u_engine/_n0357_inv ;
  wire \u_fifo_a2b/SF012 ;
  wire \u_fifo_a2b/SF013 ;
  wire N9;
  wire \u_tx_b/bcnt_FSM_FFd2_7665 ;
  wire \u_tx_b/bcnt_FSM_FFd1_7666 ;
  wire \u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<0>_0 ;
  wire \u_fifo_a2b/rptr_w[6] ;
  wire N128;
  wire N129;
  wire N326;
  wire N341;
  wire \u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<8>_0 ;
  wire \u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<9>_0 ;
  wire N329;
  wire N317;
  wire \u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<0>_0 ;
  wire N344;
  wire N332;
  wire N320;
  wire \u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<11>_0 ;
  wire N335;
  wire \u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<7>_0 ;
  wire N323;
  wire N338;
  wire \u_fifo_a2b/rptr_w[8] ;
  wire \u_engine/_n0371_inv_0 ;
  wire \u_uart/code<0>_0 ;
  wire \u_uart/mstate[2]_idx[7]_select_72_OUT<1>_7730 ;
  wire \u_uart/mstate[2]_idx[7]_select_72_OUT<4>_7731 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT37_7732 ;
  wire N131;
  wire N133;
  wire N135;
  wire N137;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT45 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT39_7746 ;
  wire \u_uart/GND_7_o_GND_7_o_sub_34_OUT<5>1 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT71 ;
  wire \u_fifo_b2a/rd_empty1211 ;
  wire N126;
  wire N125;
  wire \u_fifo_b2a/rd_empty123_7752 ;
  wire \u_fifo_b2a/pop ;
  wire \u_uart/Sh147312 ;
  wire \u_fifo_a2b/rg_s2<0>_0 ;
  wire \u_fifo_a2b/rg_s2<1>_0 ;
  wire \u_fifo_a2b/rg_s2<2>_0 ;
  wire \u_fifo_a2b/rg_s2<3>_0 ;
  wire \u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT1 ;
  wire \u_tx_a/cur_last_7804 ;
  wire N82_0;
  wire N81_0;
  wire N88_0;
  wire N87_0;
  wire N98;
  wire \u_uart/GND_7_o_GND_7_o_sub_36_OUT<4>1 ;
  wire \u_uart/idx_4_1_7811 ;
  wire N220;
  wire \u_fifo_a2b/rd_empty1211 ;
  wire \u_fifo_a2b/cptr_r[7] ;
  wire \u_uart/Sh18102 ;
  wire \u_uart/Sh35521 ;
  wire \u_rx_b/_n0178_inv ;
  wire \u_rx_b/state_FSM_FFd2_7838 ;
  wire \u_rx_b/state_FSM_FFd1_7840 ;
  wire \u_rx_b/crs_prev_7841 ;
  wire \u_rx_b/crs_r_7842 ;
  wire \u_fifo_a2b/Mxor_cptr_r<0>_xo<0>1_7844 ;
  wire \u_uart/cq_empty4112 ;
  wire \u_fifo_a2b/rd_empty123_7848 ;
  wire \u_tx_a/cur<7>_0 ;
  wire \u_uart/u_core/tx_busy_7870 ;
  wire N7;
  wire \u_uart/mstate[2]_idx[7]_select_72_OUT<0>1 ;
  wire \u_uart/idx[7]_code[2]_equal_60_o ;
  wire \u_uart/Madd_idx[7]_GND_7_o_add_60_OUT_cy<3> ;
  wire \u_uart/cq_empty4 ;
  wire N282;
  wire \u_engine/win<11>_0 ;
  wire \u_engine/win<13>_0 ;
  wire \u_engine/win<15>_0 ;
  wire \u_engine/win<9>_0 ;
  wire \u_engine/win<17>_0 ;
  wire \u_rx_b/_n0167_inv_0 ;
  wire \u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<0> ;
  wire \u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<6>_0 ;
  wire \u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<1> ;
  wire \u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<2> ;
  wire \u_tx_b/state[1]_GND_5_o_Mux_24_o ;
  wire N260;
  wire \u_uart/push_7903 ;
  wire \u_uart/cq_empty412 ;
  wire \u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<3> ;
  wire \u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<7>_0 ;
  wire \u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<4> ;
  wire \u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<5> ;
  wire \u_engine/_n0385_inv4 ;
  wire \u_engine/Mmux_frag_ok_GND_6_o_MUX_95_o11 ;
  wire N13;
  wire \u_engine/win<27>_0 ;
  wire \u_engine/win<20>_0 ;
  wire \u_rx_a/hold_v_7921 ;
  wire \u_engine/win<29>_0 ;
  wire \u_engine/win<22>_0 ;
  wire \u_engine/win<45>_0 ;
  wire \u_engine/win<38>_0 ;
  wire \u_engine/win<24>_0 ;
  wire \u_engine/win<31>_0 ;
  wire \u_uart/u_core/_n0060_inv ;
  wire \u_uart/tx_start_7935 ;
  wire \u_uart/u_core/_n0061_inv_0 ;
  wire \u_engine/win<40>_0 ;
  wire \u_engine/win<47>_0 ;
  wire \u_engine/win<26>_0 ;
  wire \u_engine/win<33>_0 ;
  wire \u_engine/win<35>_0 ;
  wire \u_engine/win<42>_0 ;
  wire \u_engine/win<44>_0 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT42_7953 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT41_0 ;
  wire N482_0;
  wire \u_uart/mstate_FSM_FFd2_7956 ;
  wire \u_uart/mstate_FSM_FFd1_7957 ;
  wire \u_rx_a/_n0167_inv_0 ;
  wire \u_fifo_a2b/wr_valid_wr_ok_AND_4_o ;
  wire \u_fifo_a2b/drop_7962 ;
  wire \u_engine/sig_done_win_nxt[55]_AND_42_o1 ;
  wire \u_engine/_n0397_inv ;
  wire \u_tx_a/state[1]_GND_5_o_Mux_24_o ;
  wire N270;
  wire N5;
  wire N113_0;
  wire \u_uart/cq_empty ;
  wire \u_engine/idx_dport_lo<5>_0 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT512 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT21_0 ;
  wire \u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT12_7979 ;
  wire N267_0;
  wire \u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT12_7981 ;
  wire \u_tx_a/pcnt[5]_GND_5_o_equal_7_o ;
  wire N277_0;
  wire \u_uart/_n0234_inv_0 ;
  wire \u_rx_b/hold_v_7986 ;
  wire \u_rx_b/m_tlast_0 ;
  wire \u_engine/idx_flags<5>_0 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT2 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT223 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT182 ;
  wire \u_fifo_b2a/wr_valid_wr_ok_AND_4_o ;
  wire \u_fifo_b2a/drop_7994 ;
  wire \u_rx_b/m_tvalid_7995 ;
  wire \u_fifo_b2a/used<11>_0 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT43_0 ;
  wire \u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_cy<3>_8037 ;
  wire \u_fifo_b2a/rptr_w[8] ;
  wire \u_fifo_b2a/Msub_used_cy[3] ;
  wire \u_fifo_b2a/rptr_w[6] ;
  wire \u_fifo_b2a/Msub_used_cy[7] ;
  wire \u_rx_a/Mcount_bcnt_cy[3] ;
  wire \u_rx_a/Mcount_bcnt_cy[7] ;
  wire \u_rx_a/Mcount_bcnt_cy[11] ;
  wire \u_engine/Result<0>1_0 ;
  wire \u_engine/Result<1>1_0 ;
  wire \u_engine/Result<2>1_0 ;
  wire \u_engine/Mcount_win_cnt_cy[3] ;
  wire \u_engine/Result<3>1_0 ;
  wire \u_engine/Result<4>1_0 ;
  wire \u_engine/Result<5>1_0 ;
  wire \u_engine/Result<6>1_0 ;
  wire \u_engine/Mcount_win_cnt_cy[7] ;
  wire \u_engine/Result<7>1_0 ;
  wire \u_engine/Result<8>_0 ;
  wire \u_engine/Result<9>_0 ;
  wire \u_engine/Result<10>_0 ;
  wire \u_engine/Mcount_win_cnt_cy[11] ;
  wire \u_engine/Result<11>_0 ;
  wire \u_engine/Result<12>_0 ;
  wire \u_engine/Result<13>_0 ;
  wire \u_engine/Result<14>_0 ;
  wire \u_engine/Mcount_win_cnt_cy[15] ;
  wire \u_engine/Result<15>_0 ;
  wire \u_engine/Result<16>_0 ;
  wire \u_engine/Result<17>_0 ;
  wire \u_engine/Result<18>_0 ;
  wire \u_uart/Result<0>_0 ;
  wire \u_uart/Result<1>_0 ;
  wire \u_uart/Result<2>_0 ;
  wire \u_uart/Mcount_hb_cnt_cy[3] ;
  wire \u_uart/Result<3>_0 ;
  wire \u_uart/Result<4>_0 ;
  wire \u_uart/Result<5>_0 ;
  wire \u_uart/Result<6>_0 ;
  wire \u_uart/Mcount_hb_cnt_cy[7] ;
  wire \u_uart/Result<7>_0 ;
  wire \u_uart/Result<8>_0 ;
  wire \u_uart/Result<9>_0 ;
  wire \u_uart/Result<10>_0 ;
  wire \u_uart/Mcount_hb_cnt_cy[11] ;
  wire \u_uart/Result<11>_0 ;
  wire \u_uart/Result<12>_0 ;
  wire \u_uart/Result<13>_0 ;
  wire \u_uart/Result<14>_0 ;
  wire \u_uart/Mcount_hb_cnt_cy[15] ;
  wire \u_uart/Result<15>_0 ;
  wire \u_uart/Result<16>_0 ;
  wire \u_uart/Result<17>_0 ;
  wire \u_uart/Result<18>_0 ;
  wire \u_uart/Mcount_hb_cnt_cy[19] ;
  wire \u_uart/Result<19>_0 ;
  wire \u_uart/Result<20>_0 ;
  wire \u_uart/Result<21>_0 ;
  wire \u_uart/Result<22>_0 ;
  wire \u_uart/Mcount_hb_cnt_cy[23] ;
  wire \u_uart/Result<23>_0 ;
  wire \u_uart/Result<24>_0 ;
  wire \u_uart/Result<25>_0 ;
  wire \u_uart/Result<26>_0 ;
  wire \u_uart/Result<27>_0 ;
  wire \u_fifo_a2b/pop ;
  wire \u_fifo_a2b/Mcount_rptr_cy[3] ;
  wire \u_fifo_a2b/Mcount_rptr_cy[7] ;
  wire \u_engine/sig_done_8141 ;
  wire \u_engine/sig_done_win_nxt[55]_AND_42_o_wg_cy<3>_8142 ;
  wire \u_engine/sig_done_win_nxt[55]_AND_42_o_wg_cy<7>_8143 ;
  wire \u_engine/sig_done_win_nxt[55]_AND_42_o_0 ;
  wire \u_engine/trigger_signature_8145 ;
  wire \u_fifo_b2a/wptr_n<0>_0 ;
  wire \u_fifo_b2a/wptr_n<1>_0 ;
  wire \u_fifo_b2a/wptr_n<2>_0 ;
  wire \u_fifo_b2a/Madd_wptr_n_cy[3] ;
  wire \u_fifo_b2a/wptr_n<3>_0 ;
  wire \u_fifo_b2a/wptr_n<4>_0 ;
  wire \u_fifo_b2a/wptr_n<5>_0 ;
  wire \u_fifo_b2a/wptr_n<6>_0 ;
  wire \u_fifo_b2a/Madd_wptr_n_cy[7] ;
  wire \u_fifo_b2a/wptr_n<7>_0 ;
  wire \u_fifo_b2a/wptr_n<8>_0 ;
  wire \u_fifo_b2a/wptr_n<9>_0 ;
  wire \u_fifo_b2a/wptr_n<10>_0 ;
  wire \u_fifo_b2a/wptr_n<11>_0 ;
  wire N69;
  wire N71;
  wire N73;
  wire \u_fifo_a2b/Msub_used_cy[3] ;
  wire N75;
  wire \u_fifo_a2b/Msub_used_cy[7] ;
  wire \u_fifo_a2b/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<3>_8167 ;
  wire \u_fifo_a2b/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<7>_8168 ;
  wire \u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<9>_0 ;
  wire \u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<3>_8170 ;
  wire \u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<7>_8171 ;
  wire \u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_cy<3>_8174 ;
  wire \u_engine/s_tindex[15]_idx_flags[15]_equal_12_o_0 ;
  wire \u_fifo_b2a/Mcount_rptr_cy[3] ;
  wire \u_fifo_b2a/Mcount_rptr_cy[7] ;
  wire \u_fifo_a2b/wptr_n<0>_0 ;
  wire \u_fifo_a2b/wptr_n<1>_0 ;
  wire \u_fifo_a2b/wptr_n<2>_0 ;
  wire \u_fifo_a2b/Madd_wptr_n_cy[3] ;
  wire \u_fifo_a2b/wptr_n<3>_0 ;
  wire \u_fifo_a2b/wptr_n<4>_0 ;
  wire \u_fifo_a2b/wptr_n<5>_0 ;
  wire \u_fifo_a2b/wptr_n<6>_0 ;
  wire \u_fifo_a2b/Madd_wptr_n_cy[7] ;
  wire \u_fifo_a2b/wptr_n<7>_0 ;
  wire \u_fifo_a2b/wptr_n<8>_0 ;
  wire \u_fifo_a2b/wptr_n<9>_0 ;
  wire \u_fifo_a2b/wptr_n<10>_0 ;
  wire \u_fifo_a2b/wptr_n<11>_0 ;
  wire \u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<0>_0 ;
  wire \u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<1>_0 ;
  wire \u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<2>_0 ;
  wire \u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<3>_8198 ;
  wire \u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<3>_0 ;
  wire \u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<4>_0 ;
  wire \u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<5>_0 ;
  wire \u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<6>_0 ;
  wire \u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<7>_8207 ;
  wire \u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<7>_0 ;
  wire \u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<8>_0 ;
  wire \u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<9>_0 ;
  wire \u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<10>_0 ;
  wire \u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<11>_8216 ;
  wire \u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<11>_0 ;
  wire \u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<12>_0 ;
  wire \u_engine/Result<0>_0 ;
  wire \u_engine/Result<1>_0 ;
  wire \clk_100_BUFGP/IBUFG_0 ;
  wire \u_tx_a/txen_r_8234 ;
  wire \u_tx_b/txen_r_8235 ;
  wire \phy_a_ref_clk_BUFGP/IBUFG_0 ;
  wire \phy_b_ref_clk_BUFGP/IBUFG_0 ;
  wire phy_a_crs_dv_IBUF_0;
  wire phy_b_crs_dv_IBUF_0;
  wire phy_a_rxd_0_IBUF_0;
  wire phy_a_rxd_1_IBUF_0;
  wire phy_b_rxd_0_IBUF_0;
  wire phy_b_rxd_1_IBUF_0;
  wire \u_uart/u_core/tx_out_8248 ;
  wire \u_rx_a/crs_r_ML_IODELAY2_SIG_ML ;
  wire \u_rx_b/crs_r_ML_IODELAY2_SIG_ML ;
  wire \u_rx_a/rxd_r_0_ML_IODELAY2_SIG_ML ;
  wire \u_rx_a/rxd_r_1_ML_IODELAY2_SIG_ML ;
  wire \u_tx_a/state[1]_GND_5_o_wide_mux_25_OUT<0> ;
  wire \u_tx_a/state[1]_GND_5_o_wide_mux_25_OUT<1>_0 ;
  wire \u_rx_b/rxd_r_0_ML_IODELAY2_SIG_ML ;
  wire \u_rx_b/rxd_r_1_ML_IODELAY2_SIG_ML ;
  wire \u_tx_b/state[1]_GND_5_o_wide_mux_25_OUT<0>_0 ;
  wire \u_tx_b/state[1]_GND_5_o_wide_mux_25_OUT<1>_0 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT119_0 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT410_0 ;
  wire N361_0;
  wire N362_0;
  wire N77_0;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT33_0 ;
  wire \u_uart/u_core/Mmux_tx_out_tx_start_MUX_249_o15_0 ;
  wire N91_0;
  wire N92_0;
  wire N99_0;
  wire N100_0;
  wire \u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_8278 ;
  wire \u_uart/hb_pend_8289 ;
  wire \u_engine/_n0385_inv1_8292 ;
  wire \u_engine/Mmux_GND_6_o_GND_6_o_MUX_165_o11_8293 ;
  wire \u_engine/trigger_icmp_8294 ;
  wire \u_engine/_n0353_inv ;
  wire \u_engine/icmp_done_8296 ;
  wire \u_engine/s_tindex[15]_GND_6_o_equal_26_o ;
  wire \u_uart/u_core/GND_8_o_GND_8_o_equal_4_o ;
  wire \u_engine/trigger_syn_flood_8302 ;
  wire N57;
  wire N210;
  wire \u_engine/syn_flood_active_8306 ;
  wire \u_uart/u_core/GND_8_o_GND_8_o_equal_4_o<12>1_8307 ;
  wire \u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>1_8310 ;
  wire \u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>2_8311 ;
  wire \u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>3_8312 ;
  wire \u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>4_8313 ;
  wire N29;
  wire N357;
  wire \u_fifo_b2a/_n0130_inv1_rstpot_8316 ;
  wire N3;
  wire \u_uart/Madd_idx[7]_GND_7_o_add_60_OUT_cy<5> ;
  wire N379_0;
  wire \u_uart/t2<1>_0 ;
  wire \u_uart/t2<2>_0 ;
  wire \u_uart/t2<3>_0 ;
  wire N90;
  wire \u_engine/_n0367_inv_8340 ;
  wire N33_0;
  wire N43;
  wire \u_engine/_n0361_inv ;
  wire \u_uart/GND_7_o_GND_7_o_sub_40_OUT<5>1 ;
  wire \u_uart/idx[7]_code[2]_equal_60_o82_8348 ;
  wire N365;
  wire \u_engine/frag_hi<4>_0 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT115_8375 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT210_8376 ;
  wire N429;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT211_8378 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT213_8379 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT123 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT214_8381 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT32 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT315_8383 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT317_8384 ;
  wire N78;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT414_8386 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT58_8387 ;
  wire \u_rx_b/state[1]_GND_3_o_Mux_40_o ;
  wire \u_uart/t2<0>_0 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT371 ;
  wire N291;
  wire N306;
  wire N294;
  wire N309;
  wire N364;
  wire \u_rx_b/crs_r_crs_prev_AND_2_o ;
  wire N263;
  wire N261;
  wire \u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT132 ;
  wire N39;
  wire N367;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT76_8403 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT73_8404 ;
  wire N86;
  wire N80;
  wire \u_tx_b/cur_last_8411 ;
  wire N330;
  wire N333;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT542 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT514_8415 ;
  wire N431;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT513_8417 ;
  wire N268;
  wire N231;
  wire \u_engine/Mmux_GND_6_o_s_tindex[15]_MUX_167_o11_8420 ;
  wire N359;
  wire N336;
  wire N339;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT27_8424 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT23 ;
  wire \u_uart/GND_7_o_GND_7_o_sub_36_OUT<3>1 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT15_8427 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT111_8428 ;
  wire N445;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT413 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT117_8431 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT120_8432 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT121_8433 ;
  wire N452;
  wire N219;
  wire \u_uart/GND_7_o_GND_7_o_sub_42_OUT<3>1 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT612 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT69 ;
  wire N488;
  wire N289;
  wire N292;
  wire N318;
  wire N321;
  wire N215;
  wire \u_engine/frag_ok_GND_6_o_MUX_95_o ;
  wire N41;
  wire \u_engine/et_hi_ok_8447 ;
  wire \u_engine/et_hi_ok_GND_6_o_MUX_90_o ;
  wire \u_engine/is_ipv4_GND_6_o_MUX_91_o ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT112_8450 ;
  wire N139;
  wire N350;
  wire \u_fifo_b2a/SF012 ;
  wire \u_fifo_b2a/SF013 ;
  wire N347;
  wire N348;
  wire N342;
  wire N345;
  wire \u_engine/Mmux_GND_6_o_GND_6_o_MUX_165_o12_8459 ;
  wire \u_engine/GND_6_o_GND_6_o_MUX_165_o ;
  wire N228;
  wire N486;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT6 ;
  wire \u_tx_b/Mmux_state[1]_GND_5_o_wide_mux_25_OUT1 ;
  wire N313;
  wire N324;
  wire N327;
  wire \u_engine/Mmux_GND_6_o_GND_6_o_MUX_165_o1 ;
  wire \u_uart/_n0239_inv ;
  wire \u_uart/idx[7]_code[2]_equal_60_o81_8475 ;
  wire \u_uart/idx[7]_code[2]_equal_60_o8 ;
  wire N435;
  wire N436;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT57_8479 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT67 ;
  wire N283;
  wire N286;
  wire \u_uart/hb_pend_PWR_8_o_MUX_9428_o ;
  wire \u_uart/Msub_GND_7_o_GND_7_o_sub_38_OUT<5:0>_cy<1> ;
  wire N381;
  wire N301;
  wire N304;
  wire N307;
  wire N310;
  wire N173;
  wire N352;
  wire N427;
  wire N295;
  wire N298;
  wire \u_rx_a/_n0213_inv3_8506 ;
  wire \u_rx_a/_n0213_inv1_8507 ;
  wire \u_rx_a/_n0213_inv2_8508 ;
  wire N433;
  wire \u_uart/GND_7_o_GND_7_o_sub_38_OUT<1>1 ;
  wire \u_uart/Sh1472821 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT518_8512 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT517_8513 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT516_8514 ;
  wire \u_tx_a/Mmux_state[1]_GND_5_o_wide_mux_25_OUT1 ;
  wire N383;
  wire \u_uart/u_core/_n0069_inv_8523 ;
  wire N208;
  wire N207;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT313_8526 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT411_8527 ;
  wire N450;
  wire \u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT132 ;
  wire \u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_8530 ;
  wire N273;
  wire N271;
  wire N236;
  wire N235;
  wire N278;
  wire N239;
  wire \u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_lut<0>_133 ;
  wire \u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_lut<1>_126 ;
  wire \u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_lut<2> ;
  wire \ProtoComp123.CYINITVCC.1 ;
  wire \u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_lut<3> ;
  wire \u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_lut<4> ;
  wire \u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_lut<5> ;
  wire \u_engine/s_tindex[15]_idx_dport_lo[15]_equal_47_o ;
  wire \ProtoComp125.CYINITVCC.1_162 ;
  wire \u_rx_a/Mcount_bcnt ;
  wire \u_rx_a/Mcount_bcnt1 ;
  wire \u_rx_a/Mcount_bcnt2 ;
  wire \u_rx_a/Mcount_bcnt3 ;
  wire \u_rx_a/Mcount_bcnt4 ;
  wire \u_rx_a/Mcount_bcnt5 ;
  wire \u_rx_a/Mcount_bcnt6 ;
  wire \u_rx_a/Mcount_bcnt7 ;
  wire \u_rx_a/Mcount_bcnt8 ;
  wire \u_rx_a/Mcount_bcnt9 ;
  wire \u_rx_a/Mcount_bcnt10 ;
  wire \u_rx_a/Mcount_bcnt11 ;
  wire \u_rx_a/Mcount_bcnt12 ;
  wire \u_rx_a/Mcount_bcnt13 ;
  wire \u_rx_a/Mcount_bcnt14 ;
  wire \u_rx_a/Mcount_bcnt15 ;
  wire \u_engine/win_cnt<1>_rt_379 ;
  wire \u_engine/win_cnt<2>_rt_376 ;
  wire \u_engine/Result<0>1 ;
  wire \u_engine/Result<1>1 ;
  wire \u_engine/Result<2>1 ;
  wire \u_engine/Result<3>1 ;
  wire \ProtoComp131.CYINITGND.0 ;
  wire \u_engine/win_cnt<3>_rt_367 ;
  wire \u_engine/win_cnt<4>_rt_404 ;
  wire \u_engine/win_cnt<5>_rt_401 ;
  wire \u_engine/win_cnt<6>_rt_398 ;
  wire \u_engine/Result<4>1 ;
  wire \u_engine/Result<5>1 ;
  wire \u_engine/Result<6>1 ;
  wire \u_engine/Result<7>1 ;
  wire \u_engine/win_cnt<7>_rt_389 ;
  wire \u_engine/win_cnt<8>_rt_426 ;
  wire \u_engine/win_cnt<9>_rt_423 ;
  wire \u_engine/win_cnt<10>_rt_420 ;
  wire \u_engine/win_cnt<11>_rt_411 ;
  wire \u_engine/win_cnt<12>_rt_448 ;
  wire \u_engine/win_cnt<13>_rt_445 ;
  wire \u_engine/win_cnt<14>_rt_442 ;
  wire \u_engine/win_cnt<15>_rt_433 ;
  wire \u_engine/win_cnt<16>_rt_464 ;
  wire \u_engine/win_cnt<17>_rt_461 ;
  wire \u_engine/win_cnt<18>_rt_459 ;
  wire \ProtoComp134.CYINITVCC.1 ;
  wire \u_uart/hb_cnt<1>_rt_511 ;
  wire \u_uart/hb_cnt<2>_rt_508 ;
  wire \u_uart/Mcount_hb_cnt_cy<3>/ProtoComp131.CYINITGND.0 ;
  wire \u_uart/hb_cnt<3>_rt_499 ;
  wire \u_uart/hb_cnt<4>_rt_536 ;
  wire \u_uart/hb_cnt<5>_rt_533 ;
  wire \u_uart/hb_cnt<6>_rt_530 ;
  wire \u_uart/hb_cnt<7>_rt_521 ;
  wire \u_uart/hb_cnt<8>_rt_558 ;
  wire \u_uart/hb_cnt<9>_rt_555 ;
  wire \u_uart/hb_cnt<10>_rt_552 ;
  wire \u_uart/hb_cnt<11>_rt_543 ;
  wire \u_uart/hb_cnt<12>_rt_580 ;
  wire \u_uart/hb_cnt<13>_rt_577 ;
  wire \u_uart/hb_cnt<14>_rt_574 ;
  wire \u_uart/hb_cnt<15>_rt_565 ;
  wire \u_uart/hb_cnt<16>_rt_602 ;
  wire \u_uart/hb_cnt<17>_rt_599 ;
  wire \u_uart/hb_cnt<18>_rt_596 ;
  wire \u_uart/hb_cnt<19>_rt_587 ;
  wire \u_uart/hb_cnt<20>_rt_624 ;
  wire \u_uart/hb_cnt<21>_rt_621 ;
  wire \u_uart/hb_cnt<22>_rt_618 ;
  wire \u_uart/hb_cnt<23>_rt_609 ;
  wire \u_uart/hb_cnt<24>_rt_644 ;
  wire \u_uart/hb_cnt<25>_rt_641 ;
  wire \u_uart/hb_cnt<26>_rt_638 ;
  wire \u_uart/hb_cnt<27>_rt_631 ;
  wire \u_fifo_a2b/rptr<0>_rt_671 ;
  wire \u_fifo_a2b/rptr<1>_rt_666 ;
  wire \u_fifo_a2b/rptr<2>_rt_662 ;
  wire \u_fifo_a2b/Mcount_rptr ;
  wire \u_fifo_a2b/Mcount_rptr1 ;
  wire \u_fifo_a2b/Mcount_rptr2 ;
  wire \u_fifo_a2b/Mcount_rptr3 ;
  wire \u_fifo_a2b/rptr<3>_rt_652 ;
  wire \u_fifo_a2b/rptr<4>_rt_699 ;
  wire \u_fifo_a2b/rptr<5>_rt_695 ;
  wire \u_fifo_a2b/rptr<6>_rt_691 ;
  wire \u_fifo_a2b/Mcount_rptr4 ;
  wire \u_fifo_a2b/Mcount_rptr5 ;
  wire \u_fifo_a2b/Mcount_rptr6 ;
  wire \u_fifo_a2b/Mcount_rptr7 ;
  wire \u_fifo_a2b/rptr<7>_rt_680 ;
  wire \u_fifo_a2b/rptr<8>_rt_725 ;
  wire \u_fifo_a2b/rptr<9>_rt_721 ;
  wire \u_fifo_a2b/rptr<10>_rt_717 ;
  wire \u_fifo_a2b/Mcount_rptr8 ;
  wire \u_fifo_a2b/Mcount_rptr9 ;
  wire \u_fifo_a2b/Mcount_rptr10 ;
  wire \u_fifo_a2b/Mcount_rptr11 ;
  wire \u_fifo_a2b/rptr<11>_rt_708 ;
  wire \u_engine/sig_done_win_nxt[55]_AND_42_o_wg_lut<0> ;
  wire \u_engine/sig_done_win_nxt[55]_AND_42_o_wg_lut<1>_750 ;
  wire \u_engine/sig_done_win_nxt[55]_AND_42_o_wg_lut<2>_742 ;
  wire \ProtoComp140.CYINITVCC.1 ;
  wire \u_engine/sig_done_win_nxt[55]_AND_42_o_wg_lut<3>_732 ;
  wire \u_engine/sig_done_win_nxt[55]_AND_42_o_wg_lut<4>_788 ;
  wire \u_engine/sig_done_win_nxt[55]_AND_42_o_wg_lut<5>_780 ;
  wire \u_engine/sig_done_win_nxt[55]_AND_42_o_wg_lut<6>_772 ;
  wire \u_engine/sig_done_win_nxt[55]_AND_42_o_wg_lut<7>_762 ;
  wire \u_engine/sig_done_win_nxt[55]_AND_42_o_wg_lut<8>_813 ;
  wire \u_engine/sig_done_win_nxt[55]_AND_42_o_wg_lut<9>_805 ;
  wire \u_rx_a/m_tvalid_rt_801 ;
  wire \u_engine/sig_done_win_nxt[55]_AND_42_o ;
  wire \u_engine/GND_6_o_sig_done_MUX_169_o ;
  wire \u_fifo_b2a/wptr<1>_rt_833 ;
  wire \u_fifo_b2a/wptr<2>_rt_830 ;
  wire \u_fifo_b2a/Madd_wptr_n_cy<3>/ProtoComp131.CYINITGND.0 ;
  wire \u_fifo_b2a/wptr<3>_rt_821 ;
  wire \u_fifo_b2a/wptr<4>_rt_858 ;
  wire \u_fifo_b2a/wptr<5>_rt_855 ;
  wire \u_fifo_b2a/wptr<6>_rt_852 ;
  wire \u_fifo_b2a/wptr<7>_rt_843 ;
  wire \u_fifo_b2a/wptr<8>_rt_878 ;
  wire \u_fifo_b2a/wptr<9>_rt_875 ;
  wire \u_fifo_b2a/wptr<10>_rt_872 ;
  wire \u_fifo_b2a/wptr<11>_rt_865 ;
  wire \u_fifo_a2b/Msub_used_cy<3>/ProtoComp125.CYINITVCC.1 ;
  wire \u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<11>/u_fifo_a2b/rptr<8>_rt ;
  wire \u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<11>/u_fifo_a2b/rptr<9>_rt ;
  wire \u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<11>/u_fifo_a2b/rptr<10>_rt ;
  wire \u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<8> ;
  wire \u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<9> ;
  wire \u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<10> ;
  wire \u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<11> ;
  wire \u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<11>/u_fifo_a2b/rptr<11>_rt ;
  wire \u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_lut<0> ;
  wire \u_fifo_b2a/rptr<1>_rt_999 ;
  wire \u_fifo_b2a/rptr<2>_rt_996 ;
  wire \u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<0> ;
  wire \u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<1> ;
  wire \u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<2> ;
  wire \u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<3> ;
  wire \u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<3>/ProtoComp131.CYINITGND.0 ;
  wire \u_fifo_b2a/rptr<3>_rt_987 ;
  wire \u_fifo_b2a/rptr<8>_rt_1022 ;
  wire \u_fifo_b2a/rptr<9>_rt_1019 ;
  wire \u_fifo_b2a/rptr<10>_rt_1016 ;
  wire \u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<8> ;
  wire \u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<9> ;
  wire \u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<10> ;
  wire \u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<11> ;
  wire \u_fifo_b2a/rptr<11>_rt_1009 ;
  wire \u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_lut<0> ;
  wire \u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_lut<1>_1042 ;
  wire \u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_lut<2> ;
  wire \ProtoComp143.CYINITVCC.1 ;
  wire \u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_lut<3> ;
  wire \u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_lut<4> ;
  wire \u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_lut<5> ;
  wire \u_engine/s_tindex[15]_idx_flags[15]_equal_12_o ;
  wire \u_fifo_b2a/rptr<0>_rt_1091 ;
  wire \u_fifo_b2a/rptr<3>/u_fifo_b2a/rptr<1>_rt ;
  wire \u_fifo_b2a/rptr<3>/u_fifo_b2a/rptr<2>_rt ;
  wire \u_fifo_b2a/Mcount_rptr ;
  wire \u_fifo_b2a/Mcount_rptr1 ;
  wire \u_fifo_b2a/Mcount_rptr2 ;
  wire \u_fifo_b2a/Mcount_rptr3 ;
  wire \u_fifo_b2a/rptr<3>/u_fifo_b2a/rptr<3>_rt ;
  wire \u_fifo_b2a/rptr<4>_rt_1119 ;
  wire \u_fifo_b2a/rptr<5>_rt_1115 ;
  wire \u_fifo_b2a/rptr<6>_rt_1111 ;
  wire \u_fifo_b2a/Mcount_rptr4 ;
  wire \u_fifo_b2a/Mcount_rptr5 ;
  wire \u_fifo_b2a/Mcount_rptr6 ;
  wire \u_fifo_b2a/Mcount_rptr7 ;
  wire \u_fifo_b2a/rptr<7>_rt_1100 ;
  wire \u_fifo_b2a/rptr<11>/u_fifo_b2a/rptr<8>_rt ;
  wire \u_fifo_b2a/rptr<11>/u_fifo_b2a/rptr<9>_rt ;
  wire \u_fifo_b2a/rptr<11>/u_fifo_b2a/rptr<10>_rt ;
  wire \u_fifo_b2a/Mcount_rptr8 ;
  wire \u_fifo_b2a/Mcount_rptr9 ;
  wire \u_fifo_b2a/Mcount_rptr10 ;
  wire \u_fifo_b2a/Mcount_rptr11 ;
  wire \u_fifo_b2a/rptr<11>/u_fifo_b2a/rptr<11>_rt ;
  wire \u_fifo_a2b/wptr<1>_rt_1163 ;
  wire \u_fifo_a2b/wptr<2>_rt_1160 ;
  wire \u_fifo_a2b/Madd_wptr_n_cy<3>/ProtoComp131.CYINITGND.0 ;
  wire \u_fifo_a2b/wptr<3>_rt_1151 ;
  wire \u_fifo_a2b/wptr<4>_rt_1188 ;
  wire \u_fifo_a2b/wptr<5>_rt_1185 ;
  wire \u_fifo_a2b/wptr<6>_rt_1182 ;
  wire \u_fifo_a2b/wptr<7>_rt_1173 ;
  wire \u_fifo_a2b/wptr<8>_rt_1208 ;
  wire \u_fifo_a2b/wptr<9>_rt_1205 ;
  wire \u_fifo_a2b/wptr<10>_rt_1202 ;
  wire \u_fifo_a2b/wptr<11>_rt_1195 ;
  wire \u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_lut<0> ;
  wire \u_uart/u_core/baudcnt<1>_rt_1226 ;
  wire \u_uart/u_core/baudcnt<2>_rt_1223 ;
  wire \u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<0> ;
  wire \u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<1> ;
  wire \u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<2> ;
  wire \u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<3> ;
  wire \u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<3>/ProtoComp131.CYINITGND.0 ;
  wire \u_uart/u_core/baudcnt<3>_rt_1214 ;
  wire \u_uart/u_core/baudcnt<4>_rt_1251 ;
  wire \u_uart/u_core/baudcnt<5>_rt_1248 ;
  wire \u_uart/u_core/baudcnt<6>_rt_1245 ;
  wire \u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<4> ;
  wire \u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<5> ;
  wire \u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<6> ;
  wire \u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<7> ;
  wire \u_uart/u_core/baudcnt<7>_rt_1236 ;
  wire \u_uart/u_core/baudcnt<8>_rt_1273 ;
  wire \u_uart/u_core/baudcnt<9>_rt_1270 ;
  wire \u_uart/u_core/baudcnt<10>_rt_1267 ;
  wire \u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<8> ;
  wire \u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<9> ;
  wire \u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<10> ;
  wire \u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<11> ;
  wire \u_uart/u_core/baudcnt<11>_rt_1258 ;
  wire \u_uart/u_core/baudcnt<12>_rt_1282 ;
  wire \u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<12> ;
  wire \u_engine/syn_cnt<1>_rt_1296 ;
  wire \u_engine/syn_cnt<2>_rt_1293 ;
  wire \u_engine/Mcount_syn_cnt_cy<3>/ProtoComp131.CYINITGND.0 ;
  wire \u_engine/syn_cnt<3>_rt_1284 ;
  wire \u_engine/syn_cnt<4>_rt_1319 ;
  wire \u_engine/syn_cnt<5>_rt_1316 ;
  wire \u_engine/syn_cnt<6>_rt_1313 ;
  wire \u_engine/syn_cnt<7>_rt_1306 ;
  wire \por_cnt<1>_rt_1342 ;
  wire \por_cnt<2>_rt_1338 ;
  wire \ProtoComp145.CYINITGND.0 ;
  wire \por_cnt<3>_rt_1326 ;
  wire \por_cnt<4>_rt_1372 ;
  wire \por_cnt<5>_rt_1368 ;
  wire \por_cnt<6>_rt_1364 ;
  wire \por_cnt<7>_rt_1354 ;
  wire \clk_100_BUFGP/IBUFG_1379 ;
  wire \phy_a_ref_clk_BUFGP/IBUFG_1386 ;
  wire \phy_b_ref_clk_BUFGP/IBUFG_1389 ;
  wire phy_a_crs_dv_IBUF_1398;
  wire phy_b_crs_dv_IBUF_1401;
  wire phy_a_rxd_0_IBUF_1404;
  wire phy_a_rxd_1_IBUF_1407;
  wire phy_b_rxd_0_IBUF_1414;
  wire phy_b_rxd_1_IBUF_1417;
  wire \ProtoComp150.D2OBYPSEL_GND.0 ;
  wire \ProtoComp150.D2OFFBYP_SRC.OUT ;
  wire \u_rx_b/crs_r/ProtoComp150.D2OBYPSEL_GND.0 ;
  wire \u_rx_b/crs_r/ProtoComp150.D2OFFBYP_SRC.OUT ;
  wire \u_rx_a/rxd_r<0>/ProtoComp150.D2OBYPSEL_GND.0 ;
  wire \u_rx_a/rxd_r<0>/ProtoComp150.D2OFFBYP_SRC.OUT ;
  wire \u_rx_a/rxd_r<1>/ProtoComp150.D2OBYPSEL_GND.0 ;
  wire \u_rx_a/rxd_r<1>/ProtoComp150.D2OFFBYP_SRC.OUT ;
  wire \u_rx_b/rxd_r<0>/ProtoComp150.D2OBYPSEL_GND.0 ;
  wire \u_rx_b/rxd_r<0>/ProtoComp150.D2OFFBYP_SRC.OUT ;
  wire \u_rx_b/rxd_r<1>/ProtoComp150.D2OBYPSEL_GND.0 ;
  wire \u_rx_b/rxd_r<1>/ProtoComp150.D2OFFBYP_SRC.OUT ;
  wire \u_rx_b/rxd_r_1_ML_IODELAY2/TOUT ;
  wire \u_rx_b/rxd_r_1_ML_IODELAY2/DATAOUT2 ;
  wire \u_rx_b/rxd_r_1_ML_IODELAY2/DOUT ;
  wire \u_rx_b/rxd_r_1_ML_IODELAY2/BUSY ;
  wire \u_rx_b/rxd_r_1_ML_IODELAY2/ODATAIN ;
  wire \u_rx_b/rxd_r_1_ML_IODELAY2/RST ;
  wire \u_rx_b/rxd_r_1_ML_IODELAY2/CE ;
  wire \u_rx_b/rxd_r_1_ML_IODELAY2/INC ;
  wire \u_rx_b/rxd_r_1_ML_IODELAY2/CLK ;
  wire \u_rx_b/rxd_r_1_ML_IODELAY2/CAL ;
  wire \u_rx_b/rxd_r_1_ML_IODELAY2/T ;
  wire \u_rx_a/rxd_r_1_ML_IODELAY2/TOUT ;
  wire \u_rx_a/rxd_r_1_ML_IODELAY2/DATAOUT2 ;
  wire \u_rx_a/rxd_r_1_ML_IODELAY2/DOUT ;
  wire \u_rx_a/rxd_r_1_ML_IODELAY2/BUSY ;
  wire \u_rx_a/rxd_r_1_ML_IODELAY2/ODATAIN ;
  wire \u_rx_a/rxd_r_1_ML_IODELAY2/RST ;
  wire \u_rx_a/rxd_r_1_ML_IODELAY2/CE ;
  wire \u_rx_a/rxd_r_1_ML_IODELAY2/INC ;
  wire \u_rx_a/rxd_r_1_ML_IODELAY2/CLK ;
  wire \u_rx_a/rxd_r_1_ML_IODELAY2/CAL ;
  wire \u_rx_a/rxd_r_1_ML_IODELAY2/T ;
  wire \u_rx_b/rxd_r_0_ML_IODELAY2/TOUT ;
  wire \u_rx_b/rxd_r_0_ML_IODELAY2/DATAOUT2 ;
  wire \u_rx_b/rxd_r_0_ML_IODELAY2/DOUT ;
  wire \u_rx_b/rxd_r_0_ML_IODELAY2/BUSY ;
  wire \u_rx_b/rxd_r_0_ML_IODELAY2/ODATAIN ;
  wire \u_rx_b/rxd_r_0_ML_IODELAY2/RST ;
  wire \u_rx_b/rxd_r_0_ML_IODELAY2/CE ;
  wire \u_rx_b/rxd_r_0_ML_IODELAY2/INC ;
  wire \u_rx_b/rxd_r_0_ML_IODELAY2/CLK ;
  wire \u_rx_b/rxd_r_0_ML_IODELAY2/CAL ;
  wire \u_rx_b/rxd_r_0_ML_IODELAY2/T ;
  wire \u_rx_a/crs_r_ML_IODELAY2/TOUT ;
  wire \u_rx_a/crs_r_ML_IODELAY2/DATAOUT2 ;
  wire \u_rx_a/crs_r_ML_IODELAY2/DOUT ;
  wire \u_rx_a/crs_r_ML_IODELAY2/BUSY ;
  wire \u_rx_a/crs_r_ML_IODELAY2/ODATAIN ;
  wire \u_rx_a/crs_r_ML_IODELAY2/RST ;
  wire \u_rx_a/crs_r_ML_IODELAY2/CE ;
  wire \u_rx_a/crs_r_ML_IODELAY2/INC ;
  wire \u_rx_a/crs_r_ML_IODELAY2/CLK ;
  wire \u_rx_a/crs_r_ML_IODELAY2/CAL ;
  wire \u_rx_a/crs_r_ML_IODELAY2/T ;
  wire \u_rx_a/rxd_r_0_ML_IODELAY2/TOUT ;
  wire \u_rx_a/rxd_r_0_ML_IODELAY2/DATAOUT2 ;
  wire \u_rx_a/rxd_r_0_ML_IODELAY2/DOUT ;
  wire \u_rx_a/rxd_r_0_ML_IODELAY2/BUSY ;
  wire \u_rx_a/rxd_r_0_ML_IODELAY2/ODATAIN ;
  wire \u_rx_a/rxd_r_0_ML_IODELAY2/RST ;
  wire \u_rx_a/rxd_r_0_ML_IODELAY2/CE ;
  wire \u_rx_a/rxd_r_0_ML_IODELAY2/INC ;
  wire \u_rx_a/rxd_r_0_ML_IODELAY2/CLK ;
  wire \u_rx_a/rxd_r_0_ML_IODELAY2/CAL ;
  wire \u_rx_a/rxd_r_0_ML_IODELAY2/T ;
  wire \u_rx_b/crs_r_ML_IODELAY2/TOUT ;
  wire \u_rx_b/crs_r_ML_IODELAY2/DATAOUT2 ;
  wire \u_rx_b/crs_r_ML_IODELAY2/DOUT ;
  wire \u_rx_b/crs_r_ML_IODELAY2/BUSY ;
  wire \u_rx_b/crs_r_ML_IODELAY2/ODATAIN ;
  wire \u_rx_b/crs_r_ML_IODELAY2/RST ;
  wire \u_rx_b/crs_r_ML_IODELAY2/CE ;
  wire \u_rx_b/crs_r_ML_IODELAY2/INC ;
  wire \u_rx_b/crs_r_ML_IODELAY2/CLK ;
  wire \u_rx_b/crs_r_ML_IODELAY2/CAL ;
  wire \u_rx_b/crs_r_ML_IODELAY2/T ;
  wire N497;
  wire N77;
  wire N513;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT33_1507 ;
  wire \u_engine/syn_cnt_5_rstpot_1556 ;
  wire \u_engine/syn_cnt_6_rstpot_1547 ;
  wire \u_engine/syn_cnt_3_rstpot_1538 ;
  wire \u_engine/syn_cnt_4_rstpot_1530 ;
  wire \u_engine/Mcount_win_cnt_eqn_0 ;
  wire \u_engine/Mcount_win_cnt_eqn_1 ;
  wire \u_engine/Mcount_win_cnt_eqn_2 ;
  wire \u_engine/Mcount_win_cnt_eqn_3 ;
  wire \u_engine/Mcount_win_cnt_eqn_5 ;
  wire \u_engine/Mcount_win_cnt_eqn_6 ;
  wire \u_engine/Mcount_win_cnt_eqn_7 ;
  wire \u_engine/Mcount_win_cnt_eqn_4 ;
  wire \u_engine/Mcount_win_cnt_eqn_12 ;
  wire \u_engine/Mcount_win_cnt_eqn_13 ;
  wire \u_engine/Mcount_win_cnt_eqn_14 ;
  wire \u_engine/Mcount_win_cnt_eqn_15 ;
  wire \u_engine/Mcount_win_cnt_eqn_18 ;
  wire \u_engine/Mcount_win_cnt_eqn_16 ;
  wire \u_engine/Mcount_win_cnt_eqn_17 ;
  wire \u_engine/Mcount_win_cnt_eqn_10 ;
  wire \u_engine/Mcount_win_cnt_eqn_11_1745 ;
  wire \u_engine/Mcount_win_cnt_eqn_8 ;
  wire \u_engine/Mcount_win_cnt_eqn_9 ;
  wire \u_engine/syn_cnt_0_rstpot_1784 ;
  wire \u_engine/syn_cnt_1_rstpot_1770 ;
  wire \u_engine/syn_cnt_2_rstpot_1761 ;
  wire N495;
  wire N494;
  wire \u_rx_b/hold_v_rstpot_1815 ;
  wire \u_rx_b/m_tlast_1846 ;
  wire \u_rx_b/state[1]_GND_3_o_Mux_41_o ;
  wire \u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<22> ;
  wire \u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<21> ;
  wire \u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<27> ;
  wire \u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<18> ;
  wire \u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<20> ;
  wire \u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<19> ;
  wire \u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<17> ;
  wire \u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<16> ;
  wire \u_rx_b/state_FSM_FFd1-In ;
  wire \u_rx_b/_n0167_inv ;
  wire \u_rx_b/state_FSM_FFd2-In ;
  wire \u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<38> ;
  wire \u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<37> ;
  wire \u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<35> ;
  wire \u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<34> ;
  wire \u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<45> ;
  wire \u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<36> ;
  wire \u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<33> ;
  wire \u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<32> ;
  wire \u_uart/Mcount_hb_cnt_eqn_3 ;
  wire \u_uart/Mcount_hb_cnt_eqn_4 ;
  wire \u_uart/Mcount_hb_cnt_eqn_5 ;
  wire \u_uart/Mcount_hb_cnt_eqn_6 ;
  wire \u_uart/Mcount_hb_cnt_eqn_11 ;
  wire \u_uart/Mcount_hb_cnt_eqn_12 ;
  wire \u_uart/Mcount_hb_cnt_eqn_13 ;
  wire \u_uart/Mcount_hb_cnt_eqn_14 ;
  wire \u_uart/Mcount_hb_cnt_eqn_27 ;
  wire \u_uart/Mcount_hb_cnt_eqn_19 ;
  wire \u_uart/Mcount_hb_cnt_eqn_20 ;
  wire \u_uart/Mcount_hb_cnt_eqn_21 ;
  wire \u_uart/Mcount_hb_cnt_eqn_22 ;
  wire \u_uart/Mcount_hb_cnt_eqn_23 ;
  wire \u_uart/Mcount_hb_cnt_eqn_24 ;
  wire \u_uart/Mcount_hb_cnt_eqn_25 ;
  wire \u_uart/Mcount_hb_cnt_eqn_26 ;
  wire \u_tx_b/state_FSM_FFd1-In ;
  wire \u_tx_b/state_FSM_FFd2-In ;
  wire N263_pack_10;
  wire N267;
  wire \u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT11 ;
  wire N460;
  wire N88;
  wire N461;
  wire N456;
  wire N82;
  wire \u_rx_b/dcnt<0>_pack_7 ;
  wire \u_rx_b/state[1]_dcnt[1]_wide_mux_43_OUT<0> ;
  wire \u_rx_b/state[1]_dcnt[1]_wide_mux_43_OUT<1> ;
  wire N457;
  wire \u_fifo_b2a/cptr_6_rstpot_2343 ;
  wire \u_fifo_b2a/cptr_7_rstpot_2334 ;
  wire \u_fifo_b2a/cptr_4_rstpot_2325 ;
  wire \u_fifo_b2a/cptr_5_rstpot_2317 ;
  wire \u_fifo_b2a/cptr_10_rstpot_2377 ;
  wire \u_fifo_b2a/cptr_11_rstpot_2368 ;
  wire \u_fifo_b2a/cptr_8_rstpot_2359 ;
  wire \u_fifo_b2a/cptr_9_rstpot_2351 ;
  wire \u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<31> ;
  wire \u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<30> ;
  wire \u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<26> ;
  wire \u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<25> ;
  wire \u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<29> ;
  wire \u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<28> ;
  wire \u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<24> ;
  wire \u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<23> ;
  wire \u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<2>_pack_2 ;
  wire \u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<7> ;
  wire \u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<6> ;
  wire \u_engine/syn_cnt_7_rstpot_2508 ;
  wire \u_uart/Mcount_hb_cnt_eqn_7 ;
  wire \u_uart/Mcount_hb_cnt_eqn_8 ;
  wire \u_uart/Mcount_hb_cnt_eqn_9 ;
  wire \u_uart/Mcount_hb_cnt_eqn_10 ;
  wire \u_uart/Mcount_hb_cnt_eqn_0 ;
  wire \u_uart/Mcount_hb_cnt_eqn_1 ;
  wire \u_uart/Mcount_hb_cnt_eqn_2 ;
  wire \u_uart/Mcount_hb_cnt_eqn_15 ;
  wire \u_uart/Mcount_hb_cnt_eqn_16 ;
  wire \u_uart/Mcount_hb_cnt_eqn_17 ;
  wire \u_uart/Mcount_hb_cnt_eqn_18 ;
  wire \u_uart/code[2]_GND_7_o_select_48_OUT<6> ;
  wire \u_tx_b/state[1]_pcnt[5]_wide_mux_27_OUT<4> ;
  wire \u_tx_b/state[1]_pcnt[5]_wide_mux_27_OUT<5> ;
  wire \u_tx_b/state[1]_pcnt[5]_wide_mux_27_OUT<3> ;
  wire \u_tx_b/state[1]_pcnt[5]_wide_mux_27_OUT<2> ;
  wire \u_fifo_b2a/wptr_4_dpot_2763 ;
  wire \u_fifo_b2a/wptr_5_dpot_2755 ;
  wire \u_fifo_b2a/wptr_6_dpot_2747 ;
  wire \u_fifo_b2a/wptr_7_dpot_2737 ;
  wire \u_fifo_b2a/wptr_8_dpot_2798 ;
  wire \u_fifo_b2a/wptr_9_dpot_2790 ;
  wire \u_fifo_b2a/wptr_10_dpot_2782 ;
  wire \u_fifo_b2a/wptr_11_dpot_2772 ;
  wire \u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<15> ;
  wire \u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<14> ;
  wire \u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<11> ;
  wire \u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<10> ;
  wire \u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<13> ;
  wire \u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<12> ;
  wire \u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<9> ;
  wire \u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<8> ;
  wire \u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<47> ;
  wire \u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<46> ;
  wire \u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<42> ;
  wire \u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<41> ;
  wire \u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<44> ;
  wire \u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<43> ;
  wire \u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<40> ;
  wire \u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<39> ;
  wire \u_engine/sig_done_rstpot_2898 ;
  wire \u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<5>_pack_1 ;
  wire N379;
  wire \u_engine/syn_flood_active_rstpot_2962 ;
  wire \u_engine/GND_6_o_GND_6_o_MUX_194_o ;
  wire \u_uart/tgl_a[3]_trig_port_scan_xor_0_OUT<0> ;
  wire \u_uart/tgl_a[3]_trig_port_scan_xor_0_OUT<1> ;
  wire \u_uart/tgl_a[3]_trig_port_scan_xor_0_OUT<2> ;
  wire \u_uart/tgl_a[3]_trig_port_scan_xor_0_OUT<3> ;
  wire \u_uart/t1<0>_rt_3013 ;
  wire \u_uart/t1<1>_rt_3008 ;
  wire \u_uart/t1<2>_rt_3003 ;
  wire \u_uart/t1<3>_rt_2997 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT75_3035 ;
  wire \u_tx_b/bcnt_FSM_FFd1_pack_11 ;
  wire \u_tx_b/bcnt_FSM_FFd1-In ;
  wire \u_tx_b/bcnt_FSM_FFd2-In ;
  wire N473;
  wire N472;
  wire \u_tx_b/state[1]_GND_5_o_wide_mux_25_OUT<1> ;
  wire N459;
  wire N458;
  wire N87;
  wire N455;
  wire N454;
  wire N81;
  wire \u_fifo_b2a/rptr_n[11]_GND_4_o_xor_25_OUT<4> ;
  wire \u_fifo_b2a/rptr_n[11]_GND_4_o_xor_25_OUT<5> ;
  wire \u_tx_b/state[1]_pcnt[5]_wide_mux_27_OUT<1> ;
  wire \u_tx_b/state[1]_pcnt[5]_wide_mux_27_OUT<0> ;
  wire \u_fifo_b2a/wptr_0_dpot_3358 ;
  wire \u_fifo_b2a/wptr_1_dpot_3350 ;
  wire \u_fifo_b2a/wptr_2_dpot_3342 ;
  wire \u_fifo_b2a/wptr_3_dpot_3332 ;
  wire \u_fifo_b2a/cptr_gray_3_rstpot_3390 ;
  wire \u_fifo_b2a/cptr_gray_0_rstpot_3381 ;
  wire \u_fifo_b2a/cptr_gray_1_rstpot_3373 ;
  wire \u_fifo_b2a/cptr_gray_2_rstpot_3365 ;
  wire \u_engine/port_done_rstpot_3450 ;
  wire \u_engine/GND_6_o_s_tindex[15]_MUX_167_o ;
  wire \u_fifo_b2a/cptr_2_rstpot_3517 ;
  wire \u_fifo_b2a/cptr_3_rstpot_3508 ;
  wire \u_fifo_b2a/cptr_0_rstpot_3499 ;
  wire \u_fifo_b2a/cptr_1_rstpot_3491 ;
  wire \u_fifo_b2a/cptr_gray_8_rstpot_3537 ;
  wire \u_fifo_b2a/cptr_gray_9_rstpot_3528 ;
  wire \u_fifo_b2a/cptr_gray_7_rstpot_3519 ;
  wire \u_fifo_b2a/cptr_gray_4_rstpot_3565 ;
  wire \u_fifo_b2a/cptr_gray_5_rstpot_3557 ;
  wire \u_fifo_b2a/cptr_gray_6_rstpot_3549 ;
  wire \u_fifo_b2a/rptr_n[11]_GND_4_o_xor_25_OUT<6> ;
  wire \u_fifo_b2a/rptr_n[11]_GND_4_o_xor_25_OUT<7> ;
  wire \u_engine/l4_base[15]_GND_6_o_add_2_OUT<4> ;
  wire \u_engine/l4_base[15]_GND_6_o_add_2_OUT<5> ;
  wire \u_engine/l4_base[15]_GND_6_o_add_2_OUT<6> ;
  wire N507;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT23_pack_7 ;
  wire N477;
  wire N476;
  wire N447;
  wire \u_uart/code[2]_GND_7_o_select_48_OUT<0> ;
  wire \u_uart/code[2]_GND_7_o_select_48_OUT<1> ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT413_pack_12 ;
  wire \u_fifo_b2a/cptr_gray_10_rstpot_3839 ;
  wire \u_fifo_b2a/cptr_gray_11_rstpot_3831 ;
  wire \u_fifo_b2a/drop_pack_10 ;
  wire \u_fifo_b2a/drop_rstpot_3824 ;
  wire \u_engine/l4_base[15]_GND_6_o_add_4_OUT<5> ;
  wire \u_engine/l4_base[15]_GND_6_o_add_4_OUT<6> ;
  wire \u_engine/l4_base[15]_GND_6_o_add_4_OUT<3> ;
  wire \u_engine/l4_base[15]_GND_6_o_add_4_OUT<4> ;
  wire \u_uart/cq_r<3>_pack_6 ;
  wire \u_uart/Result<3>2 ;
  wire \u_uart/Result<2>2 ;
  wire \u_uart/Result<0>2 ;
  wire \u_uart/Result<1>2 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT21_3964 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT69_pack_1 ;
  wire \u_fifo_a2b/rptr_n[11]_GND_4_o_xor_25_OUT<2> ;
  wire \u_fifo_a2b/rptr_n[11]_GND_4_o_xor_25_OUT<3> ;
  wire \u_fifo_b2a/rptr_n[11]_GND_4_o_xor_25_OUT<1> ;
  wire \u_fifo_b2a/rptr_n[11]_GND_4_o_xor_25_OUT<0> ;
  wire \u_fifo_b2a/cg_s2<11>/u_fifo_b2a/rptr<4>_rt ;
  wire \u_fifo_b2a/cg_s2<11>/u_fifo_b2a/rptr<5>_rt ;
  wire \u_fifo_b2a/cg_s2<11>/u_fifo_b2a/rptr<6>_rt ;
  wire \u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<4> ;
  wire \u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<5> ;
  wire \u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<6> ;
  wire \u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<7> ;
  wire \u_fifo_b2a/cg_s2<11>/u_fifo_b2a/rptr<7>_rt ;
  wire \u_engine/len_gt_rstpot_4184 ;
  wire \u_engine/frag_ok_rstpot_4212 ;
  wire \u_engine/ihl_ok_GND_6_o_MUX_93_o ;
  wire \u_engine/et_hi_ok_rstpot_4252 ;
  wire \u_engine/is_ipv4_rstpot_4244 ;
  wire \u_engine/et_hi_ok_GND_6_o_MUX_90_o_pack_10 ;
  wire \u_rx_a/m_tindex<7>/u_rx_a/m_tvalid_rt ;
  wire \u_engine/_n0371_inv ;
  wire N501;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT410 ;
  wire N509;
  wire N508;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT53_4374 ;
  wire N503;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT119_4390 ;
  wire \u_fifo_b2a/rptr_n[11]_GND_4_o_xor_25_OUT<10> ;
  wire \u_fifo_b2a/rptr_n[11]_GND_4_o_xor_25_OUT<8> ;
  wire \u_fifo_b2a/rptr_n[11]_GND_4_o_xor_25_OUT<9> ;
  wire \u_rx_a/m_tdata<4>_rt_4642 ;
  wire \u_engine/ver_ok_4670 ;
  wire \u_engine/ver_ok_GND_6_o_MUX_92_o ;
  wire N115;
  wire \u_engine/icmp_done_pack_4 ;
  wire \u_engine/icmp_done_rstpot_4687 ;
  wire N33;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT6_pack_10 ;
  wire N471;
  wire N470;
  wire \u_tx_b/state[1]_GND_5_o_wide_mux_25_OUT<0> ;
  wire \u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<3> ;
  wire \ProtoComp393.CYINITGND.0 ;
  wire \u_tx_b/cur<7>/u_fifo_a2b/rptr<3>_rt_4856 ;
  wire \u_fifo_a2b/Madd_rptr[11]_GND_4_o_add_23_OUT_lut<0> ;
  wire \u_tx_b/cur<7>/u_fifo_a2b/rptr<1>_rt_4847 ;
  wire \u_tx_b/cur<7>/u_fifo_a2b/rptr<2>_rt_4844 ;
  wire \u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<0> ;
  wire \u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<1> ;
  wire \u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<2> ;
  wire \u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<4> ;
  wire \u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<5> ;
  wire \u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<6> ;
  wire \u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<7> ;
  wire \u_tx_b/cur<5>/u_fifo_a2b/rptr<7>_rt_4886 ;
  wire \u_tx_b/cur<5>/u_fifo_a2b/rptr<4>_rt_4880 ;
  wire \u_tx_b/cur<5>/u_fifo_a2b/rptr<5>_rt_4875 ;
  wire \u_tx_b/cur<5>/u_fifo_a2b/rptr<6>_rt_4870 ;
  wire \u_fifo_a2b/rptr_n[11]_GND_4_o_xor_25_OUT<10> ;
  wire \u_fifo_a2b/cg_s1<4>_pack_1 ;
  wire \u_fifo_a2b/cptr_gray<4>_rt_4950 ;
  wire \u_fifo_a2b/cg_s1<5>_pack_2 ;
  wire \u_fifo_a2b/cptr_gray<5>_rt_4945 ;
  wire \u_fifo_a2b/cg_s1<6>_pack_3 ;
  wire \u_fifo_a2b/cptr_gray<6>_rt_4940 ;
  wire \u_fifo_a2b/cg_s1<7>_pack_4 ;
  wire \u_fifo_a2b/cptr_gray<7>_rt_4934 ;
  wire \u_fifo_b2a/rptr_n[11]_GND_4_o_xor_25_OUT<2> ;
  wire \u_fifo_b2a/rptr_n[11]_GND_4_o_xor_25_OUT<3> ;
  wire \u_uart/code[2]_GND_7_o_mux_29_OUT<0> ;
  wire \u_uart/code[2]_GND_7_o_mux_29_OUT<1> ;
  wire \u_uart/_n0234_inv ;
  wire \u_uart/req[3]_ev[3]_or_20_OUT<3> ;
  wire \u_uart/pick_code<1>_pack_7 ;
  wire N511;
  wire N510;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT41 ;
  wire \u_uart/mstate[2]_idx[7]_select_72_OUT<5>_5204 ;
  wire \u_uart/mstate[2]_idx[7]_select_72_OUT<6>_5196 ;
  wire \u_uart/mstate[2]_idx[7]_select_72_OUT<7>_5187 ;
  wire \u_uart/code[2]_GND_7_o_select_48_OUT<4> ;
  wire \u_uart/code[2]_GND_7_o_select_48_OUT<5> ;
  wire \u_fifo_a2b/rg_s1<0>_rt_5289 ;
  wire \u_fifo_a2b/rg_s1<1>_rt_5284 ;
  wire \u_fifo_a2b/rg_s1<2>_rt_5279 ;
  wire \u_fifo_a2b/rg_s1<3>_rt_5273 ;
  wire \u_fifo_a2b/rptr_n[11]_GND_4_o_xor_25_OUT<1> ;
  wire \u_fifo_a2b/rptr_n[11]_GND_4_o_xor_25_OUT<0> ;
  wire \u_uart/Result<0>1 ;
  wire \u_uart/cq_w<3>_pack_6 ;
  wire \u_uart/Result<3>1 ;
  wire \u_uart/Result<2>1 ;
  wire \u_uart/cq_w<1>_pack_8 ;
  wire \u_uart/Result<1>1 ;
  wire \u_uart/req[3]_ev[3]_or_20_OUT<0> ;
  wire \u_uart/req[3]_ev[3]_or_20_OUT<1> ;
  wire \u_uart/req[3]_ev[3]_or_20_OUT<2> ;
  wire \u_uart/mstate[2]_idx[7]_select_72_OUT<0> ;
  wire \u_uart/mstate[2]_idx[7]_select_72_OUT<2>_5577 ;
  wire \u_uart/mstate[2]_idx[7]_select_72_OUT<3>_5568 ;
  wire \u_uart/hb_pend_rstpot_5619 ;
  wire \u_uart/hb_pend_pack_6 ;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT65_5634 ;
  wire \u_fifo_a2b/rptr_n[11]_GND_4_o_xor_25_OUT<6> ;
  wire \u_fifo_a2b/rptr_n[11]_GND_4_o_xor_25_OUT<7> ;
  wire \u_fifo_a2b/rptr_n[11]_GND_4_o_xor_25_OUT<8> ;
  wire \u_fifo_a2b/rptr_n[11]_GND_4_o_xor_25_OUT<9> ;
  wire \u_rx_a/hold_v_rstpot_5833 ;
  wire \u_rx_a/crs_r_crs_prev_AND_2_o_pack_13 ;
  wire N482;
  wire N499;
  wire N498;
  wire N362;
  wire N492;
  wire N427_pack_5;
  wire \u_uart/u_core/tx_out_rstpot_5892 ;
  wire N493;
  wire \u_fifo_a2b/rptr_n[11]_GND_4_o_xor_25_OUT<4> ;
  wire \u_fifo_a2b/rptr_n[11]_GND_4_o_xor_25_OUT<5> ;
  wire \u_rx_a/state_FSM_FFd1-In ;
  wire \u_rx_a/_n0167_inv ;
  wire \u_rx_a/state_FSM_FFd2-In ;
  wire \u_rx_a/m_tlast_5978 ;
  wire \u_rx_a/state[1]_GND_3_o_Mux_41_o ;
  wire \u_uart/Sh1472821_pack_6 ;
  wire \u_uart/GND_7_o_tx_busy_MUX_9398_o_pack_7 ;
  wire \u_uart/mstate_FSM_FFd1-In ;
  wire \u_uart/mstate_FSM_FFd2-In ;
  wire N475;
  wire N474;
  wire \u_tx_a/state[1]_GND_5_o_wide_mux_25_OUT<1> ;
  wire \u_tx_a/cur<6>_pack_2 ;
  wire \b2a_rd_data<6>_rt_6198 ;
  wire \b2a_rd_data<7>_rt_6193 ;
  wire \u_rx_a/dcnt<0>_pack_1 ;
  wire \u_rx_a/state[1]_dcnt[1]_wide_mux_43_OUT<0> ;
  wire \u_rx_a/state[1]_dcnt[1]_wide_mux_43_OUT<1> ;
  wire N504;
  wire N361;
  wire \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT43_6244 ;
  wire \u_uart/u_core/bitcnt<0>_pack_7 ;
  wire \u_uart/u_core/bitcnt[3]_bitcnt[3]_mux_13_OUT<0> ;
  wire \u_uart/u_core/bitcnt[3]_bitcnt[3]_mux_13_OUT<1> ;
  wire \u_uart/u_core/bitcnt<2>_pack_9 ;
  wire \u_uart/u_core/bitcnt[3]_bitcnt[3]_mux_13_OUT<2> ;
  wire \u_uart/u_core/bitcnt[3]_bitcnt[3]_mux_13_OUT<3> ;
  wire N491;
  wire N490;
  wire \u_uart/u_core/Mmux_tx_out_tx_start_MUX_249_o15 ;
  wire \u_fifo_a2b/cptr_gray_6_dpot1_6371 ;
  wire \u_fifo_a2b/cptr_gray_7_dpot1_6361 ;
  wire \u_fifo_a2b/cptr_gray_4_dpot1_6352 ;
  wire \u_fifo_a2b/cptr_gray_5_dpot1_6344 ;
  wire \u_fifo_a2b/cptr_gray_2_dpot1_6406 ;
  wire \u_fifo_a2b/cptr_gray_3_dpot1_6396 ;
  wire \u_fifo_a2b/cptr_gray_0_dpot1_6387 ;
  wire \u_fifo_a2b/cptr_gray_1_dpot1_6379 ;
  wire \u_fifo_a2b/cptr_gray_11_dpot1_6435 ;
  wire \u_fifo_a2b/cptr_gray_8_dpot1_6426 ;
  wire \u_fifo_a2b/cptr_gray_9_dpot1_6418 ;
  wire \u_fifo_a2b/cptr_gray_10_dpot1_6410 ;
  wire \u_uart/code[2]_GND_7_o_select_48_OUT<2> ;
  wire \u_uart/code[2]_GND_7_o_select_48_OUT<3> ;
  wire \u_uart/u_core/_n0061_inv ;
  wire N113;
  wire \u_uart/u_core/tx_busy_rstpot_6512 ;
  wire \u_fifo_a2b/drop_pack_1 ;
  wire \u_fifo_a2b/drop_rstpot_6574 ;
  wire \u_fifo_a2b/wptr_4_dpot_6610 ;
  wire \u_fifo_a2b/wptr_5_dpot_6602 ;
  wire \u_fifo_a2b/wptr_6_dpot_6594 ;
  wire \u_fifo_a2b/wptr_7_dpot_6584 ;
  wire \u_fifo_a2b/cptr_4_dpot1_6642 ;
  wire \u_fifo_a2b/cptr_5_dpot1_6635 ;
  wire \u_fifo_a2b/cptr_6_dpot1_6628 ;
  wire \u_fifo_a2b/cptr_7_dpot1_6619 ;
  wire \u_fifo_a2b/wptr_8_dpot_6678 ;
  wire \u_fifo_a2b/wptr_9_dpot_6670 ;
  wire \u_fifo_a2b/wptr_10_dpot_6662 ;
  wire \u_fifo_a2b/wptr_11_dpot_6652 ;
  wire \u_fifo_a2b/cptr_8_dpot1_6710 ;
  wire \u_fifo_a2b/cptr_9_dpot1_6703 ;
  wire \u_fifo_a2b/cptr_10_dpot1_6696 ;
  wire \u_fifo_a2b/cptr_11_dpot1_6687 ;
  wire \u_tx_a/bcnt_FSM_FFd1_pack_2 ;
  wire \u_tx_a/bcnt_FSM_FFd1-In ;
  wire \u_tx_a/bcnt_FSM_FFd2-In ;
  wire N277;
  wire N463;
  wire N462;
  wire N91;
  wire \u_tx_a/state[1]_pcnt[5]_wide_mux_27_OUT<3> ;
  wire \u_tx_a/state[1]_pcnt[5]_wide_mux_27_OUT<2> ;
  wire \u_uart/u_core/baudcnt[12]_baudcnt[12]_mux_14_OUT<11> ;
  wire \u_uart/u_core/baudcnt[12]_baudcnt[12]_mux_14_OUT<12> ;
  wire \u_tx_a/state_FSM_FFd1-In ;
  wire \u_tx_a/state_FSM_FFd2-In ;
  wire N273_pack_10;
  wire \u_tx_a/state[1]_pcnt[5]_wide_mux_27_OUT<4> ;
  wire \u_tx_a/state[1]_pcnt[5]_wide_mux_27_OUT<5> ;
  wire \u_tx_a/state[1]_pcnt[5]_wide_mux_27_OUT<0> ;
  wire \u_tx_a/state[1]_pcnt[5]_wide_mux_27_OUT<1> ;
  wire \u_uart/u_core/baudcnt[12]_baudcnt[12]_mux_14_OUT<6> ;
  wire \u_uart/u_core/baudcnt[12]_baudcnt[12]_mux_14_OUT<3> ;
  wire \u_uart/u_core/baudcnt[12]_baudcnt[12]_mux_14_OUT<4> ;
  wire \u_uart/u_core/baudcnt[12]_baudcnt[12]_mux_14_OUT<5> ;
  wire \u_fifo_a2b/wptr_0_dpot_7032 ;
  wire \u_fifo_a2b/wptr_1_dpot_7024 ;
  wire \u_fifo_a2b/wptr_2_dpot_7016 ;
  wire \u_fifo_a2b/wptr_3_dpot_7006 ;
  wire N469;
  wire N468;
  wire N100;
  wire N467;
  wire N466;
  wire N99;
  wire N465;
  wire N464;
  wire N92;
  wire \u_fifo_a2b/cptr_0_dpot1_7162 ;
  wire \u_fifo_a2b/cptr_1_dpot1_7155 ;
  wire \u_fifo_a2b/cptr_2_dpot1_7148 ;
  wire \u_fifo_a2b/cptr_3_dpot1_7139 ;
  wire \u_uart/u_core/baudcnt[12]_baudcnt[12]_mux_14_OUT<0> ;
  wire \u_uart/u_core/baudcnt[12]_baudcnt[12]_mux_14_OUT<1> ;
  wire \u_uart/u_core/baudcnt[12]_baudcnt[12]_mux_14_OUT<2> ;
  wire \u_uart/u_core/baudcnt[12]_baudcnt[12]_mux_14_OUT<10> ;
  wire \u_uart/u_core/baudcnt[12]_baudcnt[12]_mux_14_OUT<7> ;
  wire \u_uart/u_core/baudcnt[12]_baudcnt[12]_mux_14_OUT<8> ;
  wire \u_uart/u_core/baudcnt[12]_baudcnt[12]_mux_14_OUT<9> ;
  wire \NlwBufferSignal_u_fifo_a2b/Mram_mem/CLKA ;
  wire \NlwBufferSignal_u_fifo_a2b/Mram_mem/CLKB ;
  wire \NlwBufferSignal_u_fifo_b2a/Mram_mem/CLKA ;
  wire \NlwBufferSignal_u_fifo_b2a/Mram_mem/CLKB ;
  wire \NlwBufferSignal_u_fifo_b2a/Msub_used_cy<3>/DI<0> ;
  wire \NlwBufferSignal_u_fifo_b2a/Msub_used_cy<3>/DI<1> ;
  wire \NlwBufferSignal_u_fifo_b2a/Msub_used_cy<3>/DI<2> ;
  wire \NlwBufferSignal_u_fifo_b2a/Msub_used_cy<3>/DI<3> ;
  wire \NlwBufferSignal_u_fifo_b2a/Msub_used_cy<7>/DI<0> ;
  wire \NlwBufferSignal_u_fifo_b2a/Msub_used_cy<7>/DI<1> ;
  wire \NlwBufferSignal_u_fifo_b2a/Msub_used_cy<7>/DI<2> ;
  wire \NlwBufferSignal_u_fifo_b2a/Msub_used_cy<7>/DI<3> ;
  wire \NlwBufferSignal_u_fifo_b2a/Msub_used_xor<11>/DI<0> ;
  wire \NlwBufferSignal_u_fifo_b2a/Msub_used_xor<11>/DI<1> ;
  wire \NlwBufferSignal_u_fifo_b2a/Msub_used_xor<11>/DI<2> ;
  wire \NlwBufferSignal_u_rx_a/bcnt_3/CLK ;
  wire \NlwBufferSignal_u_rx_a/bcnt_2/CLK ;
  wire \NlwBufferSignal_u_rx_a/bcnt_1/CLK ;
  wire \NlwBufferSignal_u_rx_a/bcnt_0/CLK ;
  wire \NlwBufferSignal_u_rx_a/bcnt_7/CLK ;
  wire \NlwBufferSignal_u_rx_a/bcnt_6/CLK ;
  wire \NlwBufferSignal_u_rx_a/bcnt_5/CLK ;
  wire \NlwBufferSignal_u_rx_a/bcnt_4/CLK ;
  wire \NlwBufferSignal_u_rx_a/bcnt_11/CLK ;
  wire \NlwBufferSignal_u_rx_a/bcnt_10/CLK ;
  wire \NlwBufferSignal_u_rx_a/bcnt_9/CLK ;
  wire \NlwBufferSignal_u_rx_a/bcnt_8/CLK ;
  wire \NlwBufferSignal_u_rx_a/bcnt_15/CLK ;
  wire \NlwBufferSignal_u_rx_a/bcnt_14/CLK ;
  wire \NlwBufferSignal_u_rx_a/bcnt_13/CLK ;
  wire \NlwBufferSignal_u_rx_a/bcnt_12/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rptr_3/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rptr_2/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rptr_1/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rptr_0/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rptr_7/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rptr_6/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rptr_5/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rptr_4/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rptr_11/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rptr_10/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rptr_9/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rptr_8/CLK ;
  wire \NlwBufferSignal_u_engine/trigger_signature/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/Msub_used_cy<3>/DI<0> ;
  wire \NlwBufferSignal_u_fifo_a2b/Msub_used_cy<3>/DI<1> ;
  wire \NlwBufferSignal_u_fifo_a2b/Msub_used_cy<3>/DI<2> ;
  wire \NlwBufferSignal_u_fifo_a2b/Msub_used_cy<3>/DI<3> ;
  wire \NlwBufferSignal_u_fifo_a2b/Msub_used_cy<7>/DI<0> ;
  wire \NlwBufferSignal_u_fifo_a2b/Msub_used_cy<7>/DI<1> ;
  wire \NlwBufferSignal_u_fifo_a2b/Msub_used_cy<7>/DI<2> ;
  wire \NlwBufferSignal_u_fifo_a2b/Msub_used_cy<7>/DI<3> ;
  wire \NlwBufferSignal_u_fifo_a2b/Msub_used_xor<11>/DI<0> ;
  wire \NlwBufferSignal_u_fifo_a2b/Msub_used_xor<11>/DI<1> ;
  wire \NlwBufferSignal_u_fifo_a2b/Msub_used_xor<11>/DI<2> ;
  wire \NlwBufferSignal_u_fifo_b2a/rptr_3/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rptr_2/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rptr_1/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rptr_0/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rptr_7/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rptr_6/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rptr_5/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rptr_4/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rptr_11/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rptr_10/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rptr_9/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rptr_8/CLK ;
  wire \NlwBufferSignal_por_cnt_3/CLK ;
  wire \NlwBufferSignal_por_cnt_2/CLK ;
  wire \NlwBufferSignal_por_cnt_1/CLK ;
  wire \NlwBufferSignal_por_cnt_0/CLK ;
  wire \NlwBufferSignal_por_cnt_7/CLK ;
  wire \NlwBufferSignal_por_cnt_6/CLK ;
  wire \NlwBufferSignal_por_cnt_5/CLK ;
  wire \NlwBufferSignal_por_cnt_4/CLK ;
  wire \NlwBufferSignal_phy_a_tx_en_OBUF/I ;
  wire \NlwBufferSignal_phy_b_tx_en_OBUF/I ;
  wire \NlwBufferSignal_phy_a_txd_0_OBUF/I ;
  wire \NlwBufferSignal_phy_a_txd_1_OBUF/I ;
  wire \NlwBufferSignal_phy_b_txd_0_OBUF/I ;
  wire \NlwBufferSignal_phy_b_txd_1_OBUF/I ;
  wire \NlwBufferSignal_uart_txd_OBUF/I ;
  wire \NlwBufferSignal_u_tx_a/txen_r/CLK ;
  wire \NlwBufferSignal_u_tx_a/txen_r/IN ;
  wire \NlwBufferSignal_u_tx_b/txen_r/CLK ;
  wire \NlwBufferSignal_u_tx_b/txen_r/IN ;
  wire \NlwBufferSignal_u_rx_a/crs_r/CLK ;
  wire \NlwBufferSignal_u_rx_b/crs_r/CLK ;
  wire \NlwBufferSignal_u_rx_a/rxd_r_0/CLK ;
  wire \NlwBufferSignal_u_rx_a/rxd_r_1/CLK ;
  wire \NlwBufferSignal_u_tx_a/txd_r_0/CLK ;
  wire \NlwBufferSignal_u_tx_a/txd_r_0/IN ;
  wire \NlwBufferSignal_u_tx_a/txd_r_1/CLK ;
  wire \NlwBufferSignal_u_tx_a/txd_r_1/IN ;
  wire \NlwBufferSignal_u_rx_b/rxd_r_0/CLK ;
  wire \NlwBufferSignal_u_rx_b/rxd_r_1/CLK ;
  wire \NlwBufferSignal_u_tx_b/txd_r_0/CLK ;
  wire \NlwBufferSignal_u_tx_b/txd_r_0/IN ;
  wire \NlwBufferSignal_u_tx_b/txd_r_1/CLK ;
  wire \NlwBufferSignal_u_tx_b/txd_r_1/IN ;
  wire \NlwBufferSignal_phy_a_ref_clk_BUFGP/BUFG/IN ;
  wire \NlwBufferSignal_clk_100_BUFGP/BUFG/IN ;
  wire \NlwBufferSignal_phy_b_ref_clk_BUFGP/BUFG/IN ;
  wire \NlwBufferSignal_u_engine/syn_cnt_6/CLK ;
  wire \NlwBufferSignal_u_engine/syn_cnt_5/CLK ;
  wire \NlwBufferSignal_u_engine/syn_cnt_4/CLK ;
  wire \NlwBufferSignal_u_engine/syn_cnt_3/CLK ;
  wire \NlwBufferSignal_u_engine/win_cnt_3/CLK ;
  wire \NlwBufferSignal_u_engine/win_cnt_2/CLK ;
  wire \NlwBufferSignal_u_engine/win_cnt_1/CLK ;
  wire \NlwBufferSignal_u_engine/win_cnt_0/CLK ;
  wire \NlwBufferSignal_u_engine/win_cnt_7/CLK ;
  wire \NlwBufferSignal_u_engine/win_cnt_6/CLK ;
  wire \NlwBufferSignal_u_engine/win_cnt_5/CLK ;
  wire \NlwBufferSignal_u_engine/win_cnt_4/CLK ;
  wire \NlwBufferSignal_u_engine/win_cnt_15/CLK ;
  wire \NlwBufferSignal_u_engine/win_cnt_14/CLK ;
  wire \NlwBufferSignal_u_engine/win_cnt_13/CLK ;
  wire \NlwBufferSignal_u_engine/win_cnt_12/CLK ;
  wire \NlwBufferSignal_u_engine/win_cnt_18/CLK ;
  wire \NlwBufferSignal_u_engine/win_cnt_17/CLK ;
  wire \NlwBufferSignal_u_engine/win_cnt_16/CLK ;
  wire \NlwBufferSignal_u_engine/win_cnt_11/CLK ;
  wire \NlwBufferSignal_u_engine/win_cnt_10/CLK ;
  wire \NlwBufferSignal_u_engine/win_cnt_9/CLK ;
  wire \NlwBufferSignal_u_engine/win_cnt_8/CLK ;
  wire \NlwBufferSignal_u_engine/syn_cnt_2/CLK ;
  wire \NlwBufferSignal_u_engine/syn_cnt_1/CLK ;
  wire \NlwBufferSignal_u_engine/syn_cnt_0/CLK ;
  wire \NlwBufferSignal_u_rx_b/hold_d_7/CLK ;
  wire \NlwBufferSignal_u_rx_b/hold_d_7/IN ;
  wire \NlwBufferSignal_u_rx_b/hold_d_6/CLK ;
  wire \NlwBufferSignal_u_rx_b/hold_d_6/IN ;
  wire \NlwBufferSignal_u_rx_b/hold_d_5/CLK ;
  wire \NlwBufferSignal_u_rx_b/hold_d_5/IN ;
  wire \NlwBufferSignal_u_rx_b/hold_d_4/CLK ;
  wire \NlwBufferSignal_u_rx_b/hold_d_4/IN ;
  wire \NlwBufferSignal_u_rx_b/shreg_7/CLK ;
  wire \NlwBufferSignal_u_rx_b/shreg_7/IN ;
  wire \NlwBufferSignal_u_rx_b/shreg_6/CLK ;
  wire \NlwBufferSignal_u_rx_b/shreg_6/IN ;
  wire \NlwBufferSignal_u_rx_b/hold_v/CLK ;
  wire \NlwBufferSignal_u_rx_b/hold_d_3/CLK ;
  wire \NlwBufferSignal_u_rx_b/hold_d_3/IN ;
  wire \NlwBufferSignal_u_rx_b/hold_d_2/CLK ;
  wire \NlwBufferSignal_u_rx_b/hold_d_2/IN ;
  wire \NlwBufferSignal_u_rx_b/hold_d_1/CLK ;
  wire \NlwBufferSignal_u_rx_b/hold_d_1/IN ;
  wire \NlwBufferSignal_u_rx_b/hold_d_0/CLK ;
  wire \NlwBufferSignal_u_rx_b/hold_d_0/IN ;
  wire \NlwBufferSignal_u_rx_b/m_tlast/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s2_7/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s2_7/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s2_6/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s2_6/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s2_5/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s2_5/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s2_4/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s2_4/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s1_7/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s1_7/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s1_6/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s1_6/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s1_5/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s1_5/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s1_4/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s1_4/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s2_11/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s2_11/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s2_10/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s2_10/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s2_9/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s2_9/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s2_8/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s2_8/IN ;
  wire \NlwBufferSignal_u_engine/win_21/CLK ;
  wire \NlwBufferSignal_u_engine/win_22/CLK ;
  wire \NlwBufferSignal_u_engine/win_19/CLK ;
  wire \NlwBufferSignal_u_engine/win_20/CLK ;
  wire \NlwBufferSignal_u_engine/win_18/CLK ;
  wire \NlwBufferSignal_u_engine/win_27/CLK ;
  wire \NlwBufferSignal_u_engine/win_16/CLK ;
  wire \NlwBufferSignal_u_engine/win_17/CLK ;
  wire \NlwBufferSignal_u_rx_b/state_FSM_FFd2/CLK ;
  wire \NlwBufferSignal_u_rx_b/state_FSM_FFd1/CLK ;
  wire \NlwBufferSignal_u_rx_b/crs_prev/CLK ;
  wire \NlwBufferSignal_u_rx_b/crs_prev/IN ;
  wire \NlwBufferSignal_u_rx_b/m_tvalid/CLK ;
  wire \NlwBufferSignal_u_rx_b/shreg_5/CLK ;
  wire \NlwBufferSignal_u_rx_b/shreg_5/IN ;
  wire \NlwBufferSignal_u_rx_b/shreg_4/CLK ;
  wire \NlwBufferSignal_u_rx_b/shreg_4/IN ;
  wire \NlwBufferSignal_u_rx_b/shreg_3/CLK ;
  wire \NlwBufferSignal_u_rx_b/shreg_3/IN ;
  wire \NlwBufferSignal_u_rx_b/shreg_2/CLK ;
  wire \NlwBufferSignal_u_rx_b/shreg_2/IN ;
  wire \NlwBufferSignal_u_engine/win_37/CLK ;
  wire \NlwBufferSignal_u_engine/win_38/CLK ;
  wire \NlwBufferSignal_u_engine/win_36/CLK ;
  wire \NlwBufferSignal_u_engine/win_45/CLK ;
  wire \NlwBufferSignal_u_engine/win_34/CLK ;
  wire \NlwBufferSignal_u_engine/win_35/CLK ;
  wire \NlwBufferSignal_u_engine/win_32/CLK ;
  wire \NlwBufferSignal_u_engine/win_33/CLK ;
  wire \NlwBufferSignal_u_uart/hb_cnt_6/CLK ;
  wire \NlwBufferSignal_u_uart/hb_cnt_5/CLK ;
  wire \NlwBufferSignal_u_uart/hb_cnt_4/CLK ;
  wire \NlwBufferSignal_u_uart/hb_cnt_3/CLK ;
  wire \NlwBufferSignal_u_uart/hb_cnt_14/CLK ;
  wire \NlwBufferSignal_u_uart/hb_cnt_13/CLK ;
  wire \NlwBufferSignal_u_uart/hb_cnt_12/CLK ;
  wire \NlwBufferSignal_u_uart/hb_cnt_11/CLK ;
  wire \NlwBufferSignal_u_uart/hb_cnt_27/CLK ;
  wire \NlwBufferSignal_u_uart/hb_cnt_22/CLK ;
  wire \NlwBufferSignal_u_uart/hb_cnt_21/CLK ;
  wire \NlwBufferSignal_u_uart/hb_cnt_20/CLK ;
  wire \NlwBufferSignal_u_uart/hb_cnt_19/CLK ;
  wire \NlwBufferSignal_u_uart/hb_cnt_26/CLK ;
  wire \NlwBufferSignal_u_uart/hb_cnt_25/CLK ;
  wire \NlwBufferSignal_u_uart/hb_cnt_24/CLK ;
  wire \NlwBufferSignal_u_uart/hb_cnt_23/CLK ;
  wire \NlwBufferSignal_u_tx_b/state_FSM_FFd2/CLK ;
  wire \NlwBufferSignal_u_tx_b/state_FSM_FFd1/CLK ;
  wire \NlwBufferSignal_u_rx_b/dcnt_1/CLK ;
  wire \NlwBufferSignal_u_rx_b/dcnt_0/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cptr_7/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cptr_6/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cptr_5/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cptr_4/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cptr_11/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cptr_10/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cptr_9/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cptr_8/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s1_3/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s1_3/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s1_2/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s1_2/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s1_1/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s1_1/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s1_0/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s1_0/IN ;
  wire \NlwBufferSignal_u_engine/win_30/CLK ;
  wire \NlwBufferSignal_u_engine/win_31/CLK ;
  wire \NlwBufferSignal_u_engine/win_28/CLK ;
  wire \NlwBufferSignal_u_engine/win_29/CLK ;
  wire \NlwBufferSignal_u_engine/win_25/CLK ;
  wire \NlwBufferSignal_u_engine/win_26/CLK ;
  wire \NlwBufferSignal_u_engine/win_23/CLK ;
  wire \NlwBufferSignal_u_engine/win_24/CLK ;
  wire \NlwBufferSignal_u_engine/win_3/CLK ;
  wire \NlwBufferSignal_u_engine/win_2/CLK ;
  wire \NlwBufferSignal_u_engine/win_2/IN ;
  wire \NlwBufferSignal_u_engine/win_1/CLK ;
  wire \NlwBufferSignal_u_engine/win_0/CLK ;
  wire \NlwBufferSignal_u_engine/win_0/IN ;
  wire \NlwBufferSignal_u_engine/proto_3/CLK ;
  wire \NlwBufferSignal_u_engine/proto_3/IN ;
  wire \NlwBufferSignal_u_engine/proto_2/CLK ;
  wire \NlwBufferSignal_u_engine/proto_2/IN ;
  wire \NlwBufferSignal_u_engine/proto_1/CLK ;
  wire \NlwBufferSignal_u_engine/proto_1/IN ;
  wire \NlwBufferSignal_u_engine/proto_0/CLK ;
  wire \NlwBufferSignal_u_engine/syn_cnt_7/CLK ;
  wire \NlwBufferSignal_u_uart/hb_cnt_10/CLK ;
  wire \NlwBufferSignal_u_uart/hb_cnt_9/CLK ;
  wire \NlwBufferSignal_u_uart/hb_cnt_8/CLK ;
  wire \NlwBufferSignal_u_uart/hb_cnt_7/CLK ;
  wire \NlwBufferSignal_u_uart/hb_cnt_2/CLK ;
  wire \NlwBufferSignal_u_uart/hb_cnt_1/CLK ;
  wire \NlwBufferSignal_u_uart/hb_cnt_0/CLK ;
  wire \NlwBufferSignal_u_uart/hb_cnt_18/CLK ;
  wire \NlwBufferSignal_u_uart/hb_cnt_17/CLK ;
  wire \NlwBufferSignal_u_uart/hb_cnt_16/CLK ;
  wire \NlwBufferSignal_u_uart/hb_cnt_15/CLK ;
  wire \NlwBufferSignal_u_uart/tx_data_6/CLK ;
  wire \NlwBufferSignal_u_tx_b/pcnt_5/CLK ;
  wire \NlwBufferSignal_u_tx_b/pcnt_4/CLK ;
  wire \NlwBufferSignal_u_tx_b/pcnt_3/CLK ;
  wire \NlwBufferSignal_u_tx_b/pcnt_2/CLK ;
  wire \NlwBufferSignal_u_rx_b/m_tdata_7/CLK ;
  wire \NlwBufferSignal_u_rx_b/m_tdata_7/IN ;
  wire \NlwBufferSignal_u_rx_b/m_tdata_6/CLK ;
  wire \NlwBufferSignal_u_rx_b/m_tdata_6/IN ;
  wire \NlwBufferSignal_u_rx_b/m_tdata_5/CLK ;
  wire \NlwBufferSignal_u_rx_b/m_tdata_5/IN ;
  wire \NlwBufferSignal_u_rx_b/m_tdata_4/CLK ;
  wire \NlwBufferSignal_u_rx_b/m_tdata_4/IN ;
  wire \NlwBufferSignal_u_rx_b/m_tdata_3/CLK ;
  wire \NlwBufferSignal_u_rx_b/m_tdata_3/IN ;
  wire \NlwBufferSignal_u_rx_b/m_tdata_2/CLK ;
  wire \NlwBufferSignal_u_rx_b/m_tdata_2/IN ;
  wire \NlwBufferSignal_u_rx_b/m_tdata_1/CLK ;
  wire \NlwBufferSignal_u_rx_b/m_tdata_1/IN ;
  wire \NlwBufferSignal_u_rx_b/m_tdata_0/CLK ;
  wire \NlwBufferSignal_u_rx_b/m_tdata_0/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/wptr_7/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/wptr_6/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/wptr_5/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/wptr_4/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/wptr_11/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/wptr_10/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/wptr_9/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/wptr_8/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s2_3/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s2_3/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s2_2/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s2_2/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s2_1/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s2_1/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s2_0/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s2_0/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s2_3/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s2_3/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s2_2/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s2_2/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s2_1/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s2_1/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s2_0/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s2_0/IN ;
  wire \NlwBufferSignal_u_engine/win_14/CLK ;
  wire \NlwBufferSignal_u_engine/win_15/CLK ;
  wire \NlwBufferSignal_u_engine/win_12/CLK ;
  wire \NlwBufferSignal_u_engine/win_13/CLK ;
  wire \NlwBufferSignal_u_engine/win_10/CLK ;
  wire \NlwBufferSignal_u_engine/win_11/CLK ;
  wire \NlwBufferSignal_u_engine/win_8/CLK ;
  wire \NlwBufferSignal_u_engine/win_9/CLK ;
  wire \NlwBufferSignal_u_engine/win_46/CLK ;
  wire \NlwBufferSignal_u_engine/win_47/CLK ;
  wire \NlwBufferSignal_u_engine/win_43/CLK ;
  wire \NlwBufferSignal_u_engine/win_44/CLK ;
  wire \NlwBufferSignal_u_engine/win_41/CLK ;
  wire \NlwBufferSignal_u_engine/win_42/CLK ;
  wire \NlwBufferSignal_u_engine/win_39/CLK ;
  wire \NlwBufferSignal_u_engine/win_40/CLK ;
  wire \NlwBufferSignal_u_engine/sig_done/CLK ;
  wire \NlwBufferSignal_u_engine/win_7/CLK ;
  wire \NlwBufferSignal_u_engine/win_7/IN ;
  wire \NlwBufferSignal_u_engine/win_6/CLK ;
  wire \NlwBufferSignal_u_engine/win_6/IN ;
  wire \NlwBufferSignal_u_engine/win_5/CLK ;
  wire \NlwBufferSignal_u_engine/win_5/IN ;
  wire \NlwBufferSignal_u_engine/win_4/CLK ;
  wire \NlwBufferSignal_u_engine/proto_7/CLK ;
  wire \NlwBufferSignal_u_engine/proto_7/IN ;
  wire \NlwBufferSignal_u_engine/proto_6/CLK ;
  wire \NlwBufferSignal_u_engine/proto_6/IN ;
  wire \NlwBufferSignal_u_engine/proto_5/CLK ;
  wire \NlwBufferSignal_u_engine/proto_5/IN ;
  wire \NlwBufferSignal_u_engine/proto_4/CLK ;
  wire \NlwBufferSignal_u_engine/proto_4/IN ;
  wire \NlwBufferSignal_u_engine/trigger_syn_flood/CLK ;
  wire \NlwBufferSignal_u_engine/syn_flood_active/CLK ;
  wire \NlwBufferSignal_u_uart/tgl_a_3/CLK ;
  wire \NlwBufferSignal_u_uart/tgl_a_2/CLK ;
  wire \NlwBufferSignal_u_uart/tgl_a_1/CLK ;
  wire \NlwBufferSignal_u_uart/tgl_a_0/CLK ;
  wire \NlwBufferSignal_u_uart/t1_3/CLK ;
  wire \NlwBufferSignal_u_uart/t1_3/IN ;
  wire \NlwBufferSignal_u_uart/t2_3/CLK ;
  wire \NlwBufferSignal_u_uart/t1_2/CLK ;
  wire \NlwBufferSignal_u_uart/t1_2/IN ;
  wire \NlwBufferSignal_u_uart/t2_2/CLK ;
  wire \NlwBufferSignal_u_uart/t1_1/CLK ;
  wire \NlwBufferSignal_u_uart/t1_1/IN ;
  wire \NlwBufferSignal_u_uart/t2_1/CLK ;
  wire \NlwBufferSignal_u_uart/t1_0/CLK ;
  wire \NlwBufferSignal_u_uart/t1_0/IN ;
  wire \NlwBufferSignal_u_uart/t2_0/CLK ;
  wire \NlwBufferSignal_u_tx_b/bcnt_FSM_FFd2/CLK ;
  wire \NlwBufferSignal_u_tx_b/bcnt_FSM_FFd1/CLK ;
  wire \NlwBufferSignal_u_tx_b/cur_last/CLK ;
  wire \NlwBufferSignal_u_tx_b/cur_last/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/rptr_gray_r_5/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rptr_gray_r_4/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s1_11/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s1_11/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s1_10/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s1_10/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s1_9/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s1_9/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s1_8/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s1_8/IN ;
  wire \NlwBufferSignal_u_tx_b/pcnt_1/CLK ;
  wire \NlwBufferSignal_u_tx_b/pcnt_0/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/wptr_3/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/wptr_2/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/wptr_1/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/wptr_0/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cptr_gray_3/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cptr_gray_2/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cptr_gray_1/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cptr_gray_0/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s1_3/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s1_3/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s1_2/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s1_2/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s1_1/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s1_1/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s1_0/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rg_s1_0/IN ;
  wire \NlwBufferSignal_u_engine/port_done/CLK ;
  wire \NlwBufferSignal_u_engine/trigger_port_scan/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cptr_3/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cptr_2/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cptr_1/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cptr_0/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cptr_gray_9/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cptr_gray_8/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cptr_gray_7/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cptr_gray_6/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cptr_gray_5/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cptr_gray_4/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s2_7/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s2_7/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s2_6/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s2_6/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s2_5/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s2_5/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s2_4/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s2_4/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/rptr_gray_r_7/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rptr_gray_r_6/CLK ;
  wire \NlwBufferSignal_u_engine/idx_dport_lo_6/CLK ;
  wire \NlwBufferSignal_u_engine/idx_dport_lo_5/CLK ;
  wire \NlwBufferSignal_u_engine/idx_dport_lo_4/CLK ;
  wire \NlwBufferSignal_u_engine/idx_dport_lo_3/CLK ;
  wire \NlwBufferSignal_u_engine/idx_dport_lo_3/IN ;
  wire \NlwBufferSignal_u_engine/idx_dport_lo_2/CLK ;
  wire \NlwBufferSignal_u_engine/idx_dport_lo_2/IN ;
  wire \NlwBufferSignal_u_uart/t3_3/CLK ;
  wire \NlwBufferSignal_u_uart/t3_3/IN ;
  wire \NlwBufferSignal_u_uart/t3_2/CLK ;
  wire \NlwBufferSignal_u_uart/t3_2/IN ;
  wire \NlwBufferSignal_u_uart/t3_1/CLK ;
  wire \NlwBufferSignal_u_uart/t3_1/IN ;
  wire \NlwBufferSignal_u_uart/t3_0/CLK ;
  wire \NlwBufferSignal_u_uart/t3_0/IN ;
  wire \NlwBufferSignal_u_uart/tx_data_1/CLK ;
  wire \NlwBufferSignal_u_uart/tx_data_0/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cg_s2_3/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cg_s2_3/IN ;
  wire \NlwBufferSignal_u_fifo_a2b/cg_s2_2/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cg_s2_2/IN ;
  wire \NlwBufferSignal_u_fifo_a2b/cg_s2_1/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cg_s2_1/IN ;
  wire \NlwBufferSignal_u_fifo_a2b/cg_s2_0/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cg_s2_0/IN ;
  wire \NlwBufferSignal_u_fifo_a2b/cg_s1_3/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cg_s1_3/IN ;
  wire \NlwBufferSignal_u_fifo_a2b/cg_s1_2/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cg_s1_2/IN ;
  wire \NlwBufferSignal_u_fifo_a2b/cg_s1_1/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cg_s1_1/IN ;
  wire \NlwBufferSignal_u_fifo_a2b/cg_s1_0/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cg_s1_0/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/drop/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cptr_gray_11/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cptr_gray_10/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s1_7/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s1_7/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s1_6/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s1_6/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s1_5/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s1_5/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s1_4/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s1_4/IN ;
  wire \NlwBufferSignal_u_engine/dport_hi_7/CLK ;
  wire \NlwBufferSignal_u_engine/dport_hi_7/IN ;
  wire \NlwBufferSignal_u_engine/dport_hi_6/CLK ;
  wire \NlwBufferSignal_u_engine/dport_hi_6/IN ;
  wire \NlwBufferSignal_u_engine/dport_hi_5/CLK ;
  wire \NlwBufferSignal_u_engine/dport_hi_5/IN ;
  wire \NlwBufferSignal_u_engine/dport_hi_4/CLK ;
  wire \NlwBufferSignal_u_engine/dport_hi_4/IN ;
  wire \NlwBufferSignal_u_engine/dport_hi_3/CLK ;
  wire \NlwBufferSignal_u_engine/dport_hi_3/IN ;
  wire \NlwBufferSignal_u_engine/dport_hi_2/CLK ;
  wire \NlwBufferSignal_u_engine/dport_hi_2/IN ;
  wire \NlwBufferSignal_u_engine/dport_hi_1/CLK ;
  wire \NlwBufferSignal_u_engine/dport_hi_1/IN ;
  wire \NlwBufferSignal_u_engine/dport_hi_0/CLK ;
  wire \NlwBufferSignal_u_engine/dport_hi_0/IN ;
  wire \NlwBufferSignal_u_engine/ihl_3/CLK ;
  wire \NlwBufferSignal_u_engine/ihl_3/IN ;
  wire \NlwBufferSignal_u_engine/ihl_2/CLK ;
  wire \NlwBufferSignal_u_engine/ihl_2/IN ;
  wire \NlwBufferSignal_u_engine/ihl_1/CLK ;
  wire \NlwBufferSignal_u_engine/ihl_1/IN ;
  wire \NlwBufferSignal_u_engine/ihl_0/CLK ;
  wire \NlwBufferSignal_u_engine/ihl_0/IN ;
  wire \NlwBufferSignal_u_engine/idx_flags_6/CLK ;
  wire \NlwBufferSignal_u_engine/idx_flags_5/CLK ;
  wire \NlwBufferSignal_u_engine/idx_flags_4/CLK ;
  wire \NlwBufferSignal_u_engine/idx_flags_3/CLK ;
  wire \NlwBufferSignal_u_uart/cq_r_2/CLK ;
  wire \NlwBufferSignal_u_uart/cq_r_3/CLK ;
  wire \NlwBufferSignal_u_uart/cq_r_1/CLK ;
  wire \NlwBufferSignal_u_uart/cq_r_0/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rptr_gray_r_3/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rptr_gray_r_2/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rptr_gray_r_1/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rptr_gray_r_0/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s2_11/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s2_11/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s2_10/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s2_10/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s2_9/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s2_9/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s2_8/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s2_8/IN ;
  wire \NlwBufferSignal_u_engine/len_gt/CLK ;
  wire \NlwBufferSignal_u_engine/frag_ok/CLK ;
  wire \NlwBufferSignal_u_engine/ihl_ok/CLK ;
  wire \NlwBufferSignal_u_engine/is_ipv4/CLK ;
  wire \NlwBufferSignal_u_engine/et_hi_ok/CLK ;
  wire \NlwBufferSignal_u_rx_a/m_tindex_7/CLK ;
  wire \NlwBufferSignal_u_rx_a/m_tindex_7/IN ;
  wire \NlwBufferSignal_u_rx_a/m_tindex_6/CLK ;
  wire \NlwBufferSignal_u_rx_a/m_tindex_6/IN ;
  wire \NlwBufferSignal_u_rx_a/m_tindex_5/CLK ;
  wire \NlwBufferSignal_u_rx_a/m_tindex_5/IN ;
  wire \NlwBufferSignal_u_rx_a/m_tindex_4/CLK ;
  wire \NlwBufferSignal_u_rx_a/m_tindex_4/IN ;
  wire \NlwBufferSignal_u_uart/Mram_cq1/SP/RADR2 ;
  wire \NlwBufferSignal_u_uart/Mram_cq1/SP/RADR3 ;
  wire \NlwBufferSignal_u_uart/Mram_cq1/SP/RADR4 ;
  wire \NlwBufferSignal_u_uart/Mram_cq1/SP/CLK ;
  wire \NlwBufferSignal_u_uart/Mram_cq1/SP/IN ;
  wire \NlwBufferSignal_u_uart/Mram_cq1/SP/WADR2 ;
  wire \NlwBufferSignal_u_uart/Mram_cq1/SP/WADR3 ;
  wire \NlwBufferSignal_u_uart/Mram_cq1/SP/WADR4 ;
  wire \NlwBufferSignal_u_uart/Mram_cq1/SP/WE ;
  wire \NlwBufferSignal_u_uart/Mram_cq2/SP/RADR2 ;
  wire \NlwBufferSignal_u_uart/Mram_cq2/SP/RADR3 ;
  wire \NlwBufferSignal_u_uart/Mram_cq2/SP/RADR4 ;
  wire \NlwBufferSignal_u_uart/Mram_cq2/SP/CLK ;
  wire \NlwBufferSignal_u_uart/Mram_cq2/SP/IN ;
  wire \NlwBufferSignal_u_uart/Mram_cq2/SP/WADR2 ;
  wire \NlwBufferSignal_u_uart/Mram_cq2/SP/WADR3 ;
  wire \NlwBufferSignal_u_uart/Mram_cq2/SP/WADR4 ;
  wire \NlwBufferSignal_u_uart/Mram_cq2/SP/WE ;
  wire \NlwBufferSignal_u_uart/Mram_cq1/DP/RADR2 ;
  wire \NlwBufferSignal_u_uart/Mram_cq1/DP/RADR3 ;
  wire \NlwBufferSignal_u_uart/Mram_cq1/DP/RADR4 ;
  wire \NlwBufferSignal_u_uart/Mram_cq1/DP/CLK ;
  wire \NlwBufferSignal_u_uart/Mram_cq1/DP/IN ;
  wire \NlwBufferSignal_u_uart/Mram_cq1/DP/WADR2 ;
  wire \NlwBufferSignal_u_uart/Mram_cq1/DP/WADR3 ;
  wire \NlwBufferSignal_u_uart/Mram_cq1/DP/WADR4 ;
  wire \NlwBufferSignal_u_uart/Mram_cq1/DP/WE ;
  wire \NlwBufferSignal_u_uart/Mram_cq2/DP/RADR2 ;
  wire \NlwBufferSignal_u_uart/Mram_cq2/DP/RADR3 ;
  wire \NlwBufferSignal_u_uart/Mram_cq2/DP/RADR4 ;
  wire \NlwBufferSignal_u_uart/Mram_cq2/DP/CLK ;
  wire \NlwBufferSignal_u_uart/Mram_cq2/DP/IN ;
  wire \NlwBufferSignal_u_uart/Mram_cq2/DP/WADR2 ;
  wire \NlwBufferSignal_u_uart/Mram_cq2/DP/WADR3 ;
  wire \NlwBufferSignal_u_uart/Mram_cq2/DP/WADR4 ;
  wire \NlwBufferSignal_u_uart/Mram_cq2/DP/WE ;
  wire \NlwBufferSignal_u_fifo_a2b/cg_s2_11/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cg_s2_11/IN ;
  wire \NlwBufferSignal_u_fifo_a2b/cg_s2_10/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cg_s2_10/IN ;
  wire \NlwBufferSignal_u_fifo_a2b/cg_s2_9/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cg_s2_9/IN ;
  wire \NlwBufferSignal_u_fifo_a2b/cg_s2_8/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cg_s2_8/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s1_11/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s1_11/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s1_10/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s1_10/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s1_9/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s1_9/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s1_8/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/cg_s1_8/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/rptr_gray_r_11/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rptr_gray_r_10/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rptr_gray_r_9/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rptr_gray_r_8/CLK ;
  wire \NlwBufferSignal_u_rx_a/m_tdata_3/CLK ;
  wire \NlwBufferSignal_u_rx_a/m_tdata_3/IN ;
  wire \NlwBufferSignal_u_rx_a/m_tdata_2/CLK ;
  wire \NlwBufferSignal_u_rx_a/m_tdata_2/IN ;
  wire \NlwBufferSignal_u_rx_a/m_tdata_1/CLK ;
  wire \NlwBufferSignal_u_rx_a/m_tdata_1/IN ;
  wire \NlwBufferSignal_u_rx_a/m_tdata_0/CLK ;
  wire \NlwBufferSignal_u_rx_a/m_tdata_0/IN ;
  wire \NlwBufferSignal_u_engine/frag_hi_3/CLK ;
  wire \NlwBufferSignal_u_engine/frag_hi_3/IN ;
  wire \NlwBufferSignal_u_engine/frag_hi_4/CLK ;
  wire \NlwBufferSignal_u_engine/frag_hi_2/CLK ;
  wire \NlwBufferSignal_u_engine/frag_hi_2/IN ;
  wire \NlwBufferSignal_u_engine/frag_hi_1/CLK ;
  wire \NlwBufferSignal_u_engine/frag_hi_1/IN ;
  wire \NlwBufferSignal_u_engine/frag_hi_0/CLK ;
  wire \NlwBufferSignal_u_engine/frag_hi_0/IN ;
  wire \NlwBufferSignal_u_engine/ver_ok/CLK ;
  wire \NlwBufferSignal_u_engine/icmp_done/CLK ;
  wire \NlwBufferSignal_u_engine/trigger_icmp/CLK ;
  wire \NlwBufferSignal_u_rx_a/m_tindex_11/CLK ;
  wire \NlwBufferSignal_u_rx_a/m_tindex_11/IN ;
  wire \NlwBufferSignal_u_rx_a/m_tindex_10/CLK ;
  wire \NlwBufferSignal_u_rx_a/m_tindex_10/IN ;
  wire \NlwBufferSignal_u_rx_a/m_tindex_9/CLK ;
  wire \NlwBufferSignal_u_rx_a/m_tindex_9/IN ;
  wire \NlwBufferSignal_u_rx_a/m_tindex_8/CLK ;
  wire \NlwBufferSignal_u_rx_a/m_tindex_8/IN ;
  wire \NlwBufferSignal_u_tx_b/cur_7/CLK ;
  wire \NlwBufferSignal_u_tx_b/cur_7/IN ;
  wire \NlwBufferSignal_u_tx_b/cur_6/CLK ;
  wire \NlwBufferSignal_u_tx_b/cur_6/IN ;
  wire \NlwBufferSignal_u_tx_b/cur_5/CLK ;
  wire \NlwBufferSignal_u_tx_b/cur_5/IN ;
  wire \NlwBufferSignal_u_tx_b/cur_4/CLK ;
  wire \NlwBufferSignal_u_tx_b/cur_4/IN ;
  wire \NlwBufferSignal_u_tx_b/cur_3/CLK ;
  wire \NlwBufferSignal_u_tx_b/cur_3/IN ;
  wire \NlwBufferSignal_u_tx_b/cur_2/CLK ;
  wire \NlwBufferSignal_u_tx_b/cur_2/IN ;
  wire \NlwBufferSignal_u_fifo_a2b/rptr_gray_r_11/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rptr_gray_r_10/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cg_s2_7/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cg_s2_7/IN ;
  wire \NlwBufferSignal_u_fifo_a2b/cg_s1_7/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cg_s2_6/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cg_s2_6/IN ;
  wire \NlwBufferSignal_u_fifo_a2b/cg_s1_6/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cg_s2_5/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cg_s2_5/IN ;
  wire \NlwBufferSignal_u_fifo_a2b/cg_s1_5/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cg_s2_4/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cg_s2_4/IN ;
  wire \NlwBufferSignal_u_fifo_a2b/cg_s1_4/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cg_s1_11/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cg_s1_11/IN ;
  wire \NlwBufferSignal_u_fifo_a2b/cg_s1_10/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cg_s1_10/IN ;
  wire \NlwBufferSignal_u_fifo_a2b/cg_s1_9/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cg_s1_9/IN ;
  wire \NlwBufferSignal_u_fifo_a2b/cg_s1_8/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cg_s1_8/IN ;
  wire \NlwBufferSignal_u_fifo_b2a/rptr_gray_r_3/CLK ;
  wire \NlwBufferSignal_u_fifo_b2a/rptr_gray_r_2/CLK ;
  wire \NlwBufferSignal_u_rx_a/shreg_5/CLK ;
  wire \NlwBufferSignal_u_rx_a/shreg_5/IN ;
  wire \NlwBufferSignal_u_rx_a/shreg_4/CLK ;
  wire \NlwBufferSignal_u_rx_a/shreg_4/IN ;
  wire \NlwBufferSignal_u_rx_a/shreg_3/CLK ;
  wire \NlwBufferSignal_u_rx_a/shreg_3/IN ;
  wire \NlwBufferSignal_u_rx_a/shreg_2/CLK ;
  wire \NlwBufferSignal_u_rx_a/shreg_2/IN ;
  wire \NlwBufferSignal_u_engine/len_hi_3/CLK ;
  wire \NlwBufferSignal_u_engine/len_hi_3/IN ;
  wire \NlwBufferSignal_u_engine/len_hi_2/CLK ;
  wire \NlwBufferSignal_u_engine/len_hi_2/IN ;
  wire \NlwBufferSignal_u_engine/len_hi_1/CLK ;
  wire \NlwBufferSignal_u_engine/len_hi_1/IN ;
  wire \NlwBufferSignal_u_engine/len_hi_0/CLK ;
  wire \NlwBufferSignal_u_engine/len_hi_0/IN ;
  wire \NlwBufferSignal_u_rx_a/hold_d_7/CLK ;
  wire \NlwBufferSignal_u_rx_a/hold_d_7/IN ;
  wire \NlwBufferSignal_u_rx_a/hold_d_6/CLK ;
  wire \NlwBufferSignal_u_rx_a/hold_d_6/IN ;
  wire \NlwBufferSignal_u_rx_a/hold_d_5/CLK ;
  wire \NlwBufferSignal_u_rx_a/hold_d_5/IN ;
  wire \NlwBufferSignal_u_rx_a/hold_d_4/CLK ;
  wire \NlwBufferSignal_u_rx_a/hold_d_4/IN ;
  wire \NlwBufferSignal_u_uart/code_2/CLK ;
  wire \NlwBufferSignal_u_uart/code_1/CLK ;
  wire \NlwBufferSignal_u_uart/code_0/CLK ;
  wire \NlwBufferSignal_u_uart/req_3/CLK ;
  wire \NlwBufferSignal_u_uart/idx_7/CLK ;
  wire \NlwBufferSignal_u_uart/idx_6/CLK ;
  wire \NlwBufferSignal_u_uart/idx_5/CLK ;
  wire \NlwBufferSignal_u_uart/idx_4/CLK ;
  wire \NlwBufferSignal_u_uart/idx_4/IN ;
  wire \NlwBufferSignal_u_uart/tx_data_5/CLK ;
  wire \NlwBufferSignal_u_uart/tx_data_4/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rg_s1_3/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rg_s1_3/IN ;
  wire \NlwBufferSignal_u_fifo_a2b/rg_s2_3/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rg_s1_2/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rg_s1_2/IN ;
  wire \NlwBufferSignal_u_fifo_a2b/rg_s2_2/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rg_s1_1/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rg_s1_1/IN ;
  wire \NlwBufferSignal_u_fifo_a2b/rg_s2_1/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rg_s1_0/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rg_s1_0/IN ;
  wire \NlwBufferSignal_u_fifo_a2b/rg_s2_0/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rptr_gray_r_1/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rptr_gray_r_0/CLK ;
  wire \NlwBufferSignal_u_rx_a/hold_d_3/CLK ;
  wire \NlwBufferSignal_u_rx_a/hold_d_3/IN ;
  wire \NlwBufferSignal_u_rx_a/hold_d_2/CLK ;
  wire \NlwBufferSignal_u_rx_a/hold_d_2/IN ;
  wire \NlwBufferSignal_u_rx_a/hold_d_1/CLK ;
  wire \NlwBufferSignal_u_rx_a/hold_d_1/IN ;
  wire \NlwBufferSignal_u_rx_a/hold_d_0/CLK ;
  wire \NlwBufferSignal_u_rx_a/hold_d_0/IN ;
  wire \NlwBufferSignal_u_engine/len_hi_7/CLK ;
  wire \NlwBufferSignal_u_engine/len_hi_7/IN ;
  wire \NlwBufferSignal_u_engine/len_hi_6/CLK ;
  wire \NlwBufferSignal_u_engine/len_hi_6/IN ;
  wire \NlwBufferSignal_u_engine/len_hi_5/CLK ;
  wire \NlwBufferSignal_u_engine/len_hi_5/IN ;
  wire \NlwBufferSignal_u_engine/len_hi_4/CLK ;
  wire \NlwBufferSignal_u_engine/len_hi_4/IN ;
  wire \NlwBufferSignal_u_rx_a/m_tdata_7/CLK ;
  wire \NlwBufferSignal_u_rx_a/m_tdata_7/IN ;
  wire \NlwBufferSignal_u_rx_a/m_tdata_6/CLK ;
  wire \NlwBufferSignal_u_rx_a/m_tdata_6/IN ;
  wire \NlwBufferSignal_u_rx_a/m_tdata_5/CLK ;
  wire \NlwBufferSignal_u_rx_a/m_tdata_5/IN ;
  wire \NlwBufferSignal_u_rx_a/m_tdata_4/CLK ;
  wire \NlwBufferSignal_u_rx_a/m_tdata_4/IN ;
  wire \NlwBufferSignal_u_rst_b/sync_q_2/CLK ;
  wire \NlwBufferSignal_u_rst_b/sync_q_2/IN ;
  wire \NlwBufferSignal_u_rst_b/sync_q_1/CLK ;
  wire \NlwBufferSignal_u_rst_b/sync_q_1/IN ;
  wire \NlwBufferSignal_u_rst_b/sync_q_0/CLK ;
  wire \NlwBufferSignal_u_rx_a/hold_i_7/CLK ;
  wire \NlwBufferSignal_u_rx_a/hold_i_7/IN ;
  wire \NlwBufferSignal_u_rx_a/hold_i_6/CLK ;
  wire \NlwBufferSignal_u_rx_a/hold_i_6/IN ;
  wire \NlwBufferSignal_u_rx_a/hold_i_5/CLK ;
  wire \NlwBufferSignal_u_rx_a/hold_i_5/IN ;
  wire \NlwBufferSignal_u_rx_a/hold_i_4/CLK ;
  wire \NlwBufferSignal_u_rx_a/hold_i_4/IN ;
  wire \NlwBufferSignal_u_rx_a/hold_i_11/CLK ;
  wire \NlwBufferSignal_u_rx_a/hold_i_11/IN ;
  wire \NlwBufferSignal_u_rx_a/hold_i_10/CLK ;
  wire \NlwBufferSignal_u_rx_a/hold_i_10/IN ;
  wire \NlwBufferSignal_u_rx_a/hold_i_9/CLK ;
  wire \NlwBufferSignal_u_rx_a/hold_i_9/IN ;
  wire \NlwBufferSignal_u_rx_a/hold_i_8/CLK ;
  wire \NlwBufferSignal_u_rx_a/hold_i_8/IN ;
  wire \NlwBufferSignal_u_rx_a/hold_i_15/CLK ;
  wire \NlwBufferSignal_u_rx_a/hold_i_15/IN ;
  wire \NlwBufferSignal_u_rx_a/hold_i_14/CLK ;
  wire \NlwBufferSignal_u_rx_a/hold_i_14/IN ;
  wire \NlwBufferSignal_u_rx_a/hold_i_13/CLK ;
  wire \NlwBufferSignal_u_rx_a/hold_i_13/IN ;
  wire \NlwBufferSignal_u_rx_a/hold_i_12/CLK ;
  wire \NlwBufferSignal_u_rx_a/hold_i_12/IN ;
  wire \NlwBufferSignal_u_rx_a/m_tindex_15/CLK ;
  wire \NlwBufferSignal_u_rx_a/m_tindex_15/IN ;
  wire \NlwBufferSignal_u_rx_a/m_tindex_14/CLK ;
  wire \NlwBufferSignal_u_rx_a/m_tindex_14/IN ;
  wire \NlwBufferSignal_u_rx_a/m_tindex_13/CLK ;
  wire \NlwBufferSignal_u_rx_a/m_tindex_13/IN ;
  wire \NlwBufferSignal_u_rx_a/m_tindex_12/CLK ;
  wire \NlwBufferSignal_u_rx_a/m_tindex_12/IN ;
  wire \NlwBufferSignal_u_uart/cq_w_1/CLK ;
  wire \NlwBufferSignal_u_uart/cq_w_2/CLK ;
  wire \NlwBufferSignal_u_uart/cq_w_3/CLK ;
  wire \NlwBufferSignal_u_uart/cq_w_0/CLK ;
  wire \NlwBufferSignal_u_uart/req_2/CLK ;
  wire \NlwBufferSignal_u_uart/req_1/CLK ;
  wire \NlwBufferSignal_u_uart/req_0/CLK ;
  wire \NlwBufferSignal_u_uart/idx_3/CLK ;
  wire \NlwBufferSignal_u_uart/idx_2/CLK ;
  wire \NlwBufferSignal_u_uart/idx_0/CLK ;
  wire \NlwBufferSignal_u_uart/idx_1/CLK ;
  wire \NlwBufferSignal_u_uart/idx_1/IN ;
  wire \NlwBufferSignal_u_uart/idx_4_1/CLK ;
  wire \NlwBufferSignal_u_uart/idx_1_1/CLK ;
  wire \NlwBufferSignal_u_uart/hb_pend/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rptr_gray_r_7/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rptr_gray_r_6/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rptr_gray_r_9/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rptr_gray_r_8/CLK ;
  wire \NlwBufferSignal_u_rx_a/shreg_7/CLK ;
  wire \NlwBufferSignal_u_rx_a/shreg_7/IN ;
  wire \NlwBufferSignal_u_rx_a/shreg_6/CLK ;
  wire \NlwBufferSignal_u_rx_a/shreg_6/IN ;
  wire \NlwBufferSignal_u_rx_a/m_tvalid/CLK ;
  wire \NlwBufferSignal_u_rx_a/hold_v/CLK ;
  wire \NlwBufferSignal_u_rx_a/m_tindex_3/CLK ;
  wire \NlwBufferSignal_u_rx_a/m_tindex_3/IN ;
  wire \NlwBufferSignal_u_rx_a/m_tindex_2/CLK ;
  wire \NlwBufferSignal_u_rx_a/m_tindex_2/IN ;
  wire \NlwBufferSignal_u_rx_a/m_tindex_1/CLK ;
  wire \NlwBufferSignal_u_rx_a/m_tindex_1/IN ;
  wire \NlwBufferSignal_u_rx_a/m_tindex_0/CLK ;
  wire \NlwBufferSignal_u_rx_a/m_tindex_0/IN ;
  wire \NlwBufferSignal_u_uart/u_core/tx_out/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rptr_gray_r_5/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rptr_gray_r_4/CLK ;
  wire \NlwBufferSignal_u_rx_a/crs_prev/CLK ;
  wire \NlwBufferSignal_u_rx_a/crs_prev/IN ;
  wire \NlwBufferSignal_u_rx_a/m_tlast/CLK ;
  wire \NlwBufferSignal_u_rx_a/state_FSM_FFd2/CLK ;
  wire \NlwBufferSignal_u_rx_a/state_FSM_FFd1/CLK ;
  wire \NlwBufferSignal_u_rx_a/hold_i_3/CLK ;
  wire \NlwBufferSignal_u_rx_a/hold_i_3/IN ;
  wire \NlwBufferSignal_u_rx_a/hold_i_2/CLK ;
  wire \NlwBufferSignal_u_rx_a/hold_i_2/IN ;
  wire \NlwBufferSignal_u_rx_a/hold_i_1/CLK ;
  wire \NlwBufferSignal_u_rx_a/hold_i_1/IN ;
  wire \NlwBufferSignal_u_rx_a/hold_i_0/CLK ;
  wire \NlwBufferSignal_u_rx_a/hold_i_0/IN ;
  wire \NlwBufferSignal_u_uart/mstate_FSM_FFd2/CLK ;
  wire \NlwBufferSignal_u_uart/mstate_FSM_FFd1/CLK ;
  wire \NlwBufferSignal_u_uart/tx_start/CLK ;
  wire \NlwBufferSignal_u_uart/tx_start/IN ;
  wire \NlwBufferSignal_u_uart/u_core/sh_7/CLK ;
  wire \NlwBufferSignal_u_uart/u_core/sh_7/IN ;
  wire \NlwBufferSignal_u_uart/u_core/sh_6/CLK ;
  wire \NlwBufferSignal_u_uart/u_core/sh_6/IN ;
  wire \NlwBufferSignal_u_uart/u_core/sh_5/CLK ;
  wire \NlwBufferSignal_u_uart/u_core/sh_5/IN ;
  wire \NlwBufferSignal_u_uart/u_core/sh_4/CLK ;
  wire \NlwBufferSignal_u_uart/u_core/sh_4/IN ;
  wire \NlwBufferSignal_u_tx_a/cur_5/CLK ;
  wire \NlwBufferSignal_u_tx_a/cur_5/IN ;
  wire \NlwBufferSignal_u_tx_a/cur_4/CLK ;
  wire \NlwBufferSignal_u_tx_a/cur_4/IN ;
  wire \NlwBufferSignal_u_tx_a/cur_3/CLK ;
  wire \NlwBufferSignal_u_tx_a/cur_3/IN ;
  wire \NlwBufferSignal_u_tx_a/cur_7/CLK ;
  wire \NlwBufferSignal_u_tx_a/cur_2/CLK ;
  wire \NlwBufferSignal_u_tx_a/cur_2/IN ;
  wire \NlwBufferSignal_u_tx_a/cur_6/CLK ;
  wire \NlwBufferSignal_u_rx_a/dcnt_1/CLK ;
  wire \NlwBufferSignal_u_rx_a/dcnt_0/CLK ;
  wire \NlwBufferSignal_u_rst_a/sync_q_2/CLK ;
  wire \NlwBufferSignal_u_rst_a/sync_q_2/IN ;
  wire \NlwBufferSignal_u_rst_a/sync_q_1/CLK ;
  wire \NlwBufferSignal_u_rst_a/sync_q_1/IN ;
  wire \NlwBufferSignal_u_rst_a/sync_q_0/CLK ;
  wire \NlwBufferSignal_u_uart/u_core/bitcnt_3/CLK ;
  wire \NlwBufferSignal_u_uart/u_core/bitcnt_2/CLK ;
  wire \NlwBufferSignal_u_uart/u_core/bitcnt_1/CLK ;
  wire \NlwBufferSignal_u_uart/u_core/bitcnt_0/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rg_s1_11/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rg_s1_11/IN ;
  wire \NlwBufferSignal_u_fifo_a2b/rg_s1_10/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rg_s1_10/IN ;
  wire \NlwBufferSignal_u_fifo_a2b/rg_s1_9/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rg_s1_9/IN ;
  wire \NlwBufferSignal_u_fifo_a2b/rg_s1_8/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rg_s1_8/IN ;
  wire \NlwBufferSignal_u_fifo_a2b/cptr_gray_7/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cptr_gray_6/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cptr_gray_5/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cptr_gray_4/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cptr_gray_3/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cptr_gray_2/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cptr_gray_1/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cptr_gray_0/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cptr_gray_11/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cptr_gray_10/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cptr_gray_9/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cptr_gray_8/CLK ;
  wire \NlwBufferSignal_u_uart/tx_data_3/CLK ;
  wire \NlwBufferSignal_u_uart/tx_data_2/CLK ;
  wire \NlwBufferSignal_u_uart/u_core/tx_busy/CLK ;
  wire \NlwBufferSignal_u_uart/u_core/sh_3/CLK ;
  wire \NlwBufferSignal_u_uart/u_core/sh_3/IN ;
  wire \NlwBufferSignal_u_uart/u_core/sh_2/CLK ;
  wire \NlwBufferSignal_u_uart/u_core/sh_2/IN ;
  wire \NlwBufferSignal_u_uart/u_core/sh_1/CLK ;
  wire \NlwBufferSignal_u_uart/u_core/sh_1/IN ;
  wire \NlwBufferSignal_u_uart/u_core/sh_0/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rg_s2_11/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rg_s2_11/IN ;
  wire \NlwBufferSignal_u_fifo_a2b/rg_s2_10/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rg_s2_10/IN ;
  wire \NlwBufferSignal_u_fifo_a2b/rg_s2_9/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rg_s2_9/IN ;
  wire \NlwBufferSignal_u_fifo_a2b/rg_s2_8/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rg_s2_8/IN ;
  wire \NlwBufferSignal_u_fifo_a2b/drop/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/wptr_7/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/wptr_6/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/wptr_5/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/wptr_4/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cptr_7/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cptr_6/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cptr_5/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cptr_4/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/wptr_11/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/wptr_10/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/wptr_9/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/wptr_8/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cptr_11/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cptr_10/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cptr_9/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cptr_8/CLK ;
  wire \NlwBufferSignal_u_tx_a/bcnt_FSM_FFd2/CLK ;
  wire \NlwBufferSignal_u_tx_a/bcnt_FSM_FFd1/CLK ;
  wire \NlwBufferSignal_u_tx_a/pcnt_3/CLK ;
  wire \NlwBufferSignal_u_tx_a/pcnt_2/CLK ;
  wire \NlwBufferSignal_u_uart/u_core/baudcnt_12/CLK ;
  wire \NlwBufferSignal_u_uart/u_core/baudcnt_11/CLK ;
  wire \NlwBufferSignal_u_tx_a/cur_last/CLK ;
  wire \NlwBufferSignal_u_tx_a/cur_last/IN ;
  wire \NlwBufferSignal_u_tx_a/state_FSM_FFd2/CLK ;
  wire \NlwBufferSignal_u_tx_a/state_FSM_FFd1/CLK ;
  wire \NlwBufferSignal_u_tx_a/pcnt_5/CLK ;
  wire \NlwBufferSignal_u_tx_a/pcnt_4/CLK ;
  wire \NlwBufferSignal_u_tx_a/pcnt_1/CLK ;
  wire \NlwBufferSignal_u_tx_a/pcnt_0/CLK ;
  wire \NlwBufferSignal_u_uart/u_core/baudcnt_6/CLK ;
  wire \NlwBufferSignal_u_uart/u_core/baudcnt_5/CLK ;
  wire \NlwBufferSignal_u_uart/u_core/baudcnt_4/CLK ;
  wire \NlwBufferSignal_u_uart/u_core/baudcnt_3/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/wptr_3/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/wptr_2/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/wptr_1/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/wptr_0/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rg_s1_7/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rg_s1_7/IN ;
  wire \NlwBufferSignal_u_fifo_a2b/rg_s1_6/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rg_s1_6/IN ;
  wire \NlwBufferSignal_u_fifo_a2b/rg_s1_5/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rg_s1_5/IN ;
  wire \NlwBufferSignal_u_fifo_a2b/rg_s1_4/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rg_s1_4/IN ;
  wire \NlwBufferSignal_u_fifo_a2b/rg_s2_7/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rg_s2_7/IN ;
  wire \NlwBufferSignal_u_fifo_a2b/rg_s2_6/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rg_s2_6/IN ;
  wire \NlwBufferSignal_u_fifo_a2b/rg_s2_5/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rg_s2_5/IN ;
  wire \NlwBufferSignal_u_fifo_a2b/rg_s2_4/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/rg_s2_4/IN ;
  wire \NlwBufferSignal_u_fifo_a2b/cptr_3/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cptr_2/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cptr_1/CLK ;
  wire \NlwBufferSignal_u_fifo_a2b/cptr_0/CLK ;
  wire \NlwBufferSignal_u_uart/u_core/baudcnt_2/CLK ;
  wire \NlwBufferSignal_u_uart/u_core/baudcnt_1/CLK ;
  wire \NlwBufferSignal_u_uart/u_core/baudcnt_0/CLK ;
  wire \NlwBufferSignal_u_uart/u_core/baudcnt_10/CLK ;
  wire \NlwBufferSignal_u_uart/u_core/baudcnt_9/CLK ;
  wire \NlwBufferSignal_u_uart/u_core/baudcnt_8/CLK ;
  wire \NlwBufferSignal_u_uart/u_core/baudcnt_7/CLK ;
  wire \NlwBufferSignal_u_rst_100/sync_q_2/CLK ;
  wire \NlwBufferSignal_u_rst_100/sync_q_2/IN ;
  wire \NlwBufferSignal_u_rst_100/sync_q_1/CLK ;
  wire \NlwBufferSignal_u_rst_100/sync_q_1/IN ;
  wire \NlwBufferSignal_u_rst_100/sync_q_0/CLK ;
  wire \NLW_u_fifo_a2b/Mram_mem_ADDRA[0]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_ADDRA[1]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_ADDRA[2]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_ADDRB[0]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_ADDRB[1]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_ADDRB[2]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIA[10]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIA[11]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIA[12]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIA[13]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIA[14]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIA[15]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIA[16]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIA[17]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIA[18]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIA[19]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIA[20]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIA[21]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIA[22]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIA[23]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIA[24]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIA[25]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIA[26]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIA[27]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIA[28]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIA[29]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIA[30]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIA[31]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIA[8]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIA[9]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIB[0]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIB[1]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIB[10]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIB[11]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIB[12]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIB[13]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIB[14]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIB[15]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIB[16]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIB[17]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIB[18]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIB[19]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIB[2]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIB[20]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIB[21]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIB[22]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIB[23]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIB[24]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIB[25]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIB[26]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIB[27]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIB[28]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIB[29]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIB[3]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIB[30]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIB[31]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIB[4]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIB[5]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIB[6]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIB[7]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIB[8]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIB[9]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIPA[1]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIPA[2]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIPA[3]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIPB[0]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIPB[1]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIPB[2]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DIPB[3]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOA[0]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOA[1]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOA[10]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOA[11]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOA[12]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOA[13]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOA[14]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOA[15]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOA[16]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOA[17]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOA[18]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOA[19]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOA[2]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOA[20]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOA[21]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOA[22]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOA[23]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOA[24]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOA[25]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOA[26]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOA[27]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOA[28]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOA[29]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOA[3]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOA[30]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOA[31]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOA[4]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOA[5]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOA[6]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOA[7]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOA[8]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOA[9]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOB[10]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOB[11]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOB[12]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOB[13]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOB[14]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOB[15]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOB[16]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOB[17]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOB[18]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOB[19]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOB[20]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOB[21]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOB[22]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOB[23]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOB[24]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOB[25]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOB[26]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOB[27]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOB[28]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOB[29]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOB[30]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOB[31]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOB[8]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOB[9]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOPA[0]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOPA[1]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOPA[2]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOPA[3]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOPB[1]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOPB[2]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mram_mem_DOPB[3]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_ADDRA[0]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_ADDRA[1]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_ADDRA[2]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_ADDRB[0]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_ADDRB[1]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_ADDRB[2]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIA[10]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIA[11]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIA[12]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIA[13]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIA[14]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIA[15]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIA[16]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIA[17]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIA[18]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIA[19]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIA[20]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIA[21]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIA[22]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIA[23]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIA[24]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIA[25]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIA[26]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIA[27]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIA[28]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIA[29]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIA[30]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIA[31]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIA[8]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIA[9]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIB[0]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIB[1]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIB[10]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIB[11]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIB[12]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIB[13]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIB[14]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIB[15]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIB[16]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIB[17]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIB[18]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIB[19]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIB[2]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIB[20]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIB[21]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIB[22]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIB[23]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIB[24]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIB[25]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIB[26]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIB[27]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIB[28]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIB[29]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIB[3]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIB[30]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIB[31]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIB[4]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIB[5]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIB[6]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIB[7]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIB[8]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIB[9]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIPA[1]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIPA[2]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIPA[3]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIPB[0]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIPB[1]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIPB[2]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DIPB[3]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOA[0]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOA[1]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOA[10]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOA[11]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOA[12]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOA[13]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOA[14]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOA[15]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOA[16]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOA[17]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOA[18]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOA[19]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOA[2]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOA[20]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOA[21]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOA[22]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOA[23]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOA[24]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOA[25]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOA[26]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOA[27]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOA[28]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOA[29]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOA[3]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOA[30]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOA[31]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOA[4]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOA[5]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOA[6]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOA[7]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOA[8]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOA[9]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOB[10]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOB[11]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOB[12]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOB[13]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOB[14]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOB[15]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOB[16]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOB[17]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOB[18]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOB[19]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOB[20]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOB[21]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOB[22]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOB[23]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOB[24]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOB[25]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOB[26]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOB[27]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOB[28]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOB[29]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOB[30]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOB[31]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOB[8]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOB[9]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOPA[0]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOPA[1]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOPA[2]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOPA[3]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOPB[1]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOPB[2]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mram_mem_DOPB[3]_UNCONNECTED ;
  wire \NLW_N1_165.D5LUT_O_UNCONNECTED ;
  wire \NLW_u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_cy<3>_O[0]_UNCONNECTED ;
  wire \NLW_u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_cy<3>_O[1]_UNCONNECTED ;
  wire \NLW_u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_cy<3>_O[2]_UNCONNECTED ;
  wire \NLW_u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_cy<3>_O[3]_UNCONNECTED ;
  wire \NLW_N1_166.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_168.A5LUT_O_UNCONNECTED ;
  wire \NLW_u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_cy<5>_CO[0]_UNCONNECTED ;
  wire \NLW_u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_cy<5>_CO[2]_UNCONNECTED ;
  wire \NLW_u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_cy<5>_CO[3]_UNCONNECTED ;
  wire \NLW_u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_cy<5>_DI[2]_UNCONNECTED ;
  wire \NLW_u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_cy<5>_DI[3]_UNCONNECTED ;
  wire \NLW_u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_cy<5>_O[0]_UNCONNECTED ;
  wire \NLW_u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_cy<5>_O[1]_UNCONNECTED ;
  wire \NLW_u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_cy<5>_O[2]_UNCONNECTED ;
  wire \NLW_u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_cy<5>_O[3]_UNCONNECTED ;
  wire \NLW_u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_cy<5>_S[2]_UNCONNECTED ;
  wire \NLW_u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_cy<5>_S[3]_UNCONNECTED ;
  wire \NLW_N1_163.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_164.A5LUT_O_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Msub_used_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Msub_used_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Msub_used_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Msub_used_cy<3>_O[0]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Msub_used_cy<3>_O[1]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Msub_used_cy<3>_O[2]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Msub_used_cy<3>_O[3]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Msub_used_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Msub_used_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Msub_used_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Msub_used_cy<7>_O[0]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Msub_used_cy<7>_O[1]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Msub_used_cy<7>_O[2]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Msub_used_cy<7>_O[3]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Msub_used_xor<11>_CO[0]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Msub_used_xor<11>_CO[1]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Msub_used_xor<11>_CO[2]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Msub_used_xor<11>_CO[3]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Msub_used_xor<11>_DI[3]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Msub_used_xor<11>_O[0]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Msub_used_xor<11>_O[1]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Msub_used_xor<11>_O[2]_UNCONNECTED ;
  wire GND;
  wire \NLW_N1_20.D5LUT_O_UNCONNECTED ;
  wire \NLW_u_rx_a/Mcount_bcnt_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_u_rx_a/Mcount_bcnt_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_u_rx_a/Mcount_bcnt_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_21.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_22.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_23.A5LUT_O_UNCONNECTED ;
  wire \NLW_N1_16.D5LUT_O_UNCONNECTED ;
  wire \NLW_u_rx_a/Mcount_bcnt_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_u_rx_a/Mcount_bcnt_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_u_rx_a/Mcount_bcnt_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_17.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_18.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_19.A5LUT_O_UNCONNECTED ;
  wire \NLW_N1_12.D5LUT_O_UNCONNECTED ;
  wire \NLW_u_rx_a/Mcount_bcnt_cy<11>_CO[0]_UNCONNECTED ;
  wire \NLW_u_rx_a/Mcount_bcnt_cy<11>_CO[1]_UNCONNECTED ;
  wire \NLW_u_rx_a/Mcount_bcnt_cy<11>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_13.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_14.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_15.A5LUT_O_UNCONNECTED ;
  wire \NLW_u_rx_a/Mcount_bcnt_xor<15>_CO[0]_UNCONNECTED ;
  wire \NLW_u_rx_a/Mcount_bcnt_xor<15>_CO[1]_UNCONNECTED ;
  wire \NLW_u_rx_a/Mcount_bcnt_xor<15>_CO[2]_UNCONNECTED ;
  wire \NLW_u_rx_a/Mcount_bcnt_xor<15>_CO[3]_UNCONNECTED ;
  wire \NLW_u_rx_a/Mcount_bcnt_xor<15>_DI[3]_UNCONNECTED ;
  wire \NLW_N1_9.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_10.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_11.A5LUT_O_UNCONNECTED ;
  wire \NLW_N1_158.D5LUT_O_UNCONNECTED ;
  wire \NLW_u_engine/Mcount_win_cnt_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_u_engine/Mcount_win_cnt_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_u_engine/Mcount_win_cnt_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_159.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_160.B5LUT_O_UNCONNECTED ;
  wire \NLW_SevenSegmentEnable_0_OBUF_1_14.A5LUT_O_UNCONNECTED ;
  wire \NLW_N1_154.D5LUT_O_UNCONNECTED ;
  wire \NLW_u_engine/Mcount_win_cnt_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_u_engine/Mcount_win_cnt_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_u_engine/Mcount_win_cnt_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_155.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_156.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_157.A5LUT_O_UNCONNECTED ;
  wire \NLW_N1_150.D5LUT_O_UNCONNECTED ;
  wire \NLW_u_engine/Mcount_win_cnt_cy<11>_CO[0]_UNCONNECTED ;
  wire \NLW_u_engine/Mcount_win_cnt_cy<11>_CO[1]_UNCONNECTED ;
  wire \NLW_u_engine/Mcount_win_cnt_cy<11>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_151.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_152.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_153.A5LUT_O_UNCONNECTED ;
  wire \NLW_N1_146.D5LUT_O_UNCONNECTED ;
  wire \NLW_u_engine/Mcount_win_cnt_cy<15>_CO[0]_UNCONNECTED ;
  wire \NLW_u_engine/Mcount_win_cnt_cy<15>_CO[1]_UNCONNECTED ;
  wire \NLW_u_engine/Mcount_win_cnt_cy<15>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_147.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_148.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_149.A5LUT_O_UNCONNECTED ;
  wire \NLW_u_engine/Mcount_win_cnt_xor<18>_CO[0]_UNCONNECTED ;
  wire \NLW_u_engine/Mcount_win_cnt_xor<18>_CO[1]_UNCONNECTED ;
  wire \NLW_u_engine/Mcount_win_cnt_xor<18>_CO[2]_UNCONNECTED ;
  wire \NLW_u_engine/Mcount_win_cnt_xor<18>_CO[3]_UNCONNECTED ;
  wire \NLW_u_engine/Mcount_win_cnt_xor<18>_DI[2]_UNCONNECTED ;
  wire \NLW_u_engine/Mcount_win_cnt_xor<18>_DI[3]_UNCONNECTED ;
  wire \NLW_u_engine/Mcount_win_cnt_xor<18>_O[3]_UNCONNECTED ;
  wire \NLW_u_engine/Mcount_win_cnt_xor<18>_S[3]_UNCONNECTED ;
  wire \NLW_N1_144.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_145.A5LUT_O_UNCONNECTED ;
  wire \NLW_N1_171.D5LUT_O_UNCONNECTED ;
  wire \NLW_u_engine/Mcompar__n0368_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_u_engine/Mcompar__n0368_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_u_engine/Mcompar__n0368_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_u_engine/Mcompar__n0368_cy<3>_O[0]_UNCONNECTED ;
  wire \NLW_u_engine/Mcompar__n0368_cy<3>_O[1]_UNCONNECTED ;
  wire \NLW_u_engine/Mcompar__n0368_cy<3>_O[2]_UNCONNECTED ;
  wire \NLW_u_engine/Mcompar__n0368_cy<3>_O[3]_UNCONNECTED ;
  wire \NLW_N1_172.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_174.A5LUT_O_UNCONNECTED ;
  wire \NLW_N1_47.D5LUT_O_UNCONNECTED ;
  wire \NLW_u_uart/Mcount_hb_cnt_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_u_uart/Mcount_hb_cnt_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_u_uart/Mcount_hb_cnt_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_48.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_49.B5LUT_O_UNCONNECTED ;
  wire \NLW_SevenSegmentEnable_0_OBUF_1_5.A5LUT_O_UNCONNECTED ;
  wire \NLW_N1_43.D5LUT_O_UNCONNECTED ;
  wire \NLW_u_uart/Mcount_hb_cnt_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_u_uart/Mcount_hb_cnt_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_u_uart/Mcount_hb_cnt_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_44.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_45.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_46.A5LUT_O_UNCONNECTED ;
  wire \NLW_N1_39.D5LUT_O_UNCONNECTED ;
  wire \NLW_u_uart/Mcount_hb_cnt_cy<11>_CO[0]_UNCONNECTED ;
  wire \NLW_u_uart/Mcount_hb_cnt_cy<11>_CO[1]_UNCONNECTED ;
  wire \NLW_u_uart/Mcount_hb_cnt_cy<11>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_40.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_41.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_42.A5LUT_O_UNCONNECTED ;
  wire \NLW_N1_35.D5LUT_O_UNCONNECTED ;
  wire \NLW_u_uart/Mcount_hb_cnt_cy<15>_CO[0]_UNCONNECTED ;
  wire \NLW_u_uart/Mcount_hb_cnt_cy<15>_CO[1]_UNCONNECTED ;
  wire \NLW_u_uart/Mcount_hb_cnt_cy<15>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_36.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_37.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_38.A5LUT_O_UNCONNECTED ;
  wire \NLW_N1_31.D5LUT_O_UNCONNECTED ;
  wire \NLW_u_uart/Mcount_hb_cnt_cy<19>_CO[0]_UNCONNECTED ;
  wire \NLW_u_uart/Mcount_hb_cnt_cy<19>_CO[1]_UNCONNECTED ;
  wire \NLW_u_uart/Mcount_hb_cnt_cy<19>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_32.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_33.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_34.A5LUT_O_UNCONNECTED ;
  wire \NLW_N1_27.D5LUT_O_UNCONNECTED ;
  wire \NLW_u_uart/Mcount_hb_cnt_cy<23>_CO[0]_UNCONNECTED ;
  wire \NLW_u_uart/Mcount_hb_cnt_cy<23>_CO[1]_UNCONNECTED ;
  wire \NLW_u_uart/Mcount_hb_cnt_cy<23>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_28.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_29.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_30.A5LUT_O_UNCONNECTED ;
  wire \NLW_u_uart/Mcount_hb_cnt_xor<27>_CO[0]_UNCONNECTED ;
  wire \NLW_u_uart/Mcount_hb_cnt_xor<27>_CO[1]_UNCONNECTED ;
  wire \NLW_u_uart/Mcount_hb_cnt_xor<27>_CO[2]_UNCONNECTED ;
  wire \NLW_u_uart/Mcount_hb_cnt_xor<27>_CO[3]_UNCONNECTED ;
  wire \NLW_u_uart/Mcount_hb_cnt_xor<27>_DI[3]_UNCONNECTED ;
  wire \NLW_N1_24.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_25.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_26.A5LUT_O_UNCONNECTED ;
  wire VCC;
  wire \NLW_N1_132.D5LUT_O_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mcount_rptr_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mcount_rptr_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mcount_rptr_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_133.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_134.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_135.A5LUT_O_UNCONNECTED ;
  wire \NLW_N1_128.D5LUT_O_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mcount_rptr_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mcount_rptr_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mcount_rptr_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_129.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_130.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_131.A5LUT_O_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mcount_rptr_xor<11>_CO[0]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mcount_rptr_xor<11>_CO[1]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mcount_rptr_xor<11>_CO[2]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mcount_rptr_xor<11>_CO[3]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Mcount_rptr_xor<11>_DI[3]_UNCONNECTED ;
  wire \NLW_N1_125.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_126.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_127.A5LUT_O_UNCONNECTED ;
  wire \NLW_u_engine/sig_done_win_nxt[55]_AND_42_o_wg_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_u_engine/sig_done_win_nxt[55]_AND_42_o_wg_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_u_engine/sig_done_win_nxt[55]_AND_42_o_wg_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_u_engine/sig_done_win_nxt[55]_AND_42_o_wg_cy<3>_O[0]_UNCONNECTED ;
  wire \NLW_u_engine/sig_done_win_nxt[55]_AND_42_o_wg_cy<3>_O[1]_UNCONNECTED ;
  wire \NLW_u_engine/sig_done_win_nxt[55]_AND_42_o_wg_cy<3>_O[2]_UNCONNECTED ;
  wire \NLW_u_engine/sig_done_win_nxt[55]_AND_42_o_wg_cy<3>_O[3]_UNCONNECTED ;
  wire \NLW_N1_181.A5LUT_O_UNCONNECTED ;
  wire \NLW_u_engine/sig_done_win_nxt[55]_AND_42_o_wg_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_u_engine/sig_done_win_nxt[55]_AND_42_o_wg_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_u_engine/sig_done_win_nxt[55]_AND_42_o_wg_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_u_engine/sig_done_win_nxt[55]_AND_42_o_wg_cy<7>_O[0]_UNCONNECTED ;
  wire \NLW_u_engine/sig_done_win_nxt[55]_AND_42_o_wg_cy<7>_O[1]_UNCONNECTED ;
  wire \NLW_u_engine/sig_done_win_nxt[55]_AND_42_o_wg_cy<7>_O[2]_UNCONNECTED ;
  wire \NLW_u_engine/sig_done_win_nxt[55]_AND_42_o_wg_cy<7>_O[3]_UNCONNECTED ;
  wire \NLW_u_engine/Mmux_GND_6_o_sig_done_MUX_169_o11_cy_CO[0]_UNCONNECTED ;
  wire \NLW_u_engine/Mmux_GND_6_o_sig_done_MUX_169_o11_cy_CO[3]_UNCONNECTED ;
  wire \NLW_u_engine/Mmux_GND_6_o_sig_done_MUX_169_o11_cy_DI[3]_UNCONNECTED ;
  wire \NLW_u_engine/Mmux_GND_6_o_sig_done_MUX_169_o11_cy_O[0]_UNCONNECTED ;
  wire \NLW_u_engine/Mmux_GND_6_o_sig_done_MUX_169_o11_cy_O[1]_UNCONNECTED ;
  wire \NLW_u_engine/Mmux_GND_6_o_sig_done_MUX_169_o11_cy_O[2]_UNCONNECTED ;
  wire \NLW_u_engine/Mmux_GND_6_o_sig_done_MUX_169_o11_cy_O[3]_UNCONNECTED ;
  wire \NLW_u_engine/Mmux_GND_6_o_sig_done_MUX_169_o11_cy_S[3]_UNCONNECTED ;
  wire \NLW_N1_191.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_85.D5LUT_O_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Madd_wptr_n_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Madd_wptr_n_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Madd_wptr_n_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_86.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_87.B5LUT_O_UNCONNECTED ;
  wire \NLW_SevenSegmentEnable_0_OBUF_1_9.A5LUT_O_UNCONNECTED ;
  wire \NLW_N1_81.D5LUT_O_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Madd_wptr_n_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Madd_wptr_n_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Madd_wptr_n_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_82.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_83.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_84.A5LUT_O_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Madd_wptr_n_xor<11>_CO[0]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Madd_wptr_n_xor<11>_CO[1]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Madd_wptr_n_xor<11>_CO[2]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Madd_wptr_n_xor<11>_CO[3]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Madd_wptr_n_xor<11>_DI[3]_UNCONNECTED ;
  wire \NLW_N1_78.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_79.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_80.A5LUT_O_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Msub_used_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Msub_used_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Msub_used_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Msub_used_cy<3>_O[0]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Msub_used_cy<3>_O[1]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Msub_used_cy<3>_O[2]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Msub_used_cy<3>_O[3]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Msub_used_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Msub_used_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Msub_used_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Msub_used_cy<7>_O[0]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Msub_used_cy<7>_O[1]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Msub_used_cy<7>_O[2]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Msub_used_cy<7>_O[3]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Msub_used_xor<11>_CO[0]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Msub_used_xor<11>_CO[1]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Msub_used_xor<11>_CO[2]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Msub_used_xor<11>_CO[3]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Msub_used_xor<11>_DI[3]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Msub_used_xor<11>_O[0]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Msub_used_xor<11>_O[1]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Msub_used_xor<11>_O[2]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Madd_rptr[11]_GND_4_o_add_23_OUT_xor<11>_CO[0]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Madd_rptr[11]_GND_4_o_add_23_OUT_xor<11>_CO[1]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Madd_rptr[11]_GND_4_o_add_23_OUT_xor<11>_CO[2]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Madd_rptr[11]_GND_4_o_add_23_OUT_xor<11>_CO[3]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Madd_rptr[11]_GND_4_o_add_23_OUT_xor<11>_DI[3]_UNCONNECTED ;
  wire \NLW_N1_101.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_102.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_103.A5LUT_O_UNCONNECTED ;
  wire \NLW_N1_73.D5LUT_O_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_74.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_75.B5LUT_O_UNCONNECTED ;
  wire \NLW_SevenSegmentEnable_0_OBUF_1_8.A5LUT_O_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_xor<11>_CO[0]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_xor<11>_CO[1]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_xor<11>_CO[2]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_xor<11>_CO[3]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_xor<11>_DI[3]_UNCONNECTED ;
  wire \NLW_N1_66.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_67.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_68.A5LUT_O_UNCONNECTED ;
  wire \NLW_N1_177.D5LUT_O_UNCONNECTED ;
  wire \NLW_u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_cy<3>_O[0]_UNCONNECTED ;
  wire \NLW_u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_cy<3>_O[1]_UNCONNECTED ;
  wire \NLW_u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_cy<3>_O[2]_UNCONNECTED ;
  wire \NLW_u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_cy<3>_O[3]_UNCONNECTED ;
  wire \NLW_N1_178.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_180.A5LUT_O_UNCONNECTED ;
  wire \NLW_u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_cy<5>_CO[0]_UNCONNECTED ;
  wire \NLW_u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_cy<5>_CO[2]_UNCONNECTED ;
  wire \NLW_u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_cy<5>_CO[3]_UNCONNECTED ;
  wire \NLW_u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_cy<5>_DI[2]_UNCONNECTED ;
  wire \NLW_u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_cy<5>_DI[3]_UNCONNECTED ;
  wire \NLW_u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_cy<5>_O[0]_UNCONNECTED ;
  wire \NLW_u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_cy<5>_O[1]_UNCONNECTED ;
  wire \NLW_u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_cy<5>_O[2]_UNCONNECTED ;
  wire \NLW_u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_cy<5>_O[3]_UNCONNECTED ;
  wire \NLW_u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_cy<5>_S[2]_UNCONNECTED ;
  wire \NLW_u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_cy<5>_S[3]_UNCONNECTED ;
  wire \NLW_N1_175.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_176.A5LUT_O_UNCONNECTED ;
  wire \NLW_N1_97.D5LUT_O_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mcount_rptr_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mcount_rptr_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mcount_rptr_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_98.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_99.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_100.A5LUT_O_UNCONNECTED ;
  wire \NLW_N1_93.D5LUT_O_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mcount_rptr_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mcount_rptr_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mcount_rptr_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_94.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_95.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_96.A5LUT_O_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mcount_rptr_xor<11>_CO[0]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mcount_rptr_xor<11>_CO[1]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mcount_rptr_xor<11>_CO[2]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mcount_rptr_xor<11>_CO[3]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Mcount_rptr_xor<11>_DI[3]_UNCONNECTED ;
  wire \NLW_N1_90.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_91.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_92.A5LUT_O_UNCONNECTED ;
  wire \NLW_N1_120.D5LUT_O_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Madd_wptr_n_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Madd_wptr_n_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Madd_wptr_n_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_121.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_122.B5LUT_O_UNCONNECTED ;
  wire \NLW_SevenSegmentEnable_0_OBUF_1_12.A5LUT_O_UNCONNECTED ;
  wire \NLW_N1_116.D5LUT_O_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Madd_wptr_n_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Madd_wptr_n_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Madd_wptr_n_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_117.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_118.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_119.A5LUT_O_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Madd_wptr_n_xor<11>_CO[0]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Madd_wptr_n_xor<11>_CO[1]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Madd_wptr_n_xor<11>_CO[2]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Madd_wptr_n_xor<11>_CO[3]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Madd_wptr_n_xor<11>_DI[3]_UNCONNECTED ;
  wire \NLW_N1_113.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_114.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_115.A5LUT_O_UNCONNECTED ;
  wire \NLW_N1_60.D5LUT_O_UNCONNECTED ;
  wire \NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_61.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_62.B5LUT_O_UNCONNECTED ;
  wire \NLW_SevenSegmentEnable_0_OBUF_1_6.A5LUT_O_UNCONNECTED ;
  wire \NLW_N1_56.D5LUT_O_UNCONNECTED ;
  wire \NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_57.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_58.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_59.A5LUT_O_UNCONNECTED ;
  wire \NLW_N1_52.D5LUT_O_UNCONNECTED ;
  wire \NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<11>_CO[0]_UNCONNECTED ;
  wire \NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<11>_CO[1]_UNCONNECTED ;
  wire \NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<11>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_53.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_54.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_55.A5LUT_O_UNCONNECTED ;
  wire \NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_xor<12>_CO[0]_UNCONNECTED ;
  wire \NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_xor<12>_CO[1]_UNCONNECTED ;
  wire \NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_xor<12>_CO[2]_UNCONNECTED ;
  wire \NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_xor<12>_CO[3]_UNCONNECTED ;
  wire \NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_xor<12>_DI[0]_UNCONNECTED ;
  wire \NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_xor<12>_DI[1]_UNCONNECTED ;
  wire \NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_xor<12>_DI[2]_UNCONNECTED ;
  wire \NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_xor<12>_DI[3]_UNCONNECTED ;
  wire \NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_xor<12>_O[1]_UNCONNECTED ;
  wire \NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_xor<12>_O[2]_UNCONNECTED ;
  wire \NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_xor<12>_O[3]_UNCONNECTED ;
  wire \NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_xor<12>_S[1]_UNCONNECTED ;
  wire \NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_xor<12>_S[2]_UNCONNECTED ;
  wire \NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_xor<12>_S[3]_UNCONNECTED ;
  wire \NLW_N1_139.D5LUT_O_UNCONNECTED ;
  wire \NLW_u_engine/Mcount_syn_cnt_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_u_engine/Mcount_syn_cnt_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_u_engine/Mcount_syn_cnt_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_140.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_141.B5LUT_O_UNCONNECTED ;
  wire \NLW_SevenSegmentEnable_0_OBUF_1_13.A5LUT_O_UNCONNECTED ;
  wire \NLW_u_engine/Mcount_syn_cnt_xor<7>_CO[0]_UNCONNECTED ;
  wire \NLW_u_engine/Mcount_syn_cnt_xor<7>_CO[1]_UNCONNECTED ;
  wire \NLW_u_engine/Mcount_syn_cnt_xor<7>_CO[2]_UNCONNECTED ;
  wire \NLW_u_engine/Mcount_syn_cnt_xor<7>_CO[3]_UNCONNECTED ;
  wire \NLW_u_engine/Mcount_syn_cnt_xor<7>_DI[3]_UNCONNECTED ;
  wire \NLW_N1_136.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_137.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_138.A5LUT_O_UNCONNECTED ;
  wire \NLW_N1_5.D5LUT_O_UNCONNECTED ;
  wire \NLW_Mcount_por_cnt_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_Mcount_por_cnt_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_Mcount_por_cnt_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_4.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_3.B5LUT_O_UNCONNECTED ;
  wire \NLW_SevenSegmentEnable_0_OBUF_1_4.A5LUT_O_UNCONNECTED ;
  wire \NLW_Mcount_por_cnt_xor<7>_CO[0]_UNCONNECTED ;
  wire \NLW_Mcount_por_cnt_xor<7>_CO[1]_UNCONNECTED ;
  wire \NLW_Mcount_por_cnt_xor<7>_CO[2]_UNCONNECTED ;
  wire \NLW_Mcount_por_cnt_xor<7>_CO[3]_UNCONNECTED ;
  wire \NLW_Mcount_por_cnt_xor<7>_DI[3]_UNCONNECTED ;
  wire \NLW_N1_8.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_7.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_6.A5LUT_O_UNCONNECTED ;
  wire \NLW_ProtoComp150.D2OFFBYP_SRC_IB_UNCONNECTED ;
  wire \NLW_ProtoComp150.D2OFFBYP_SRC.1_IB_UNCONNECTED ;
  wire \NLW_ProtoComp150.D2OFFBYP_SRC.2_IB_UNCONNECTED ;
  wire \NLW_ProtoComp150.D2OFFBYP_SRC.3_IB_UNCONNECTED ;
  wire \NLW_ProtoComp150.D2OFFBYP_SRC.4_IB_UNCONNECTED ;
  wire \NLW_ProtoComp150.D2OFFBYP_SRC.5_IB_UNCONNECTED ;
  wire \NLW_u_rx_b/rxd_r_1_ML_IODELAY2_IOCLK0_UNCONNECTED ;
  wire \NLW_u_rx_b/rxd_r_1_ML_IODELAY2_IOCLK1_UNCONNECTED ;
  wire \NLW_u_rx_a/rxd_r_1_ML_IODELAY2_IOCLK0_UNCONNECTED ;
  wire \NLW_u_rx_a/rxd_r_1_ML_IODELAY2_IOCLK1_UNCONNECTED ;
  wire \NLW_u_rx_b/rxd_r_0_ML_IODELAY2_IOCLK0_UNCONNECTED ;
  wire \NLW_u_rx_b/rxd_r_0_ML_IODELAY2_IOCLK1_UNCONNECTED ;
  wire \NLW_u_rx_a/crs_r_ML_IODELAY2_IOCLK0_UNCONNECTED ;
  wire \NLW_u_rx_a/crs_r_ML_IODELAY2_IOCLK1_UNCONNECTED ;
  wire \NLW_u_rx_a/rxd_r_0_ML_IODELAY2_IOCLK0_UNCONNECTED ;
  wire \NLW_u_rx_a/rxd_r_0_ML_IODELAY2_IOCLK1_UNCONNECTED ;
  wire \NLW_u_rx_b/crs_r_ML_IODELAY2_IOCLK0_UNCONNECTED ;
  wire \NLW_u_rx_b/crs_r_ML_IODELAY2_IOCLK1_UNCONNECTED ;
  wire \NLW_SevenSegmentEnable_0_OBUF_1_22.D6LUT_O_UNCONNECTED ;
  wire \NLW_N1_196.D6LUT_O_UNCONNECTED ;
  wire \NLW_N1_195.D6LUT_O_UNCONNECTED ;
  wire \NLW_N1_69.D5LUT_O_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_70.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_71.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_72.A5LUT_O_UNCONNECTED ;
  wire \NLW_u_engine/_n0371_inv1_cy_CO[0]_UNCONNECTED ;
  wire \NLW_u_engine/_n0371_inv1_cy_CO[1]_UNCONNECTED ;
  wire \NLW_u_engine/_n0371_inv1_cy_CO[3]_UNCONNECTED ;
  wire \NLW_u_engine/_n0371_inv1_cy_DI[3]_UNCONNECTED ;
  wire \NLW_u_engine/_n0371_inv1_cy_O[0]_UNCONNECTED ;
  wire \NLW_u_engine/_n0371_inv1_cy_O[1]_UNCONNECTED ;
  wire \NLW_u_engine/_n0371_inv1_cy_O[2]_UNCONNECTED ;
  wire \NLW_u_engine/_n0371_inv1_cy_O[3]_UNCONNECTED ;
  wire \NLW_u_engine/_n0371_inv1_cy_S[3]_UNCONNECTED ;
  wire \NLW_N1_192.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_169.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_170.A5LUT_O_UNCONNECTED ;
  wire \NLW_u_uart/Mram_cq1/SP_O_UNCONNECTED ;
  wire \NLW_u_uart/Mram_cq2/SP_O_UNCONNECTED ;
  wire \NLW_N1_193.D6LUT_O_UNCONNECTED ;
  wire \NLW_N1_194.D6LUT_O_UNCONNECTED ;
  wire \NLW_N1_108.D5LUT_O_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_109.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_110.B5LUT_O_UNCONNECTED ;
  wire \NLW_SevenSegmentEnable_0_OBUF_1_11.A5LUT_O_UNCONNECTED ;
  wire \NLW_N1_104.D5LUT_O_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_u_fifo_a2b/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_105.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_106.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_107.A5LUT_O_UNCONNECTED ;
  wire \NLW_SevenSegmentEnable_0_OBUF_1_23.C6LUT_O_UNCONNECTED ;
  wire [11 : 0] \u_fifo_a2b/rptr ;
  wire [11 : 0] \u_fifo_a2b/rptr_gray ;
  wire [7 : 0] \u_rx_a/m_tdata ;
  wire [7 : 0] \u_engine/len_hi ;
  wire [7 : 0] \u_engine/dport_hi ;
  wire [7 : 0] \u_engine/proto ;
  wire [15 : 0] \u_rx_a/bcnt ;
  wire [5 : 0] \u_tx_a/pcnt ;
  wire [5 : 0] \u_tx_b/pcnt ;
  wire [7 : 0] \u_uart/idx ;
  wire [11 : 0] \u_fifo_a2b/cg_s1 ;
  wire [11 : 0] \u_fifo_a2b/cptr_gray ;
  wire [11 : 0] \u_fifo_a2b/cg_s2 ;
  wire [1 : 0] \u_rx_a/dcnt ;
  wire [11 : 0] \u_fifo_b2a/rptr_n ;
  wire [11 : 0] \u_fifo_b2a/rptr ;
  wire [11 : 0] \u_fifo_b2a/cg_s2 ;
  wire [7 : 0] \u_engine/syn_cnt ;
  wire [3 : 0] \u_uart/u_core/bitcnt ;
  wire [15 : 0] \u_rx_a/m_tindex ;
  wire [15 : 0] \u_rx_a/hold_i ;
  wire [6 : 0] \u_uart/tx_data ;
  wire [2 : 0] \u_uart/code ;
  wire [7 : 2] \u_rx_a/shreg ;
  wire [1 : 0] \u_rx_a/rxd_r ;
  wire [11 : 0] \u_fifo_a2b/rptr_n ;
  wire [18 : 18] \u_engine/win_end_0 ;
  wire [18 : 0] \u_engine/win_cnt ;
  wire [7 : 2] \u_rx_b/shreg ;
  wire [1 : 0] \u_rx_b/rxd_r ;
  wire [8 : 0] b2a_rd_data;
  wire [11 : 0] \u_fifo_b2a/cg_s1 ;
  wire [11 : 0] \u_fifo_b2a/cptr_gray ;
  wire [11 : 0] \u_fifo_a2b/rg_s1 ;
  wire [11 : 0] \u_fifo_a2b/rg_s2 ;
  wire [3 : 0] \u_uart/req ;
  wire [11 : 0] \u_fifo_b2a/rptr_gray ;
  wire [11 : 0] \u_fifo_b2a/rg_s2 ;
  wire [11 : 0] \u_fifo_b2a/wptr ;
  wire [4 : 0] \u_engine/frag_hi ;
  wire [11 : 0] \u_fifo_b2a/rg_s1 ;
  wire [6 : 2] \u_engine/idx_dport_lo ;
  wire [3 : 0] \u_engine/ihl ;
  wire [1 : 0] \u_rx_b/dcnt ;
  wire [3 : 0] \u_uart/cq_r ;
  wire [3 : 0] \u_uart/cq_w ;
  wire [7 : 2] \u_tx_a/cur ;
  wire [7 : 2] \u_tx_b/cur ;
  wire [8 : 0] a2b_rd_data;
  wire [47 : 0] \u_engine/win ;
  wire [1 : 0] \u_uart/pick_code ;
  wire [1 : 0] \u_uart/_n0204 ;
  wire [6 : 3] \u_engine/idx_flags ;
  wire [11 : 0] \u_fifo_a2b/wptr ;
  wire [7 : 0] \u_rx_b/m_tdata ;
  wire [3 : 3] \u_engine/Mcompar__n0368_cy ;
  wire [27 : 0] \u_uart/hb_cnt ;
  wire [12 : 0] \u_uart/u_core/baudcnt ;
  wire [3 : 3] \u_engine/Mcount_syn_cnt_cy ;
  wire [7 : 0] por_cnt;
  wire [3 : 3] Mcount_por_cnt_cy;
  wire [1 : 0] \u_tx_a/txd_r ;
  wire [1 : 0] \u_tx_b/txd_r ;
  wire [7 : 0] \u_uart/u_core/sh ;
  wire [11 : 0] \u_fifo_b2a/cptr ;
  wire [3 : 0] \u_uart/tgl_a ;
  wire [12 : 12] \u_uart/u_core/GND_8_o_GND_8_o_equal_4_o_1 ;
  wire [27 : 27] \u_uart/hb_pend_PWR_8_o_MUX_9428_o_2 ;
  wire [3 : 0] \u_uart/t3 ;
  wire [11 : 0] \u_fifo_a2b/cptr ;
  wire [7 : 0] \u_rx_a/hold_d ;
  wire [7 : 0] \u_rx_b/hold_d ;
  wire [3 : 0] \u_uart/t1 ;
  wire [2 : 0] \u_rst_b/sync_q ;
  wire [2 : 0] \u_rst_a/sync_q ;
  wire [2 : 0] \u_rst_100/sync_q ;
  wire [11 : 0] \u_fifo_b2a/Msub_used_lut ;
  wire [11 : 11] \u_fifo_b2a/used ;
  wire [15 : 0] \u_rx_a/Mcount_bcnt_lut ;
  wire [0 : 0] \u_engine/Mcount_win_cnt_lut ;
  wire [18 : 0] \u_engine/Result ;
  wire [5 : 0] \u_engine/Mcompar__n0368_lut ;
  wire [0 : 0] \u_uart/Mcount_hb_cnt_lut ;
  wire [27 : 0] \u_uart/Result ;
  wire [0 : 0] \u_fifo_b2a/Madd_wptr_n_lut ;
  wire [11 : 0] \u_fifo_b2a/wptr_n ;
  wire [11 : 0] \u_fifo_a2b/Msub_used_lut ;
  wire [11 : 11] \u_fifo_a2b/used ;
  wire [0 : 0] \u_fifo_a2b/Madd_wptr_n_lut ;
  wire [11 : 0] \u_fifo_a2b/wptr_n ;
  wire [0 : 0] \u_engine/Mcount_syn_cnt_lut ;
  wire [0 : 0] Mcount_por_cnt_lut;
  wire [7 : 0] Result;
  wire [3 : 0] \u_uart/t2 ;
  wire [13 : 3] \NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRA ;
  wire [13 : 3] \NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRB ;
  wire [7 : 0] \NlwBufferSignal_u_fifo_a2b/Mram_mem/DIA ;
  wire [0 : 0] \NlwBufferSignal_u_fifo_a2b/Mram_mem/DIPA ;
  wire [3 : 0] \NlwBufferSignal_u_fifo_a2b/Mram_mem/WEA ;
  wire [13 : 3] \NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRA ;
  wire [13 : 3] \NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRB ;
  wire [7 : 0] \NlwBufferSignal_u_fifo_b2a/Mram_mem/DIA ;
  wire [0 : 0] \NlwBufferSignal_u_fifo_b2a/Mram_mem/DIPA ;
  wire [3 : 0] \NlwBufferSignal_u_fifo_b2a/Mram_mem/WEA ;
  initial $sdf_annotate("netgen/par/nids_top_timesim.sdf");
  X_RAMB16BWER #(
    .DATA_WIDTH_A ( 9 ),
    .DATA_WIDTH_B ( 9 ),
    .DOA_REG ( 0 ),
    .DOB_REG ( 0 ),
    .EN_RSTRAM_A ( "TRUE" ),
    .EN_RSTRAM_B ( "TRUE" ),
    .RST_PRIORITY_A ( "CE" ),
    .RST_PRIORITY_B ( "CE" ),
    .RSTTYPE ( "SYNC" ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_A ( 36'h000000000 ),
    .INIT_B ( 36'h000000000 ),
    .SRVAL_A ( 36'h000000000 ),
    .SRVAL_B ( 36'h000000000 ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .SIM_DEVICE ( "SPARTAN6" ),
    .INIT_FILE ( "NONE" ),
    .LOC ( "RAMB16_X1Y2" ))
  \u_fifo_a2b/Mram_mem  (
    .CLKA(\NlwBufferSignal_u_fifo_a2b/Mram_mem/CLKA ),
    .CLKB(\NlwBufferSignal_u_fifo_a2b/Mram_mem/CLKB ),
    .ENA(1'b1),
    .ENB(1'b1),
    .REGCEA(1'b0),
    .REGCEB(1'b0),
    .RSTA(1'b0),
    .RSTB(1'b0),
    .ADDRA({\NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRA [13], \NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRA [12], 
\NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRA [11], \NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRA [10], \NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRA [9], 
\NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRA [8], \NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRA [7], \NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRA [6], 
\NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRA [5], \NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRA [4], \NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRA [3], 
\NLW_u_fifo_a2b/Mram_mem_ADDRA[2]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_ADDRA[1]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_ADDRA[0]_UNCONNECTED }),
    .ADDRB({\NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRB [13], \NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRB [12], 
\NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRB [11], \NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRB [10], \NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRB [9], 
\NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRB [8], \NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRB [7], \NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRB [6], 
\NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRB [5], \NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRB [4], \NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRB [3], 
\NLW_u_fifo_a2b/Mram_mem_ADDRB[2]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_ADDRB[1]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_ADDRB[0]_UNCONNECTED }),
    .DIA({\NLW_u_fifo_a2b/Mram_mem_DIA[31]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DIA[30]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DIA[29]_UNCONNECTED 
, \NLW_u_fifo_a2b/Mram_mem_DIA[28]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DIA[27]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DIA[26]_UNCONNECTED , 
\NLW_u_fifo_a2b/Mram_mem_DIA[25]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DIA[24]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DIA[23]_UNCONNECTED , 
\NLW_u_fifo_a2b/Mram_mem_DIA[22]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DIA[21]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DIA[20]_UNCONNECTED , 
\NLW_u_fifo_a2b/Mram_mem_DIA[19]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DIA[18]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DIA[17]_UNCONNECTED , 
\NLW_u_fifo_a2b/Mram_mem_DIA[16]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DIA[15]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DIA[14]_UNCONNECTED , 
\NLW_u_fifo_a2b/Mram_mem_DIA[13]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DIA[12]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DIA[11]_UNCONNECTED , 
\NLW_u_fifo_a2b/Mram_mem_DIA[10]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DIA[9]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DIA[8]_UNCONNECTED , 
\NlwBufferSignal_u_fifo_a2b/Mram_mem/DIA [7], \NlwBufferSignal_u_fifo_a2b/Mram_mem/DIA [6], \NlwBufferSignal_u_fifo_a2b/Mram_mem/DIA [5], 
\NlwBufferSignal_u_fifo_a2b/Mram_mem/DIA [4], \NlwBufferSignal_u_fifo_a2b/Mram_mem/DIA [3], \NlwBufferSignal_u_fifo_a2b/Mram_mem/DIA [2], 
\NlwBufferSignal_u_fifo_a2b/Mram_mem/DIA [1], \NlwBufferSignal_u_fifo_a2b/Mram_mem/DIA [0]}),
    .DIB({\NLW_u_fifo_a2b/Mram_mem_DIB[31]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DIB[30]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DIB[29]_UNCONNECTED 
, \NLW_u_fifo_a2b/Mram_mem_DIB[28]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DIB[27]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DIB[26]_UNCONNECTED , 
\NLW_u_fifo_a2b/Mram_mem_DIB[25]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DIB[24]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DIB[23]_UNCONNECTED , 
\NLW_u_fifo_a2b/Mram_mem_DIB[22]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DIB[21]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DIB[20]_UNCONNECTED , 
\NLW_u_fifo_a2b/Mram_mem_DIB[19]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DIB[18]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DIB[17]_UNCONNECTED , 
\NLW_u_fifo_a2b/Mram_mem_DIB[16]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DIB[15]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DIB[14]_UNCONNECTED , 
\NLW_u_fifo_a2b/Mram_mem_DIB[13]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DIB[12]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DIB[11]_UNCONNECTED , 
\NLW_u_fifo_a2b/Mram_mem_DIB[10]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DIB[9]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DIB[8]_UNCONNECTED , 
\NLW_u_fifo_a2b/Mram_mem_DIB[7]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DIB[6]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DIB[5]_UNCONNECTED , 
\NLW_u_fifo_a2b/Mram_mem_DIB[4]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DIB[3]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DIB[2]_UNCONNECTED , 
\NLW_u_fifo_a2b/Mram_mem_DIB[1]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DIB[0]_UNCONNECTED }),
    .DIPA({\NLW_u_fifo_a2b/Mram_mem_DIPA[3]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DIPA[2]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DIPA[1]_UNCONNECTED 
, \NlwBufferSignal_u_fifo_a2b/Mram_mem/DIPA [0]}),
    .DIPB({\NLW_u_fifo_a2b/Mram_mem_DIPB[3]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DIPB[2]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DIPB[1]_UNCONNECTED 
, \NLW_u_fifo_a2b/Mram_mem_DIPB[0]_UNCONNECTED }),
    .DOA({\NLW_u_fifo_a2b/Mram_mem_DOA[31]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DOA[30]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DOA[29]_UNCONNECTED 
, \NLW_u_fifo_a2b/Mram_mem_DOA[28]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DOA[27]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DOA[26]_UNCONNECTED , 
\NLW_u_fifo_a2b/Mram_mem_DOA[25]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DOA[24]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DOA[23]_UNCONNECTED , 
\NLW_u_fifo_a2b/Mram_mem_DOA[22]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DOA[21]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DOA[20]_UNCONNECTED , 
\NLW_u_fifo_a2b/Mram_mem_DOA[19]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DOA[18]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DOA[17]_UNCONNECTED , 
\NLW_u_fifo_a2b/Mram_mem_DOA[16]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DOA[15]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DOA[14]_UNCONNECTED , 
\NLW_u_fifo_a2b/Mram_mem_DOA[13]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DOA[12]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DOA[11]_UNCONNECTED , 
\NLW_u_fifo_a2b/Mram_mem_DOA[10]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DOA[9]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DOA[8]_UNCONNECTED , 
\NLW_u_fifo_a2b/Mram_mem_DOA[7]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DOA[6]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DOA[5]_UNCONNECTED , 
\NLW_u_fifo_a2b/Mram_mem_DOA[4]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DOA[3]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DOA[2]_UNCONNECTED , 
\NLW_u_fifo_a2b/Mram_mem_DOA[1]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DOA[0]_UNCONNECTED }),
    .DOB({\NLW_u_fifo_a2b/Mram_mem_DOB[31]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DOB[30]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DOB[29]_UNCONNECTED 
, \NLW_u_fifo_a2b/Mram_mem_DOB[28]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DOB[27]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DOB[26]_UNCONNECTED , 
\NLW_u_fifo_a2b/Mram_mem_DOB[25]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DOB[24]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DOB[23]_UNCONNECTED , 
\NLW_u_fifo_a2b/Mram_mem_DOB[22]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DOB[21]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DOB[20]_UNCONNECTED , 
\NLW_u_fifo_a2b/Mram_mem_DOB[19]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DOB[18]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DOB[17]_UNCONNECTED , 
\NLW_u_fifo_a2b/Mram_mem_DOB[16]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DOB[15]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DOB[14]_UNCONNECTED , 
\NLW_u_fifo_a2b/Mram_mem_DOB[13]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DOB[12]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DOB[11]_UNCONNECTED , 
\NLW_u_fifo_a2b/Mram_mem_DOB[10]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DOB[9]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DOB[8]_UNCONNECTED , 
a2b_rd_data[7], a2b_rd_data[6], a2b_rd_data[5], a2b_rd_data[4], a2b_rd_data[3], a2b_rd_data[2], a2b_rd_data[1], a2b_rd_data[0]}),
    .DOPA({\NLW_u_fifo_a2b/Mram_mem_DOPA[3]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DOPA[2]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DOPA[1]_UNCONNECTED 
, \NLW_u_fifo_a2b/Mram_mem_DOPA[0]_UNCONNECTED }),
    .DOPB({\NLW_u_fifo_a2b/Mram_mem_DOPB[3]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DOPB[2]_UNCONNECTED , \NLW_u_fifo_a2b/Mram_mem_DOPB[1]_UNCONNECTED 
, a2b_rd_data[8]}),
    .WEA({\NlwBufferSignal_u_fifo_a2b/Mram_mem/WEA [3], \NlwBufferSignal_u_fifo_a2b/Mram_mem/WEA [2], \NlwBufferSignal_u_fifo_a2b/Mram_mem/WEA [1], 
\NlwBufferSignal_u_fifo_a2b/Mram_mem/WEA [0]}),
    .WEB({1'b0, 1'b0, 1'b0, 1'b0})
  );
  X_RAMB16BWER #(
    .DATA_WIDTH_A ( 9 ),
    .DATA_WIDTH_B ( 9 ),
    .DOA_REG ( 0 ),
    .DOB_REG ( 0 ),
    .EN_RSTRAM_A ( "TRUE" ),
    .EN_RSTRAM_B ( "TRUE" ),
    .RST_PRIORITY_A ( "CE" ),
    .RST_PRIORITY_B ( "CE" ),
    .RSTTYPE ( "SYNC" ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_A ( 36'h000000000 ),
    .INIT_B ( 36'h000000000 ),
    .SRVAL_A ( 36'h000000000 ),
    .SRVAL_B ( 36'h000000000 ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .SIM_DEVICE ( "SPARTAN6" ),
    .INIT_FILE ( "NONE" ),
    .LOC ( "RAMB16_X1Y8" ))
  \u_fifo_b2a/Mram_mem  (
    .CLKA(\NlwBufferSignal_u_fifo_b2a/Mram_mem/CLKA ),
    .CLKB(\NlwBufferSignal_u_fifo_b2a/Mram_mem/CLKB ),
    .ENA(1'b1),
    .ENB(1'b1),
    .REGCEA(1'b0),
    .REGCEB(1'b0),
    .RSTA(1'b0),
    .RSTB(1'b0),
    .ADDRA({\NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRA [13], \NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRA [12], 
\NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRA [11], \NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRA [10], \NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRA [9], 
\NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRA [8], \NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRA [7], \NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRA [6], 
\NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRA [5], \NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRA [4], \NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRA [3], 
\NLW_u_fifo_b2a/Mram_mem_ADDRA[2]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_ADDRA[1]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_ADDRA[0]_UNCONNECTED }),
    .ADDRB({\NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRB [13], \NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRB [12], 
\NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRB [11], \NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRB [10], \NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRB [9], 
\NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRB [8], \NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRB [7], \NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRB [6], 
\NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRB [5], \NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRB [4], \NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRB [3], 
\NLW_u_fifo_b2a/Mram_mem_ADDRB[2]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_ADDRB[1]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_ADDRB[0]_UNCONNECTED }),
    .DIA({\NLW_u_fifo_b2a/Mram_mem_DIA[31]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DIA[30]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DIA[29]_UNCONNECTED 
, \NLW_u_fifo_b2a/Mram_mem_DIA[28]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DIA[27]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DIA[26]_UNCONNECTED , 
\NLW_u_fifo_b2a/Mram_mem_DIA[25]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DIA[24]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DIA[23]_UNCONNECTED , 
\NLW_u_fifo_b2a/Mram_mem_DIA[22]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DIA[21]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DIA[20]_UNCONNECTED , 
\NLW_u_fifo_b2a/Mram_mem_DIA[19]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DIA[18]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DIA[17]_UNCONNECTED , 
\NLW_u_fifo_b2a/Mram_mem_DIA[16]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DIA[15]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DIA[14]_UNCONNECTED , 
\NLW_u_fifo_b2a/Mram_mem_DIA[13]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DIA[12]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DIA[11]_UNCONNECTED , 
\NLW_u_fifo_b2a/Mram_mem_DIA[10]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DIA[9]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DIA[8]_UNCONNECTED , 
\NlwBufferSignal_u_fifo_b2a/Mram_mem/DIA [7], \NlwBufferSignal_u_fifo_b2a/Mram_mem/DIA [6], \NlwBufferSignal_u_fifo_b2a/Mram_mem/DIA [5], 
\NlwBufferSignal_u_fifo_b2a/Mram_mem/DIA [4], \NlwBufferSignal_u_fifo_b2a/Mram_mem/DIA [3], \NlwBufferSignal_u_fifo_b2a/Mram_mem/DIA [2], 
\NlwBufferSignal_u_fifo_b2a/Mram_mem/DIA [1], \NlwBufferSignal_u_fifo_b2a/Mram_mem/DIA [0]}),
    .DIB({\NLW_u_fifo_b2a/Mram_mem_DIB[31]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DIB[30]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DIB[29]_UNCONNECTED 
, \NLW_u_fifo_b2a/Mram_mem_DIB[28]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DIB[27]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DIB[26]_UNCONNECTED , 
\NLW_u_fifo_b2a/Mram_mem_DIB[25]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DIB[24]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DIB[23]_UNCONNECTED , 
\NLW_u_fifo_b2a/Mram_mem_DIB[22]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DIB[21]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DIB[20]_UNCONNECTED , 
\NLW_u_fifo_b2a/Mram_mem_DIB[19]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DIB[18]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DIB[17]_UNCONNECTED , 
\NLW_u_fifo_b2a/Mram_mem_DIB[16]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DIB[15]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DIB[14]_UNCONNECTED , 
\NLW_u_fifo_b2a/Mram_mem_DIB[13]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DIB[12]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DIB[11]_UNCONNECTED , 
\NLW_u_fifo_b2a/Mram_mem_DIB[10]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DIB[9]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DIB[8]_UNCONNECTED , 
\NLW_u_fifo_b2a/Mram_mem_DIB[7]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DIB[6]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DIB[5]_UNCONNECTED , 
\NLW_u_fifo_b2a/Mram_mem_DIB[4]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DIB[3]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DIB[2]_UNCONNECTED , 
\NLW_u_fifo_b2a/Mram_mem_DIB[1]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DIB[0]_UNCONNECTED }),
    .DIPA({\NLW_u_fifo_b2a/Mram_mem_DIPA[3]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DIPA[2]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DIPA[1]_UNCONNECTED 
, \NlwBufferSignal_u_fifo_b2a/Mram_mem/DIPA [0]}),
    .DIPB({\NLW_u_fifo_b2a/Mram_mem_DIPB[3]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DIPB[2]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DIPB[1]_UNCONNECTED 
, \NLW_u_fifo_b2a/Mram_mem_DIPB[0]_UNCONNECTED }),
    .DOA({\NLW_u_fifo_b2a/Mram_mem_DOA[31]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DOA[30]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DOA[29]_UNCONNECTED 
, \NLW_u_fifo_b2a/Mram_mem_DOA[28]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DOA[27]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DOA[26]_UNCONNECTED , 
\NLW_u_fifo_b2a/Mram_mem_DOA[25]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DOA[24]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DOA[23]_UNCONNECTED , 
\NLW_u_fifo_b2a/Mram_mem_DOA[22]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DOA[21]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DOA[20]_UNCONNECTED , 
\NLW_u_fifo_b2a/Mram_mem_DOA[19]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DOA[18]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DOA[17]_UNCONNECTED , 
\NLW_u_fifo_b2a/Mram_mem_DOA[16]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DOA[15]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DOA[14]_UNCONNECTED , 
\NLW_u_fifo_b2a/Mram_mem_DOA[13]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DOA[12]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DOA[11]_UNCONNECTED , 
\NLW_u_fifo_b2a/Mram_mem_DOA[10]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DOA[9]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DOA[8]_UNCONNECTED , 
\NLW_u_fifo_b2a/Mram_mem_DOA[7]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DOA[6]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DOA[5]_UNCONNECTED , 
\NLW_u_fifo_b2a/Mram_mem_DOA[4]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DOA[3]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DOA[2]_UNCONNECTED , 
\NLW_u_fifo_b2a/Mram_mem_DOA[1]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DOA[0]_UNCONNECTED }),
    .DOB({\NLW_u_fifo_b2a/Mram_mem_DOB[31]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DOB[30]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DOB[29]_UNCONNECTED 
, \NLW_u_fifo_b2a/Mram_mem_DOB[28]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DOB[27]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DOB[26]_UNCONNECTED , 
\NLW_u_fifo_b2a/Mram_mem_DOB[25]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DOB[24]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DOB[23]_UNCONNECTED , 
\NLW_u_fifo_b2a/Mram_mem_DOB[22]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DOB[21]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DOB[20]_UNCONNECTED , 
\NLW_u_fifo_b2a/Mram_mem_DOB[19]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DOB[18]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DOB[17]_UNCONNECTED , 
\NLW_u_fifo_b2a/Mram_mem_DOB[16]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DOB[15]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DOB[14]_UNCONNECTED , 
\NLW_u_fifo_b2a/Mram_mem_DOB[13]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DOB[12]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DOB[11]_UNCONNECTED , 
\NLW_u_fifo_b2a/Mram_mem_DOB[10]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DOB[9]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DOB[8]_UNCONNECTED , 
b2a_rd_data[7], b2a_rd_data[6], b2a_rd_data[5], b2a_rd_data[4], b2a_rd_data[3], b2a_rd_data[2], b2a_rd_data[1], b2a_rd_data[0]}),
    .DOPA({\NLW_u_fifo_b2a/Mram_mem_DOPA[3]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DOPA[2]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DOPA[1]_UNCONNECTED 
, \NLW_u_fifo_b2a/Mram_mem_DOPA[0]_UNCONNECTED }),
    .DOPB({\NLW_u_fifo_b2a/Mram_mem_DOPB[3]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DOPB[2]_UNCONNECTED , \NLW_u_fifo_b2a/Mram_mem_DOPB[1]_UNCONNECTED 
, b2a_rd_data[8]}),
    .WEA({\NlwBufferSignal_u_fifo_b2a/Mram_mem/WEA [3], \NlwBufferSignal_u_fifo_b2a/Mram_mem/WEA [2], \NlwBufferSignal_u_fifo_b2a/Mram_mem/WEA [1], 
\NlwBufferSignal_u_fifo_b2a/Mram_mem/WEA [0]}),
    .WEB({1'b0, 1'b0, 1'b0, 1'b0})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y44" ),
    .INIT ( 64'h0000003300000033 ))
  \u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_lut<3>1  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR3(\u_rx_a/m_tindex [9]),
    .ADR1(\u_rx_a/m_tindex [10]),
    .ADR4(\u_rx_a/m_tindex [11]),
    .ADR5(1'b1),
    .O(\u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_lut<3> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y44" ),
    .INIT ( 32'h00000000 ))
  \N1_165.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_165.D5LUT_O_UNCONNECTED )
  );
  X_ONE #(
    .LOC ( "SLICE_X12Y44" ))
  \ProtoComp123.CYINITVCC  (
    .O(\ProtoComp123.CYINITVCC.1 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X12Y44" ))
  \u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_cy<3>  (
    .CI(1'b0),
    .CYINIT(\ProtoComp123.CYINITVCC.1 ),
    .CO({\u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_cy<3>_8037 , 
\NLW_u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_cy<3>_CO[2]_UNCONNECTED , 
\NLW_u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_cy<3>_CO[1]_UNCONNECTED , 
\NLW_u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\NLW_u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_cy<3>_O[3]_UNCONNECTED , 
\NLW_u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_cy<3>_O[2]_UNCONNECTED , 
\NLW_u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_cy<3>_O[1]_UNCONNECTED , 
\NLW_u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_cy<3>_O[0]_UNCONNECTED }),
    .S({\u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_lut<3> , \u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_lut<2> , 
\u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_lut<1>_126 , \u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_lut<0>_133 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y44" ),
    .INIT ( 64'h0030000300300003 ))
  \u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_lut<2>1  (
    .ADR0(1'b1),
    .ADR1(\u_rx_a/m_tindex [7]),
    .ADR3(\u_rx_a/m_tindex [8]),
    .ADR2(\u_rx_a/m_tindex [6]),
    .ADR4(\u_engine/idx_dport_lo [6]),
    .ADR5(1'b1),
    .O(\u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_lut<2> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y44" ),
    .INIT ( 32'h00000000 ))
  \N1_166.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_166.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y44" ),
    .INIT ( 64'h8421000000008421 ))
  \u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_lut<1>  (
    .ADR5(\u_rx_a/m_tindex [3]),
    .ADR4(\u_engine/idx_dport_lo [3]),
    .ADR1(\u_rx_a/m_tindex [4]),
    .ADR3(\u_engine/idx_dport_lo [4]),
    .ADR0(\u_rx_a/m_tindex [5]),
    .ADR2(\u_engine/idx_dport_lo<5>_0 ),
    .O(\u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_lut<1>_126 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y44" ),
    .INIT ( 64'h2020101020201010 ))
  \u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_lut<0>  (
    .ADR3(1'b1),
    .ADR2(\u_rx_a/m_tindex [0]),
    .ADR1(\u_rx_a/m_tindex [1]),
    .ADR4(\u_rx_a/m_tindex [2]),
    .ADR0(\u_engine/idx_dport_lo [2]),
    .ADR5(1'b1),
    .O(\u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_lut<0>_133 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y44" ),
    .INIT ( 32'h00000000 ))
  \N1_168.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_168.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \u_engine/s_tindex[15]_idx_dport_lo[15]_equal_47_o/u_engine/s_tindex[15]_idx_dport_lo[15]_equal_47_o_BMUX_Delay  (
    .I(\u_engine/s_tindex[15]_idx_dport_lo[15]_equal_47_o ),
    .O(\u_engine/s_tindex[15]_idx_dport_lo[15]_equal_47_o_0 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X12Y45" ))
  \u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_cy<5>  (
    .CI(\u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_cy<3>_8037 ),
    .CYINIT(1'b0),
    .CO({\NLW_u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_cy<5>_CO[3]_UNCONNECTED , 
\NLW_u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_cy<5>_CO[2]_UNCONNECTED , \u_engine/s_tindex[15]_idx_dport_lo[15]_equal_47_o , 
\NLW_u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_cy<5>_CO[0]_UNCONNECTED }),
    .DI({\NLW_u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_cy<5>_DI[3]_UNCONNECTED , 
\NLW_u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_cy<5>_DI[2]_UNCONNECTED , 1'b0, 1'b0}),
    .O({\NLW_u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_cy<5>_O[3]_UNCONNECTED , 
\NLW_u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_cy<5>_O[2]_UNCONNECTED , 
\NLW_u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_cy<5>_O[1]_UNCONNECTED , 
\NLW_u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_cy<5>_O[0]_UNCONNECTED }),
    .S({\NLW_u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_cy<5>_S[3]_UNCONNECTED , 
\NLW_u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_cy<5>_S[2]_UNCONNECTED , 
\u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_lut<5> , \u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_lut<4> })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y45" ),
    .INIT ( 64'h3333333333333333 ))
  \u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_lut<5>1_INV_0  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\u_rx_a/m_tindex [15]),
    .ADR5(1'b1),
    .O(\u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_lut<5> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y45" ),
    .INIT ( 32'h00000000 ))
  \N1_163.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_163.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y45" ),
    .INIT ( 64'h0000003300000033 ))
  \u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_lut<4>1  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR1(\u_rx_a/m_tindex [12]),
    .ADR4(\u_rx_a/m_tindex [13]),
    .ADR3(\u_rx_a/m_tindex [14]),
    .ADR5(1'b1),
    .O(\u_engine/Mcompar_s_tindex[15]_idx_dport_lo[15]_equal_47_o_lut<4> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y45" ),
    .INIT ( 32'h00000000 ))
  \N1_164.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_164.A5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y19" ),
    .INIT ( 64'h9669699669969669 ))
  \u_fifo_b2a/Msub_used_lut<3>  (
    .ADR2(\u_fifo_b2a/rg_s2 [4]),
    .ADR1(\u_fifo_b2a/rg_s2 [5]),
    .ADR4(\u_fifo_b2a/rg_s2 [6]),
    .ADR3(\u_fifo_b2a/rg_s2 [7]),
    .ADR5(N137),
    .ADR0(\u_fifo_b2a/rptr_w[8] ),
    .O(\u_fifo_b2a/Msub_used_lut [3])
  );
  X_ONE #(
    .LOC ( "SLICE_X4Y19" ))
  \ProtoComp125.CYINITVCC  (
    .O(\ProtoComp125.CYINITVCC.1_162 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X4Y19" ))
  \u_fifo_b2a/Msub_used_cy<3>  (
    .CI(1'b0),
    .CYINIT(\ProtoComp125.CYINITVCC.1_162 ),
    .CO({\u_fifo_b2a/Msub_used_cy[3] , \NLW_u_fifo_b2a/Msub_used_cy<3>_CO[2]_UNCONNECTED , \NLW_u_fifo_b2a/Msub_used_cy<3>_CO[1]_UNCONNECTED , 
\NLW_u_fifo_b2a/Msub_used_cy<3>_CO[0]_UNCONNECTED }),
    .DI({\NlwBufferSignal_u_fifo_b2a/Msub_used_cy<3>/DI<3> , \NlwBufferSignal_u_fifo_b2a/Msub_used_cy<3>/DI<2> , 
\NlwBufferSignal_u_fifo_b2a/Msub_used_cy<3>/DI<1> , \NlwBufferSignal_u_fifo_b2a/Msub_used_cy<3>/DI<0> }),
    .O({\NLW_u_fifo_b2a/Msub_used_cy<3>_O[3]_UNCONNECTED , \NLW_u_fifo_b2a/Msub_used_cy<3>_O[2]_UNCONNECTED , 
\NLW_u_fifo_b2a/Msub_used_cy<3>_O[1]_UNCONNECTED , \NLW_u_fifo_b2a/Msub_used_cy<3>_O[0]_UNCONNECTED }),
    .S({\u_fifo_b2a/Msub_used_lut [3], \u_fifo_b2a/Msub_used_lut [2], \u_fifo_b2a/Msub_used_lut [1], \u_fifo_b2a/Msub_used_lut [0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y19" ),
    .INIT ( 64'h6996966996696996 ))
  \u_fifo_b2a/Msub_used_lut<2>  (
    .ADR2(\u_fifo_b2a/rg_s2 [4]),
    .ADR4(\u_fifo_b2a/rg_s2 [5]),
    .ADR5(\u_fifo_b2a/rg_s2 [6]),
    .ADR1(\u_fifo_b2a/rg_s2 [7]),
    .ADR0(N135),
    .ADR3(\u_fifo_b2a/rptr_w[8] ),
    .O(\u_fifo_b2a/Msub_used_lut [2])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y19" ),
    .INIT ( 64'h9669699669969669 ))
  \u_fifo_b2a/Msub_used_lut<1>  (
    .ADR1(\u_fifo_b2a/rg_s2 [4]),
    .ADR2(\u_fifo_b2a/rg_s2 [5]),
    .ADR0(\u_fifo_b2a/rg_s2 [6]),
    .ADR4(\u_fifo_b2a/rg_s2 [7]),
    .ADR5(N133),
    .ADR3(\u_fifo_b2a/rptr_w[8] ),
    .O(\u_fifo_b2a/Msub_used_lut [1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y19" ),
    .INIT ( 64'h6996966996696996 ))
  \u_fifo_b2a/Msub_used_lut<0>  (
    .ADR2(\u_fifo_b2a/wptr [0]),
    .ADR3(\u_fifo_b2a/rg_s2 [5]),
    .ADR0(\u_fifo_b2a/rg_s2 [6]),
    .ADR5(\u_fifo_b2a/rg_s2 [7]),
    .ADR1(N131),
    .ADR4(\u_fifo_b2a/rptr_w[8] ),
    .O(\u_fifo_b2a/Msub_used_lut [0])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y20" ),
    .INIT ( 64'h9669699669969669 ))
  \u_fifo_b2a/Msub_used_lut<7>  (
    .ADR0(\u_fifo_b2a/rg_s2 [8]),
    .ADR1(\u_fifo_b2a/wptr [7]),
    .ADR5(\u_fifo_b2a/rg_s2 [9]),
    .ADR4(\u_fifo_b2a/rg_s2 [10]),
    .ADR3(\u_fifo_b2a/rg_s2 [11]),
    .ADR2(\u_fifo_b2a/rg_s2 [7]),
    .O(\u_fifo_b2a/Msub_used_lut [7])
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X4Y20" ))
  \u_fifo_b2a/Msub_used_cy<7>  (
    .CI(\u_fifo_b2a/Msub_used_cy[3] ),
    .CYINIT(1'b0),
    .CO({\u_fifo_b2a/Msub_used_cy[7] , \NLW_u_fifo_b2a/Msub_used_cy<7>_CO[2]_UNCONNECTED , \NLW_u_fifo_b2a/Msub_used_cy<7>_CO[1]_UNCONNECTED , 
\NLW_u_fifo_b2a/Msub_used_cy<7>_CO[0]_UNCONNECTED }),
    .DI({\NlwBufferSignal_u_fifo_b2a/Msub_used_cy<7>/DI<3> , \NlwBufferSignal_u_fifo_b2a/Msub_used_cy<7>/DI<2> , 
\NlwBufferSignal_u_fifo_b2a/Msub_used_cy<7>/DI<1> , \NlwBufferSignal_u_fifo_b2a/Msub_used_cy<7>/DI<0> }),
    .O({\NLW_u_fifo_b2a/Msub_used_cy<7>_O[3]_UNCONNECTED , \NLW_u_fifo_b2a/Msub_used_cy<7>_O[2]_UNCONNECTED , 
\NLW_u_fifo_b2a/Msub_used_cy<7>_O[1]_UNCONNECTED , \NLW_u_fifo_b2a/Msub_used_cy<7>_O[0]_UNCONNECTED }),
    .S({\u_fifo_b2a/Msub_used_lut [7], \u_fifo_b2a/Msub_used_lut [6], \u_fifo_b2a/Msub_used_lut [5], \u_fifo_b2a/Msub_used_lut [4]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y20" ),
    .INIT ( 64'hCCCCCCCC33333333 ))
  \u_fifo_b2a/Msub_used_lut<6>  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR5(\u_fifo_b2a/wptr [6]),
    .ADR1(\u_fifo_b2a/rptr_w[6] ),
    .O(\u_fifo_b2a/Msub_used_lut [6])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y20" ),
    .INIT ( 64'h3C3CC3C33C3CC3C3 ))
  \u_fifo_b2a/Msub_used_lut<5>  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .ADR1(\u_fifo_b2a/wptr [5]),
    .ADR4(\u_fifo_b2a/rg_s2 [5]),
    .ADR2(\u_fifo_b2a/rptr_w[6] ),
    .O(\u_fifo_b2a/Msub_used_lut [5])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y20" ),
    .INIT ( 64'h9669699669969669 ))
  \u_fifo_b2a/Msub_used_lut<4>  (
    .ADR0(\u_fifo_b2a/wptr [4]),
    .ADR1(\u_fifo_b2a/rg_s2 [4]),
    .ADR4(\u_fifo_b2a/rg_s2 [5]),
    .ADR3(\u_fifo_b2a/rg_s2 [6]),
    .ADR2(\u_fifo_b2a/rg_s2 [7]),
    .ADR5(\u_fifo_b2a/rptr_w[8] ),
    .O(\u_fifo_b2a/Msub_used_lut [4])
  );
  X_BUF   \u_fifo_b2a/used<11>/u_fifo_b2a/used<11>_DMUX_Delay  (
    .I(\u_fifo_b2a/used [11]),
    .O(\u_fifo_b2a/used<11>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y21" ),
    .INIT ( 64'hCCCCCCCC33333333 ))
  \u_fifo_b2a/Msub_used_lut<11>  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR5(\u_fifo_b2a/wptr [11]),
    .ADR1(\u_fifo_b2a/rg_s2 [11]),
    .O(\u_fifo_b2a/Msub_used_lut [11])
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X4Y21" ))
  \u_fifo_b2a/Msub_used_xor<11>  (
    .CI(\u_fifo_b2a/Msub_used_cy[7] ),
    .CYINIT(1'b0),
    .CO({\NLW_u_fifo_b2a/Msub_used_xor<11>_CO[3]_UNCONNECTED , \NLW_u_fifo_b2a/Msub_used_xor<11>_CO[2]_UNCONNECTED , 
\NLW_u_fifo_b2a/Msub_used_xor<11>_CO[1]_UNCONNECTED , \NLW_u_fifo_b2a/Msub_used_xor<11>_CO[0]_UNCONNECTED }),
    .DI({\NLW_u_fifo_b2a/Msub_used_xor<11>_DI[3]_UNCONNECTED , \NlwBufferSignal_u_fifo_b2a/Msub_used_xor<11>/DI<2> , 
\NlwBufferSignal_u_fifo_b2a/Msub_used_xor<11>/DI<1> , \NlwBufferSignal_u_fifo_b2a/Msub_used_xor<11>/DI<0> }),
    .O({\u_fifo_b2a/used [11], \NLW_u_fifo_b2a/Msub_used_xor<11>_O[2]_UNCONNECTED , \NLW_u_fifo_b2a/Msub_used_xor<11>_O[1]_UNCONNECTED , 
\NLW_u_fifo_b2a/Msub_used_xor<11>_O[0]_UNCONNECTED }),
    .S({\u_fifo_b2a/Msub_used_lut [11], \u_fifo_b2a/Msub_used_lut [10], \u_fifo_b2a/Msub_used_lut [9], \u_fifo_b2a/Msub_used_lut [8]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y21" ),
    .INIT ( 64'h3333CCCCCCCC3333 ))
  \u_fifo_b2a/Msub_used_lut<10>  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR1(\u_fifo_b2a/wptr [10]),
    .ADR4(\u_fifo_b2a/rg_s2 [10]),
    .ADR5(\u_fifo_b2a/rg_s2 [11]),
    .O(\u_fifo_b2a/Msub_used_lut [10])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y21" ),
    .INIT ( 64'hC33C3CC3C33C3CC3 ))
  \u_fifo_b2a/Msub_used_lut<9>  (
    .ADR0(1'b1),
    .ADR5(1'b1),
    .ADR1(\u_fifo_b2a/wptr [9]),
    .ADR4(\u_fifo_b2a/rg_s2 [9]),
    .ADR3(\u_fifo_b2a/rg_s2 [10]),
    .ADR2(\u_fifo_b2a/rg_s2 [11]),
    .O(\u_fifo_b2a/Msub_used_lut [9])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y21" ),
    .INIT ( 64'h3CC3C33CC33C3CC3 ))
  \u_fifo_b2a/Msub_used_lut<8>  (
    .ADR0(1'b1),
    .ADR1(\u_fifo_b2a/wptr [8]),
    .ADR5(\u_fifo_b2a/rg_s2 [8]),
    .ADR4(\u_fifo_b2a/rg_s2 [9]),
    .ADR3(\u_fifo_b2a/rg_s2 [10]),
    .ADR2(\u_fifo_b2a/rg_s2 [11]),
    .O(\u_fifo_b2a/Msub_used_lut [8])
  );
  X_FF #(
    .LOC ( "SLICE_X16Y39" ),
    .INIT ( 1'b0 ))
  \u_rx_a/bcnt_3  (
    .CE(\u_rx_a/_n0213_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/bcnt_3/CLK ),
    .I(\u_rx_a/Mcount_bcnt3 ),
    .O(\u_rx_a/bcnt [3]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y39" ),
    .INIT ( 64'hCCCC0000CCCC0000 ))
  \u_rx_a/Mcount_bcnt_lut<3>  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_rx_a/bcnt [3]),
    .ADR1(\u_rx_a/state_FSM_FFd1_7367 ),
    .ADR5(1'b1),
    .O(\u_rx_a/Mcount_bcnt_lut [3])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y39" ),
    .INIT ( 32'h00000000 ))
  \N1_20.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_20.D5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y39" ),
    .INIT ( 1'b0 ))
  \u_rx_a/bcnt_2  (
    .CE(\u_rx_a/_n0213_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/bcnt_2/CLK ),
    .I(\u_rx_a/Mcount_bcnt2 ),
    .O(\u_rx_a/bcnt [2]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X16Y39" ))
  \u_rx_a/Mcount_bcnt_cy<3>  (
    .CI(1'b0),
    .CYINIT(\u_rx_a/state_FSM_FFd1_7367 ),
    .CO({\u_rx_a/Mcount_bcnt_cy[3] , \NLW_u_rx_a/Mcount_bcnt_cy<3>_CO[2]_UNCONNECTED , \NLW_u_rx_a/Mcount_bcnt_cy<3>_CO[1]_UNCONNECTED , 
\NLW_u_rx_a/Mcount_bcnt_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\u_rx_a/Mcount_bcnt3 , \u_rx_a/Mcount_bcnt2 , \u_rx_a/Mcount_bcnt1 , \u_rx_a/Mcount_bcnt }),
    .S({\u_rx_a/Mcount_bcnt_lut [3], \u_rx_a/Mcount_bcnt_lut [2], \u_rx_a/Mcount_bcnt_lut [1], \u_rx_a/Mcount_bcnt_lut [0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y39" ),
    .INIT ( 64'hFF000000FF000000 ))
  \u_rx_a/Mcount_bcnt_lut<2>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_rx_a/bcnt [2]),
    .ADR3(\u_rx_a/state_FSM_FFd1_7367 ),
    .ADR5(1'b1),
    .O(\u_rx_a/Mcount_bcnt_lut [2])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y39" ),
    .INIT ( 32'h00000000 ))
  \N1_21.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_21.C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y39" ),
    .INIT ( 1'b0 ))
  \u_rx_a/bcnt_1  (
    .CE(\u_rx_a/_n0213_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/bcnt_1/CLK ),
    .I(\u_rx_a/Mcount_bcnt1 ),
    .O(\u_rx_a/bcnt [1]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y39" ),
    .INIT ( 64'hCCCC0000CCCC0000 ))
  \u_rx_a/Mcount_bcnt_lut<1>  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_rx_a/bcnt [1]),
    .ADR1(\u_rx_a/state_FSM_FFd1_7367 ),
    .ADR5(1'b1),
    .O(\u_rx_a/Mcount_bcnt_lut [1])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y39" ),
    .INIT ( 32'h00000000 ))
  \N1_22.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_22.B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y39" ),
    .INIT ( 1'b0 ))
  \u_rx_a/bcnt_0  (
    .CE(\u_rx_a/_n0213_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/bcnt_0/CLK ),
    .I(\u_rx_a/Mcount_bcnt ),
    .O(\u_rx_a/bcnt [0]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y39" ),
    .INIT ( 64'hCC00CC00CC00CC00 ))
  \u_rx_a/Mcount_bcnt_lut<0>  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR1(\u_rx_a/bcnt [0]),
    .ADR3(\u_rx_a/state_FSM_FFd1_7367 ),
    .ADR5(1'b1),
    .O(\u_rx_a/Mcount_bcnt_lut [0])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y39" ),
    .INIT ( 32'h00000000 ))
  \N1_23.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_23.A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y40" ),
    .INIT ( 1'b0 ))
  \u_rx_a/bcnt_7  (
    .CE(\u_rx_a/_n0213_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/bcnt_7/CLK ),
    .I(\u_rx_a/Mcount_bcnt7 ),
    .O(\u_rx_a/bcnt [7]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y40" ),
    .INIT ( 64'hCCCC0000CCCC0000 ))
  \u_rx_a/Mcount_bcnt_lut<7>  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_rx_a/bcnt [7]),
    .ADR1(\u_rx_a/state_FSM_FFd1_7367 ),
    .ADR5(1'b1),
    .O(\u_rx_a/Mcount_bcnt_lut [7])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y40" ),
    .INIT ( 32'h00000000 ))
  \N1_16.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_16.D5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y40" ),
    .INIT ( 1'b0 ))
  \u_rx_a/bcnt_6  (
    .CE(\u_rx_a/_n0213_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/bcnt_6/CLK ),
    .I(\u_rx_a/Mcount_bcnt6 ),
    .O(\u_rx_a/bcnt [6]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X16Y40" ))
  \u_rx_a/Mcount_bcnt_cy<7>  (
    .CI(\u_rx_a/Mcount_bcnt_cy[3] ),
    .CYINIT(1'b0),
    .CO({\u_rx_a/Mcount_bcnt_cy[7] , \NLW_u_rx_a/Mcount_bcnt_cy<7>_CO[2]_UNCONNECTED , \NLW_u_rx_a/Mcount_bcnt_cy<7>_CO[1]_UNCONNECTED , 
\NLW_u_rx_a/Mcount_bcnt_cy<7>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\u_rx_a/Mcount_bcnt7 , \u_rx_a/Mcount_bcnt6 , \u_rx_a/Mcount_bcnt5 , \u_rx_a/Mcount_bcnt4 }),
    .S({\u_rx_a/Mcount_bcnt_lut [7], \u_rx_a/Mcount_bcnt_lut [6], \u_rx_a/Mcount_bcnt_lut [5], \u_rx_a/Mcount_bcnt_lut [4]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y40" ),
    .INIT ( 64'hCCCC0000CCCC0000 ))
  \u_rx_a/Mcount_bcnt_lut<6>  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_rx_a/bcnt [6]),
    .ADR1(\u_rx_a/state_FSM_FFd1_7367 ),
    .ADR5(1'b1),
    .O(\u_rx_a/Mcount_bcnt_lut [6])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y40" ),
    .INIT ( 32'h00000000 ))
  \N1_17.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_17.C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y40" ),
    .INIT ( 1'b0 ))
  \u_rx_a/bcnt_5  (
    .CE(\u_rx_a/_n0213_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/bcnt_5/CLK ),
    .I(\u_rx_a/Mcount_bcnt5 ),
    .O(\u_rx_a/bcnt [5]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y40" ),
    .INIT ( 64'hF0F00000F0F00000 ))
  \u_rx_a/Mcount_bcnt_lut<5>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_rx_a/bcnt [5]),
    .ADR2(\u_rx_a/state_FSM_FFd1_7367 ),
    .ADR5(1'b1),
    .O(\u_rx_a/Mcount_bcnt_lut [5])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y40" ),
    .INIT ( 32'h00000000 ))
  \N1_18.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_18.B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y40" ),
    .INIT ( 1'b0 ))
  \u_rx_a/bcnt_4  (
    .CE(\u_rx_a/_n0213_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/bcnt_4/CLK ),
    .I(\u_rx_a/Mcount_bcnt4 ),
    .O(\u_rx_a/bcnt [4]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y40" ),
    .INIT ( 64'hFF000000FF000000 ))
  \u_rx_a/Mcount_bcnt_lut<4>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_rx_a/bcnt [4]),
    .ADR3(\u_rx_a/state_FSM_FFd1_7367 ),
    .ADR5(1'b1),
    .O(\u_rx_a/Mcount_bcnt_lut [4])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y40" ),
    .INIT ( 32'h00000000 ))
  \N1_19.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_19.A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y41" ),
    .INIT ( 1'b0 ))
  \u_rx_a/bcnt_11  (
    .CE(\u_rx_a/_n0213_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/bcnt_11/CLK ),
    .I(\u_rx_a/Mcount_bcnt11 ),
    .O(\u_rx_a/bcnt [11]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y41" ),
    .INIT ( 64'hFF000000FF000000 ))
  \u_rx_a/Mcount_bcnt_lut<11>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\u_rx_a/bcnt [11]),
    .ADR4(\u_rx_a/state_FSM_FFd1_7367 ),
    .ADR5(1'b1),
    .O(\u_rx_a/Mcount_bcnt_lut [11])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y41" ),
    .INIT ( 32'h00000000 ))
  \N1_12.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_12.D5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y41" ),
    .INIT ( 1'b0 ))
  \u_rx_a/bcnt_10  (
    .CE(\u_rx_a/_n0213_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/bcnt_10/CLK ),
    .I(\u_rx_a/Mcount_bcnt10 ),
    .O(\u_rx_a/bcnt [10]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X16Y41" ))
  \u_rx_a/Mcount_bcnt_cy<11>  (
    .CI(\u_rx_a/Mcount_bcnt_cy[7] ),
    .CYINIT(1'b0),
    .CO({\u_rx_a/Mcount_bcnt_cy[11] , \NLW_u_rx_a/Mcount_bcnt_cy<11>_CO[2]_UNCONNECTED , \NLW_u_rx_a/Mcount_bcnt_cy<11>_CO[1]_UNCONNECTED , 
\NLW_u_rx_a/Mcount_bcnt_cy<11>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\u_rx_a/Mcount_bcnt11 , \u_rx_a/Mcount_bcnt10 , \u_rx_a/Mcount_bcnt9 , \u_rx_a/Mcount_bcnt8 }),
    .S({\u_rx_a/Mcount_bcnt_lut [11], \u_rx_a/Mcount_bcnt_lut [10], \u_rx_a/Mcount_bcnt_lut [9], \u_rx_a/Mcount_bcnt_lut [8]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y41" ),
    .INIT ( 64'hFF000000FF000000 ))
  \u_rx_a/Mcount_bcnt_lut<10>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_rx_a/bcnt [10]),
    .ADR3(\u_rx_a/state_FSM_FFd1_7367 ),
    .ADR5(1'b1),
    .O(\u_rx_a/Mcount_bcnt_lut [10])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y41" ),
    .INIT ( 32'h00000000 ))
  \N1_13.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_13.C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y41" ),
    .INIT ( 1'b0 ))
  \u_rx_a/bcnt_9  (
    .CE(\u_rx_a/_n0213_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/bcnt_9/CLK ),
    .I(\u_rx_a/Mcount_bcnt9 ),
    .O(\u_rx_a/bcnt [9]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y41" ),
    .INIT ( 64'hFF000000FF000000 ))
  \u_rx_a/Mcount_bcnt_lut<9>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_rx_a/bcnt [9]),
    .ADR3(\u_rx_a/state_FSM_FFd1_7367 ),
    .ADR5(1'b1),
    .O(\u_rx_a/Mcount_bcnt_lut [9])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y41" ),
    .INIT ( 32'h00000000 ))
  \N1_14.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_14.B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y41" ),
    .INIT ( 1'b0 ))
  \u_rx_a/bcnt_8  (
    .CE(\u_rx_a/_n0213_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/bcnt_8/CLK ),
    .I(\u_rx_a/Mcount_bcnt8 ),
    .O(\u_rx_a/bcnt [8]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y41" ),
    .INIT ( 64'hAAAA0000AAAA0000 ))
  \u_rx_a/Mcount_bcnt_lut<8>  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_rx_a/bcnt [8]),
    .ADR0(\u_rx_a/state_FSM_FFd1_7367 ),
    .ADR5(1'b1),
    .O(\u_rx_a/Mcount_bcnt_lut [8])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y41" ),
    .INIT ( 32'h00000000 ))
  \N1_15.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_15.A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y42" ),
    .INIT ( 1'b0 ))
  \u_rx_a/bcnt_15  (
    .CE(\u_rx_a/_n0213_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/bcnt_15/CLK ),
    .I(\u_rx_a/Mcount_bcnt15 ),
    .O(\u_rx_a/bcnt [15]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y42" ),
    .INIT ( 64'hCCCCCCCC00000000 ))
  \u_rx_a/Mcount_bcnt_lut<15>  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR5(\u_rx_a/bcnt [15]),
    .ADR4(1'b1),
    .ADR1(\u_rx_a/state_FSM_FFd1_7367 ),
    .O(\u_rx_a/Mcount_bcnt_lut [15])
  );
  X_FF #(
    .LOC ( "SLICE_X16Y42" ),
    .INIT ( 1'b0 ))
  \u_rx_a/bcnt_14  (
    .CE(\u_rx_a/_n0213_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/bcnt_14/CLK ),
    .I(\u_rx_a/Mcount_bcnt14 ),
    .O(\u_rx_a/bcnt [14]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X16Y42" ))
  \u_rx_a/Mcount_bcnt_xor<15>  (
    .CI(\u_rx_a/Mcount_bcnt_cy[11] ),
    .CYINIT(1'b0),
    .CO({\NLW_u_rx_a/Mcount_bcnt_xor<15>_CO[3]_UNCONNECTED , \NLW_u_rx_a/Mcount_bcnt_xor<15>_CO[2]_UNCONNECTED , 
\NLW_u_rx_a/Mcount_bcnt_xor<15>_CO[1]_UNCONNECTED , \NLW_u_rx_a/Mcount_bcnt_xor<15>_CO[0]_UNCONNECTED }),
    .DI({\NLW_u_rx_a/Mcount_bcnt_xor<15>_DI[3]_UNCONNECTED , 1'b0, 1'b0, 1'b0}),
    .O({\u_rx_a/Mcount_bcnt15 , \u_rx_a/Mcount_bcnt14 , \u_rx_a/Mcount_bcnt13 , \u_rx_a/Mcount_bcnt12 }),
    .S({\u_rx_a/Mcount_bcnt_lut [15], \u_rx_a/Mcount_bcnt_lut [14], \u_rx_a/Mcount_bcnt_lut [13], \u_rx_a/Mcount_bcnt_lut [12]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y42" ),
    .INIT ( 64'hCCCC0000CCCC0000 ))
  \u_rx_a/Mcount_bcnt_lut<14>  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_rx_a/bcnt [14]),
    .ADR1(\u_rx_a/state_FSM_FFd1_7367 ),
    .ADR5(1'b1),
    .O(\u_rx_a/Mcount_bcnt_lut [14])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y42" ),
    .INIT ( 32'h00000000 ))
  \N1_9.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_9.C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y42" ),
    .INIT ( 1'b0 ))
  \u_rx_a/bcnt_13  (
    .CE(\u_rx_a/_n0213_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/bcnt_13/CLK ),
    .I(\u_rx_a/Mcount_bcnt13 ),
    .O(\u_rx_a/bcnt [13]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y42" ),
    .INIT ( 64'hF0F00000F0F00000 ))
  \u_rx_a/Mcount_bcnt_lut<13>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_rx_a/bcnt [13]),
    .ADR2(\u_rx_a/state_FSM_FFd1_7367 ),
    .ADR5(1'b1),
    .O(\u_rx_a/Mcount_bcnt_lut [13])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y42" ),
    .INIT ( 32'h00000000 ))
  \N1_10.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_10.B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y42" ),
    .INIT ( 1'b0 ))
  \u_rx_a/bcnt_12  (
    .CE(\u_rx_a/_n0213_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/bcnt_12/CLK ),
    .I(\u_rx_a/Mcount_bcnt12 ),
    .O(\u_rx_a/bcnt [12]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y42" ),
    .INIT ( 64'hFF000000FF000000 ))
  \u_rx_a/Mcount_bcnt_lut<12>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_rx_a/bcnt [12]),
    .ADR3(\u_rx_a/state_FSM_FFd1_7367 ),
    .ADR5(1'b1),
    .O(\u_rx_a/Mcount_bcnt_lut [12])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y42" ),
    .INIT ( 32'h00000000 ))
  \N1_11.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_11.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \u_engine/Mcount_win_cnt_cy<3>/u_engine/Mcount_win_cnt_cy<3>_DMUX_Delay  (
    .I(\u_engine/Result<3>1 ),
    .O(\u_engine/Result<3>1_0 )
  );
  X_BUF   \u_engine/Mcount_win_cnt_cy<3>/u_engine/Mcount_win_cnt_cy<3>_CMUX_Delay  (
    .I(\u_engine/Result<2>1 ),
    .O(\u_engine/Result<2>1_0 )
  );
  X_BUF   \u_engine/Mcount_win_cnt_cy<3>/u_engine/Mcount_win_cnt_cy<3>_BMUX_Delay  (
    .I(\u_engine/Result<1>1 ),
    .O(\u_engine/Result<1>1_0 )
  );
  X_BUF   \u_engine/Mcount_win_cnt_cy<3>/u_engine/Mcount_win_cnt_cy<3>_AMUX_Delay  (
    .I(\u_engine/Result<0>1 ),
    .O(\u_engine/Result<0>1_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X0Y48" ),
    .INIT ( 64'hCCCCCCCCCCCCCCCC ))
  \u_engine/win_cnt<3>_rt  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\u_engine/win_cnt [3]),
    .ADR5(1'b1),
    .O(\u_engine/win_cnt<3>_rt_367 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X0Y48" ),
    .INIT ( 32'h00000000 ))
  \N1_158.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_158.D5LUT_O_UNCONNECTED )
  );
  X_ZERO #(
    .LOC ( "SLICE_X0Y48" ))
  \ProtoComp131.CYINITGND  (
    .O(\ProtoComp131.CYINITGND.0 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X0Y48" ))
  \u_engine/Mcount_win_cnt_cy<3>  (
    .CI(1'b0),
    .CYINIT(\ProtoComp131.CYINITGND.0 ),
    .CO({\u_engine/Mcount_win_cnt_cy[3] , \NLW_u_engine/Mcount_win_cnt_cy<3>_CO[2]_UNCONNECTED , \NLW_u_engine/Mcount_win_cnt_cy<3>_CO[1]_UNCONNECTED 
, \NLW_u_engine/Mcount_win_cnt_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b1}),
    .O({\u_engine/Result<3>1 , \u_engine/Result<2>1 , \u_engine/Result<1>1 , \u_engine/Result<0>1 }),
    .S({\u_engine/win_cnt<3>_rt_367 , \u_engine/win_cnt<2>_rt_376 , \u_engine/win_cnt<1>_rt_379 , \u_engine/Mcount_win_cnt_lut [0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X0Y48" ),
    .INIT ( 64'hAAAAAAAAAAAAAAAA ))
  \u_engine/win_cnt<2>_rt  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(\u_engine/win_cnt [2]),
    .ADR5(1'b1),
    .O(\u_engine/win_cnt<2>_rt_376 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X0Y48" ),
    .INIT ( 32'h00000000 ))
  \N1_159.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_159.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X0Y48" ),
    .INIT ( 64'hAAAAAAAAAAAAAAAA ))
  \u_engine/win_cnt<1>_rt  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(\u_engine/win_cnt [1]),
    .ADR5(1'b1),
    .O(\u_engine/win_cnt<1>_rt_379 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X0Y48" ),
    .INIT ( 32'h00000000 ))
  \N1_160.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_160.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X0Y48" ),
    .INIT ( 64'h3333333333333333 ))
  \u_engine/Mcount_win_cnt_lut<0>_INV_0  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\u_engine/win_cnt [0]),
    .ADR5(1'b1),
    .O(\u_engine/Mcount_win_cnt_lut [0])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X0Y48" ),
    .INIT ( 32'hFFFFFFFF ))
  \SevenSegmentEnable_0_OBUF_1_14.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_SevenSegmentEnable_0_OBUF_1_14.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \u_engine/Mcount_win_cnt_cy<7>/u_engine/Mcount_win_cnt_cy<7>_DMUX_Delay  (
    .I(\u_engine/Result<7>1 ),
    .O(\u_engine/Result<7>1_0 )
  );
  X_BUF   \u_engine/Mcount_win_cnt_cy<7>/u_engine/Mcount_win_cnt_cy<7>_CMUX_Delay  (
    .I(\u_engine/Result<6>1 ),
    .O(\u_engine/Result<6>1_0 )
  );
  X_BUF   \u_engine/Mcount_win_cnt_cy<7>/u_engine/Mcount_win_cnt_cy<7>_BMUX_Delay  (
    .I(\u_engine/Result<5>1 ),
    .O(\u_engine/Result<5>1_0 )
  );
  X_BUF   \u_engine/Mcount_win_cnt_cy<7>/u_engine/Mcount_win_cnt_cy<7>_AMUX_Delay  (
    .I(\u_engine/Result<4>1 ),
    .O(\u_engine/Result<4>1_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X0Y49" ),
    .INIT ( 64'hCCCCCCCCCCCCCCCC ))
  \u_engine/win_cnt<7>_rt  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\u_engine/win_cnt [7]),
    .ADR5(1'b1),
    .O(\u_engine/win_cnt<7>_rt_389 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X0Y49" ),
    .INIT ( 32'h00000000 ))
  \N1_154.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_154.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X0Y49" ))
  \u_engine/Mcount_win_cnt_cy<7>  (
    .CI(\u_engine/Mcount_win_cnt_cy[3] ),
    .CYINIT(1'b0),
    .CO({\u_engine/Mcount_win_cnt_cy[7] , \NLW_u_engine/Mcount_win_cnt_cy<7>_CO[2]_UNCONNECTED , \NLW_u_engine/Mcount_win_cnt_cy<7>_CO[1]_UNCONNECTED 
, \NLW_u_engine/Mcount_win_cnt_cy<7>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\u_engine/Result<7>1 , \u_engine/Result<6>1 , \u_engine/Result<5>1 , \u_engine/Result<4>1 }),
    .S({\u_engine/win_cnt<7>_rt_389 , \u_engine/win_cnt<6>_rt_398 , \u_engine/win_cnt<5>_rt_401 , \u_engine/win_cnt<4>_rt_404 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X0Y49" ),
    .INIT ( 64'hAAAAAAAAAAAAAAAA ))
  \u_engine/win_cnt<6>_rt  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(\u_engine/win_cnt [6]),
    .ADR5(1'b1),
    .O(\u_engine/win_cnt<6>_rt_398 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X0Y49" ),
    .INIT ( 32'h00000000 ))
  \N1_155.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_155.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X0Y49" ),
    .INIT ( 64'hAAAAAAAAAAAAAAAA ))
  \u_engine/win_cnt<5>_rt  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(\u_engine/win_cnt [5]),
    .ADR5(1'b1),
    .O(\u_engine/win_cnt<5>_rt_401 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X0Y49" ),
    .INIT ( 32'h00000000 ))
  \N1_156.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_156.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X0Y49" ),
    .INIT ( 64'hCCCCCCCCCCCCCCCC ))
  \u_engine/win_cnt<4>_rt  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\u_engine/win_cnt [4]),
    .ADR5(1'b1),
    .O(\u_engine/win_cnt<4>_rt_404 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X0Y49" ),
    .INIT ( 32'h00000000 ))
  \N1_157.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_157.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \u_engine/Mcount_win_cnt_cy<11>/u_engine/Mcount_win_cnt_cy<11>_DMUX_Delay  (
    .I(\u_engine/Result [11]),
    .O(\u_engine/Result<11>_0 )
  );
  X_BUF   \u_engine/Mcount_win_cnt_cy<11>/u_engine/Mcount_win_cnt_cy<11>_CMUX_Delay  (
    .I(\u_engine/Result [10]),
    .O(\u_engine/Result<10>_0 )
  );
  X_BUF   \u_engine/Mcount_win_cnt_cy<11>/u_engine/Mcount_win_cnt_cy<11>_BMUX_Delay  (
    .I(\u_engine/Result [9]),
    .O(\u_engine/Result<9>_0 )
  );
  X_BUF   \u_engine/Mcount_win_cnt_cy<11>/u_engine/Mcount_win_cnt_cy<11>_AMUX_Delay  (
    .I(\u_engine/Result [8]),
    .O(\u_engine/Result<8>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X0Y50" ),
    .INIT ( 64'hF0F0F0F0F0F0F0F0 ))
  \u_engine/win_cnt<11>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\u_engine/win_cnt [11]),
    .ADR5(1'b1),
    .O(\u_engine/win_cnt<11>_rt_411 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X0Y50" ),
    .INIT ( 32'h00000000 ))
  \N1_150.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_150.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X0Y50" ))
  \u_engine/Mcount_win_cnt_cy<11>  (
    .CI(\u_engine/Mcount_win_cnt_cy[7] ),
    .CYINIT(1'b0),
    .CO({\u_engine/Mcount_win_cnt_cy[11] , \NLW_u_engine/Mcount_win_cnt_cy<11>_CO[2]_UNCONNECTED , 
\NLW_u_engine/Mcount_win_cnt_cy<11>_CO[1]_UNCONNECTED , \NLW_u_engine/Mcount_win_cnt_cy<11>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\u_engine/Result [11], \u_engine/Result [10], \u_engine/Result [9], \u_engine/Result [8]}),
    .S({\u_engine/win_cnt<11>_rt_411 , \u_engine/win_cnt<10>_rt_420 , \u_engine/win_cnt<9>_rt_423 , \u_engine/win_cnt<8>_rt_426 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X0Y50" ),
    .INIT ( 64'hCCCCCCCCCCCCCCCC ))
  \u_engine/win_cnt<10>_rt  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\u_engine/win_cnt [10]),
    .ADR5(1'b1),
    .O(\u_engine/win_cnt<10>_rt_420 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X0Y50" ),
    .INIT ( 32'h00000000 ))
  \N1_151.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_151.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X0Y50" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \u_engine/win_cnt<9>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\u_engine/win_cnt [9]),
    .ADR5(1'b1),
    .O(\u_engine/win_cnt<9>_rt_423 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X0Y50" ),
    .INIT ( 32'h00000000 ))
  \N1_152.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_152.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X0Y50" ),
    .INIT ( 64'hCCCCCCCCCCCCCCCC ))
  \u_engine/win_cnt<8>_rt  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\u_engine/win_cnt [8]),
    .ADR5(1'b1),
    .O(\u_engine/win_cnt<8>_rt_426 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X0Y50" ),
    .INIT ( 32'h00000000 ))
  \N1_153.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_153.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \u_engine/Mcount_win_cnt_cy<15>/u_engine/Mcount_win_cnt_cy<15>_DMUX_Delay  (
    .I(\u_engine/Result [15]),
    .O(\u_engine/Result<15>_0 )
  );
  X_BUF   \u_engine/Mcount_win_cnt_cy<15>/u_engine/Mcount_win_cnt_cy<15>_CMUX_Delay  (
    .I(\u_engine/Result [14]),
    .O(\u_engine/Result<14>_0 )
  );
  X_BUF   \u_engine/Mcount_win_cnt_cy<15>/u_engine/Mcount_win_cnt_cy<15>_BMUX_Delay  (
    .I(\u_engine/Result [13]),
    .O(\u_engine/Result<13>_0 )
  );
  X_BUF   \u_engine/Mcount_win_cnt_cy<15>/u_engine/Mcount_win_cnt_cy<15>_AMUX_Delay  (
    .I(\u_engine/Result [12]),
    .O(\u_engine/Result<12>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X0Y51" ),
    .INIT ( 64'hCCCCCCCCCCCCCCCC ))
  \u_engine/win_cnt<15>_rt  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\u_engine/win_cnt [15]),
    .ADR5(1'b1),
    .O(\u_engine/win_cnt<15>_rt_433 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X0Y51" ),
    .INIT ( 32'h00000000 ))
  \N1_146.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_146.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X0Y51" ))
  \u_engine/Mcount_win_cnt_cy<15>  (
    .CI(\u_engine/Mcount_win_cnt_cy[11] ),
    .CYINIT(1'b0),
    .CO({\u_engine/Mcount_win_cnt_cy[15] , \NLW_u_engine/Mcount_win_cnt_cy<15>_CO[2]_UNCONNECTED , 
\NLW_u_engine/Mcount_win_cnt_cy<15>_CO[1]_UNCONNECTED , \NLW_u_engine/Mcount_win_cnt_cy<15>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\u_engine/Result [15], \u_engine/Result [14], \u_engine/Result [13], \u_engine/Result [12]}),
    .S({\u_engine/win_cnt<15>_rt_433 , \u_engine/win_cnt<14>_rt_442 , \u_engine/win_cnt<13>_rt_445 , \u_engine/win_cnt<12>_rt_448 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X0Y51" ),
    .INIT ( 64'hAAAAAAAAAAAAAAAA ))
  \u_engine/win_cnt<14>_rt  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(\u_engine/win_cnt [14]),
    .ADR5(1'b1),
    .O(\u_engine/win_cnt<14>_rt_442 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X0Y51" ),
    .INIT ( 32'h00000000 ))
  \N1_147.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_147.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X0Y51" ),
    .INIT ( 64'hAAAAAAAAAAAAAAAA ))
  \u_engine/win_cnt<13>_rt  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(\u_engine/win_cnt [13]),
    .ADR5(1'b1),
    .O(\u_engine/win_cnt<13>_rt_445 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X0Y51" ),
    .INIT ( 32'h00000000 ))
  \N1_148.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_148.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X0Y51" ),
    .INIT ( 64'hCCCCCCCCCCCCCCCC ))
  \u_engine/win_cnt<12>_rt  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\u_engine/win_cnt [12]),
    .ADR5(1'b1),
    .O(\u_engine/win_cnt<12>_rt_448 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X0Y51" ),
    .INIT ( 32'h00000000 ))
  \N1_149.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_149.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \u_engine/Result<18>/u_engine/Result<18>_CMUX_Delay  (
    .I(\u_engine/Result [18]),
    .O(\u_engine/Result<18>_0 )
  );
  X_BUF   \u_engine/Result<18>/u_engine/Result<18>_BMUX_Delay  (
    .I(\u_engine/Result [17]),
    .O(\u_engine/Result<17>_0 )
  );
  X_BUF   \u_engine/Result<18>/u_engine/Result<18>_AMUX_Delay  (
    .I(\u_engine/Result [16]),
    .O(\u_engine/Result<16>_0 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X0Y52" ))
  \u_engine/Mcount_win_cnt_xor<18>  (
    .CI(\u_engine/Mcount_win_cnt_cy[15] ),
    .CYINIT(1'b0),
    .CO({\NLW_u_engine/Mcount_win_cnt_xor<18>_CO[3]_UNCONNECTED , \NLW_u_engine/Mcount_win_cnt_xor<18>_CO[2]_UNCONNECTED , 
\NLW_u_engine/Mcount_win_cnt_xor<18>_CO[1]_UNCONNECTED , \NLW_u_engine/Mcount_win_cnt_xor<18>_CO[0]_UNCONNECTED }),
    .DI({\NLW_u_engine/Mcount_win_cnt_xor<18>_DI[3]_UNCONNECTED , \NLW_u_engine/Mcount_win_cnt_xor<18>_DI[2]_UNCONNECTED , 1'b0, 1'b0}),
    .O({\NLW_u_engine/Mcount_win_cnt_xor<18>_O[3]_UNCONNECTED , \u_engine/Result [18], \u_engine/Result [17], \u_engine/Result [16]}),
    .S({\NLW_u_engine/Mcount_win_cnt_xor<18>_S[3]_UNCONNECTED , \u_engine/win_cnt<18>_rt_459 , \u_engine/win_cnt<17>_rt_461 , 
\u_engine/win_cnt<16>_rt_464 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X0Y52" ),
    .INIT ( 64'hAAAAAAAAAAAAAAAA ))
  \u_engine/win_cnt<18>_rt  (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR0(\u_engine/win_cnt [18]),
    .O(\u_engine/win_cnt<18>_rt_459 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X0Y52" ),
    .INIT ( 64'hAAAAAAAAAAAAAAAA ))
  \u_engine/win_cnt<17>_rt  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(\u_engine/win_cnt [17]),
    .ADR5(1'b1),
    .O(\u_engine/win_cnt<17>_rt_461 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X0Y52" ),
    .INIT ( 32'h00000000 ))
  \N1_144.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_144.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X0Y52" ),
    .INIT ( 64'hCCCCCCCCCCCCCCCC ))
  \u_engine/win_cnt<16>_rt  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\u_engine/win_cnt [16]),
    .ADR5(1'b1),
    .O(\u_engine/win_cnt<16>_rt_464 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X0Y52" ),
    .INIT ( 32'h00000000 ))
  \N1_145.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_145.A5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y41" ),
    .INIT ( 64'h0000111100001111 ))
  \u_engine/Mcompar__n0368_lut<3>1  (
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(\u_rx_a/m_tindex [9]),
    .ADR1(\u_rx_a/m_tindex [10]),
    .ADR4(\u_rx_a/m_tindex [11]),
    .ADR5(1'b1),
    .O(\u_engine/Mcompar__n0368_lut [3])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y41" ),
    .INIT ( 32'h00000000 ))
  \N1_171.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_171.D5LUT_O_UNCONNECTED )
  );
  X_ONE #(
    .LOC ( "SLICE_X12Y41" ))
  \ProtoComp134.CYINITVCC  (
    .O(\ProtoComp134.CYINITVCC.1 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X12Y41" ))
  \u_engine/Mcompar__n0368_cy<3>  (
    .CI(1'b0),
    .CYINIT(\ProtoComp134.CYINITVCC.1 ),
    .CO({\u_engine/Mcompar__n0368_cy [3], \NLW_u_engine/Mcompar__n0368_cy<3>_CO[2]_UNCONNECTED , \NLW_u_engine/Mcompar__n0368_cy<3>_CO[1]_UNCONNECTED 
, \NLW_u_engine/Mcompar__n0368_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\NLW_u_engine/Mcompar__n0368_cy<3>_O[3]_UNCONNECTED , \NLW_u_engine/Mcompar__n0368_cy<3>_O[2]_UNCONNECTED , 
\NLW_u_engine/Mcompar__n0368_cy<3>_O[1]_UNCONNECTED , \NLW_u_engine/Mcompar__n0368_cy<3>_O[0]_UNCONNECTED }),
    .S({\u_engine/Mcompar__n0368_lut [3], \u_engine/Mcompar__n0368_lut [2], \u_engine/Mcompar__n0368_lut [1], \u_engine/Mcompar__n0368_lut [0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y41" ),
    .INIT ( 64'h0202010102020101 ))
  \u_engine/Mcompar__n0368_lut<2>1  (
    .ADR3(1'b1),
    .ADR1(\u_rx_a/m_tindex [7]),
    .ADR2(\u_rx_a/m_tindex [8]),
    .ADR4(\u_rx_a/m_tindex [6]),
    .ADR0(\u_engine/idx_dport_lo [6]),
    .ADR5(1'b1),
    .O(\u_engine/Mcompar__n0368_lut [2])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y41" ),
    .INIT ( 32'h00000000 ))
  \N1_172.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_172.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y41" ),
    .INIT ( 64'h9000009009000009 ))
  \u_engine/Mcompar__n0368_lut<1>  (
    .ADR4(\u_rx_a/m_tindex [3]),
    .ADR3(\u_engine/idx_dport_lo [3]),
    .ADR1(\u_rx_a/m_tindex [4]),
    .ADR0(\u_engine/idx_dport_lo [4]),
    .ADR2(\u_rx_a/m_tindex [5]),
    .ADR5(\u_engine/idx_dport_lo<5>_0 ),
    .O(\u_engine/Mcompar__n0368_lut [1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y41" ),
    .INIT ( 64'h00000A0500000A05 ))
  \u_engine/Mcompar__n0368_lut<0>1  (
    .ADR1(1'b1),
    .ADR2(\u_rx_a/m_tindex [0]),
    .ADR4(\u_rx_a/m_tindex [1]),
    .ADR3(\u_rx_a/m_tindex [2]),
    .ADR0(\u_engine/idx_dport_lo [2]),
    .ADR5(1'b1),
    .O(\u_engine/Mcompar__n0368_lut [0])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y41" ),
    .INIT ( 32'h00000000 ))
  \N1_174.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_174.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \u_uart/Mcount_hb_cnt_cy<3>/u_uart/Mcount_hb_cnt_cy<3>_DMUX_Delay  (
    .I(\u_uart/Result [3]),
    .O(\u_uart/Result<3>_0 )
  );
  X_BUF   \u_uart/Mcount_hb_cnt_cy<3>/u_uart/Mcount_hb_cnt_cy<3>_CMUX_Delay  (
    .I(\u_uart/Result [2]),
    .O(\u_uart/Result<2>_0 )
  );
  X_BUF   \u_uart/Mcount_hb_cnt_cy<3>/u_uart/Mcount_hb_cnt_cy<3>_BMUX_Delay  (
    .I(\u_uart/Result [1]),
    .O(\u_uart/Result<1>_0 )
  );
  X_BUF   \u_uart/Mcount_hb_cnt_cy<3>/u_uart/Mcount_hb_cnt_cy<3>_AMUX_Delay  (
    .I(\u_uart/Result [0]),
    .O(\u_uart/Result<0>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y41" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_uart/hb_cnt<3>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_uart/hb_cnt [3]),
    .ADR5(1'b1),
    .O(\u_uart/hb_cnt<3>_rt_499 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y41" ),
    .INIT ( 32'h00000000 ))
  \N1_47.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_47.D5LUT_O_UNCONNECTED )
  );
  X_ZERO #(
    .LOC ( "SLICE_X4Y41" ))
  \ProtoComp131.CYINITGND.1  (
    .O(\u_uart/Mcount_hb_cnt_cy<3>/ProtoComp131.CYINITGND.0 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X4Y41" ))
  \u_uart/Mcount_hb_cnt_cy<3>  (
    .CI(1'b0),
    .CYINIT(\u_uart/Mcount_hb_cnt_cy<3>/ProtoComp131.CYINITGND.0 ),
    .CO({\u_uart/Mcount_hb_cnt_cy[3] , \NLW_u_uart/Mcount_hb_cnt_cy<3>_CO[2]_UNCONNECTED , \NLW_u_uart/Mcount_hb_cnt_cy<3>_CO[1]_UNCONNECTED , 
\NLW_u_uart/Mcount_hb_cnt_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b1}),
    .O({\u_uart/Result [3], \u_uart/Result [2], \u_uart/Result [1], \u_uart/Result [0]}),
    .S({\u_uart/hb_cnt<3>_rt_499 , \u_uart/hb_cnt<2>_rt_508 , \u_uart/hb_cnt<1>_rt_511 , \u_uart/Mcount_hb_cnt_lut [0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y41" ),
    .INIT ( 64'hCCCCCCCCCCCCCCCC ))
  \u_uart/hb_cnt<2>_rt  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\u_uart/hb_cnt [2]),
    .ADR5(1'b1),
    .O(\u_uart/hb_cnt<2>_rt_508 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y41" ),
    .INIT ( 32'h00000000 ))
  \N1_48.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_48.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y41" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \u_uart/hb_cnt<1>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\u_uart/hb_cnt [1]),
    .ADR5(1'b1),
    .O(\u_uart/hb_cnt<1>_rt_511 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y41" ),
    .INIT ( 32'h00000000 ))
  \N1_49.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_49.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y41" ),
    .INIT ( 64'h3333333333333333 ))
  \u_uart/Mcount_hb_cnt_lut<0>_INV_0  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\u_uart/hb_cnt [0]),
    .ADR5(1'b1),
    .O(\u_uart/Mcount_hb_cnt_lut [0])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y41" ),
    .INIT ( 32'hFFFFFFFF ))
  \SevenSegmentEnable_0_OBUF_1_5.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_SevenSegmentEnable_0_OBUF_1_5.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \u_uart/Mcount_hb_cnt_cy<7>/u_uart/Mcount_hb_cnt_cy<7>_DMUX_Delay  (
    .I(\u_uart/Result [7]),
    .O(\u_uart/Result<7>_0 )
  );
  X_BUF   \u_uart/Mcount_hb_cnt_cy<7>/u_uart/Mcount_hb_cnt_cy<7>_CMUX_Delay  (
    .I(\u_uart/Result [6]),
    .O(\u_uart/Result<6>_0 )
  );
  X_BUF   \u_uart/Mcount_hb_cnt_cy<7>/u_uart/Mcount_hb_cnt_cy<7>_BMUX_Delay  (
    .I(\u_uart/Result [5]),
    .O(\u_uart/Result<5>_0 )
  );
  X_BUF   \u_uart/Mcount_hb_cnt_cy<7>/u_uart/Mcount_hb_cnt_cy<7>_AMUX_Delay  (
    .I(\u_uart/Result [4]),
    .O(\u_uart/Result<4>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y42" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \u_uart/hb_cnt<7>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\u_uart/hb_cnt [7]),
    .ADR5(1'b1),
    .O(\u_uart/hb_cnt<7>_rt_521 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y42" ),
    .INIT ( 32'h00000000 ))
  \N1_43.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_43.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X4Y42" ))
  \u_uart/Mcount_hb_cnt_cy<7>  (
    .CI(\u_uart/Mcount_hb_cnt_cy[3] ),
    .CYINIT(1'b0),
    .CO({\u_uart/Mcount_hb_cnt_cy[7] , \NLW_u_uart/Mcount_hb_cnt_cy<7>_CO[2]_UNCONNECTED , \NLW_u_uart/Mcount_hb_cnt_cy<7>_CO[1]_UNCONNECTED , 
\NLW_u_uart/Mcount_hb_cnt_cy<7>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\u_uart/Result [7], \u_uart/Result [6], \u_uart/Result [5], \u_uart/Result [4]}),
    .S({\u_uart/hb_cnt<7>_rt_521 , \u_uart/hb_cnt<6>_rt_530 , \u_uart/hb_cnt<5>_rt_533 , \u_uart/hb_cnt<4>_rt_536 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y42" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_uart/hb_cnt<6>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_uart/hb_cnt [6]),
    .ADR5(1'b1),
    .O(\u_uart/hb_cnt<6>_rt_530 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y42" ),
    .INIT ( 32'h00000000 ))
  \N1_44.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_44.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y42" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \u_uart/hb_cnt<5>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\u_uart/hb_cnt [5]),
    .ADR5(1'b1),
    .O(\u_uart/hb_cnt<5>_rt_533 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y42" ),
    .INIT ( 32'h00000000 ))
  \N1_45.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_45.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y42" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_uart/hb_cnt<4>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_uart/hb_cnt [4]),
    .ADR5(1'b1),
    .O(\u_uart/hb_cnt<4>_rt_536 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y42" ),
    .INIT ( 32'h00000000 ))
  \N1_46.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_46.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \u_uart/Mcount_hb_cnt_cy<11>/u_uart/Mcount_hb_cnt_cy<11>_DMUX_Delay  (
    .I(\u_uart/Result [11]),
    .O(\u_uart/Result<11>_0 )
  );
  X_BUF   \u_uart/Mcount_hb_cnt_cy<11>/u_uart/Mcount_hb_cnt_cy<11>_CMUX_Delay  (
    .I(\u_uart/Result [10]),
    .O(\u_uart/Result<10>_0 )
  );
  X_BUF   \u_uart/Mcount_hb_cnt_cy<11>/u_uart/Mcount_hb_cnt_cy<11>_BMUX_Delay  (
    .I(\u_uart/Result [9]),
    .O(\u_uart/Result<9>_0 )
  );
  X_BUF   \u_uart/Mcount_hb_cnt_cy<11>/u_uart/Mcount_hb_cnt_cy<11>_AMUX_Delay  (
    .I(\u_uart/Result [8]),
    .O(\u_uart/Result<8>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y43" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_uart/hb_cnt<11>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_uart/hb_cnt [11]),
    .ADR5(1'b1),
    .O(\u_uart/hb_cnt<11>_rt_543 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y43" ),
    .INIT ( 32'h00000000 ))
  \N1_39.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_39.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X4Y43" ))
  \u_uart/Mcount_hb_cnt_cy<11>  (
    .CI(\u_uart/Mcount_hb_cnt_cy[7] ),
    .CYINIT(1'b0),
    .CO({\u_uart/Mcount_hb_cnt_cy[11] , \NLW_u_uart/Mcount_hb_cnt_cy<11>_CO[2]_UNCONNECTED , \NLW_u_uart/Mcount_hb_cnt_cy<11>_CO[1]_UNCONNECTED , 
\NLW_u_uart/Mcount_hb_cnt_cy<11>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\u_uart/Result [11], \u_uart/Result [10], \u_uart/Result [9], \u_uart/Result [8]}),
    .S({\u_uart/hb_cnt<11>_rt_543 , \u_uart/hb_cnt<10>_rt_552 , \u_uart/hb_cnt<9>_rt_555 , \u_uart/hb_cnt<8>_rt_558 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y43" ),
    .INIT ( 64'hF0F0F0F0F0F0F0F0 ))
  \u_uart/hb_cnt<10>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\u_uart/hb_cnt [10]),
    .ADR5(1'b1),
    .O(\u_uart/hb_cnt<10>_rt_552 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y43" ),
    .INIT ( 32'h00000000 ))
  \N1_40.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_40.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y43" ),
    .INIT ( 64'hF0F0F0F0F0F0F0F0 ))
  \u_uart/hb_cnt<9>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\u_uart/hb_cnt [9]),
    .ADR5(1'b1),
    .O(\u_uart/hb_cnt<9>_rt_555 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y43" ),
    .INIT ( 32'h00000000 ))
  \N1_41.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_41.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y43" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_uart/hb_cnt<8>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_uart/hb_cnt [8]),
    .ADR5(1'b1),
    .O(\u_uart/hb_cnt<8>_rt_558 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y43" ),
    .INIT ( 32'h00000000 ))
  \N1_42.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_42.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \u_uart/Mcount_hb_cnt_cy<15>/u_uart/Mcount_hb_cnt_cy<15>_DMUX_Delay  (
    .I(\u_uart/Result [15]),
    .O(\u_uart/Result<15>_0 )
  );
  X_BUF   \u_uart/Mcount_hb_cnt_cy<15>/u_uart/Mcount_hb_cnt_cy<15>_CMUX_Delay  (
    .I(\u_uart/Result [14]),
    .O(\u_uart/Result<14>_0 )
  );
  X_BUF   \u_uart/Mcount_hb_cnt_cy<15>/u_uart/Mcount_hb_cnt_cy<15>_BMUX_Delay  (
    .I(\u_uart/Result [13]),
    .O(\u_uart/Result<13>_0 )
  );
  X_BUF   \u_uart/Mcount_hb_cnt_cy<15>/u_uart/Mcount_hb_cnt_cy<15>_AMUX_Delay  (
    .I(\u_uart/Result [12]),
    .O(\u_uart/Result<12>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y44" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \u_uart/hb_cnt<15>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\u_uart/hb_cnt [15]),
    .ADR5(1'b1),
    .O(\u_uart/hb_cnt<15>_rt_565 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y44" ),
    .INIT ( 32'h00000000 ))
  \N1_35.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_35.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X4Y44" ))
  \u_uart/Mcount_hb_cnt_cy<15>  (
    .CI(\u_uart/Mcount_hb_cnt_cy[11] ),
    .CYINIT(1'b0),
    .CO({\u_uart/Mcount_hb_cnt_cy[15] , \NLW_u_uart/Mcount_hb_cnt_cy<15>_CO[2]_UNCONNECTED , \NLW_u_uart/Mcount_hb_cnt_cy<15>_CO[1]_UNCONNECTED , 
\NLW_u_uart/Mcount_hb_cnt_cy<15>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\u_uart/Result [15], \u_uart/Result [14], \u_uart/Result [13], \u_uart/Result [12]}),
    .S({\u_uart/hb_cnt<15>_rt_565 , \u_uart/hb_cnt<14>_rt_574 , \u_uart/hb_cnt<13>_rt_577 , \u_uart/hb_cnt<12>_rt_580 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y44" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_uart/hb_cnt<14>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_uart/hb_cnt [14]),
    .ADR5(1'b1),
    .O(\u_uart/hb_cnt<14>_rt_574 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y44" ),
    .INIT ( 32'h00000000 ))
  \N1_36.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_36.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y44" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \u_uart/hb_cnt<13>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\u_uart/hb_cnt [13]),
    .ADR5(1'b1),
    .O(\u_uart/hb_cnt<13>_rt_577 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y44" ),
    .INIT ( 32'h00000000 ))
  \N1_37.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_37.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y44" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_uart/hb_cnt<12>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_uart/hb_cnt [12]),
    .ADR5(1'b1),
    .O(\u_uart/hb_cnt<12>_rt_580 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y44" ),
    .INIT ( 32'h00000000 ))
  \N1_38.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_38.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \u_uart/Mcount_hb_cnt_cy<19>/u_uart/Mcount_hb_cnt_cy<19>_DMUX_Delay  (
    .I(\u_uart/Result [19]),
    .O(\u_uart/Result<19>_0 )
  );
  X_BUF   \u_uart/Mcount_hb_cnt_cy<19>/u_uart/Mcount_hb_cnt_cy<19>_CMUX_Delay  (
    .I(\u_uart/Result [18]),
    .O(\u_uart/Result<18>_0 )
  );
  X_BUF   \u_uart/Mcount_hb_cnt_cy<19>/u_uart/Mcount_hb_cnt_cy<19>_BMUX_Delay  (
    .I(\u_uart/Result [17]),
    .O(\u_uart/Result<17>_0 )
  );
  X_BUF   \u_uart/Mcount_hb_cnt_cy<19>/u_uart/Mcount_hb_cnt_cy<19>_AMUX_Delay  (
    .I(\u_uart/Result [16]),
    .O(\u_uart/Result<16>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y45" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_uart/hb_cnt<19>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_uart/hb_cnt [19]),
    .ADR5(1'b1),
    .O(\u_uart/hb_cnt<19>_rt_587 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y45" ),
    .INIT ( 32'h00000000 ))
  \N1_31.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_31.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X4Y45" ))
  \u_uart/Mcount_hb_cnt_cy<19>  (
    .CI(\u_uart/Mcount_hb_cnt_cy[15] ),
    .CYINIT(1'b0),
    .CO({\u_uart/Mcount_hb_cnt_cy[19] , \NLW_u_uart/Mcount_hb_cnt_cy<19>_CO[2]_UNCONNECTED , \NLW_u_uart/Mcount_hb_cnt_cy<19>_CO[1]_UNCONNECTED , 
\NLW_u_uart/Mcount_hb_cnt_cy<19>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\u_uart/Result [19], \u_uart/Result [18], \u_uart/Result [17], \u_uart/Result [16]}),
    .S({\u_uart/hb_cnt<19>_rt_587 , \u_uart/hb_cnt<18>_rt_596 , \u_uart/hb_cnt<17>_rt_599 , \u_uart/hb_cnt<16>_rt_602 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y45" ),
    .INIT ( 64'hF0F0F0F0F0F0F0F0 ))
  \u_uart/hb_cnt<18>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\u_uart/hb_cnt [18]),
    .ADR5(1'b1),
    .O(\u_uart/hb_cnt<18>_rt_596 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y45" ),
    .INIT ( 32'h00000000 ))
  \N1_32.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_32.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y45" ),
    .INIT ( 64'hF0F0F0F0F0F0F0F0 ))
  \u_uart/hb_cnt<17>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\u_uart/hb_cnt [17]),
    .ADR5(1'b1),
    .O(\u_uart/hb_cnt<17>_rt_599 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y45" ),
    .INIT ( 32'h00000000 ))
  \N1_33.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_33.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y45" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_uart/hb_cnt<16>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_uart/hb_cnt [16]),
    .ADR5(1'b1),
    .O(\u_uart/hb_cnt<16>_rt_602 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y45" ),
    .INIT ( 32'h00000000 ))
  \N1_34.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_34.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \u_uart/Mcount_hb_cnt_cy<23>/u_uart/Mcount_hb_cnt_cy<23>_DMUX_Delay  (
    .I(\u_uart/Result [23]),
    .O(\u_uart/Result<23>_0 )
  );
  X_BUF   \u_uart/Mcount_hb_cnt_cy<23>/u_uart/Mcount_hb_cnt_cy<23>_CMUX_Delay  (
    .I(\u_uart/Result [22]),
    .O(\u_uart/Result<22>_0 )
  );
  X_BUF   \u_uart/Mcount_hb_cnt_cy<23>/u_uart/Mcount_hb_cnt_cy<23>_BMUX_Delay  (
    .I(\u_uart/Result [21]),
    .O(\u_uart/Result<21>_0 )
  );
  X_BUF   \u_uart/Mcount_hb_cnt_cy<23>/u_uart/Mcount_hb_cnt_cy<23>_AMUX_Delay  (
    .I(\u_uart/Result [20]),
    .O(\u_uart/Result<20>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y46" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_uart/hb_cnt<23>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_uart/hb_cnt [23]),
    .ADR5(1'b1),
    .O(\u_uart/hb_cnt<23>_rt_609 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y46" ),
    .INIT ( 32'h00000000 ))
  \N1_27.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_27.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X4Y46" ))
  \u_uart/Mcount_hb_cnt_cy<23>  (
    .CI(\u_uart/Mcount_hb_cnt_cy[19] ),
    .CYINIT(1'b0),
    .CO({\u_uart/Mcount_hb_cnt_cy[23] , \NLW_u_uart/Mcount_hb_cnt_cy<23>_CO[2]_UNCONNECTED , \NLW_u_uart/Mcount_hb_cnt_cy<23>_CO[1]_UNCONNECTED , 
\NLW_u_uart/Mcount_hb_cnt_cy<23>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\u_uart/Result [23], \u_uart/Result [22], \u_uart/Result [21], \u_uart/Result [20]}),
    .S({\u_uart/hb_cnt<23>_rt_609 , \u_uart/hb_cnt<22>_rt_618 , \u_uart/hb_cnt<21>_rt_621 , \u_uart/hb_cnt<20>_rt_624 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y46" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_uart/hb_cnt<22>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_uart/hb_cnt [22]),
    .ADR5(1'b1),
    .O(\u_uart/hb_cnt<22>_rt_618 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y46" ),
    .INIT ( 32'h00000000 ))
  \N1_28.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_28.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y46" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \u_uart/hb_cnt<21>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\u_uart/hb_cnt [21]),
    .ADR5(1'b1),
    .O(\u_uart/hb_cnt<21>_rt_621 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y46" ),
    .INIT ( 32'h00000000 ))
  \N1_29.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_29.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y46" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_uart/hb_cnt<20>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_uart/hb_cnt [20]),
    .ADR5(1'b1),
    .O(\u_uart/hb_cnt<20>_rt_624 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y46" ),
    .INIT ( 32'h00000000 ))
  \N1_30.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_30.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \u_uart/Result<27>/u_uart/Result<27>_DMUX_Delay  (
    .I(\u_uart/Result [27]),
    .O(\u_uart/Result<27>_0 )
  );
  X_BUF   \u_uart/Result<27>/u_uart/Result<27>_CMUX_Delay  (
    .I(\u_uart/Result [26]),
    .O(\u_uart/Result<26>_0 )
  );
  X_BUF   \u_uart/Result<27>/u_uart/Result<27>_BMUX_Delay  (
    .I(\u_uart/Result [25]),
    .O(\u_uart/Result<25>_0 )
  );
  X_BUF   \u_uart/Result<27>/u_uart/Result<27>_AMUX_Delay  (
    .I(\u_uart/Result [24]),
    .O(\u_uart/Result<24>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y47" ),
    .INIT ( 64'hF0F0F0F0F0F0F0F0 ))
  \u_uart/hb_cnt<27>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR2(\u_uart/hb_cnt [27]),
    .O(\u_uart/hb_cnt<27>_rt_631 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X4Y47" ))
  \u_uart/Mcount_hb_cnt_xor<27>  (
    .CI(\u_uart/Mcount_hb_cnt_cy[23] ),
    .CYINIT(1'b0),
    .CO({\NLW_u_uart/Mcount_hb_cnt_xor<27>_CO[3]_UNCONNECTED , \NLW_u_uart/Mcount_hb_cnt_xor<27>_CO[2]_UNCONNECTED , 
\NLW_u_uart/Mcount_hb_cnt_xor<27>_CO[1]_UNCONNECTED , \NLW_u_uart/Mcount_hb_cnt_xor<27>_CO[0]_UNCONNECTED }),
    .DI({\NLW_u_uart/Mcount_hb_cnt_xor<27>_DI[3]_UNCONNECTED , 1'b0, 1'b0, 1'b0}),
    .O({\u_uart/Result [27], \u_uart/Result [26], \u_uart/Result [25], \u_uart/Result [24]}),
    .S({\u_uart/hb_cnt<27>_rt_631 , \u_uart/hb_cnt<26>_rt_638 , \u_uart/hb_cnt<25>_rt_641 , \u_uart/hb_cnt<24>_rt_644 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y47" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_uart/hb_cnt<26>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_uart/hb_cnt [26]),
    .ADR5(1'b1),
    .O(\u_uart/hb_cnt<26>_rt_638 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y47" ),
    .INIT ( 32'h00000000 ))
  \N1_24.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_24.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y47" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \u_uart/hb_cnt<25>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\u_uart/hb_cnt [25]),
    .ADR5(1'b1),
    .O(\u_uart/hb_cnt<25>_rt_641 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y47" ),
    .INIT ( 32'h00000000 ))
  \N1_25.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_25.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y47" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_uart/hb_cnt<24>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_uart/hb_cnt [24]),
    .ADR5(1'b1),
    .O(\u_uart/hb_cnt<24>_rt_644 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y47" ),
    .INIT ( 32'h00000000 ))
  \N1_26.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_26.A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y7" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rptr_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rptr_3/CLK ),
    .I(\u_fifo_a2b/Mcount_rptr3 ),
    .O(\u_fifo_a2b/rptr [3]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y7" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_fifo_a2b/rptr<3>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_fifo_a2b/rptr [3]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\u_fifo_a2b/rptr<3>_rt_652 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y7" ),
    .INIT ( 32'h00000000 ))
  \N1_132.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_132.D5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y7" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rptr_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rptr_2/CLK ),
    .I(\u_fifo_a2b/Mcount_rptr2 ),
    .O(\u_fifo_a2b/rptr [2]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X12Y7" ))
  \u_fifo_a2b/Mcount_rptr_cy<3>  (
    .CI(1'b0),
    .CYINIT(\u_fifo_a2b/pop ),
    .CO({\u_fifo_a2b/Mcount_rptr_cy[3] , \NLW_u_fifo_a2b/Mcount_rptr_cy<3>_CO[2]_UNCONNECTED , \NLW_u_fifo_a2b/Mcount_rptr_cy<3>_CO[1]_UNCONNECTED , 
\NLW_u_fifo_a2b/Mcount_rptr_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\u_fifo_a2b/Mcount_rptr3 , \u_fifo_a2b/Mcount_rptr2 , \u_fifo_a2b/Mcount_rptr1 , \u_fifo_a2b/Mcount_rptr }),
    .S({\u_fifo_a2b/rptr<3>_rt_652 , \u_fifo_a2b/rptr<2>_rt_662 , \u_fifo_a2b/rptr<1>_rt_666 , \u_fifo_a2b/rptr<0>_rt_671 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y7" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_fifo_a2b/rptr<2>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_fifo_a2b/rptr [2]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\u_fifo_a2b/rptr<2>_rt_662 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y7" ),
    .INIT ( 32'h00000000 ))
  \N1_133.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_133.C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y7" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rptr_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rptr_1/CLK ),
    .I(\u_fifo_a2b/Mcount_rptr1 ),
    .O(\u_fifo_a2b/rptr [1]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y7" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_fifo_a2b/rptr<1>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_fifo_a2b/rptr [1]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\u_fifo_a2b/rptr<1>_rt_666 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y7" ),
    .INIT ( 32'h00000000 ))
  \N1_134.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_134.B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y7" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rptr_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rptr_0/CLK ),
    .I(\u_fifo_a2b/Mcount_rptr ),
    .O(\u_fifo_a2b/rptr [0]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y7" ),
    .INIT ( 64'hCCCCCCCCCCCCCCCC ))
  \u_fifo_a2b/rptr<0>_rt  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR1(\u_fifo_a2b/rptr [0]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\u_fifo_a2b/rptr<0>_rt_671 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y7" ),
    .INIT ( 32'h00000000 ))
  \N1_135.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_135.A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y8" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rptr_7  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rptr_7/CLK ),
    .I(\u_fifo_a2b/Mcount_rptr7 ),
    .O(\u_fifo_a2b/rptr [7]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y8" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_fifo_a2b/rptr<7>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_fifo_a2b/rptr [7]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\u_fifo_a2b/rptr<7>_rt_680 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y8" ),
    .INIT ( 32'h00000000 ))
  \N1_128.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_128.D5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y8" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rptr_6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rptr_6/CLK ),
    .I(\u_fifo_a2b/Mcount_rptr6 ),
    .O(\u_fifo_a2b/rptr [6]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X12Y8" ))
  \u_fifo_a2b/Mcount_rptr_cy<7>  (
    .CI(\u_fifo_a2b/Mcount_rptr_cy[3] ),
    .CYINIT(1'b0),
    .CO({\u_fifo_a2b/Mcount_rptr_cy[7] , \NLW_u_fifo_a2b/Mcount_rptr_cy<7>_CO[2]_UNCONNECTED , \NLW_u_fifo_a2b/Mcount_rptr_cy<7>_CO[1]_UNCONNECTED , 
\NLW_u_fifo_a2b/Mcount_rptr_cy<7>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\u_fifo_a2b/Mcount_rptr7 , \u_fifo_a2b/Mcount_rptr6 , \u_fifo_a2b/Mcount_rptr5 , \u_fifo_a2b/Mcount_rptr4 }),
    .S({\u_fifo_a2b/rptr<7>_rt_680 , \u_fifo_a2b/rptr<6>_rt_691 , \u_fifo_a2b/rptr<5>_rt_695 , \u_fifo_a2b/rptr<4>_rt_699 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y8" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_fifo_a2b/rptr<6>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_fifo_a2b/rptr [6]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\u_fifo_a2b/rptr<6>_rt_691 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y8" ),
    .INIT ( 32'h00000000 ))
  \N1_129.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_129.C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y8" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rptr_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rptr_5/CLK ),
    .I(\u_fifo_a2b/Mcount_rptr5 ),
    .O(\u_fifo_a2b/rptr [5]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y8" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_fifo_a2b/rptr<5>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_fifo_a2b/rptr [5]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\u_fifo_a2b/rptr<5>_rt_695 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y8" ),
    .INIT ( 32'h00000000 ))
  \N1_130.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_130.B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y8" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rptr_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rptr_4/CLK ),
    .I(\u_fifo_a2b/Mcount_rptr4 ),
    .O(\u_fifo_a2b/rptr [4]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y8" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_fifo_a2b/rptr<4>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_fifo_a2b/rptr [4]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\u_fifo_a2b/rptr<4>_rt_699 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y8" ),
    .INIT ( 32'h00000000 ))
  \N1_131.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_131.A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y9" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rptr_11  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rptr_11/CLK ),
    .I(\u_fifo_a2b/Mcount_rptr11 ),
    .O(\u_fifo_a2b/rptr [11]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y9" ),
    .INIT ( 64'hFFFFFFFF00000000 ))
  \u_fifo_a2b/rptr<11>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(\u_fifo_a2b/rptr [11]),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .O(\u_fifo_a2b/rptr<11>_rt_708 )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y9" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rptr_10  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rptr_10/CLK ),
    .I(\u_fifo_a2b/Mcount_rptr10 ),
    .O(\u_fifo_a2b/rptr [10]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X12Y9" ))
  \u_fifo_a2b/Mcount_rptr_xor<11>  (
    .CI(\u_fifo_a2b/Mcount_rptr_cy[7] ),
    .CYINIT(1'b0),
    .CO({\NLW_u_fifo_a2b/Mcount_rptr_xor<11>_CO[3]_UNCONNECTED , \NLW_u_fifo_a2b/Mcount_rptr_xor<11>_CO[2]_UNCONNECTED , 
\NLW_u_fifo_a2b/Mcount_rptr_xor<11>_CO[1]_UNCONNECTED , \NLW_u_fifo_a2b/Mcount_rptr_xor<11>_CO[0]_UNCONNECTED }),
    .DI({\NLW_u_fifo_a2b/Mcount_rptr_xor<11>_DI[3]_UNCONNECTED , 1'b0, 1'b0, 1'b0}),
    .O({\u_fifo_a2b/Mcount_rptr11 , \u_fifo_a2b/Mcount_rptr10 , \u_fifo_a2b/Mcount_rptr9 , \u_fifo_a2b/Mcount_rptr8 }),
    .S({\u_fifo_a2b/rptr<11>_rt_708 , \u_fifo_a2b/rptr<10>_rt_717 , \u_fifo_a2b/rptr<9>_rt_721 , \u_fifo_a2b/rptr<8>_rt_725 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y9" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_fifo_a2b/rptr<10>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_fifo_a2b/rptr [10]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\u_fifo_a2b/rptr<10>_rt_717 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y9" ),
    .INIT ( 32'h00000000 ))
  \N1_125.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_125.C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y9" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rptr_9  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rptr_9/CLK ),
    .I(\u_fifo_a2b/Mcount_rptr9 ),
    .O(\u_fifo_a2b/rptr [9]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y9" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_fifo_a2b/rptr<9>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_fifo_a2b/rptr [9]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\u_fifo_a2b/rptr<9>_rt_721 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y9" ),
    .INIT ( 32'h00000000 ))
  \N1_126.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_126.B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y9" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rptr_8  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rptr_8/CLK ),
    .I(\u_fifo_a2b/Mcount_rptr8 ),
    .O(\u_fifo_a2b/rptr [8]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y9" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_fifo_a2b/rptr<8>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_fifo_a2b/rptr [8]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\u_fifo_a2b/rptr<8>_rt_725 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y9" ),
    .INIT ( 32'h00000000 ))
  \N1_127.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_127.A5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y28" ),
    .INIT ( 64'h0000000000000008 ))
  \u_engine/sig_done_win_nxt[55]_AND_42_o_wg_lut<3>  (
    .ADR2(\u_engine/win [21]),
    .ADR5(\u_engine/win [23]),
    .ADR1(\u_rx_a/m_tdata [6]),
    .ADR0(\u_engine/win<20>_0 ),
    .ADR4(\u_engine/win<24>_0 ),
    .ADR3(\u_engine/win [25]),
    .O(\u_engine/sig_done_win_nxt[55]_AND_42_o_wg_lut<3>_732 )
  );
  X_ONE #(
    .LOC ( "SLICE_X6Y28" ))
  \ProtoComp140.CYINITVCC  (
    .O(\ProtoComp140.CYINITVCC.1 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X6Y28" ))
  \u_engine/sig_done_win_nxt[55]_AND_42_o_wg_cy<3>  (
    .CI(1'b0),
    .CYINIT(\ProtoComp140.CYINITVCC.1 ),
    .CO({\u_engine/sig_done_win_nxt[55]_AND_42_o_wg_cy<3>_8142 , \NLW_u_engine/sig_done_win_nxt[55]_AND_42_o_wg_cy<3>_CO[2]_UNCONNECTED , 
\NLW_u_engine/sig_done_win_nxt[55]_AND_42_o_wg_cy<3>_CO[1]_UNCONNECTED , \NLW_u_engine/sig_done_win_nxt[55]_AND_42_o_wg_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\NLW_u_engine/sig_done_win_nxt[55]_AND_42_o_wg_cy<3>_O[3]_UNCONNECTED , \NLW_u_engine/sig_done_win_nxt[55]_AND_42_o_wg_cy<3>_O[2]_UNCONNECTED 
, \NLW_u_engine/sig_done_win_nxt[55]_AND_42_o_wg_cy<3>_O[1]_UNCONNECTED , \NLW_u_engine/sig_done_win_nxt[55]_AND_42_o_wg_cy<3>_O[0]_UNCONNECTED }),
    .S({\u_engine/sig_done_win_nxt[55]_AND_42_o_wg_lut<3>_732 , \u_engine/sig_done_win_nxt[55]_AND_42_o_wg_lut<2>_742 , 
\u_engine/sig_done_win_nxt[55]_AND_42_o_wg_lut<1>_750 , \u_engine/sig_done_win_nxt[55]_AND_42_o_wg_lut<0> })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y28" ),
    .INIT ( 64'h0000000008000000 ))
  \u_engine/sig_done_win_nxt[55]_AND_42_o_wg_lut<2>  (
    .ADR1(\u_engine/win [18]),
    .ADR5(\u_engine/win [19]),
    .ADR3(\u_engine/win<17>_0 ),
    .ADR0(\u_engine/win [1]),
    .ADR2(\u_engine/sig_done_8141 ),
    .ADR4(\u_engine/win<22>_0 ),
    .O(\u_engine/sig_done_win_nxt[55]_AND_42_o_wg_lut<2>_742 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y28" ),
    .INIT ( 64'h0000000200000000 ))
  \u_engine/sig_done_win_nxt[55]_AND_42_o_wg_lut<1>  (
    .ADR3(\u_engine/win [12]),
    .ADR1(\u_engine/win<13>_0 ),
    .ADR5(\u_engine/win [16]),
    .ADR0(\u_engine/win [14]),
    .ADR2(\u_engine/win [10]),
    .ADR4(\u_engine/win<15>_0 ),
    .O(\u_engine/sig_done_win_nxt[55]_AND_42_o_wg_lut<1>_750 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y28" ),
    .INIT ( 64'h3333333333333333 ))
  \u_engine/sig_done_win_nxt[55]_AND_42_o_wg_lut<0>_INV_0  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\u_engine/win<11>_0 ),
    .ADR5(1'b1),
    .O(\u_engine/sig_done_win_nxt[55]_AND_42_o_wg_lut<0> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y28" ),
    .INIT ( 32'h00000000 ))
  \N1_181.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_181.A5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y29" ),
    .INIT ( 64'h0004000000000000 ))
  \u_engine/sig_done_win_nxt[55]_AND_42_o_wg_lut<7>  (
    .ADR0(\u_engine/win [41]),
    .ADR2(\u_engine/win [3]),
    .ADR1(\u_engine/win<40>_0 ),
    .ADR5(\u_engine/win<42>_0 ),
    .ADR3(\u_rx_a/m_tdata [1]),
    .ADR4(\u_engine/win [43]),
    .O(\u_engine/sig_done_win_nxt[55]_AND_42_o_wg_lut<7>_762 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X6Y29" ))
  \u_engine/sig_done_win_nxt[55]_AND_42_o_wg_cy<7>  (
    .CI(\u_engine/sig_done_win_nxt[55]_AND_42_o_wg_cy<3>_8142 ),
    .CYINIT(1'b0),
    .CO({\u_engine/sig_done_win_nxt[55]_AND_42_o_wg_cy<7>_8143 , \NLW_u_engine/sig_done_win_nxt[55]_AND_42_o_wg_cy<7>_CO[2]_UNCONNECTED , 
\NLW_u_engine/sig_done_win_nxt[55]_AND_42_o_wg_cy<7>_CO[1]_UNCONNECTED , \NLW_u_engine/sig_done_win_nxt[55]_AND_42_o_wg_cy<7>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\NLW_u_engine/sig_done_win_nxt[55]_AND_42_o_wg_cy<7>_O[3]_UNCONNECTED , \NLW_u_engine/sig_done_win_nxt[55]_AND_42_o_wg_cy<7>_O[2]_UNCONNECTED 
, \NLW_u_engine/sig_done_win_nxt[55]_AND_42_o_wg_cy<7>_O[1]_UNCONNECTED , \NLW_u_engine/sig_done_win_nxt[55]_AND_42_o_wg_cy<7>_O[0]_UNCONNECTED }),
    .S({\u_engine/sig_done_win_nxt[55]_AND_42_o_wg_lut<7>_762 , \u_engine/sig_done_win_nxt[55]_AND_42_o_wg_lut<6>_772 , 
\u_engine/sig_done_win_nxt[55]_AND_42_o_wg_lut<5>_780 , \u_engine/sig_done_win_nxt[55]_AND_42_o_wg_lut<4>_788 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y29" ),
    .INIT ( 64'h0000000000000040 ))
  \u_engine/sig_done_win_nxt[55]_AND_42_o_wg_lut<6>  (
    .ADR4(\u_engine/win [34]),
    .ADR3(\u_engine/win [36]),
    .ADR1(\u_rx_a/m_tdata [2]),
    .ADR2(\u_engine/win<38>_0 ),
    .ADR5(\u_engine/win [37]),
    .ADR0(\u_engine/win [39]),
    .O(\u_engine/sig_done_win_nxt[55]_AND_42_o_wg_lut<6>_772 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y29" ),
    .INIT ( 64'h0000000000000020 ))
  \u_engine/sig_done_win_nxt[55]_AND_42_o_wg_lut<5>  (
    .ADR4(\u_engine/win<31>_0 ),
    .ADR1(\u_engine/win<35>_0 ),
    .ADR0(\u_engine/win [32]),
    .ADR2(\u_engine/win [30]),
    .ADR5(\u_rx_a/m_tdata [3]),
    .ADR3(\u_engine/win<33>_0 ),
    .O(\u_engine/sig_done_win_nxt[55]_AND_42_o_wg_lut<5>_780 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y29" ),
    .INIT ( 64'h0000000000000020 ))
  \u_engine/sig_done_win_nxt[55]_AND_42_o_wg_lut<4>  (
    .ADR5(\u_engine/win<29>_0 ),
    .ADR4(\u_engine/win [28]),
    .ADR2(\u_engine/win<27>_0 ),
    .ADR0(\u_engine/win<26>_0 ),
    .ADR1(\u_engine/win [0]),
    .ADR3(\u_engine/win [2]),
    .O(\u_engine/sig_done_win_nxt[55]_AND_42_o_wg_lut<4>_788 )
  );
  X_BUF   \u_engine/trigger_signature/u_engine/trigger_signature_BMUX_Delay  (
    .I(\u_engine/sig_done_win_nxt[55]_AND_42_o ),
    .O(\u_engine/sig_done_win_nxt[55]_AND_42_o_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y30" ),
    .INIT ( 1'b0 ))
  \u_engine/trigger_signature  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/trigger_signature/CLK ),
    .I(\u_engine/GND_6_o_sig_done_MUX_169_o ),
    .O(\u_engine/trigger_signature_8145 ),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X6Y30" ))
  \u_engine/Mmux_GND_6_o_sig_done_MUX_169_o11_cy  (
    .CI(\u_engine/sig_done_win_nxt[55]_AND_42_o_wg_cy<7>_8143 ),
    .CYINIT(1'b0),
    .CO({\NLW_u_engine/Mmux_GND_6_o_sig_done_MUX_169_o11_cy_CO[3]_UNCONNECTED , \u_engine/GND_6_o_sig_done_MUX_169_o , 
\u_engine/sig_done_win_nxt[55]_AND_42_o , \NLW_u_engine/Mmux_GND_6_o_sig_done_MUX_169_o11_cy_CO[0]_UNCONNECTED }),
    .DI({\NLW_u_engine/Mmux_GND_6_o_sig_done_MUX_169_o11_cy_DI[3]_UNCONNECTED , 1'b0, 1'b0, 1'b0}),
    .O({\NLW_u_engine/Mmux_GND_6_o_sig_done_MUX_169_o11_cy_O[3]_UNCONNECTED , \NLW_u_engine/Mmux_GND_6_o_sig_done_MUX_169_o11_cy_O[2]_UNCONNECTED , 
\NLW_u_engine/Mmux_GND_6_o_sig_done_MUX_169_o11_cy_O[1]_UNCONNECTED , \NLW_u_engine/Mmux_GND_6_o_sig_done_MUX_169_o11_cy_O[0]_UNCONNECTED }),
    .S({\NLW_u_engine/Mmux_GND_6_o_sig_done_MUX_169_o11_cy_S[3]_UNCONNECTED , \u_rx_a/m_tvalid_rt_801 , 
\u_engine/sig_done_win_nxt[55]_AND_42_o_wg_lut<9>_805 , \u_engine/sig_done_win_nxt[55]_AND_42_o_wg_lut<8>_813 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y30" ),
    .INIT ( 64'hAAAAAAAAAAAAAAAA ))
  \u_rx_a/m_tvalid_rt.1  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(\u_rx_a/m_tvalid_7480 ),
    .ADR5(1'b1),
    .O(\u_rx_a/m_tvalid_rt_801 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y30" ),
    .INIT ( 32'h00000000 ))
  \N1_191.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_191.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y30" ),
    .INIT ( 64'h0000002000000000 ))
  \u_engine/sig_done_win_nxt[55]_AND_42_o_wg_lut<9>  (
    .ADR4(\u_engine/win [7]),
    .ADR1(\u_engine/win [5]),
    .ADR5(\u_engine/sig_done_win_nxt[55]_AND_42_o1 ),
    .ADR2(\u_engine/win [8]),
    .ADR3(\u_engine/win<9>_0 ),
    .ADR0(\u_engine/win [6]),
    .O(\u_engine/sig_done_win_nxt[55]_AND_42_o_wg_lut<9>_805 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y30" ),
    .INIT ( 64'h0000000000002000 ))
  \u_engine/sig_done_win_nxt[55]_AND_42_o_wg_lut<8>  (
    .ADR5(\u_engine/win<44>_0 ),
    .ADR1(\u_engine/win<45>_0 ),
    .ADR3(\u_rx_a/m_tdata [0]),
    .ADR2(\u_engine/win [46]),
    .ADR4(\u_engine/win<47>_0 ),
    .ADR0(\u_engine/win [4]),
    .O(\u_engine/sig_done_win_nxt[55]_AND_42_o_wg_lut<8>_813 )
  );
  X_BUF   \u_fifo_b2a/Madd_wptr_n_cy<3>/u_fifo_b2a/Madd_wptr_n_cy<3>_DMUX_Delay  (
    .I(\u_fifo_b2a/wptr_n [3]),
    .O(\u_fifo_b2a/wptr_n<3>_0 )
  );
  X_BUF   \u_fifo_b2a/Madd_wptr_n_cy<3>/u_fifo_b2a/Madd_wptr_n_cy<3>_CMUX_Delay  (
    .I(\u_fifo_b2a/wptr_n [2]),
    .O(\u_fifo_b2a/wptr_n<2>_0 )
  );
  X_BUF   \u_fifo_b2a/Madd_wptr_n_cy<3>/u_fifo_b2a/Madd_wptr_n_cy<3>_BMUX_Delay  (
    .I(\u_fifo_b2a/wptr_n [1]),
    .O(\u_fifo_b2a/wptr_n<1>_0 )
  );
  X_BUF   \u_fifo_b2a/Madd_wptr_n_cy<3>/u_fifo_b2a/Madd_wptr_n_cy<3>_AMUX_Delay  (
    .I(\u_fifo_b2a/wptr_n [0]),
    .O(\u_fifo_b2a/wptr_n<0>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y16" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \u_fifo_b2a/wptr<3>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\u_fifo_b2a/wptr [3]),
    .ADR5(1'b1),
    .O(\u_fifo_b2a/wptr<3>_rt_821 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y16" ),
    .INIT ( 32'h00000000 ))
  \N1_85.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_85.D5LUT_O_UNCONNECTED )
  );
  X_ZERO #(
    .LOC ( "SLICE_X8Y16" ))
  \ProtoComp131.CYINITGND.2  (
    .O(\u_fifo_b2a/Madd_wptr_n_cy<3>/ProtoComp131.CYINITGND.0 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X8Y16" ))
  \u_fifo_b2a/Madd_wptr_n_cy<3>  (
    .CI(1'b0),
    .CYINIT(\u_fifo_b2a/Madd_wptr_n_cy<3>/ProtoComp131.CYINITGND.0 ),
    .CO({\u_fifo_b2a/Madd_wptr_n_cy[3] , \NLW_u_fifo_b2a/Madd_wptr_n_cy<3>_CO[2]_UNCONNECTED , \NLW_u_fifo_b2a/Madd_wptr_n_cy<3>_CO[1]_UNCONNECTED , 
\NLW_u_fifo_b2a/Madd_wptr_n_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b1}),
    .O({\u_fifo_b2a/wptr_n [3], \u_fifo_b2a/wptr_n [2], \u_fifo_b2a/wptr_n [1], \u_fifo_b2a/wptr_n [0]}),
    .S({\u_fifo_b2a/wptr<3>_rt_821 , \u_fifo_b2a/wptr<2>_rt_830 , \u_fifo_b2a/wptr<1>_rt_833 , \u_fifo_b2a/Madd_wptr_n_lut [0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y16" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_fifo_b2a/wptr<2>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_fifo_b2a/wptr [2]),
    .ADR5(1'b1),
    .O(\u_fifo_b2a/wptr<2>_rt_830 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y16" ),
    .INIT ( 32'h00000000 ))
  \N1_86.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_86.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y16" ),
    .INIT ( 64'hF0F0F0F0F0F0F0F0 ))
  \u_fifo_b2a/wptr<1>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\u_fifo_b2a/wptr [1]),
    .ADR5(1'b1),
    .O(\u_fifo_b2a/wptr<1>_rt_833 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y16" ),
    .INIT ( 32'h00000000 ))
  \N1_87.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_87.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y16" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \u_fifo_b2a/Madd_wptr_n_lut<0>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_fifo_b2a/wptr [0]),
    .ADR5(1'b1),
    .O(\u_fifo_b2a/Madd_wptr_n_lut [0])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y16" ),
    .INIT ( 32'hFFFFFFFF ))
  \SevenSegmentEnable_0_OBUF_1_9.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_SevenSegmentEnable_0_OBUF_1_9.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \u_fifo_b2a/Madd_wptr_n_cy<7>/u_fifo_b2a/Madd_wptr_n_cy<7>_DMUX_Delay  (
    .I(\u_fifo_b2a/wptr_n [7]),
    .O(\u_fifo_b2a/wptr_n<7>_0 )
  );
  X_BUF   \u_fifo_b2a/Madd_wptr_n_cy<7>/u_fifo_b2a/Madd_wptr_n_cy<7>_CMUX_Delay  (
    .I(\u_fifo_b2a/wptr_n [6]),
    .O(\u_fifo_b2a/wptr_n<6>_0 )
  );
  X_BUF   \u_fifo_b2a/Madd_wptr_n_cy<7>/u_fifo_b2a/Madd_wptr_n_cy<7>_BMUX_Delay  (
    .I(\u_fifo_b2a/wptr_n [5]),
    .O(\u_fifo_b2a/wptr_n<5>_0 )
  );
  X_BUF   \u_fifo_b2a/Madd_wptr_n_cy<7>/u_fifo_b2a/Madd_wptr_n_cy<7>_AMUX_Delay  (
    .I(\u_fifo_b2a/wptr_n [4]),
    .O(\u_fifo_b2a/wptr_n<4>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y17" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_fifo_b2a/wptr<7>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_fifo_b2a/wptr [7]),
    .ADR5(1'b1),
    .O(\u_fifo_b2a/wptr<7>_rt_843 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y17" ),
    .INIT ( 32'h00000000 ))
  \N1_81.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_81.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X8Y17" ))
  \u_fifo_b2a/Madd_wptr_n_cy<7>  (
    .CI(\u_fifo_b2a/Madd_wptr_n_cy[3] ),
    .CYINIT(1'b0),
    .CO({\u_fifo_b2a/Madd_wptr_n_cy[7] , \NLW_u_fifo_b2a/Madd_wptr_n_cy<7>_CO[2]_UNCONNECTED , \NLW_u_fifo_b2a/Madd_wptr_n_cy<7>_CO[1]_UNCONNECTED , 
\NLW_u_fifo_b2a/Madd_wptr_n_cy<7>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\u_fifo_b2a/wptr_n [7], \u_fifo_b2a/wptr_n [6], \u_fifo_b2a/wptr_n [5], \u_fifo_b2a/wptr_n [4]}),
    .S({\u_fifo_b2a/wptr<7>_rt_843 , \u_fifo_b2a/wptr<6>_rt_852 , \u_fifo_b2a/wptr<5>_rt_855 , \u_fifo_b2a/wptr<4>_rt_858 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y17" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_fifo_b2a/wptr<6>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_fifo_b2a/wptr [6]),
    .ADR5(1'b1),
    .O(\u_fifo_b2a/wptr<6>_rt_852 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y17" ),
    .INIT ( 32'h00000000 ))
  \N1_82.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_82.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y17" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_fifo_b2a/wptr<5>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_fifo_b2a/wptr [5]),
    .ADR5(1'b1),
    .O(\u_fifo_b2a/wptr<5>_rt_855 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y17" ),
    .INIT ( 32'h00000000 ))
  \N1_83.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_83.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y17" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \u_fifo_b2a/wptr<4>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\u_fifo_b2a/wptr [4]),
    .ADR5(1'b1),
    .O(\u_fifo_b2a/wptr<4>_rt_858 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y17" ),
    .INIT ( 32'h00000000 ))
  \N1_84.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_84.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \u_fifo_b2a/wptr_n<11>/u_fifo_b2a/wptr_n<11>_DMUX_Delay  (
    .I(\u_fifo_b2a/wptr_n [11]),
    .O(\u_fifo_b2a/wptr_n<11>_0 )
  );
  X_BUF   \u_fifo_b2a/wptr_n<11>/u_fifo_b2a/wptr_n<11>_CMUX_Delay  (
    .I(\u_fifo_b2a/wptr_n [10]),
    .O(\u_fifo_b2a/wptr_n<10>_0 )
  );
  X_BUF   \u_fifo_b2a/wptr_n<11>/u_fifo_b2a/wptr_n<11>_BMUX_Delay  (
    .I(\u_fifo_b2a/wptr_n [9]),
    .O(\u_fifo_b2a/wptr_n<9>_0 )
  );
  X_BUF   \u_fifo_b2a/wptr_n<11>/u_fifo_b2a/wptr_n<11>_AMUX_Delay  (
    .I(\u_fifo_b2a/wptr_n [8]),
    .O(\u_fifo_b2a/wptr_n<8>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y18" ),
    .INIT ( 64'hFFFFFFFF00000000 ))
  \u_fifo_b2a/wptr<11>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(\u_fifo_b2a/wptr [11]),
    .O(\u_fifo_b2a/wptr<11>_rt_865 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X8Y18" ))
  \u_fifo_b2a/Madd_wptr_n_xor<11>  (
    .CI(\u_fifo_b2a/Madd_wptr_n_cy[7] ),
    .CYINIT(1'b0),
    .CO({\NLW_u_fifo_b2a/Madd_wptr_n_xor<11>_CO[3]_UNCONNECTED , \NLW_u_fifo_b2a/Madd_wptr_n_xor<11>_CO[2]_UNCONNECTED , 
\NLW_u_fifo_b2a/Madd_wptr_n_xor<11>_CO[1]_UNCONNECTED , \NLW_u_fifo_b2a/Madd_wptr_n_xor<11>_CO[0]_UNCONNECTED }),
    .DI({\NLW_u_fifo_b2a/Madd_wptr_n_xor<11>_DI[3]_UNCONNECTED , 1'b0, 1'b0, 1'b0}),
    .O({\u_fifo_b2a/wptr_n [11], \u_fifo_b2a/wptr_n [10], \u_fifo_b2a/wptr_n [9], \u_fifo_b2a/wptr_n [8]}),
    .S({\u_fifo_b2a/wptr<11>_rt_865 , \u_fifo_b2a/wptr<10>_rt_872 , \u_fifo_b2a/wptr<9>_rt_875 , \u_fifo_b2a/wptr<8>_rt_878 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y18" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_fifo_b2a/wptr<10>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_fifo_b2a/wptr [10]),
    .ADR5(1'b1),
    .O(\u_fifo_b2a/wptr<10>_rt_872 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y18" ),
    .INIT ( 32'h00000000 ))
  \N1_78.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_78.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y18" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_fifo_b2a/wptr<9>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_fifo_b2a/wptr [9]),
    .ADR5(1'b1),
    .O(\u_fifo_b2a/wptr<9>_rt_875 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y18" ),
    .INIT ( 32'h00000000 ))
  \N1_79.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_79.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y18" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \u_fifo_b2a/wptr<8>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\u_fifo_b2a/wptr [8]),
    .ADR5(1'b1),
    .O(\u_fifo_b2a/wptr<8>_rt_878 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y18" ),
    .INIT ( 32'h00000000 ))
  \N1_80.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_80.A5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y7" ),
    .INIT ( 64'h9669699669969669 ))
  \u_fifo_a2b/Msub_used_lut<3>  (
    .ADR2(\u_fifo_a2b/rg_s2 [4]),
    .ADR0(\u_fifo_a2b/rg_s2 [5]),
    .ADR1(\u_fifo_a2b/rg_s2 [6]),
    .ADR4(\u_fifo_a2b/rg_s2 [7]),
    .ADR5(N75),
    .ADR3(\u_fifo_a2b/rptr_w[8] ),
    .O(\u_fifo_a2b/Msub_used_lut [3])
  );
  X_ONE #(
    .LOC ( "SLICE_X22Y7" ))
  \ProtoComp125.CYINITVCC.1  (
    .O(\u_fifo_a2b/Msub_used_cy<3>/ProtoComp125.CYINITVCC.1 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X22Y7" ))
  \u_fifo_a2b/Msub_used_cy<3>  (
    .CI(1'b0),
    .CYINIT(\u_fifo_a2b/Msub_used_cy<3>/ProtoComp125.CYINITVCC.1 ),
    .CO({\u_fifo_a2b/Msub_used_cy[3] , \NLW_u_fifo_a2b/Msub_used_cy<3>_CO[2]_UNCONNECTED , \NLW_u_fifo_a2b/Msub_used_cy<3>_CO[1]_UNCONNECTED , 
\NLW_u_fifo_a2b/Msub_used_cy<3>_CO[0]_UNCONNECTED }),
    .DI({\NlwBufferSignal_u_fifo_a2b/Msub_used_cy<3>/DI<3> , \NlwBufferSignal_u_fifo_a2b/Msub_used_cy<3>/DI<2> , 
\NlwBufferSignal_u_fifo_a2b/Msub_used_cy<3>/DI<1> , \NlwBufferSignal_u_fifo_a2b/Msub_used_cy<3>/DI<0> }),
    .O({\NLW_u_fifo_a2b/Msub_used_cy<3>_O[3]_UNCONNECTED , \NLW_u_fifo_a2b/Msub_used_cy<3>_O[2]_UNCONNECTED , 
\NLW_u_fifo_a2b/Msub_used_cy<3>_O[1]_UNCONNECTED , \NLW_u_fifo_a2b/Msub_used_cy<3>_O[0]_UNCONNECTED }),
    .S({\u_fifo_a2b/Msub_used_lut [3], \u_fifo_a2b/Msub_used_lut [2], \u_fifo_a2b/Msub_used_lut [1], \u_fifo_a2b/Msub_used_lut [0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y7" ),
    .INIT ( 64'h6996966996696996 ))
  \u_fifo_a2b/Msub_used_lut<2>  (
    .ADR0(\u_fifo_a2b/rg_s2 [4]),
    .ADR3(\u_fifo_a2b/rg_s2 [5]),
    .ADR4(\u_fifo_a2b/rg_s2 [6]),
    .ADR1(\u_fifo_a2b/rg_s2 [7]),
    .ADR5(N73),
    .ADR2(\u_fifo_a2b/rptr_w[8] ),
    .O(\u_fifo_a2b/Msub_used_lut [2])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y7" ),
    .INIT ( 64'h9669699669969669 ))
  \u_fifo_a2b/Msub_used_lut<1>  (
    .ADR5(\u_fifo_a2b/rg_s2 [4]),
    .ADR0(\u_fifo_a2b/rg_s2 [5]),
    .ADR1(\u_fifo_a2b/rg_s2 [6]),
    .ADR2(\u_fifo_a2b/rg_s2 [7]),
    .ADR3(N71),
    .ADR4(\u_fifo_a2b/rptr_w[8] ),
    .O(\u_fifo_a2b/Msub_used_lut [1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y7" ),
    .INIT ( 64'h6996966996696996 ))
  \u_fifo_a2b/Msub_used_lut<0>  (
    .ADR4(\u_fifo_a2b/wptr [0]),
    .ADR0(\u_fifo_a2b/rg_s2 [5]),
    .ADR3(\u_fifo_a2b/rg_s2 [6]),
    .ADR2(\u_fifo_a2b/rg_s2 [7]),
    .ADR5(N69),
    .ADR1(\u_fifo_a2b/rptr_w[8] ),
    .O(\u_fifo_a2b/Msub_used_lut [0])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y8" ),
    .INIT ( 64'h9669699669969669 ))
  \u_fifo_a2b/Msub_used_lut<7>  (
    .ADR0(\u_fifo_a2b/rg_s2 [8]),
    .ADR2(\u_fifo_a2b/wptr [7]),
    .ADR5(\u_fifo_a2b/rg_s2 [9]),
    .ADR3(\u_fifo_a2b/rg_s2 [10]),
    .ADR4(\u_fifo_a2b/rg_s2 [11]),
    .ADR1(\u_fifo_a2b/rg_s2 [7]),
    .O(\u_fifo_a2b/Msub_used_lut [7])
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X22Y8" ))
  \u_fifo_a2b/Msub_used_cy<7>  (
    .CI(\u_fifo_a2b/Msub_used_cy[3] ),
    .CYINIT(1'b0),
    .CO({\u_fifo_a2b/Msub_used_cy[7] , \NLW_u_fifo_a2b/Msub_used_cy<7>_CO[2]_UNCONNECTED , \NLW_u_fifo_a2b/Msub_used_cy<7>_CO[1]_UNCONNECTED , 
\NLW_u_fifo_a2b/Msub_used_cy<7>_CO[0]_UNCONNECTED }),
    .DI({\NlwBufferSignal_u_fifo_a2b/Msub_used_cy<7>/DI<3> , \NlwBufferSignal_u_fifo_a2b/Msub_used_cy<7>/DI<2> , 
\NlwBufferSignal_u_fifo_a2b/Msub_used_cy<7>/DI<1> , \NlwBufferSignal_u_fifo_a2b/Msub_used_cy<7>/DI<0> }),
    .O({\NLW_u_fifo_a2b/Msub_used_cy<7>_O[3]_UNCONNECTED , \NLW_u_fifo_a2b/Msub_used_cy<7>_O[2]_UNCONNECTED , 
\NLW_u_fifo_a2b/Msub_used_cy<7>_O[1]_UNCONNECTED , \NLW_u_fifo_a2b/Msub_used_cy<7>_O[0]_UNCONNECTED }),
    .S({\u_fifo_a2b/Msub_used_lut [7], \u_fifo_a2b/Msub_used_lut [6], \u_fifo_a2b/Msub_used_lut [5], \u_fifo_a2b/Msub_used_lut [4]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y8" ),
    .INIT ( 64'hF0F00F0FF0F00F0F ))
  \u_fifo_a2b/Msub_used_lut<6>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_fifo_a2b/wptr [6]),
    .ADR2(\u_fifo_a2b/rptr_w[6] ),
    .O(\u_fifo_a2b/Msub_used_lut [6])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y8" ),
    .INIT ( 64'h6666999966669999 ))
  \u_fifo_a2b/Msub_used_lut<5>  (
    .ADR3(1'b1),
    .ADR5(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_fifo_a2b/wptr [5]),
    .ADR0(\u_fifo_a2b/rg_s2 [5]),
    .ADR1(\u_fifo_a2b/rptr_w[6] ),
    .O(\u_fifo_a2b/Msub_used_lut [5])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y8" ),
    .INIT ( 64'h9669699669969669 ))
  \u_fifo_a2b/Msub_used_lut<4>  (
    .ADR3(\u_fifo_a2b/wptr [4]),
    .ADR5(\u_fifo_a2b/rg_s2 [4]),
    .ADR4(\u_fifo_a2b/rg_s2 [5]),
    .ADR0(\u_fifo_a2b/rg_s2 [6]),
    .ADR2(\u_fifo_a2b/rg_s2 [7]),
    .ADR1(\u_fifo_a2b/rptr_w[8] ),
    .O(\u_fifo_a2b/Msub_used_lut [4])
  );
  X_BUF   \u_fifo_a2b/used<11>/u_fifo_a2b/used<11>_DMUX_Delay  (
    .I(\u_fifo_a2b/used [11]),
    .O(\u_fifo_a2b/used<11>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y9" ),
    .INIT ( 64'hCCCCCCCC33333333 ))
  \u_fifo_a2b/Msub_used_lut<11>  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR5(\u_fifo_a2b/wptr [11]),
    .ADR1(\u_fifo_a2b/rg_s2 [11]),
    .O(\u_fifo_a2b/Msub_used_lut [11])
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X22Y9" ))
  \u_fifo_a2b/Msub_used_xor<11>  (
    .CI(\u_fifo_a2b/Msub_used_cy[7] ),
    .CYINIT(1'b0),
    .CO({\NLW_u_fifo_a2b/Msub_used_xor<11>_CO[3]_UNCONNECTED , \NLW_u_fifo_a2b/Msub_used_xor<11>_CO[2]_UNCONNECTED , 
\NLW_u_fifo_a2b/Msub_used_xor<11>_CO[1]_UNCONNECTED , \NLW_u_fifo_a2b/Msub_used_xor<11>_CO[0]_UNCONNECTED }),
    .DI({\NLW_u_fifo_a2b/Msub_used_xor<11>_DI[3]_UNCONNECTED , \NlwBufferSignal_u_fifo_a2b/Msub_used_xor<11>/DI<2> , 
\NlwBufferSignal_u_fifo_a2b/Msub_used_xor<11>/DI<1> , \NlwBufferSignal_u_fifo_a2b/Msub_used_xor<11>/DI<0> }),
    .O({\u_fifo_a2b/used [11], \NLW_u_fifo_a2b/Msub_used_xor<11>_O[2]_UNCONNECTED , \NLW_u_fifo_a2b/Msub_used_xor<11>_O[1]_UNCONNECTED , 
\NLW_u_fifo_a2b/Msub_used_xor<11>_O[0]_UNCONNECTED }),
    .S({\u_fifo_a2b/Msub_used_lut [11], \u_fifo_a2b/Msub_used_lut [10], \u_fifo_a2b/Msub_used_lut [9], \u_fifo_a2b/Msub_used_lut [8]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y9" ),
    .INIT ( 64'h00FFFF00FF0000FF ))
  \u_fifo_a2b/Msub_used_lut<10>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\u_fifo_a2b/wptr [10]),
    .ADR4(\u_fifo_a2b/rg_s2 [10]),
    .ADR5(\u_fifo_a2b/rg_s2 [11]),
    .O(\u_fifo_a2b/Msub_used_lut [10])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y9" ),
    .INIT ( 64'hA55A5AA5A55A5AA5 ))
  \u_fifo_a2b/Msub_used_lut<9>  (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR2(\u_fifo_a2b/wptr [9]),
    .ADR4(\u_fifo_a2b/rg_s2 [9]),
    .ADR3(\u_fifo_a2b/rg_s2 [10]),
    .ADR0(\u_fifo_a2b/rg_s2 [11]),
    .O(\u_fifo_a2b/Msub_used_lut [9])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y9" ),
    .INIT ( 64'h6699996699666699 ))
  \u_fifo_a2b/Msub_used_lut<8>  (
    .ADR2(1'b1),
    .ADR4(\u_fifo_a2b/wptr [8]),
    .ADR1(\u_fifo_a2b/rg_s2 [8]),
    .ADR5(\u_fifo_a2b/rg_s2 [9]),
    .ADR0(\u_fifo_a2b/rg_s2 [10]),
    .ADR3(\u_fifo_a2b/rg_s2 [11]),
    .O(\u_fifo_a2b/Msub_used_lut [8])
  );
  X_BUF   \u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<11>/u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<11>_DMUX_Delay  (
    .I(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<11> ),
    .O(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<11>_0 )
  );
  X_BUF   \u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<11>/u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<11>_CMUX_Delay  (
    .I(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<10> ),
    .O(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<10>_0 )
  );
  X_BUF   \u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<11>/u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<11>_BMUX_Delay  (
    .I(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<9> ),
    .O(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<9>_0 )
  );
  X_BUF   \u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<11>/u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<11>_AMUX_Delay  (
    .I(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<8> ),
    .O(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<8>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y6" ),
    .INIT ( 64'hFFFFFFFF00000000 ))
  \u_fifo_a2b/rptr<11>_rt.1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(\u_fifo_a2b/rptr [11]),
    .O(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<11>/u_fifo_a2b/rptr<11>_rt )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X14Y6" ))
  \u_fifo_a2b/Madd_rptr[11]_GND_4_o_add_23_OUT_xor<11>  (
    .CI(\u_fifo_a2b/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<7>_8168 ),
    .CYINIT(1'b0),
    .CO({\NLW_u_fifo_a2b/Madd_rptr[11]_GND_4_o_add_23_OUT_xor<11>_CO[3]_UNCONNECTED , 
\NLW_u_fifo_a2b/Madd_rptr[11]_GND_4_o_add_23_OUT_xor<11>_CO[2]_UNCONNECTED , 
\NLW_u_fifo_a2b/Madd_rptr[11]_GND_4_o_add_23_OUT_xor<11>_CO[1]_UNCONNECTED , 
\NLW_u_fifo_a2b/Madd_rptr[11]_GND_4_o_add_23_OUT_xor<11>_CO[0]_UNCONNECTED }),
    .DI({\NLW_u_fifo_a2b/Madd_rptr[11]_GND_4_o_add_23_OUT_xor<11>_DI[3]_UNCONNECTED , 1'b0, 1'b0, 1'b0}),
    .O({\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<11> , \u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<10> , \u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<9> , 
\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<8> }),
    .S({\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<11>/u_fifo_a2b/rptr<11>_rt , \u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<11>/u_fifo_a2b/rptr<10>_rt , 
\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<11>/u_fifo_a2b/rptr<9>_rt , \u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<11>/u_fifo_a2b/rptr<8>_rt })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y6" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_fifo_a2b/rptr<10>_rt.1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_fifo_a2b/rptr [10]),
    .ADR5(1'b1),
    .O(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<11>/u_fifo_a2b/rptr<10>_rt )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y6" ),
    .INIT ( 32'h00000000 ))
  \N1_101.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_101.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y6" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_fifo_a2b/rptr<9>_rt.1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_fifo_a2b/rptr [9]),
    .ADR5(1'b1),
    .O(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<11>/u_fifo_a2b/rptr<9>_rt )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y6" ),
    .INIT ( 32'h00000000 ))
  \N1_102.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_102.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y6" ),
    .INIT ( 64'hCCCCCCCCCCCCCCCC ))
  \u_fifo_a2b/rptr<8>_rt.1  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\u_fifo_a2b/rptr [8]),
    .ADR5(1'b1),
    .O(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<11>/u_fifo_a2b/rptr<8>_rt )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y6" ),
    .INIT ( 32'h00000000 ))
  \N1_103.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_103.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<3>/u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<3>_DMUX_Delay  (
    .I(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<3> ),
    .O(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<3>_0 )
  );
  X_BUF   \u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<3>/u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<3>_CMUX_Delay  (
    .I(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<2> ),
    .O(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<2>_0 )
  );
  X_BUF   \u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<3>/u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<3>_BMUX_Delay  (
    .I(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<1> ),
    .O(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<1>_0 )
  );
  X_BUF   \u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<3>/u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<3>_AMUX_Delay  (
    .I(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<0> ),
    .O(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<0>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y23" ),
    .INIT ( 64'hCCCCCCCCCCCCCCCC ))
  \u_fifo_b2a/rptr<3>_rt  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\u_fifo_b2a/rptr [3]),
    .ADR5(1'b1),
    .O(\u_fifo_b2a/rptr<3>_rt_987 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y23" ),
    .INIT ( 32'h00000000 ))
  \N1_73.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_73.D5LUT_O_UNCONNECTED )
  );
  X_ZERO #(
    .LOC ( "SLICE_X12Y23" ))
  \ProtoComp131.CYINITGND.4  (
    .O(\u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<3>/ProtoComp131.CYINITGND.0 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X12Y23" ))
  \u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<3>  (
    .CI(1'b0),
    .CYINIT(\u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<3>/ProtoComp131.CYINITGND.0 ),
    .CO({\u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<3>_8170 , \NLW_u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<3>_CO[2]_UNCONNECTED , 
\NLW_u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<3>_CO[1]_UNCONNECTED , \NLW_u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<3>_CO[0]_UNCONNECTED })
,
    .DI({1'b0, 1'b0, 1'b0, 1'b1}),
    .O({\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<3> , \u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<2> , \u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<1> , 
\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<0> }),
    .S({\u_fifo_b2a/rptr<3>_rt_987 , \u_fifo_b2a/rptr<2>_rt_996 , \u_fifo_b2a/rptr<1>_rt_999 , \u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_lut<0> })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y23" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_fifo_b2a/rptr<2>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_fifo_b2a/rptr [2]),
    .ADR5(1'b1),
    .O(\u_fifo_b2a/rptr<2>_rt_996 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y23" ),
    .INIT ( 32'h00000000 ))
  \N1_74.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_74.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y23" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_fifo_b2a/rptr<1>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_fifo_b2a/rptr [1]),
    .ADR5(1'b1),
    .O(\u_fifo_b2a/rptr<1>_rt_999 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y23" ),
    .INIT ( 32'h00000000 ))
  \N1_75.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_75.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y23" ),
    .INIT ( 64'h3333333333333333 ))
  \u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_lut<0>_INV_0  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\u_fifo_b2a/rptr [0]),
    .ADR5(1'b1),
    .O(\u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_lut<0> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y23" ),
    .INIT ( 32'hFFFFFFFF ))
  \SevenSegmentEnable_0_OBUF_1_8.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_SevenSegmentEnable_0_OBUF_1_8.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<11>/u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<11>_DMUX_Delay  (
    .I(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<11> ),
    .O(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<11>_0 )
  );
  X_BUF   \u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<11>/u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<11>_CMUX_Delay  (
    .I(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<10> ),
    .O(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<10>_0 )
  );
  X_BUF   \u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<11>/u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<11>_BMUX_Delay  (
    .I(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<9> ),
    .O(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<9>_0 )
  );
  X_BUF   \u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<11>/u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<11>_AMUX_Delay  (
    .I(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<8> ),
    .O(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<8>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y25" ),
    .INIT ( 64'hFFFFFFFF00000000 ))
  \u_fifo_b2a/rptr<11>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(\u_fifo_b2a/rptr [11]),
    .O(\u_fifo_b2a/rptr<11>_rt_1009 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X12Y25" ))
  \u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_xor<11>  (
    .CI(\u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<7>_8171 ),
    .CYINIT(1'b0),
    .CO({\NLW_u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_xor<11>_CO[3]_UNCONNECTED , 
\NLW_u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_xor<11>_CO[2]_UNCONNECTED , 
\NLW_u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_xor<11>_CO[1]_UNCONNECTED , 
\NLW_u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_xor<11>_CO[0]_UNCONNECTED }),
    .DI({\NLW_u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_xor<11>_DI[3]_UNCONNECTED , 1'b0, 1'b0, 1'b0}),
    .O({\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<11> , \u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<10> , \u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<9> , 
\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<8> }),
    .S({\u_fifo_b2a/rptr<11>_rt_1009 , \u_fifo_b2a/rptr<10>_rt_1016 , \u_fifo_b2a/rptr<9>_rt_1019 , \u_fifo_b2a/rptr<8>_rt_1022 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y25" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_fifo_b2a/rptr<10>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_fifo_b2a/rptr [10]),
    .ADR5(1'b1),
    .O(\u_fifo_b2a/rptr<10>_rt_1016 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y25" ),
    .INIT ( 32'h00000000 ))
  \N1_66.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_66.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y25" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_fifo_b2a/rptr<9>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_fifo_b2a/rptr [9]),
    .ADR5(1'b1),
    .O(\u_fifo_b2a/rptr<9>_rt_1019 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y25" ),
    .INIT ( 32'h00000000 ))
  \N1_67.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_67.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y25" ),
    .INIT ( 64'hCCCCCCCCCCCCCCCC ))
  \u_fifo_b2a/rptr<8>_rt  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\u_fifo_b2a/rptr [8]),
    .ADR5(1'b1),
    .O(\u_fifo_b2a/rptr<8>_rt_1022 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y25" ),
    .INIT ( 32'h00000000 ))
  \N1_68.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_68.A5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y42" ),
    .INIT ( 64'h0000003300000033 ))
  \u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_lut<3>1  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR3(\u_rx_a/m_tindex [9]),
    .ADR1(\u_rx_a/m_tindex [10]),
    .ADR4(\u_rx_a/m_tindex [11]),
    .ADR5(1'b1),
    .O(\u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_lut<3> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y42" ),
    .INIT ( 32'h00000000 ))
  \N1_177.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_177.D5LUT_O_UNCONNECTED )
  );
  X_ONE #(
    .LOC ( "SLICE_X14Y42" ))
  \ProtoComp143.CYINITVCC  (
    .O(\ProtoComp143.CYINITVCC.1 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X14Y42" ))
  \u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_cy<3>  (
    .CI(1'b0),
    .CYINIT(\ProtoComp143.CYINITVCC.1 ),
    .CO({\u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_cy<3>_8174 , 
\NLW_u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_cy<3>_CO[2]_UNCONNECTED , 
\NLW_u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_cy<3>_CO[1]_UNCONNECTED , 
\NLW_u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\NLW_u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_cy<3>_O[3]_UNCONNECTED , 
\NLW_u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_cy<3>_O[2]_UNCONNECTED , 
\NLW_u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_cy<3>_O[1]_UNCONNECTED , 
\NLW_u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_cy<3>_O[0]_UNCONNECTED }),
    .S({\u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_lut<3> , \u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_lut<2> , 
\u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_lut<1>_1042 , \u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_lut<0> })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y42" ),
    .INIT ( 64'h0000414100004141 ))
  \u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_lut<2>1  (
    .ADR3(1'b1),
    .ADR4(\u_rx_a/m_tindex [7]),
    .ADR0(\u_rx_a/m_tindex [8]),
    .ADR1(\u_rx_a/m_tindex [6]),
    .ADR2(\u_engine/idx_flags [6]),
    .ADR5(1'b1),
    .O(\u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_lut<2> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y42" ),
    .INIT ( 32'h00000000 ))
  \N1_178.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_178.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y42" ),
    .INIT ( 64'h8020080240100401 ))
  \u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_lut<1>  (
    .ADR0(\u_rx_a/m_tindex [3]),
    .ADR5(\u_engine/idx_flags [3]),
    .ADR2(\u_rx_a/m_tindex [4]),
    .ADR4(\u_engine/idx_flags [4]),
    .ADR3(\u_rx_a/m_tindex [5]),
    .ADR1(\u_engine/idx_flags<5>_0 ),
    .O(\u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_lut<1>_1042 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y42" ),
    .INIT ( 64'hC0300000C0300000 ))
  \u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_lut<0>1  (
    .ADR0(1'b1),
    .ADR2(\u_rx_a/m_tindex [0]),
    .ADR4(\u_rx_a/m_tindex [1]),
    .ADR1(\u_rx_a/m_tindex [2]),
    .ADR3(\u_engine/idx_dport_lo [2]),
    .ADR5(1'b1),
    .O(\u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_lut<0> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y42" ),
    .INIT ( 32'h00000000 ))
  \N1_180.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_180.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \u_engine/s_tindex[15]_idx_flags[15]_equal_12_o/u_engine/s_tindex[15]_idx_flags[15]_equal_12_o_BMUX_Delay  (
    .I(\u_engine/s_tindex[15]_idx_flags[15]_equal_12_o ),
    .O(\u_engine/s_tindex[15]_idx_flags[15]_equal_12_o_0 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X14Y43" ))
  \u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_cy<5>  (
    .CI(\u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_cy<3>_8174 ),
    .CYINIT(1'b0),
    .CO({\NLW_u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_cy<5>_CO[3]_UNCONNECTED , 
\NLW_u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_cy<5>_CO[2]_UNCONNECTED , \u_engine/s_tindex[15]_idx_flags[15]_equal_12_o , 
\NLW_u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_cy<5>_CO[0]_UNCONNECTED }),
    .DI({\NLW_u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_cy<5>_DI[3]_UNCONNECTED , 
\NLW_u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_cy<5>_DI[2]_UNCONNECTED , 1'b0, 1'b0}),
    .O({\NLW_u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_cy<5>_O[3]_UNCONNECTED , 
\NLW_u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_cy<5>_O[2]_UNCONNECTED , 
\NLW_u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_cy<5>_O[1]_UNCONNECTED , 
\NLW_u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_cy<5>_O[0]_UNCONNECTED }),
    .S({\NLW_u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_cy<5>_S[3]_UNCONNECTED , 
\NLW_u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_cy<5>_S[2]_UNCONNECTED , \u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_lut<5> , 
\u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_lut<4> })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y43" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_lut<5>1_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\u_rx_a/m_tindex [15]),
    .ADR5(1'b1),
    .O(\u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_lut<5> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y43" ),
    .INIT ( 32'h00000000 ))
  \N1_175.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_175.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y43" ),
    .INIT ( 64'h0000003300000033 ))
  \u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_lut<4>1  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR1(\u_rx_a/m_tindex [12]),
    .ADR4(\u_rx_a/m_tindex [13]),
    .ADR3(\u_rx_a/m_tindex [14]),
    .ADR5(1'b1),
    .O(\u_engine/Mcompar_s_tindex[15]_idx_flags[15]_equal_12_o_lut<4> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y43" ),
    .INIT ( 32'h00000000 ))
  \N1_176.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_176.A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y24" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rptr_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rptr_3/CLK ),
    .I(\u_fifo_b2a/Mcount_rptr3 ),
    .O(\u_fifo_b2a/rptr [3]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y24" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_fifo_b2a/rptr<3>_rt.1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_fifo_b2a/rptr [3]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\u_fifo_b2a/rptr<3>/u_fifo_b2a/rptr<3>_rt )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y24" ),
    .INIT ( 32'h00000000 ))
  \N1_97.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_97.D5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y24" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rptr_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rptr_2/CLK ),
    .I(\u_fifo_b2a/Mcount_rptr2 ),
    .O(\u_fifo_b2a/rptr [2]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X14Y24" ))
  \u_fifo_b2a/Mcount_rptr_cy<3>  (
    .CI(1'b0),
    .CYINIT(\u_fifo_b2a/pop ),
    .CO({\u_fifo_b2a/Mcount_rptr_cy[3] , \NLW_u_fifo_b2a/Mcount_rptr_cy<3>_CO[2]_UNCONNECTED , \NLW_u_fifo_b2a/Mcount_rptr_cy<3>_CO[1]_UNCONNECTED , 
\NLW_u_fifo_b2a/Mcount_rptr_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\u_fifo_b2a/Mcount_rptr3 , \u_fifo_b2a/Mcount_rptr2 , \u_fifo_b2a/Mcount_rptr1 , \u_fifo_b2a/Mcount_rptr }),
    .S({\u_fifo_b2a/rptr<3>/u_fifo_b2a/rptr<3>_rt , \u_fifo_b2a/rptr<3>/u_fifo_b2a/rptr<2>_rt , \u_fifo_b2a/rptr<3>/u_fifo_b2a/rptr<1>_rt , 
\u_fifo_b2a/rptr<0>_rt_1091 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y24" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_fifo_b2a/rptr<2>_rt.1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_fifo_b2a/rptr [2]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\u_fifo_b2a/rptr<3>/u_fifo_b2a/rptr<2>_rt )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y24" ),
    .INIT ( 32'h00000000 ))
  \N1_98.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_98.C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y24" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rptr_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rptr_1/CLK ),
    .I(\u_fifo_b2a/Mcount_rptr1 ),
    .O(\u_fifo_b2a/rptr [1]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y24" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_fifo_b2a/rptr<1>_rt.1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_fifo_b2a/rptr [1]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\u_fifo_b2a/rptr<3>/u_fifo_b2a/rptr<1>_rt )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y24" ),
    .INIT ( 32'h00000000 ))
  \N1_99.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_99.B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y24" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rptr_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rptr_0/CLK ),
    .I(\u_fifo_b2a/Mcount_rptr ),
    .O(\u_fifo_b2a/rptr [0]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y24" ),
    .INIT ( 64'hCCCCCCCCCCCCCCCC ))
  \u_fifo_b2a/rptr<0>_rt  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR1(\u_fifo_b2a/rptr [0]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\u_fifo_b2a/rptr<0>_rt_1091 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y24" ),
    .INIT ( 32'h00000000 ))
  \N1_100.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_100.A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y25" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rptr_7  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rptr_7/CLK ),
    .I(\u_fifo_b2a/Mcount_rptr7 ),
    .O(\u_fifo_b2a/rptr [7]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y25" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_fifo_b2a/rptr<7>_rt.1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_fifo_b2a/rptr [7]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\u_fifo_b2a/rptr<7>_rt_1100 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y25" ),
    .INIT ( 32'h00000000 ))
  \N1_93.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_93.D5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y25" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rptr_6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rptr_6/CLK ),
    .I(\u_fifo_b2a/Mcount_rptr6 ),
    .O(\u_fifo_b2a/rptr [6]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X14Y25" ))
  \u_fifo_b2a/Mcount_rptr_cy<7>  (
    .CI(\u_fifo_b2a/Mcount_rptr_cy[3] ),
    .CYINIT(1'b0),
    .CO({\u_fifo_b2a/Mcount_rptr_cy[7] , \NLW_u_fifo_b2a/Mcount_rptr_cy<7>_CO[2]_UNCONNECTED , \NLW_u_fifo_b2a/Mcount_rptr_cy<7>_CO[1]_UNCONNECTED , 
\NLW_u_fifo_b2a/Mcount_rptr_cy<7>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\u_fifo_b2a/Mcount_rptr7 , \u_fifo_b2a/Mcount_rptr6 , \u_fifo_b2a/Mcount_rptr5 , \u_fifo_b2a/Mcount_rptr4 }),
    .S({\u_fifo_b2a/rptr<7>_rt_1100 , \u_fifo_b2a/rptr<6>_rt_1111 , \u_fifo_b2a/rptr<5>_rt_1115 , \u_fifo_b2a/rptr<4>_rt_1119 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y25" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_fifo_b2a/rptr<6>_rt.1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_fifo_b2a/rptr [6]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\u_fifo_b2a/rptr<6>_rt_1111 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y25" ),
    .INIT ( 32'h00000000 ))
  \N1_94.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_94.C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y25" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rptr_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rptr_5/CLK ),
    .I(\u_fifo_b2a/Mcount_rptr5 ),
    .O(\u_fifo_b2a/rptr [5]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y25" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_fifo_b2a/rptr<5>_rt.1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_fifo_b2a/rptr [5]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\u_fifo_b2a/rptr<5>_rt_1115 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y25" ),
    .INIT ( 32'h00000000 ))
  \N1_95.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_95.B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y25" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rptr_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rptr_4/CLK ),
    .I(\u_fifo_b2a/Mcount_rptr4 ),
    .O(\u_fifo_b2a/rptr [4]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y25" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_fifo_b2a/rptr<4>_rt.1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_fifo_b2a/rptr [4]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\u_fifo_b2a/rptr<4>_rt_1119 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y25" ),
    .INIT ( 32'h00000000 ))
  \N1_96.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_96.A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y26" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rptr_11  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rptr_11/CLK ),
    .I(\u_fifo_b2a/Mcount_rptr11 ),
    .O(\u_fifo_b2a/rptr [11]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y26" ),
    .INIT ( 64'hFFFFFFFF00000000 ))
  \u_fifo_b2a/rptr<11>_rt.1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(\u_fifo_b2a/rptr [11]),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .O(\u_fifo_b2a/rptr<11>/u_fifo_b2a/rptr<11>_rt )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y26" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rptr_10  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rptr_10/CLK ),
    .I(\u_fifo_b2a/Mcount_rptr10 ),
    .O(\u_fifo_b2a/rptr [10]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X14Y26" ))
  \u_fifo_b2a/Mcount_rptr_xor<11>  (
    .CI(\u_fifo_b2a/Mcount_rptr_cy[7] ),
    .CYINIT(1'b0),
    .CO({\NLW_u_fifo_b2a/Mcount_rptr_xor<11>_CO[3]_UNCONNECTED , \NLW_u_fifo_b2a/Mcount_rptr_xor<11>_CO[2]_UNCONNECTED , 
\NLW_u_fifo_b2a/Mcount_rptr_xor<11>_CO[1]_UNCONNECTED , \NLW_u_fifo_b2a/Mcount_rptr_xor<11>_CO[0]_UNCONNECTED }),
    .DI({\NLW_u_fifo_b2a/Mcount_rptr_xor<11>_DI[3]_UNCONNECTED , 1'b0, 1'b0, 1'b0}),
    .O({\u_fifo_b2a/Mcount_rptr11 , \u_fifo_b2a/Mcount_rptr10 , \u_fifo_b2a/Mcount_rptr9 , \u_fifo_b2a/Mcount_rptr8 }),
    .S({\u_fifo_b2a/rptr<11>/u_fifo_b2a/rptr<11>_rt , \u_fifo_b2a/rptr<11>/u_fifo_b2a/rptr<10>_rt , \u_fifo_b2a/rptr<11>/u_fifo_b2a/rptr<9>_rt , 
\u_fifo_b2a/rptr<11>/u_fifo_b2a/rptr<8>_rt })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y26" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_fifo_b2a/rptr<10>_rt.1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_fifo_b2a/rptr [10]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\u_fifo_b2a/rptr<11>/u_fifo_b2a/rptr<10>_rt )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y26" ),
    .INIT ( 32'h00000000 ))
  \N1_90.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_90.C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y26" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rptr_9  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rptr_9/CLK ),
    .I(\u_fifo_b2a/Mcount_rptr9 ),
    .O(\u_fifo_b2a/rptr [9]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y26" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_fifo_b2a/rptr<9>_rt.1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_fifo_b2a/rptr [9]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\u_fifo_b2a/rptr<11>/u_fifo_b2a/rptr<9>_rt )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y26" ),
    .INIT ( 32'h00000000 ))
  \N1_91.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_91.B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y26" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rptr_8  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rptr_8/CLK ),
    .I(\u_fifo_b2a/Mcount_rptr8 ),
    .O(\u_fifo_b2a/rptr [8]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y26" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_fifo_b2a/rptr<8>_rt.1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_fifo_b2a/rptr [8]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\u_fifo_b2a/rptr<11>/u_fifo_b2a/rptr<8>_rt )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y26" ),
    .INIT ( 32'h00000000 ))
  \N1_92.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_92.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \u_fifo_a2b/Madd_wptr_n_cy<3>/u_fifo_a2b/Madd_wptr_n_cy<3>_DMUX_Delay  (
    .I(\u_fifo_a2b/wptr_n [3]),
    .O(\u_fifo_a2b/wptr_n<3>_0 )
  );
  X_BUF   \u_fifo_a2b/Madd_wptr_n_cy<3>/u_fifo_a2b/Madd_wptr_n_cy<3>_CMUX_Delay  (
    .I(\u_fifo_a2b/wptr_n [2]),
    .O(\u_fifo_a2b/wptr_n<2>_0 )
  );
  X_BUF   \u_fifo_a2b/Madd_wptr_n_cy<3>/u_fifo_a2b/Madd_wptr_n_cy<3>_BMUX_Delay  (
    .I(\u_fifo_a2b/wptr_n [1]),
    .O(\u_fifo_a2b/wptr_n<1>_0 )
  );
  X_BUF   \u_fifo_a2b/Madd_wptr_n_cy<3>/u_fifo_a2b/Madd_wptr_n_cy<3>_AMUX_Delay  (
    .I(\u_fifo_a2b/wptr_n [0]),
    .O(\u_fifo_a2b/wptr_n<0>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y12" ),
    .INIT ( 64'hCCCCCCCCCCCCCCCC ))
  \u_fifo_a2b/wptr<3>_rt  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\u_fifo_a2b/wptr [3]),
    .ADR5(1'b1),
    .O(\u_fifo_a2b/wptr<3>_rt_1151 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y12" ),
    .INIT ( 32'h00000000 ))
  \N1_120.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_120.D5LUT_O_UNCONNECTED )
  );
  X_ZERO #(
    .LOC ( "SLICE_X18Y12" ))
  \ProtoComp131.CYINITGND.5  (
    .O(\u_fifo_a2b/Madd_wptr_n_cy<3>/ProtoComp131.CYINITGND.0 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X18Y12" ))
  \u_fifo_a2b/Madd_wptr_n_cy<3>  (
    .CI(1'b0),
    .CYINIT(\u_fifo_a2b/Madd_wptr_n_cy<3>/ProtoComp131.CYINITGND.0 ),
    .CO({\u_fifo_a2b/Madd_wptr_n_cy[3] , \NLW_u_fifo_a2b/Madd_wptr_n_cy<3>_CO[2]_UNCONNECTED , \NLW_u_fifo_a2b/Madd_wptr_n_cy<3>_CO[1]_UNCONNECTED , 
\NLW_u_fifo_a2b/Madd_wptr_n_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b1}),
    .O({\u_fifo_a2b/wptr_n [3], \u_fifo_a2b/wptr_n [2], \u_fifo_a2b/wptr_n [1], \u_fifo_a2b/wptr_n [0]}),
    .S({\u_fifo_a2b/wptr<3>_rt_1151 , \u_fifo_a2b/wptr<2>_rt_1160 , \u_fifo_a2b/wptr<1>_rt_1163 , \u_fifo_a2b/Madd_wptr_n_lut [0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y12" ),
    .INIT ( 64'hF0F0F0F0F0F0F0F0 ))
  \u_fifo_a2b/wptr<2>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\u_fifo_a2b/wptr [2]),
    .ADR5(1'b1),
    .O(\u_fifo_a2b/wptr<2>_rt_1160 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y12" ),
    .INIT ( 32'h00000000 ))
  \N1_121.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_121.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y12" ),
    .INIT ( 64'hF0F0F0F0F0F0F0F0 ))
  \u_fifo_a2b/wptr<1>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\u_fifo_a2b/wptr [1]),
    .ADR5(1'b1),
    .O(\u_fifo_a2b/wptr<1>_rt_1163 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y12" ),
    .INIT ( 32'h00000000 ))
  \N1_122.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_122.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y12" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \u_fifo_a2b/Madd_wptr_n_lut<0>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_fifo_a2b/wptr [0]),
    .ADR5(1'b1),
    .O(\u_fifo_a2b/Madd_wptr_n_lut [0])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y12" ),
    .INIT ( 32'hFFFFFFFF ))
  \SevenSegmentEnable_0_OBUF_1_12.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_SevenSegmentEnable_0_OBUF_1_12.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \u_fifo_a2b/Madd_wptr_n_cy<7>/u_fifo_a2b/Madd_wptr_n_cy<7>_DMUX_Delay  (
    .I(\u_fifo_a2b/wptr_n [7]),
    .O(\u_fifo_a2b/wptr_n<7>_0 )
  );
  X_BUF   \u_fifo_a2b/Madd_wptr_n_cy<7>/u_fifo_a2b/Madd_wptr_n_cy<7>_CMUX_Delay  (
    .I(\u_fifo_a2b/wptr_n [6]),
    .O(\u_fifo_a2b/wptr_n<6>_0 )
  );
  X_BUF   \u_fifo_a2b/Madd_wptr_n_cy<7>/u_fifo_a2b/Madd_wptr_n_cy<7>_BMUX_Delay  (
    .I(\u_fifo_a2b/wptr_n [5]),
    .O(\u_fifo_a2b/wptr_n<5>_0 )
  );
  X_BUF   \u_fifo_a2b/Madd_wptr_n_cy<7>/u_fifo_a2b/Madd_wptr_n_cy<7>_AMUX_Delay  (
    .I(\u_fifo_a2b/wptr_n [4]),
    .O(\u_fifo_a2b/wptr_n<4>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y13" ),
    .INIT ( 64'hCCCCCCCCCCCCCCCC ))
  \u_fifo_a2b/wptr<7>_rt  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\u_fifo_a2b/wptr [7]),
    .ADR5(1'b1),
    .O(\u_fifo_a2b/wptr<7>_rt_1173 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y13" ),
    .INIT ( 32'h00000000 ))
  \N1_116.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_116.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X18Y13" ))
  \u_fifo_a2b/Madd_wptr_n_cy<7>  (
    .CI(\u_fifo_a2b/Madd_wptr_n_cy[3] ),
    .CYINIT(1'b0),
    .CO({\u_fifo_a2b/Madd_wptr_n_cy[7] , \NLW_u_fifo_a2b/Madd_wptr_n_cy<7>_CO[2]_UNCONNECTED , \NLW_u_fifo_a2b/Madd_wptr_n_cy<7>_CO[1]_UNCONNECTED , 
\NLW_u_fifo_a2b/Madd_wptr_n_cy<7>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\u_fifo_a2b/wptr_n [7], \u_fifo_a2b/wptr_n [6], \u_fifo_a2b/wptr_n [5], \u_fifo_a2b/wptr_n [4]}),
    .S({\u_fifo_a2b/wptr<7>_rt_1173 , \u_fifo_a2b/wptr<6>_rt_1182 , \u_fifo_a2b/wptr<5>_rt_1185 , \u_fifo_a2b/wptr<4>_rt_1188 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y13" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \u_fifo_a2b/wptr<6>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\u_fifo_a2b/wptr [6]),
    .ADR5(1'b1),
    .O(\u_fifo_a2b/wptr<6>_rt_1182 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y13" ),
    .INIT ( 32'h00000000 ))
  \N1_117.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_117.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y13" ),
    .INIT ( 64'hAAAAAAAAAAAAAAAA ))
  \u_fifo_a2b/wptr<5>_rt  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(\u_fifo_a2b/wptr [5]),
    .ADR5(1'b1),
    .O(\u_fifo_a2b/wptr<5>_rt_1185 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y13" ),
    .INIT ( 32'h00000000 ))
  \N1_118.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_118.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y13" ),
    .INIT ( 64'hCCCCCCCCCCCCCCCC ))
  \u_fifo_a2b/wptr<4>_rt  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\u_fifo_a2b/wptr [4]),
    .ADR5(1'b1),
    .O(\u_fifo_a2b/wptr<4>_rt_1188 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y13" ),
    .INIT ( 32'h00000000 ))
  \N1_119.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_119.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \u_fifo_a2b/wptr_n<11>/u_fifo_a2b/wptr_n<11>_DMUX_Delay  (
    .I(\u_fifo_a2b/wptr_n [11]),
    .O(\u_fifo_a2b/wptr_n<11>_0 )
  );
  X_BUF   \u_fifo_a2b/wptr_n<11>/u_fifo_a2b/wptr_n<11>_CMUX_Delay  (
    .I(\u_fifo_a2b/wptr_n [10]),
    .O(\u_fifo_a2b/wptr_n<10>_0 )
  );
  X_BUF   \u_fifo_a2b/wptr_n<11>/u_fifo_a2b/wptr_n<11>_BMUX_Delay  (
    .I(\u_fifo_a2b/wptr_n [9]),
    .O(\u_fifo_a2b/wptr_n<9>_0 )
  );
  X_BUF   \u_fifo_a2b/wptr_n<11>/u_fifo_a2b/wptr_n<11>_AMUX_Delay  (
    .I(\u_fifo_a2b/wptr_n [8]),
    .O(\u_fifo_a2b/wptr_n<8>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y14" ),
    .INIT ( 64'hF0F0F0F0F0F0F0F0 ))
  \u_fifo_a2b/wptr<11>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR2(\u_fifo_a2b/wptr [11]),
    .O(\u_fifo_a2b/wptr<11>_rt_1195 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X18Y14" ))
  \u_fifo_a2b/Madd_wptr_n_xor<11>  (
    .CI(\u_fifo_a2b/Madd_wptr_n_cy[7] ),
    .CYINIT(1'b0),
    .CO({\NLW_u_fifo_a2b/Madd_wptr_n_xor<11>_CO[3]_UNCONNECTED , \NLW_u_fifo_a2b/Madd_wptr_n_xor<11>_CO[2]_UNCONNECTED , 
\NLW_u_fifo_a2b/Madd_wptr_n_xor<11>_CO[1]_UNCONNECTED , \NLW_u_fifo_a2b/Madd_wptr_n_xor<11>_CO[0]_UNCONNECTED }),
    .DI({\NLW_u_fifo_a2b/Madd_wptr_n_xor<11>_DI[3]_UNCONNECTED , 1'b0, 1'b0, 1'b0}),
    .O({\u_fifo_a2b/wptr_n [11], \u_fifo_a2b/wptr_n [10], \u_fifo_a2b/wptr_n [9], \u_fifo_a2b/wptr_n [8]}),
    .S({\u_fifo_a2b/wptr<11>_rt_1195 , \u_fifo_a2b/wptr<10>_rt_1202 , \u_fifo_a2b/wptr<9>_rt_1205 , \u_fifo_a2b/wptr<8>_rt_1208 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y14" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_fifo_a2b/wptr<10>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_fifo_a2b/wptr [10]),
    .ADR5(1'b1),
    .O(\u_fifo_a2b/wptr<10>_rt_1202 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y14" ),
    .INIT ( 32'h00000000 ))
  \N1_113.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_113.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y14" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \u_fifo_a2b/wptr<9>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\u_fifo_a2b/wptr [9]),
    .ADR5(1'b1),
    .O(\u_fifo_a2b/wptr<9>_rt_1205 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y14" ),
    .INIT ( 32'h00000000 ))
  \N1_114.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_114.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y14" ),
    .INIT ( 64'hCCCCCCCCCCCCCCCC ))
  \u_fifo_a2b/wptr<8>_rt  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\u_fifo_a2b/wptr [8]),
    .ADR5(1'b1),
    .O(\u_fifo_a2b/wptr<8>_rt_1208 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y14" ),
    .INIT ( 32'h00000000 ))
  \N1_115.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_115.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<3>/u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<3>_DMUX_Delay  (
    .I(\u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<3> ),
    .O(\u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<3>_0 )
  );
  X_BUF   \u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<3>/u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<3>_CMUX_Delay  (
    .I(\u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<2> ),
    .O(\u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<2>_0 )
  );
  X_BUF   \u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<3>/u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<3>_BMUX_Delay  (
    .I(\u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<1> ),
    .O(\u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<1>_0 )
  );
  X_BUF   \u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<3>/u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<3>_AMUX_Delay  (
    .I(\u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<0> ),
    .O(\u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<0>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y40" ),
    .INIT ( 64'hF0F0F0F0F0F0F0F0 ))
  \u_uart/u_core/baudcnt<3>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\u_uart/u_core/baudcnt [3]),
    .ADR5(1'b1),
    .O(\u_uart/u_core/baudcnt<3>_rt_1214 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X22Y40" ),
    .INIT ( 32'h00000000 ))
  \N1_60.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_60.D5LUT_O_UNCONNECTED )
  );
  X_ZERO #(
    .LOC ( "SLICE_X22Y40" ))
  \ProtoComp131.CYINITGND.6  (
    .O(\u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<3>/ProtoComp131.CYINITGND.0 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X22Y40" ))
  \u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<3>  (
    .CI(1'b0),
    .CYINIT(\u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<3>/ProtoComp131.CYINITGND.0 ),
    .CO({\u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<3>_8198 , \NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<3>_CO[2]_UNCONNECTED 
, \NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<3>_CO[1]_UNCONNECTED , 
\NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b1}),
    .O({\u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<3> , \u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<2> , 
\u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<1> , \u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<0> }),
    .S({\u_uart/u_core/baudcnt<3>_rt_1214 , \u_uart/u_core/baudcnt<2>_rt_1223 , \u_uart/u_core/baudcnt<1>_rt_1226 , 
\u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_lut<0> })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y40" ),
    .INIT ( 64'hF0F0F0F0F0F0F0F0 ))
  \u_uart/u_core/baudcnt<2>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\u_uart/u_core/baudcnt [2]),
    .ADR5(1'b1),
    .O(\u_uart/u_core/baudcnt<2>_rt_1223 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X22Y40" ),
    .INIT ( 32'h00000000 ))
  \N1_61.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_61.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y40" ),
    .INIT ( 64'hAAAAAAAAAAAAAAAA ))
  \u_uart/u_core/baudcnt<1>_rt  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(\u_uart/u_core/baudcnt [1]),
    .ADR5(1'b1),
    .O(\u_uart/u_core/baudcnt<1>_rt_1226 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X22Y40" ),
    .INIT ( 32'h00000000 ))
  \N1_62.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_62.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y40" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_lut<0>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_uart/u_core/baudcnt [0]),
    .ADR5(1'b1),
    .O(\u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_lut<0> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X22Y40" ),
    .INIT ( 32'hFFFFFFFF ))
  \SevenSegmentEnable_0_OBUF_1_6.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_SevenSegmentEnable_0_OBUF_1_6.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<7>/u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<7>_DMUX_Delay  (
    .I(\u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<7> ),
    .O(\u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<7>_0 )
  );
  X_BUF   \u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<7>/u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<7>_CMUX_Delay  (
    .I(\u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<6> ),
    .O(\u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<6>_0 )
  );
  X_BUF   \u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<7>/u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<7>_BMUX_Delay  (
    .I(\u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<5> ),
    .O(\u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<5>_0 )
  );
  X_BUF   \u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<7>/u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<7>_AMUX_Delay  (
    .I(\u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<4> ),
    .O(\u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<4>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y41" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_uart/u_core/baudcnt<7>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_uart/u_core/baudcnt [7]),
    .ADR5(1'b1),
    .O(\u_uart/u_core/baudcnt<7>_rt_1236 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X22Y41" ),
    .INIT ( 32'h00000000 ))
  \N1_56.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_56.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X22Y41" ))
  \u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<7>  (
    .CI(\u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<3>_8198 ),
    .CYINIT(1'b0),
    .CO({\u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<7>_8207 , \NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<7>_CO[2]_UNCONNECTED 
, \NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<7>_CO[1]_UNCONNECTED , 
\NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<7>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<7> , \u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<6> , 
\u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<5> , \u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<4> }),
    .S({\u_uart/u_core/baudcnt<7>_rt_1236 , \u_uart/u_core/baudcnt<6>_rt_1245 , \u_uart/u_core/baudcnt<5>_rt_1248 , \u_uart/u_core/baudcnt<4>_rt_1251 
})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y41" ),
    .INIT ( 64'hF0F0F0F0F0F0F0F0 ))
  \u_uart/u_core/baudcnt<6>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\u_uart/u_core/baudcnt [6]),
    .ADR5(1'b1),
    .O(\u_uart/u_core/baudcnt<6>_rt_1245 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X22Y41" ),
    .INIT ( 32'h00000000 ))
  \N1_57.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_57.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y41" ),
    .INIT ( 64'hF0F0F0F0F0F0F0F0 ))
  \u_uart/u_core/baudcnt<5>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\u_uart/u_core/baudcnt [5]),
    .ADR5(1'b1),
    .O(\u_uart/u_core/baudcnt<5>_rt_1248 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X22Y41" ),
    .INIT ( 32'h00000000 ))
  \N1_58.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_58.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y41" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \u_uart/u_core/baudcnt<4>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\u_uart/u_core/baudcnt [4]),
    .ADR5(1'b1),
    .O(\u_uart/u_core/baudcnt<4>_rt_1251 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X22Y41" ),
    .INIT ( 32'h00000000 ))
  \N1_59.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_59.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<11>/u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<11>_DMUX_Delay  (
    .I(\u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<11> ),
    .O(\u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<11>_0 )
  );
  X_BUF   \u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<11>/u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<11>_CMUX_Delay  (
    .I(\u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<10> ),
    .O(\u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<10>_0 )
  );
  X_BUF   \u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<11>/u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<11>_BMUX_Delay  (
    .I(\u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<9> ),
    .O(\u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<9>_0 )
  );
  X_BUF   \u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<11>/u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<11>_AMUX_Delay  (
    .I(\u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<8> ),
    .O(\u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<8>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y42" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_uart/u_core/baudcnt<11>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_uart/u_core/baudcnt [11]),
    .ADR5(1'b1),
    .O(\u_uart/u_core/baudcnt<11>_rt_1258 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X22Y42" ),
    .INIT ( 32'h00000000 ))
  \N1_52.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_52.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X22Y42" ))
  \u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<11>  (
    .CI(\u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<7>_8207 ),
    .CYINIT(1'b0),
    .CO({\u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<11>_8216 , 
\NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<11>_CO[2]_UNCONNECTED , 
\NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<11>_CO[1]_UNCONNECTED , 
\NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<11>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<11> , \u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<10> , 
\u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<9> , \u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<8> }),
    .S({\u_uart/u_core/baudcnt<11>_rt_1258 , \u_uart/u_core/baudcnt<10>_rt_1267 , \u_uart/u_core/baudcnt<9>_rt_1270 , 
\u_uart/u_core/baudcnt<8>_rt_1273 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y42" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_uart/u_core/baudcnt<10>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_uart/u_core/baudcnt [10]),
    .ADR5(1'b1),
    .O(\u_uart/u_core/baudcnt<10>_rt_1267 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X22Y42" ),
    .INIT ( 32'h00000000 ))
  \N1_53.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_53.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y42" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \u_uart/u_core/baudcnt<9>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\u_uart/u_core/baudcnt [9]),
    .ADR5(1'b1),
    .O(\u_uart/u_core/baudcnt<9>_rt_1270 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X22Y42" ),
    .INIT ( 32'h00000000 ))
  \N1_54.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_54.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y42" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_uart/u_core/baudcnt<8>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_uart/u_core/baudcnt [8]),
    .ADR5(1'b1),
    .O(\u_uart/u_core/baudcnt<8>_rt_1273 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X22Y42" ),
    .INIT ( 32'h00000000 ))
  \N1_55.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_55.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<12>/u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<12>_AMUX_Delay  (
    .I(\u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<12> ),
    .O(\u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<12>_0 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X22Y43" ))
  \u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_xor<12>  (
    .CI(\u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_cy<11>_8216 ),
    .CYINIT(1'b0),
    .CO({\NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_xor<12>_CO[3]_UNCONNECTED , 
\NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_xor<12>_CO[2]_UNCONNECTED , 
\NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_xor<12>_CO[1]_UNCONNECTED , 
\NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_xor<12>_CO[0]_UNCONNECTED }),
    .DI({\NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_xor<12>_DI[3]_UNCONNECTED , 
\NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_xor<12>_DI[2]_UNCONNECTED , 
\NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_xor<12>_DI[1]_UNCONNECTED , 
\NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_xor<12>_DI[0]_UNCONNECTED }),
    .O({\NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_xor<12>_O[3]_UNCONNECTED , 
\NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_xor<12>_O[2]_UNCONNECTED , 
\NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_xor<12>_O[1]_UNCONNECTED , \u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<12> }),
    .S({\NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_xor<12>_S[3]_UNCONNECTED , 
\NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_xor<12>_S[2]_UNCONNECTED , 
\NLW_u_uart/u_core/Madd_baudcnt[12]_GND_8_o_add_9_OUT_xor<12>_S[1]_UNCONNECTED , \u_uart/u_core/baudcnt<12>_rt_1282 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y43" ),
    .INIT ( 64'hFFFFFFFF00000000 ))
  \u_uart/u_core/baudcnt<12>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(\u_uart/u_core/baudcnt [12]),
    .O(\u_uart/u_core/baudcnt<12>_rt_1282 )
  );
  X_BUF   \u_engine/Mcount_syn_cnt_cy<3>/u_engine/Mcount_syn_cnt_cy<3>_DMUX_Delay  (
    .I(\u_engine/Result [3]),
    .O(\u_engine/Result<3>_0 )
  );
  X_BUF   \u_engine/Mcount_syn_cnt_cy<3>/u_engine/Mcount_syn_cnt_cy<3>_CMUX_Delay  (
    .I(\u_engine/Result [2]),
    .O(\u_engine/Result<2>_0 )
  );
  X_BUF   \u_engine/Mcount_syn_cnt_cy<3>/u_engine/Mcount_syn_cnt_cy<3>_BMUX_Delay  (
    .I(\u_engine/Result [1]),
    .O(\u_engine/Result<1>_0 )
  );
  X_BUF   \u_engine/Mcount_syn_cnt_cy<3>/u_engine/Mcount_syn_cnt_cy<3>_AMUX_Delay  (
    .I(\u_engine/Result [0]),
    .O(\u_engine/Result<0>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y36" ),
    .INIT ( 64'hCCCCCCCCCCCCCCCC ))
  \u_engine/syn_cnt<3>_rt  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\u_engine/syn_cnt [3]),
    .ADR5(1'b1),
    .O(\u_engine/syn_cnt<3>_rt_1284 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X2Y36" ),
    .INIT ( 32'h00000000 ))
  \N1_139.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_139.D5LUT_O_UNCONNECTED )
  );
  X_ZERO #(
    .LOC ( "SLICE_X2Y36" ))
  \ProtoComp131.CYINITGND.7  (
    .O(\u_engine/Mcount_syn_cnt_cy<3>/ProtoComp131.CYINITGND.0 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X2Y36" ))
  \u_engine/Mcount_syn_cnt_cy<3>  (
    .CI(1'b0),
    .CYINIT(\u_engine/Mcount_syn_cnt_cy<3>/ProtoComp131.CYINITGND.0 ),
    .CO({\u_engine/Mcount_syn_cnt_cy [3], \NLW_u_engine/Mcount_syn_cnt_cy<3>_CO[2]_UNCONNECTED , \NLW_u_engine/Mcount_syn_cnt_cy<3>_CO[1]_UNCONNECTED 
, \NLW_u_engine/Mcount_syn_cnt_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b1}),
    .O({\u_engine/Result [3], \u_engine/Result [2], \u_engine/Result [1], \u_engine/Result [0]}),
    .S({\u_engine/syn_cnt<3>_rt_1284 , \u_engine/syn_cnt<2>_rt_1293 , \u_engine/syn_cnt<1>_rt_1296 , \u_engine/Mcount_syn_cnt_lut [0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y36" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_engine/syn_cnt<2>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_engine/syn_cnt [2]),
    .ADR5(1'b1),
    .O(\u_engine/syn_cnt<2>_rt_1293 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X2Y36" ),
    .INIT ( 32'h00000000 ))
  \N1_140.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_140.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y36" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \u_engine/syn_cnt<1>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\u_engine/syn_cnt [1]),
    .ADR5(1'b1),
    .O(\u_engine/syn_cnt<1>_rt_1296 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X2Y36" ),
    .INIT ( 32'h00000000 ))
  \N1_141.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_141.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y36" ),
    .INIT ( 64'h3333333333333333 ))
  \u_engine/Mcount_syn_cnt_lut<0>_INV_0  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\u_engine/syn_cnt [0]),
    .ADR5(1'b1),
    .O(\u_engine/Mcount_syn_cnt_lut [0])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X2Y36" ),
    .INIT ( 32'hFFFFFFFF ))
  \SevenSegmentEnable_0_OBUF_1_13.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_SevenSegmentEnable_0_OBUF_1_13.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \u_engine/Result<7>/u_engine/Result<7>_DMUX_Delay  (
    .I(\u_engine/Result [7]),
    .O(\u_engine/Result<7>_0 )
  );
  X_BUF   \u_engine/Result<7>/u_engine/Result<7>_CMUX_Delay  (
    .I(\u_engine/Result [6]),
    .O(\u_engine/Result<6>_0 )
  );
  X_BUF   \u_engine/Result<7>/u_engine/Result<7>_BMUX_Delay  (
    .I(\u_engine/Result [5]),
    .O(\u_engine/Result<5>_0 )
  );
  X_BUF   \u_engine/Result<7>/u_engine/Result<7>_AMUX_Delay  (
    .I(\u_engine/Result [4]),
    .O(\u_engine/Result<4>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y37" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_engine/syn_cnt<7>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .ADR4(\u_engine/syn_cnt [7]),
    .O(\u_engine/syn_cnt<7>_rt_1306 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X2Y37" ))
  \u_engine/Mcount_syn_cnt_xor<7>  (
    .CI(\u_engine/Mcount_syn_cnt_cy [3]),
    .CYINIT(1'b0),
    .CO({\NLW_u_engine/Mcount_syn_cnt_xor<7>_CO[3]_UNCONNECTED , \NLW_u_engine/Mcount_syn_cnt_xor<7>_CO[2]_UNCONNECTED , 
\NLW_u_engine/Mcount_syn_cnt_xor<7>_CO[1]_UNCONNECTED , \NLW_u_engine/Mcount_syn_cnt_xor<7>_CO[0]_UNCONNECTED }),
    .DI({\NLW_u_engine/Mcount_syn_cnt_xor<7>_DI[3]_UNCONNECTED , 1'b0, 1'b0, 1'b0}),
    .O({\u_engine/Result [7], \u_engine/Result [6], \u_engine/Result [5], \u_engine/Result [4]}),
    .S({\u_engine/syn_cnt<7>_rt_1306 , \u_engine/syn_cnt<6>_rt_1313 , \u_engine/syn_cnt<5>_rt_1316 , \u_engine/syn_cnt<4>_rt_1319 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y37" ),
    .INIT ( 64'hF0F0F0F0F0F0F0F0 ))
  \u_engine/syn_cnt<6>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\u_engine/syn_cnt [6]),
    .ADR5(1'b1),
    .O(\u_engine/syn_cnt<6>_rt_1313 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X2Y37" ),
    .INIT ( 32'h00000000 ))
  \N1_136.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_136.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y37" ),
    .INIT ( 64'hF0F0F0F0F0F0F0F0 ))
  \u_engine/syn_cnt<5>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\u_engine/syn_cnt [5]),
    .ADR5(1'b1),
    .O(\u_engine/syn_cnt<5>_rt_1316 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X2Y37" ),
    .INIT ( 32'h00000000 ))
  \N1_137.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_137.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y37" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \u_engine/syn_cnt<4>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\u_engine/syn_cnt [4]),
    .ADR5(1'b1),
    .O(\u_engine/syn_cnt<4>_rt_1319 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X2Y37" ),
    .INIT ( 32'h00000000 ))
  \N1_138.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_138.A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X22Y53" ),
    .INIT ( 1'b0 ))
  por_cnt_3 (
    .CE(\por_cnt<7>_inv ),
    .CLK(\NlwBufferSignal_por_cnt_3/CLK ),
    .I(Result[3]),
    .O(por_cnt[3]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y53" ),
    .INIT ( 64'hF0F0F0F0F0F0F0F0 ))
  \por_cnt<3>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(por_cnt[3]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\por_cnt<3>_rt_1326 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X22Y53" ),
    .INIT ( 32'h00000000 ))
  \N1_5.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_5.D5LUT_O_UNCONNECTED )
  );
  X_ZERO #(
    .LOC ( "SLICE_X22Y53" ))
  \ProtoComp145.CYINITGND  (
    .O(\ProtoComp145.CYINITGND.0 )
  );
  X_FF #(
    .LOC ( "SLICE_X22Y53" ),
    .INIT ( 1'b0 ))
  por_cnt_2 (
    .CE(\por_cnt<7>_inv ),
    .CLK(\NlwBufferSignal_por_cnt_2/CLK ),
    .I(Result[2]),
    .O(por_cnt[2]),
    .RST(GND),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X22Y53" ))
  \Mcount_por_cnt_cy<3>  (
    .CI(1'b0),
    .CYINIT(\ProtoComp145.CYINITGND.0 ),
    .CO({Mcount_por_cnt_cy[3], \NLW_Mcount_por_cnt_cy<3>_CO[2]_UNCONNECTED , \NLW_Mcount_por_cnt_cy<3>_CO[1]_UNCONNECTED , 
\NLW_Mcount_por_cnt_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b1}),
    .O({Result[3], Result[2], Result[1], Result[0]}),
    .S({\por_cnt<3>_rt_1326 , \por_cnt<2>_rt_1338 , \por_cnt<1>_rt_1342 , Mcount_por_cnt_lut[0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y53" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \por_cnt<2>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(por_cnt[2]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\por_cnt<2>_rt_1338 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X22Y53" ),
    .INIT ( 32'h00000000 ))
  \N1_4.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_4.C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X22Y53" ),
    .INIT ( 1'b0 ))
  por_cnt_1 (
    .CE(\por_cnt<7>_inv ),
    .CLK(\NlwBufferSignal_por_cnt_1/CLK ),
    .I(Result[1]),
    .O(por_cnt[1]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y53" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \por_cnt<1>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(por_cnt[1]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\por_cnt<1>_rt_1342 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X22Y53" ),
    .INIT ( 32'h00000000 ))
  \N1_3.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_3.B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X22Y53" ),
    .INIT ( 1'b0 ))
  por_cnt_0 (
    .CE(\por_cnt<7>_inv ),
    .CLK(\NlwBufferSignal_por_cnt_0/CLK ),
    .I(Result[0]),
    .O(por_cnt[0]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y53" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \Mcount_por_cnt_lut<0>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(por_cnt[0]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(Mcount_por_cnt_lut[0])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X22Y53" ),
    .INIT ( 32'hFFFFFFFF ))
  \SevenSegmentEnable_0_OBUF_1_4.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_SevenSegmentEnable_0_OBUF_1_4.A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X22Y54" ),
    .INIT ( 1'b0 ))
  por_cnt_7 (
    .CE(\por_cnt<7>_inv ),
    .CLK(\NlwBufferSignal_por_cnt_7/CLK ),
    .I(Result[7]),
    .O(por_cnt[7]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y54" ),
    .INIT ( 64'hFFFFFFFF00000000 ))
  \por_cnt<7>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(por_cnt[7]),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .O(\por_cnt<7>_rt_1354 )
  );
  X_FF #(
    .LOC ( "SLICE_X22Y54" ),
    .INIT ( 1'b0 ))
  por_cnt_6 (
    .CE(\por_cnt<7>_inv ),
    .CLK(\NlwBufferSignal_por_cnt_6/CLK ),
    .I(Result[6]),
    .O(por_cnt[6]),
    .RST(GND),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X22Y54" ))
  \Mcount_por_cnt_xor<7>  (
    .CI(Mcount_por_cnt_cy[3]),
    .CYINIT(1'b0),
    .CO({\NLW_Mcount_por_cnt_xor<7>_CO[3]_UNCONNECTED , \NLW_Mcount_por_cnt_xor<7>_CO[2]_UNCONNECTED , \NLW_Mcount_por_cnt_xor<7>_CO[1]_UNCONNECTED , 
\NLW_Mcount_por_cnt_xor<7>_CO[0]_UNCONNECTED }),
    .DI({\NLW_Mcount_por_cnt_xor<7>_DI[3]_UNCONNECTED , 1'b0, 1'b0, 1'b0}),
    .O({Result[7], Result[6], Result[5], Result[4]}),
    .S({\por_cnt<7>_rt_1354 , \por_cnt<6>_rt_1364 , \por_cnt<5>_rt_1368 , \por_cnt<4>_rt_1372 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y54" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \por_cnt<6>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(por_cnt[6]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\por_cnt<6>_rt_1364 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X22Y54" ),
    .INIT ( 32'h00000000 ))
  \N1_8.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_8.C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X22Y54" ),
    .INIT ( 1'b0 ))
  por_cnt_5 (
    .CE(\por_cnt<7>_inv ),
    .CLK(\NlwBufferSignal_por_cnt_5/CLK ),
    .I(Result[5]),
    .O(por_cnt[5]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y54" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \por_cnt<5>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(por_cnt[5]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\por_cnt<5>_rt_1368 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X22Y54" ),
    .INIT ( 32'h00000000 ))
  \N1_7.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_7.B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X22Y54" ),
    .INIT ( 1'b0 ))
  por_cnt_4 (
    .CE(\por_cnt<7>_inv ),
    .CLK(\NlwBufferSignal_por_cnt_4/CLK ),
    .I(Result[4]),
    .O(por_cnt[4]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y54" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \por_cnt<4>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(por_cnt[4]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\por_cnt<4>_rt_1372 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X22Y54" ),
    .INIT ( 32'h00000000 ))
  \N1_6.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_6.A5LUT_O_UNCONNECTED )
  );
  X_IPAD #(
    .LOC ( "PAD120" ))
  clk_100_535 (
    .PAD(clk_100)
  );
  X_BUF #(
    .LOC ( "PAD120" ))
  \clk_100_BUFGP/IBUFG  (
    .O(\clk_100_BUFGP/IBUFG_1379 ),
    .I(clk_100)
  );
  X_BUF #(
    .LOC ( "PAD120" ))
  \ProtoComp147.IMUX  (
    .I(\clk_100_BUFGP/IBUFG_1379 ),
    .O(\clk_100_BUFGP/IBUFG_0 )
  );
  X_OPAD #(
    .LOC ( "PAD76" ))
  phy_a_tx_en_538 (
    .PAD(phy_a_tx_en)
  );
  X_OBUF #(
    .LOC ( "PAD76" ))
  phy_a_tx_en_OBUF (
    .I(\NlwBufferSignal_phy_a_tx_en_OBUF/I ),
    .O(phy_a_tx_en)
  );
  X_OPAD #(
    .LOC ( "PAD130" ))
  phy_b_tx_en_541 (
    .PAD(phy_b_tx_en)
  );
  X_OBUF #(
    .LOC ( "PAD130" ))
  phy_b_tx_en_OBUF (
    .I(\NlwBufferSignal_phy_b_tx_en_OBUF/I ),
    .O(phy_b_tx_en)
  );
  X_IPAD #(
    .LOC ( "PAD72" ))
  phy_a_ref_clk_545 (
    .PAD(phy_a_ref_clk)
  );
  X_BUF #(
    .LOC ( "PAD72" ))
  \phy_a_ref_clk_BUFGP/IBUFG  (
    .O(\phy_a_ref_clk_BUFGP/IBUFG_1386 ),
    .I(phy_a_ref_clk)
  );
  X_BUF #(
    .LOC ( "PAD72" ))
  \ProtoComp147.IMUX.1  (
    .I(\phy_a_ref_clk_BUFGP/IBUFG_1386 ),
    .O(\phy_a_ref_clk_BUFGP/IBUFG_0 )
  );
  X_IPAD #(
    .LOC ( "PAD136" ))
  phy_b_ref_clk_549 (
    .PAD(phy_b_ref_clk)
  );
  X_BUF #(
    .LOC ( "PAD136" ))
  \phy_b_ref_clk_BUFGP/IBUFG  (
    .O(\phy_b_ref_clk_BUFGP/IBUFG_1389 ),
    .I(phy_b_ref_clk)
  );
  X_BUF #(
    .LOC ( "PAD136" ))
  \ProtoComp147.IMUX.2  (
    .I(\phy_b_ref_clk_BUFGP/IBUFG_1389 ),
    .O(\phy_b_ref_clk_BUFGP/IBUFG_0 )
  );
  X_OPAD #(
    .LOC ( "PAD3" ))
  \SevenSegmentEnable<0>  (
    .PAD(SevenSegmentEnable[0])
  );
  X_OBUF #(
    .LOC ( "PAD3" ))
  SevenSegmentEnable_0_OBUF (
    .I(1'b1),
    .O(SevenSegmentEnable[0])
  );
  X_OPAD #(
    .LOC ( "PAD4" ))
  \SevenSegmentEnable<1>  (
    .PAD(SevenSegmentEnable[1])
  );
  X_OBUF #(
    .LOC ( "PAD4" ))
  SevenSegmentEnable_1_OBUF (
    .I(1'b1),
    .O(SevenSegmentEnable[1])
  );
  X_OPAD #(
    .LOC ( "PAD7" ))
  \SevenSegmentEnable<2>  (
    .PAD(SevenSegmentEnable[2])
  );
  X_OBUF #(
    .LOC ( "PAD7" ))
  SevenSegmentEnable_2_OBUF (
    .I(1'b1),
    .O(SevenSegmentEnable[2])
  );
  X_IPAD #(
    .LOC ( "PAD71" ))
  phy_a_crs_dv_562 (
    .PAD(phy_a_crs_dv)
  );
  X_BUF #(
    .LOC ( "PAD71" ))
  phy_a_crs_dv_IBUF (
    .O(phy_a_crs_dv_IBUF_1398),
    .I(phy_a_crs_dv)
  );
  X_BUF #(
    .LOC ( "PAD71" ))
  \ProtoComp147.IMUX.3  (
    .I(phy_a_crs_dv_IBUF_1398),
    .O(phy_a_crs_dv_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD135" ))
  phy_b_crs_dv_566 (
    .PAD(phy_b_crs_dv)
  );
  X_BUF #(
    .LOC ( "PAD135" ))
  phy_b_crs_dv_IBUF (
    .O(phy_b_crs_dv_IBUF_1401),
    .I(phy_b_crs_dv)
  );
  X_BUF #(
    .LOC ( "PAD135" ))
  \ProtoComp147.IMUX.4  (
    .I(phy_b_crs_dv_IBUF_1401),
    .O(phy_b_crs_dv_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD78" ))
  \phy_a_rxd<0>  (
    .PAD(phy_a_rxd[0])
  );
  X_BUF #(
    .LOC ( "PAD78" ))
  phy_a_rxd_0_IBUF (
    .O(phy_a_rxd_0_IBUF_1404),
    .I(phy_a_rxd[0])
  );
  X_BUF #(
    .LOC ( "PAD78" ))
  \ProtoComp147.IMUX.5  (
    .I(phy_a_rxd_0_IBUF_1404),
    .O(phy_a_rxd_0_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD77" ))
  \phy_a_rxd<1>  (
    .PAD(phy_a_rxd[1])
  );
  X_BUF #(
    .LOC ( "PAD77" ))
  phy_a_rxd_1_IBUF (
    .O(phy_a_rxd_1_IBUF_1407),
    .I(phy_a_rxd[1])
  );
  X_BUF #(
    .LOC ( "PAD77" ))
  \ProtoComp147.IMUX.6  (
    .I(phy_a_rxd_1_IBUF_1407),
    .O(phy_a_rxd_1_IBUF_0)
  );
  X_OPAD #(
    .LOC ( "PAD75" ))
  \phy_a_txd<0>  (
    .PAD(phy_a_txd[0])
  );
  X_OBUF #(
    .LOC ( "PAD75" ))
  phy_a_txd_0_OBUF (
    .I(\NlwBufferSignal_phy_a_txd_0_OBUF/I ),
    .O(phy_a_txd[0])
  );
  X_OPAD #(
    .LOC ( "PAD116" ))
  \phy_a_txd<1>  (
    .PAD(phy_a_txd[1])
  );
  X_OBUF #(
    .LOC ( "PAD116" ))
  phy_a_txd_1_OBUF (
    .I(\NlwBufferSignal_phy_a_txd_1_OBUF/I ),
    .O(phy_a_txd[1])
  );
  X_IPAD #(
    .LOC ( "PAD140" ))
  \phy_b_rxd<0>  (
    .PAD(phy_b_rxd[0])
  );
  X_BUF #(
    .LOC ( "PAD140" ))
  phy_b_rxd_0_IBUF (
    .O(phy_b_rxd_0_IBUF_1414),
    .I(phy_b_rxd[0])
  );
  X_BUF #(
    .LOC ( "PAD140" ))
  \ProtoComp147.IMUX.7  (
    .I(phy_b_rxd_0_IBUF_1414),
    .O(phy_b_rxd_0_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD139" ))
  \phy_b_rxd<1>  (
    .PAD(phy_b_rxd[1])
  );
  X_BUF #(
    .LOC ( "PAD139" ))
  phy_b_rxd_1_IBUF (
    .O(phy_b_rxd_1_IBUF_1417),
    .I(phy_b_rxd[1])
  );
  X_BUF #(
    .LOC ( "PAD139" ))
  \ProtoComp147.IMUX.8  (
    .I(phy_b_rxd_1_IBUF_1417),
    .O(phy_b_rxd_1_IBUF_0)
  );
  X_OPAD #(
    .LOC ( "PAD129" ))
  \phy_b_txd<0>  (
    .PAD(phy_b_txd[0])
  );
  X_OBUF #(
    .LOC ( "PAD129" ))
  phy_b_txd_0_OBUF (
    .I(\NlwBufferSignal_phy_b_txd_0_OBUF/I ),
    .O(phy_b_txd[0])
  );
  X_OPAD #(
    .LOC ( "PAD128" ))
  \phy_b_txd<1>  (
    .PAD(phy_b_txd[1])
  );
  X_OBUF #(
    .LOC ( "PAD128" ))
  phy_b_txd_1_OBUF (
    .I(\NlwBufferSignal_phy_b_txd_1_OBUF/I ),
    .O(phy_b_txd[1])
  );
  X_OPAD #(
    .LOC ( "PAD19" ))
  uart_txd_597 (
    .PAD(uart_txd)
  );
  X_OBUF #(
    .LOC ( "PAD19" ))
  uart_txd_OBUF (
    .I(\NlwBufferSignal_uart_txd_OBUF/I ),
    .O(uart_txd)
  );
  X_FF #(
    .LOC ( "OLOGIC_X12Y28" ),
    .INIT ( 1'b0 ))
  \u_tx_a/txen_r  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_tx_a/txen_r/CLK ),
    .I(\NlwBufferSignal_u_tx_a/txen_r/IN ),
    .O(\u_tx_a/txen_r_8234 ),
    .SET(GND),
    .RST(\u_engine/rst_n_inv )
  );
  X_FF #(
    .LOC ( "OLOGIC_X4Y0" ),
    .INIT ( 1'b0 ))
  \u_tx_b/txen_r  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_tx_b/txen_r/CLK ),
    .I(\NlwBufferSignal_u_tx_b/txen_r/IN ),
    .O(\u_tx_b/txen_r_8235 ),
    .SET(GND),
    .RST(\u_fifo_a2b/rrst_n_inv )
  );
  X_SFF #(
    .LOC ( "ILOGIC_X12Y33" ),
    .INIT ( 1'b0 ))
  \u_rx_a/crs_r  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_rx_a/crs_r/CLK ),
    .I(\ProtoComp150.D2OFFBYP_SRC.OUT ),
    .O(\u_rx_a/crs_r_7413 ),
    .SSET(GND),
    .SRST(GND),
    .SET(GND),
    .RST(GND)
  );
  X_MUX2 #(
    .LOC ( "ILOGIC_X12Y33" ))
  \ProtoComp150.D2OFFBYP_SRC  (
    .IA(\u_rx_a/crs_r_ML_IODELAY2_SIG_ML ),
    .IB(\NLW_ProtoComp150.D2OFFBYP_SRC_IB_UNCONNECTED ),
    .O(\ProtoComp150.D2OFFBYP_SRC.OUT ),
    .SEL(\ProtoComp150.D2OBYPSEL_GND.0 )
  );
  X_ZERO #(
    .LOC ( "ILOGIC_X12Y33" ))
  \ProtoComp150.D2OBYPSEL_GND  (
    .O(\ProtoComp150.D2OBYPSEL_GND.0 )
  );
  X_SFF #(
    .LOC ( "ILOGIC_X3Y3" ),
    .INIT ( 1'b0 ))
  \u_rx_b/crs_r  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_rx_b/crs_r/CLK ),
    .I(\u_rx_b/crs_r/ProtoComp150.D2OFFBYP_SRC.OUT ),
    .O(\u_rx_b/crs_r_7842 ),
    .SSET(GND),
    .SRST(GND),
    .SET(GND),
    .RST(GND)
  );
  X_MUX2 #(
    .LOC ( "ILOGIC_X3Y3" ))
  \ProtoComp150.D2OFFBYP_SRC.1  (
    .IA(\u_rx_b/crs_r_ML_IODELAY2_SIG_ML ),
    .IB(\NLW_ProtoComp150.D2OFFBYP_SRC.1_IB_UNCONNECTED ),
    .O(\u_rx_b/crs_r/ProtoComp150.D2OFFBYP_SRC.OUT ),
    .SEL(\u_rx_b/crs_r/ProtoComp150.D2OBYPSEL_GND.0 )
  );
  X_ZERO #(
    .LOC ( "ILOGIC_X3Y3" ))
  \ProtoComp150.D2OBYPSEL_GND.1  (
    .O(\u_rx_b/crs_r/ProtoComp150.D2OBYPSEL_GND.0 )
  );
  X_SFF #(
    .LOC ( "ILOGIC_X12Y26" ),
    .INIT ( 1'b0 ))
  \u_rx_a/rxd_r_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_rx_a/rxd_r_0/CLK ),
    .I(\u_rx_a/rxd_r<0>/ProtoComp150.D2OFFBYP_SRC.OUT ),
    .O(\u_rx_a/rxd_r [0]),
    .SSET(GND),
    .SRST(GND),
    .SET(GND),
    .RST(GND)
  );
  X_MUX2 #(
    .LOC ( "ILOGIC_X12Y26" ))
  \ProtoComp150.D2OFFBYP_SRC.2  (
    .IA(\u_rx_a/rxd_r_0_ML_IODELAY2_SIG_ML ),
    .IB(\NLW_ProtoComp150.D2OFFBYP_SRC.2_IB_UNCONNECTED ),
    .O(\u_rx_a/rxd_r<0>/ProtoComp150.D2OFFBYP_SRC.OUT ),
    .SEL(\u_rx_a/rxd_r<0>/ProtoComp150.D2OBYPSEL_GND.0 )
  );
  X_ZERO #(
    .LOC ( "ILOGIC_X12Y26" ))
  \ProtoComp150.D2OBYPSEL_GND.2  (
    .O(\u_rx_a/rxd_r<0>/ProtoComp150.D2OBYPSEL_GND.0 )
  );
  X_SFF #(
    .LOC ( "ILOGIC_X12Y27" ),
    .INIT ( 1'b0 ))
  \u_rx_a/rxd_r_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_rx_a/rxd_r_1/CLK ),
    .I(\u_rx_a/rxd_r<1>/ProtoComp150.D2OFFBYP_SRC.OUT ),
    .O(\u_rx_a/rxd_r [1]),
    .SSET(GND),
    .SRST(GND),
    .SET(GND),
    .RST(GND)
  );
  X_MUX2 #(
    .LOC ( "ILOGIC_X12Y27" ))
  \ProtoComp150.D2OFFBYP_SRC.3  (
    .IA(\u_rx_a/rxd_r_1_ML_IODELAY2_SIG_ML ),
    .IB(\NLW_ProtoComp150.D2OFFBYP_SRC.3_IB_UNCONNECTED ),
    .O(\u_rx_a/rxd_r<1>/ProtoComp150.D2OFFBYP_SRC.OUT ),
    .SEL(\u_rx_a/rxd_r<1>/ProtoComp150.D2OBYPSEL_GND.0 )
  );
  X_ZERO #(
    .LOC ( "ILOGIC_X12Y27" ))
  \ProtoComp150.D2OBYPSEL_GND.3  (
    .O(\u_rx_a/rxd_r<1>/ProtoComp150.D2OBYPSEL_GND.0 )
  );
  X_FF #(
    .LOC ( "OLOGIC_X12Y29" ),
    .INIT ( 1'b0 ))
  \u_tx_a/txd_r_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_tx_a/txd_r_0/CLK ),
    .I(\NlwBufferSignal_u_tx_a/txd_r_0/IN ),
    .O(\u_tx_a/txd_r [0]),
    .SET(GND),
    .RST(\u_engine/rst_n_inv )
  );
  X_FF #(
    .LOC ( "OLOGIC_X8Y2" ),
    .INIT ( 1'b0 ))
  \u_tx_a/txd_r_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_tx_a/txd_r_1/CLK ),
    .I(\NlwBufferSignal_u_tx_a/txd_r_1/IN ),
    .O(\u_tx_a/txd_r [1]),
    .SET(GND),
    .RST(\u_engine/rst_n_inv )
  );
  X_SFF #(
    .LOC ( "ILOGIC_X2Y2" ),
    .INIT ( 1'b0 ))
  \u_rx_b/rxd_r_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_rx_b/rxd_r_0/CLK ),
    .I(\u_rx_b/rxd_r<0>/ProtoComp150.D2OFFBYP_SRC.OUT ),
    .O(\u_rx_b/rxd_r [0]),
    .SSET(GND),
    .SRST(GND),
    .SET(GND),
    .RST(GND)
  );
  X_MUX2 #(
    .LOC ( "ILOGIC_X2Y2" ))
  \ProtoComp150.D2OFFBYP_SRC.4  (
    .IA(\u_rx_b/rxd_r_0_ML_IODELAY2_SIG_ML ),
    .IB(\NLW_ProtoComp150.D2OFFBYP_SRC.4_IB_UNCONNECTED ),
    .O(\u_rx_b/rxd_r<0>/ProtoComp150.D2OFFBYP_SRC.OUT ),
    .SEL(\u_rx_b/rxd_r<0>/ProtoComp150.D2OBYPSEL_GND.0 )
  );
  X_ZERO #(
    .LOC ( "ILOGIC_X2Y2" ))
  \ProtoComp150.D2OBYPSEL_GND.4  (
    .O(\u_rx_b/rxd_r<0>/ProtoComp150.D2OBYPSEL_GND.0 )
  );
  X_SFF #(
    .LOC ( "ILOGIC_X2Y3" ),
    .INIT ( 1'b0 ))
  \u_rx_b/rxd_r_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_rx_b/rxd_r_1/CLK ),
    .I(\u_rx_b/rxd_r<1>/ProtoComp150.D2OFFBYP_SRC.OUT ),
    .O(\u_rx_b/rxd_r [1]),
    .SSET(GND),
    .SRST(GND),
    .SET(GND),
    .RST(GND)
  );
  X_MUX2 #(
    .LOC ( "ILOGIC_X2Y3" ))
  \ProtoComp150.D2OFFBYP_SRC.5  (
    .IA(\u_rx_b/rxd_r_1_ML_IODELAY2_SIG_ML ),
    .IB(\NLW_ProtoComp150.D2OFFBYP_SRC.5_IB_UNCONNECTED ),
    .O(\u_rx_b/rxd_r<1>/ProtoComp150.D2OFFBYP_SRC.OUT ),
    .SEL(\u_rx_b/rxd_r<1>/ProtoComp150.D2OBYPSEL_GND.0 )
  );
  X_ZERO #(
    .LOC ( "ILOGIC_X2Y3" ))
  \ProtoComp150.D2OBYPSEL_GND.5  (
    .O(\u_rx_b/rxd_r<1>/ProtoComp150.D2OBYPSEL_GND.0 )
  );
  X_FF #(
    .LOC ( "OLOGIC_X4Y1" ),
    .INIT ( 1'b0 ))
  \u_tx_b/txd_r_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_tx_b/txd_r_0/CLK ),
    .I(\NlwBufferSignal_u_tx_b/txd_r_0/IN ),
    .O(\u_tx_b/txd_r [0]),
    .SET(GND),
    .RST(\u_fifo_a2b/rrst_n_inv )
  );
  X_FF #(
    .LOC ( "OLOGIC_X5Y2" ),
    .INIT ( 1'b0 ))
  \u_tx_b/txd_r_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_tx_b/txd_r_1/CLK ),
    .I(\NlwBufferSignal_u_tx_b/txd_r_1/IN ),
    .O(\u_tx_b/txd_r [1]),
    .SET(GND),
    .RST(\u_fifo_a2b/rrst_n_inv )
  );
  X_IODELAY2 #(
    .IDELAY_MODE ( "NORMAL" ),
    .DELAY_SRC ( "IDATAIN" ),
    .IDELAY_TYPE ( "DEFAULT" ),
    .COUNTER_WRAPAROUND ( "WRAPAROUND" ),
    .SERDES_MODE ( "NONE" ),
    .DATA_RATE ( "SDR" ),
    .SIM_TAPDELAY_VALUE ( 75 ),
    .IDELAY_VALUE ( 0 ),
    .IDELAY2_VALUE ( 0 ),
    .ODELAY_VALUE ( 0 ),
    .LOC ( "IODELAY_X2Y3" ),
    .SIM_ODATAIN_INDELAY ( 1492 ),
    .SIM_IDATAIN_INDELAY ( 2786 ))
  \u_rx_b/rxd_r_1_ML_IODELAY2  (
    .T(\u_rx_b/rxd_r_1_ML_IODELAY2/T ),
    .CAL(\u_rx_b/rxd_r_1_ML_IODELAY2/CAL ),
    .IOCLK0(\NLW_u_rx_b/rxd_r_1_ML_IODELAY2_IOCLK0_UNCONNECTED ),
    .IOCLK1(\NLW_u_rx_b/rxd_r_1_ML_IODELAY2_IOCLK1_UNCONNECTED ),
    .CLK(\u_rx_b/rxd_r_1_ML_IODELAY2/CLK ),
    .IDATAIN(phy_b_rxd_1_IBUF_0),
    .INC(\u_rx_b/rxd_r_1_ML_IODELAY2/INC ),
    .CE(\u_rx_b/rxd_r_1_ML_IODELAY2/CE ),
    .RST(\u_rx_b/rxd_r_1_ML_IODELAY2/RST ),
    .ODATAIN(\u_rx_b/rxd_r_1_ML_IODELAY2/ODATAIN ),
    .BUSY(\u_rx_b/rxd_r_1_ML_IODELAY2/BUSY ),
    .DOUT(\u_rx_b/rxd_r_1_ML_IODELAY2/DOUT ),
    .DATAOUT(\u_rx_b/rxd_r_1_ML_IODELAY2_SIG_ML ),
    .DATAOUT2(\u_rx_b/rxd_r_1_ML_IODELAY2/DATAOUT2 ),
    .TOUT(\u_rx_b/rxd_r_1_ML_IODELAY2/TOUT )
  );
  X_CKBUF #(
    .LOC ( "BUFGMUX_X3Y5" ))
  \phy_a_ref_clk_BUFGP/BUFG  (
    .I(\NlwBufferSignal_phy_a_ref_clk_BUFGP/BUFG/IN ),
    .O(phy_a_ref_clk_BUFGP)
  );
  X_IODELAY2 #(
    .IDELAY_MODE ( "NORMAL" ),
    .DELAY_SRC ( "IDATAIN" ),
    .IDELAY_TYPE ( "DEFAULT" ),
    .COUNTER_WRAPAROUND ( "WRAPAROUND" ),
    .SERDES_MODE ( "NONE" ),
    .DATA_RATE ( "SDR" ),
    .SIM_TAPDELAY_VALUE ( 75 ),
    .IDELAY_VALUE ( 0 ),
    .IDELAY2_VALUE ( 0 ),
    .ODELAY_VALUE ( 0 ),
    .LOC ( "IODELAY_X12Y27" ),
    .SIM_ODATAIN_INDELAY ( 1492 ),
    .SIM_IDATAIN_INDELAY ( 2786 ))
  \u_rx_a/rxd_r_1_ML_IODELAY2  (
    .T(\u_rx_a/rxd_r_1_ML_IODELAY2/T ),
    .CAL(\u_rx_a/rxd_r_1_ML_IODELAY2/CAL ),
    .IOCLK0(\NLW_u_rx_a/rxd_r_1_ML_IODELAY2_IOCLK0_UNCONNECTED ),
    .IOCLK1(\NLW_u_rx_a/rxd_r_1_ML_IODELAY2_IOCLK1_UNCONNECTED ),
    .CLK(\u_rx_a/rxd_r_1_ML_IODELAY2/CLK ),
    .IDATAIN(phy_a_rxd_1_IBUF_0),
    .INC(\u_rx_a/rxd_r_1_ML_IODELAY2/INC ),
    .CE(\u_rx_a/rxd_r_1_ML_IODELAY2/CE ),
    .RST(\u_rx_a/rxd_r_1_ML_IODELAY2/RST ),
    .ODATAIN(\u_rx_a/rxd_r_1_ML_IODELAY2/ODATAIN ),
    .BUSY(\u_rx_a/rxd_r_1_ML_IODELAY2/BUSY ),
    .DOUT(\u_rx_a/rxd_r_1_ML_IODELAY2/DOUT ),
    .DATAOUT(\u_rx_a/rxd_r_1_ML_IODELAY2_SIG_ML ),
    .DATAOUT2(\u_rx_a/rxd_r_1_ML_IODELAY2/DATAOUT2 ),
    .TOUT(\u_rx_a/rxd_r_1_ML_IODELAY2/TOUT )
  );
  X_CKBUF #(
    .LOC ( "BUFGMUX_X3Y13" ))
  \clk_100_BUFGP/BUFG  (
    .I(\NlwBufferSignal_clk_100_BUFGP/BUFG/IN ),
    .O(clk_100_BUFGP)
  );
  X_IODELAY2 #(
    .IDELAY_MODE ( "NORMAL" ),
    .DELAY_SRC ( "IDATAIN" ),
    .IDELAY_TYPE ( "DEFAULT" ),
    .COUNTER_WRAPAROUND ( "WRAPAROUND" ),
    .SERDES_MODE ( "NONE" ),
    .DATA_RATE ( "SDR" ),
    .SIM_TAPDELAY_VALUE ( 75 ),
    .IDELAY_VALUE ( 0 ),
    .IDELAY2_VALUE ( 0 ),
    .ODELAY_VALUE ( 0 ),
    .LOC ( "IODELAY_X2Y2" ),
    .SIM_ODATAIN_INDELAY ( 1492 ),
    .SIM_IDATAIN_INDELAY ( 2786 ))
  \u_rx_b/rxd_r_0_ML_IODELAY2  (
    .T(\u_rx_b/rxd_r_0_ML_IODELAY2/T ),
    .CAL(\u_rx_b/rxd_r_0_ML_IODELAY2/CAL ),
    .IOCLK0(\NLW_u_rx_b/rxd_r_0_ML_IODELAY2_IOCLK0_UNCONNECTED ),
    .IOCLK1(\NLW_u_rx_b/rxd_r_0_ML_IODELAY2_IOCLK1_UNCONNECTED ),
    .CLK(\u_rx_b/rxd_r_0_ML_IODELAY2/CLK ),
    .IDATAIN(phy_b_rxd_0_IBUF_0),
    .INC(\u_rx_b/rxd_r_0_ML_IODELAY2/INC ),
    .CE(\u_rx_b/rxd_r_0_ML_IODELAY2/CE ),
    .RST(\u_rx_b/rxd_r_0_ML_IODELAY2/RST ),
    .ODATAIN(\u_rx_b/rxd_r_0_ML_IODELAY2/ODATAIN ),
    .BUSY(\u_rx_b/rxd_r_0_ML_IODELAY2/BUSY ),
    .DOUT(\u_rx_b/rxd_r_0_ML_IODELAY2/DOUT ),
    .DATAOUT(\u_rx_b/rxd_r_0_ML_IODELAY2_SIG_ML ),
    .DATAOUT2(\u_rx_b/rxd_r_0_ML_IODELAY2/DATAOUT2 ),
    .TOUT(\u_rx_b/rxd_r_0_ML_IODELAY2/TOUT )
  );
  X_CKBUF #(
    .LOC ( "BUFGMUX_X3Y14" ))
  \phy_b_ref_clk_BUFGP/BUFG  (
    .I(\NlwBufferSignal_phy_b_ref_clk_BUFGP/BUFG/IN ),
    .O(phy_b_ref_clk_BUFGP)
  );
  X_IODELAY2 #(
    .IDELAY_MODE ( "NORMAL" ),
    .DELAY_SRC ( "IDATAIN" ),
    .IDELAY_TYPE ( "DEFAULT" ),
    .COUNTER_WRAPAROUND ( "WRAPAROUND" ),
    .SERDES_MODE ( "NONE" ),
    .DATA_RATE ( "SDR" ),
    .SIM_TAPDELAY_VALUE ( 75 ),
    .IDELAY_VALUE ( 0 ),
    .IDELAY2_VALUE ( 0 ),
    .ODELAY_VALUE ( 0 ),
    .LOC ( "IODELAY_X12Y33" ),
    .SIM_ODATAIN_INDELAY ( 1492 ),
    .SIM_IDATAIN_INDELAY ( 2786 ))
  \u_rx_a/crs_r_ML_IODELAY2  (
    .T(\u_rx_a/crs_r_ML_IODELAY2/T ),
    .CAL(\u_rx_a/crs_r_ML_IODELAY2/CAL ),
    .IOCLK0(\NLW_u_rx_a/crs_r_ML_IODELAY2_IOCLK0_UNCONNECTED ),
    .IOCLK1(\NLW_u_rx_a/crs_r_ML_IODELAY2_IOCLK1_UNCONNECTED ),
    .CLK(\u_rx_a/crs_r_ML_IODELAY2/CLK ),
    .IDATAIN(phy_a_crs_dv_IBUF_0),
    .INC(\u_rx_a/crs_r_ML_IODELAY2/INC ),
    .CE(\u_rx_a/crs_r_ML_IODELAY2/CE ),
    .RST(\u_rx_a/crs_r_ML_IODELAY2/RST ),
    .ODATAIN(\u_rx_a/crs_r_ML_IODELAY2/ODATAIN ),
    .BUSY(\u_rx_a/crs_r_ML_IODELAY2/BUSY ),
    .DOUT(\u_rx_a/crs_r_ML_IODELAY2/DOUT ),
    .DATAOUT(\u_rx_a/crs_r_ML_IODELAY2_SIG_ML ),
    .DATAOUT2(\u_rx_a/crs_r_ML_IODELAY2/DATAOUT2 ),
    .TOUT(\u_rx_a/crs_r_ML_IODELAY2/TOUT )
  );
  X_IODELAY2 #(
    .IDELAY_MODE ( "NORMAL" ),
    .DELAY_SRC ( "IDATAIN" ),
    .IDELAY_TYPE ( "DEFAULT" ),
    .COUNTER_WRAPAROUND ( "WRAPAROUND" ),
    .SERDES_MODE ( "NONE" ),
    .DATA_RATE ( "SDR" ),
    .SIM_TAPDELAY_VALUE ( 75 ),
    .IDELAY_VALUE ( 0 ),
    .IDELAY2_VALUE ( 0 ),
    .ODELAY_VALUE ( 0 ),
    .LOC ( "IODELAY_X12Y26" ),
    .SIM_ODATAIN_INDELAY ( 1492 ),
    .SIM_IDATAIN_INDELAY ( 2786 ))
  \u_rx_a/rxd_r_0_ML_IODELAY2  (
    .T(\u_rx_a/rxd_r_0_ML_IODELAY2/T ),
    .CAL(\u_rx_a/rxd_r_0_ML_IODELAY2/CAL ),
    .IOCLK0(\NLW_u_rx_a/rxd_r_0_ML_IODELAY2_IOCLK0_UNCONNECTED ),
    .IOCLK1(\NLW_u_rx_a/rxd_r_0_ML_IODELAY2_IOCLK1_UNCONNECTED ),
    .CLK(\u_rx_a/rxd_r_0_ML_IODELAY2/CLK ),
    .IDATAIN(phy_a_rxd_0_IBUF_0),
    .INC(\u_rx_a/rxd_r_0_ML_IODELAY2/INC ),
    .CE(\u_rx_a/rxd_r_0_ML_IODELAY2/CE ),
    .RST(\u_rx_a/rxd_r_0_ML_IODELAY2/RST ),
    .ODATAIN(\u_rx_a/rxd_r_0_ML_IODELAY2/ODATAIN ),
    .BUSY(\u_rx_a/rxd_r_0_ML_IODELAY2/BUSY ),
    .DOUT(\u_rx_a/rxd_r_0_ML_IODELAY2/DOUT ),
    .DATAOUT(\u_rx_a/rxd_r_0_ML_IODELAY2_SIG_ML ),
    .DATAOUT2(\u_rx_a/rxd_r_0_ML_IODELAY2/DATAOUT2 ),
    .TOUT(\u_rx_a/rxd_r_0_ML_IODELAY2/TOUT )
  );
  X_IODELAY2 #(
    .IDELAY_MODE ( "NORMAL" ),
    .DELAY_SRC ( "IDATAIN" ),
    .IDELAY_TYPE ( "DEFAULT" ),
    .COUNTER_WRAPAROUND ( "WRAPAROUND" ),
    .SERDES_MODE ( "NONE" ),
    .DATA_RATE ( "SDR" ),
    .SIM_TAPDELAY_VALUE ( 75 ),
    .IDELAY_VALUE ( 0 ),
    .IDELAY2_VALUE ( 0 ),
    .ODELAY_VALUE ( 0 ),
    .LOC ( "IODELAY_X3Y3" ),
    .SIM_ODATAIN_INDELAY ( 1492 ),
    .SIM_IDATAIN_INDELAY ( 2786 ))
  \u_rx_b/crs_r_ML_IODELAY2  (
    .T(\u_rx_b/crs_r_ML_IODELAY2/T ),
    .CAL(\u_rx_b/crs_r_ML_IODELAY2/CAL ),
    .IOCLK0(\NLW_u_rx_b/crs_r_ML_IODELAY2_IOCLK0_UNCONNECTED ),
    .IOCLK1(\NLW_u_rx_b/crs_r_ML_IODELAY2_IOCLK1_UNCONNECTED ),
    .CLK(\u_rx_b/crs_r_ML_IODELAY2/CLK ),
    .IDATAIN(phy_b_crs_dv_IBUF_0),
    .INC(\u_rx_b/crs_r_ML_IODELAY2/INC ),
    .CE(\u_rx_b/crs_r_ML_IODELAY2/CE ),
    .RST(\u_rx_b/crs_r_ML_IODELAY2/RST ),
    .ODATAIN(\u_rx_b/crs_r_ML_IODELAY2/ODATAIN ),
    .BUSY(\u_rx_b/crs_r_ML_IODELAY2/BUSY ),
    .DOUT(\u_rx_b/crs_r_ML_IODELAY2/DOUT ),
    .DATAOUT(\u_rx_b/crs_r_ML_IODELAY2_SIG_ML ),
    .DATAOUT2(\u_rx_b/crs_r_ML_IODELAY2/DATAOUT2 ),
    .TOUT(\u_rx_b/crs_r_ML_IODELAY2/TOUT )
  );
  X_BUF   \N77/N77_CMUX_Delay  (
    .I(N77),
    .O(N77_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X18Y52" ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT48_SW0_SW0  (
    .IA(1'b1),
    .IB(N497),
    .O(N77),
    .SEL(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT14 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y52" ),
    .INIT ( 64'hFFFFFFFFFFFFFFFF ))
  \SevenSegmentEnable_0_OBUF_1_22.D6LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\NLW_SevenSegmentEnable_0_OBUF_1_22.D6LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y52" ),
    .INIT ( 64'hFBFBFDEFFFFF7DF7 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT48_SW0_SW0_G  (
    .ADR0(\u_uart/idx [3]),
    .ADR2(\u_uart/idx [4]),
    .ADR4(\u_uart/idx [5]),
    .ADR1(\u_uart/idx [1]),
    .ADR5(\u_uart/idx [2]),
    .ADR3(\u_uart/idx [0]),
    .O(N497)
  );
  X_BUF   \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT33/u_uart/Mmux_code[2]_GND_7_o_select_48_OUT33_CMUX_Delay  (
    .I(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT33_1507 ),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT33_0 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X14Y51" ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT33  (
    .IA(1'b0),
    .IB(N513),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT33_1507 ),
    .SEL(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT12_7535 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y51" ),
    .INIT ( 64'h0000000000000000 ))
  \N1_196.D6LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\NLW_N1_196.D6LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y51" ),
    .INIT ( 64'h0012240161763632 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT33_G  (
    .ADR1(\u_uart/idx [5]),
    .ADR5(\u_uart/idx [3]),
    .ADR2(\u_uart/idx [1]),
    .ADR4(\u_uart/idx [2]),
    .ADR0(\u_uart/idx [4]),
    .ADR3(\u_uart/idx [0]),
    .O(N513)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X0Y37" ),
    .INIT ( 64'hFFDD2200FFDD2200 ))
  \u_engine/_n0377_inv_SW4  (
    .ADR5(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_engine/syn_cnt [4]),
    .ADR1(\u_engine/proto [4]),
    .ADR0(\u_engine/proto [2]),
    .ADR3(\u_engine/Result<4>_0 ),
    .O(N373)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X1Y36" ),
    .INIT ( 64'hFF55AA00FF00FF00 ))
  \u_engine/_n0377_inv_SW5  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR3(\u_engine/syn_cnt [3]),
    .ADR0(\u_engine/proto [4]),
    .ADR5(\u_engine/proto [2]),
    .ADR4(\u_engine/Result<3>_0 ),
    .O(N375)
  );
  X_FF #(
    .LOC ( "SLICE_X1Y37" ),
    .INIT ( 1'b0 ))
  \u_engine/syn_cnt_6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/syn_cnt_6/CLK ),
    .I(\u_engine/syn_cnt_6_rstpot_1547 ),
    .O(\u_engine/syn_cnt [6]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X1Y37" ),
    .INIT ( 64'h00FF00FB00040000 ))
  \u_engine/syn_cnt_6_rstpot  (
    .ADR1(\u_engine/s_tindex[15]_idx_flags[15]_equal_12_o_0 ),
    .ADR4(N369),
    .ADR2(N217),
    .ADR5(\u_engine/syn_cnt [6]),
    .ADR3(\u_engine/win_end ),
    .ADR0(N37),
    .O(\u_engine/syn_cnt_6_rstpot_1547 )
  );
  X_FF #(
    .LOC ( "SLICE_X1Y37" ),
    .INIT ( 1'b0 ))
  \u_engine/syn_cnt_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/syn_cnt_5/CLK ),
    .I(\u_engine/syn_cnt_5_rstpot_1556 ),
    .O(\u_engine/syn_cnt [5]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X1Y37" ),
    .INIT ( 64'h3333001033230000 ))
  \u_engine/syn_cnt_5_rstpot  (
    .ADR2(\u_engine/s_tindex[15]_idx_flags[15]_equal_12_o_0 ),
    .ADR5(N371),
    .ADR3(N217),
    .ADR4(\u_engine/syn_cnt [5]),
    .ADR1(\u_engine/win_end ),
    .ADR0(N37),
    .O(\u_engine/syn_cnt_5_rstpot_1556 )
  );
  X_FF #(
    .LOC ( "SLICE_X1Y37" ),
    .INIT ( 1'b0 ))
  \u_engine/syn_cnt_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/syn_cnt_4/CLK ),
    .I(\u_engine/syn_cnt_4_rstpot_1530 ),
    .O(\u_engine/syn_cnt [4]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X1Y37" ),
    .INIT ( 64'h0000FF000000FD08 ))
  \u_engine/syn_cnt_4_rstpot  (
    .ADR0(\u_engine/s_tindex[15]_idx_flags[15]_equal_12_o_0 ),
    .ADR1(N373),
    .ADR5(N217),
    .ADR3(\u_engine/syn_cnt [4]),
    .ADR4(\u_engine/win_end ),
    .ADR2(N37),
    .O(\u_engine/syn_cnt_4_rstpot_1530 )
  );
  X_FF #(
    .LOC ( "SLICE_X1Y37" ),
    .INIT ( 1'b0 ))
  \u_engine/syn_cnt_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/syn_cnt_3/CLK ),
    .I(\u_engine/syn_cnt_3_rstpot_1538 ),
    .O(\u_engine/syn_cnt [3]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X1Y37" ),
    .INIT ( 64'h00FE00FF00020000 ))
  \u_engine/syn_cnt_3_rstpot  (
    .ADR0(N375),
    .ADR4(\u_engine/s_tindex[15]_idx_flags[15]_equal_12_o_0 ),
    .ADR1(N217),
    .ADR5(\u_engine/syn_cnt [3]),
    .ADR3(\u_engine/win_end ),
    .ADR2(N37),
    .O(\u_engine/syn_cnt_3_rstpot_1538 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X1Y38" ),
    .INIT ( 64'hBABA8A8ABABA8A8A ))
  \u_engine/_n0377_inv_SW3  (
    .ADR3(1'b1),
    .ADR5(1'b1),
    .ADR0(\u_engine/syn_cnt [5]),
    .ADR1(\u_engine/proto [4]),
    .ADR2(\u_engine/proto [2]),
    .ADR4(\u_engine/Result<5>_0 ),
    .O(N371)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X1Y38" ),
    .INIT ( 64'hF0FFF0F0F000F0F0 ))
  \u_engine/_n0377_inv_SW2  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\u_engine/syn_cnt [6]),
    .ADR3(\u_engine/proto [4]),
    .ADR4(\u_engine/proto [2]),
    .ADR5(\u_engine/Result<6>_0 ),
    .O(N369)
  );
  X_FF #(
    .LOC ( "SLICE_X1Y48" ),
    .INIT ( 1'b0 ))
  \u_engine/win_cnt_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/win_cnt_3/CLK ),
    .I(\u_engine/Mcount_win_cnt_eqn_3 ),
    .O(\u_engine/win_cnt [3]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X1Y48" ),
    .INIT ( 64'h7F00FF00FF00FF00 ))
  \u_engine/Mcount_win_cnt_eqn_31  (
    .ADR3(\u_engine/Result<3>1_0 ),
    .ADR0(\u_engine/win_cnt [8]),
    .ADR2(\u_engine/win_cnt [4]),
    .ADR4(\u_engine/win_end_0 [18]),
    .ADR5(\u_engine/win_end<18>1_7607 ),
    .ADR1(\u_engine/win_end<18>2_7617 ),
    .O(\u_engine/Mcount_win_cnt_eqn_3 )
  );
  X_FF #(
    .LOC ( "SLICE_X1Y48" ),
    .INIT ( 1'b0 ))
  \u_engine/win_cnt_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/win_cnt_2/CLK ),
    .I(\u_engine/Mcount_win_cnt_eqn_2 ),
    .O(\u_engine/win_cnt [2]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X1Y48" ),
    .INIT ( 64'h70F0F0F0F0F0F0F0 ))
  \u_engine/Mcount_win_cnt_eqn_21  (
    .ADR2(\u_engine/Result<2>1_0 ),
    .ADR3(\u_engine/win_cnt [8]),
    .ADR1(\u_engine/win_cnt [4]),
    .ADR5(\u_engine/win_end_0 [18]),
    .ADR0(\u_engine/win_end<18>1_7607 ),
    .ADR4(\u_engine/win_end<18>2_7617 ),
    .O(\u_engine/Mcount_win_cnt_eqn_2 )
  );
  X_FF #(
    .LOC ( "SLICE_X1Y48" ),
    .INIT ( 1'b0 ))
  \u_engine/win_cnt_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/win_cnt_1/CLK ),
    .I(\u_engine/Mcount_win_cnt_eqn_1 ),
    .O(\u_engine/win_cnt [1]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X1Y48" ),
    .INIT ( 64'h70F0F0F0F0F0F0F0 ))
  \u_engine/Mcount_win_cnt_eqn_11  (
    .ADR2(\u_engine/Result<1>1_0 ),
    .ADR1(\u_engine/win_cnt [8]),
    .ADR5(\u_engine/win_cnt [4]),
    .ADR3(\u_engine/win_end_0 [18]),
    .ADR0(\u_engine/win_end<18>1_7607 ),
    .ADR4(\u_engine/win_end<18>2_7617 ),
    .O(\u_engine/Mcount_win_cnt_eqn_1 )
  );
  X_FF #(
    .LOC ( "SLICE_X1Y48" ),
    .INIT ( 1'b0 ))
  \u_engine/win_cnt_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/win_cnt_0/CLK ),
    .I(\u_engine/Mcount_win_cnt_eqn_0 ),
    .O(\u_engine/win_cnt [0]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X1Y48" ),
    .INIT ( 64'h7F00FF00FF00FF00 ))
  \u_engine/Mcount_win_cnt_eqn_01  (
    .ADR3(\u_engine/Result<0>1_0 ),
    .ADR0(\u_engine/win_cnt [8]),
    .ADR5(\u_engine/win_cnt [4]),
    .ADR1(\u_engine/win_end_0 [18]),
    .ADR2(\u_engine/win_end<18>1_7607 ),
    .ADR4(\u_engine/win_end<18>2_7617 ),
    .O(\u_engine/Mcount_win_cnt_eqn_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X1Y49" ),
    .INIT ( 1'b0 ))
  \u_engine/win_cnt_7  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/win_cnt_7/CLK ),
    .I(\u_engine/Mcount_win_cnt_eqn_7 ),
    .O(\u_engine/win_cnt [7]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X1Y49" ),
    .INIT ( 64'h7F00FF00FF00FF00 ))
  \u_engine/Mcount_win_cnt_eqn_71  (
    .ADR3(\u_engine/Result<7>1_0 ),
    .ADR2(\u_engine/win_cnt [8]),
    .ADR0(\u_engine/win_cnt [4]),
    .ADR4(\u_engine/win_end_0 [18]),
    .ADR5(\u_engine/win_end<18>1_7607 ),
    .ADR1(\u_engine/win_end<18>2_7617 ),
    .O(\u_engine/Mcount_win_cnt_eqn_7 )
  );
  X_FF #(
    .LOC ( "SLICE_X1Y49" ),
    .INIT ( 1'b0 ))
  \u_engine/win_cnt_6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/win_cnt_6/CLK ),
    .I(\u_engine/Mcount_win_cnt_eqn_6 ),
    .O(\u_engine/win_cnt [6]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X1Y49" ),
    .INIT ( 64'h70F0F0F0F0F0F0F0 ))
  \u_engine/Mcount_win_cnt_eqn_61  (
    .ADR2(\u_engine/Result<6>1_0 ),
    .ADR1(\u_engine/win_cnt [8]),
    .ADR0(\u_engine/win_cnt [4]),
    .ADR4(\u_engine/win_end_0 [18]),
    .ADR5(\u_engine/win_end<18>1_7607 ),
    .ADR3(\u_engine/win_end<18>2_7617 ),
    .O(\u_engine/Mcount_win_cnt_eqn_6 )
  );
  X_FF #(
    .LOC ( "SLICE_X1Y49" ),
    .INIT ( 1'b0 ))
  \u_engine/win_cnt_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/win_cnt_5/CLK ),
    .I(\u_engine/Mcount_win_cnt_eqn_5 ),
    .O(\u_engine/win_cnt [5]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X1Y49" ),
    .INIT ( 64'h70F0F0F0F0F0F0F0 ))
  \u_engine/Mcount_win_cnt_eqn_51  (
    .ADR2(\u_engine/Result<5>1_0 ),
    .ADR5(\u_engine/win_cnt [8]),
    .ADR0(\u_engine/win_cnt [4]),
    .ADR3(\u_engine/win_end_0 [18]),
    .ADR1(\u_engine/win_end<18>1_7607 ),
    .ADR4(\u_engine/win_end<18>2_7617 ),
    .O(\u_engine/Mcount_win_cnt_eqn_5 )
  );
  X_FF #(
    .LOC ( "SLICE_X1Y49" ),
    .INIT ( 1'b0 ))
  \u_engine/win_cnt_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/win_cnt_4/CLK ),
    .I(\u_engine/Mcount_win_cnt_eqn_4 ),
    .O(\u_engine/win_cnt [4]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X1Y49" ),
    .INIT ( 64'h7F00FF00FF00FF00 ))
  \u_engine/Mcount_win_cnt_eqn_41  (
    .ADR3(\u_engine/Result<4>1_0 ),
    .ADR5(\u_engine/win_cnt [8]),
    .ADR1(\u_engine/win_end_0 [18]),
    .ADR4(\u_engine/win_cnt [4]),
    .ADR2(\u_engine/win_end<18>1_7607 ),
    .ADR0(\u_engine/win_end<18>2_7617 ),
    .O(\u_engine/Mcount_win_cnt_eqn_4 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X1Y50" ),
    .INIT ( 64'h1000000000000000 ))
  \u_engine/win_end<18>2  (
    .ADR3(\u_engine/win_cnt [1]),
    .ADR1(\u_engine/win_cnt [5]),
    .ADR5(\u_engine/win_cnt [3]),
    .ADR4(\u_engine/win_cnt [2]),
    .ADR0(\u_engine/win_cnt [6]),
    .ADR2(\u_engine/win_cnt [0]),
    .O(\u_engine/win_end<18>1_7607 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X1Y50" ),
    .INIT ( 64'hC000000000000000 ))
  \u_engine/win_end<18>1  (
    .ADR0(1'b1),
    .ADR3(\u_engine/win_cnt [15]),
    .ADR2(\u_engine/win_cnt [13]),
    .ADR5(\u_engine/win_cnt [18]),
    .ADR4(\u_engine/win_cnt [17]),
    .ADR1(\u_engine/win_cnt [16]),
    .O(\u_engine/win_end_0 [18])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X1Y50" ),
    .INIT ( 64'h0000000000000001 ))
  \u_engine/win_end<18>3  (
    .ADR4(\u_engine/win_cnt [9]),
    .ADR2(\u_engine/win_cnt [7]),
    .ADR1(\u_engine/win_cnt [10]),
    .ADR0(\u_engine/win_cnt [11]),
    .ADR5(\u_engine/win_cnt [12]),
    .ADR3(\u_engine/win_cnt [14]),
    .O(\u_engine/win_end<18>2_7617 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X1Y50" ),
    .INIT ( 64'h8080000000000000 ))
  \u_engine/win_end<18>4  (
    .ADR3(1'b1),
    .ADR0(\u_engine/win_cnt [8]),
    .ADR5(\u_engine/win_cnt [4]),
    .ADR1(\u_engine/win_end_0 [18]),
    .ADR2(\u_engine/win_end<18>1_7607 ),
    .ADR4(\u_engine/win_end<18>2_7617 ),
    .O(\u_engine/win_end )
  );
  X_FF #(
    .LOC ( "SLICE_X1Y51" ),
    .INIT ( 1'b0 ))
  \u_engine/win_cnt_15  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/win_cnt_15/CLK ),
    .I(\u_engine/Mcount_win_cnt_eqn_15 ),
    .O(\u_engine/win_cnt [15]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X1Y51" ),
    .INIT ( 64'h7F00FF00FF00FF00 ))
  \u_engine/Mcount_win_cnt_eqn_151  (
    .ADR3(\u_engine/Result<15>_0 ),
    .ADR2(\u_engine/win_cnt [8]),
    .ADR4(\u_engine/win_cnt [4]),
    .ADR0(\u_engine/win_end_0 [18]),
    .ADR5(\u_engine/win_end<18>1_7607 ),
    .ADR1(\u_engine/win_end<18>2_7617 ),
    .O(\u_engine/Mcount_win_cnt_eqn_15 )
  );
  X_FF #(
    .LOC ( "SLICE_X1Y51" ),
    .INIT ( 1'b0 ))
  \u_engine/win_cnt_14  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/win_cnt_14/CLK ),
    .I(\u_engine/Mcount_win_cnt_eqn_14 ),
    .O(\u_engine/win_cnt [14]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X1Y51" ),
    .INIT ( 64'h70F0F0F0F0F0F0F0 ))
  \u_engine/Mcount_win_cnt_eqn_141  (
    .ADR2(\u_engine/Result<14>_0 ),
    .ADR0(\u_engine/win_cnt [8]),
    .ADR1(\u_engine/win_cnt [4]),
    .ADR4(\u_engine/win_end_0 [18]),
    .ADR5(\u_engine/win_end<18>1_7607 ),
    .ADR3(\u_engine/win_end<18>2_7617 ),
    .O(\u_engine/Mcount_win_cnt_eqn_14 )
  );
  X_FF #(
    .LOC ( "SLICE_X1Y51" ),
    .INIT ( 1'b0 ))
  \u_engine/win_cnt_13  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/win_cnt_13/CLK ),
    .I(\u_engine/Mcount_win_cnt_eqn_13 ),
    .O(\u_engine/win_cnt [13]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X1Y51" ),
    .INIT ( 64'h70F0F0F0F0F0F0F0 ))
  \u_engine/Mcount_win_cnt_eqn_131  (
    .ADR2(\u_engine/Result<13>_0 ),
    .ADR0(\u_engine/win_cnt [8]),
    .ADR5(\u_engine/win_cnt [4]),
    .ADR3(\u_engine/win_end_0 [18]),
    .ADR1(\u_engine/win_end<18>1_7607 ),
    .ADR4(\u_engine/win_end<18>2_7617 ),
    .O(\u_engine/Mcount_win_cnt_eqn_13 )
  );
  X_FF #(
    .LOC ( "SLICE_X1Y51" ),
    .INIT ( 1'b0 ))
  \u_engine/win_cnt_12  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/win_cnt_12/CLK ),
    .I(\u_engine/Mcount_win_cnt_eqn_12 ),
    .O(\u_engine/win_cnt [12]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X1Y51" ),
    .INIT ( 64'h7F00FF00FF00FF00 ))
  \u_engine/Mcount_win_cnt_eqn_121  (
    .ADR3(\u_engine/Result<12>_0 ),
    .ADR5(\u_engine/win_cnt [8]),
    .ADR0(\u_engine/win_cnt [4]),
    .ADR1(\u_engine/win_end_0 [18]),
    .ADR2(\u_engine/win_end<18>1_7607 ),
    .ADR4(\u_engine/win_end<18>2_7617 ),
    .O(\u_engine/Mcount_win_cnt_eqn_12 )
  );
  X_FF #(
    .LOC ( "SLICE_X1Y52" ),
    .INIT ( 1'b0 ))
  \u_engine/win_cnt_18  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/win_cnt_18/CLK ),
    .I(\u_engine/Mcount_win_cnt_eqn_18 ),
    .O(\u_engine/win_cnt [18]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X1Y52" ),
    .INIT ( 64'h70F0F0F0F0F0F0F0 ))
  \u_engine/Mcount_win_cnt_eqn_181  (
    .ADR2(\u_engine/Result<18>_0 ),
    .ADR0(\u_engine/win_cnt [8]),
    .ADR1(\u_engine/win_cnt [4]),
    .ADR4(\u_engine/win_end_0 [18]),
    .ADR5(\u_engine/win_end<18>1_7607 ),
    .ADR3(\u_engine/win_end<18>2_7617 ),
    .O(\u_engine/Mcount_win_cnt_eqn_18 )
  );
  X_FF #(
    .LOC ( "SLICE_X1Y52" ),
    .INIT ( 1'b0 ))
  \u_engine/win_cnt_17  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/win_cnt_17/CLK ),
    .I(\u_engine/Mcount_win_cnt_eqn_17 ),
    .O(\u_engine/win_cnt [17]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X1Y52" ),
    .INIT ( 64'h70F0F0F0F0F0F0F0 ))
  \u_engine/Mcount_win_cnt_eqn_171  (
    .ADR2(\u_engine/Result<17>_0 ),
    .ADR1(\u_engine/win_cnt [8]),
    .ADR0(\u_engine/win_cnt [4]),
    .ADR4(\u_engine/win_end_0 [18]),
    .ADR3(\u_engine/win_end<18>1_7607 ),
    .ADR5(\u_engine/win_end<18>2_7617 ),
    .O(\u_engine/Mcount_win_cnt_eqn_17 )
  );
  X_FF #(
    .LOC ( "SLICE_X1Y52" ),
    .INIT ( 1'b0 ))
  \u_engine/win_cnt_16  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/win_cnt_16/CLK ),
    .I(\u_engine/Mcount_win_cnt_eqn_16 ),
    .O(\u_engine/win_cnt [16]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X1Y52" ),
    .INIT ( 64'h7F00FF00FF00FF00 ))
  \u_engine/Mcount_win_cnt_eqn_161  (
    .ADR3(\u_engine/Result<16>_0 ),
    .ADR1(\u_engine/win_cnt [8]),
    .ADR5(\u_engine/win_cnt [4]),
    .ADR0(\u_engine/win_end_0 [18]),
    .ADR2(\u_engine/win_end<18>1_7607 ),
    .ADR4(\u_engine/win_end<18>2_7617 ),
    .O(\u_engine/Mcount_win_cnt_eqn_16 )
  );
  X_FF #(
    .LOC ( "SLICE_X2Y50" ),
    .INIT ( 1'b0 ))
  \u_engine/win_cnt_11  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/win_cnt_11/CLK ),
    .I(\u_engine/Mcount_win_cnt_eqn_11_1745 ),
    .O(\u_engine/win_cnt [11]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y50" ),
    .INIT ( 64'h7FFF0000FFFF0000 ))
  \u_engine/Mcount_win_cnt_eqn_111  (
    .ADR4(\u_engine/Result<11>_0 ),
    .ADR1(\u_engine/win_cnt [8]),
    .ADR5(\u_engine/win_cnt [4]),
    .ADR0(\u_engine/win_end_0 [18]),
    .ADR3(\u_engine/win_end<18>1_7607 ),
    .ADR2(\u_engine/win_end<18>2_7617 ),
    .O(\u_engine/Mcount_win_cnt_eqn_11_1745 )
  );
  X_FF #(
    .LOC ( "SLICE_X2Y50" ),
    .INIT ( 1'b0 ))
  \u_engine/win_cnt_10  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/win_cnt_10/CLK ),
    .I(\u_engine/Mcount_win_cnt_eqn_10 ),
    .O(\u_engine/win_cnt [10]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y50" ),
    .INIT ( 64'h7F00FF00FF00FF00 ))
  \u_engine/Mcount_win_cnt_eqn_101  (
    .ADR3(\u_engine/Result<10>_0 ),
    .ADR4(\u_engine/win_cnt [8]),
    .ADR1(\u_engine/win_cnt [4]),
    .ADR5(\u_engine/win_end_0 [18]),
    .ADR0(\u_engine/win_end<18>1_7607 ),
    .ADR2(\u_engine/win_end<18>2_7617 ),
    .O(\u_engine/Mcount_win_cnt_eqn_10 )
  );
  X_FF #(
    .LOC ( "SLICE_X2Y50" ),
    .INIT ( 1'b0 ))
  \u_engine/win_cnt_9  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/win_cnt_9/CLK ),
    .I(\u_engine/Mcount_win_cnt_eqn_9 ),
    .O(\u_engine/win_cnt [9]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y50" ),
    .INIT ( 64'h7F00FF00FF00FF00 ))
  \u_engine/Mcount_win_cnt_eqn_91  (
    .ADR3(\u_engine/Result<9>_0 ),
    .ADR1(\u_engine/win_cnt [8]),
    .ADR0(\u_engine/win_cnt [4]),
    .ADR2(\u_engine/win_end_0 [18]),
    .ADR5(\u_engine/win_end<18>1_7607 ),
    .ADR4(\u_engine/win_end<18>2_7617 ),
    .O(\u_engine/Mcount_win_cnt_eqn_9 )
  );
  X_FF #(
    .LOC ( "SLICE_X2Y50" ),
    .INIT ( 1'b0 ))
  \u_engine/win_cnt_8  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/win_cnt_8/CLK ),
    .I(\u_engine/Mcount_win_cnt_eqn_8 ),
    .O(\u_engine/win_cnt [8]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y50" ),
    .INIT ( 64'h2AAAAAAAAAAAAAAA ))
  \u_engine/Mcount_win_cnt_eqn_81  (
    .ADR0(\u_engine/Result<8>_0 ),
    .ADR3(\u_engine/win_cnt [4]),
    .ADR4(\u_engine/win_end_0 [18]),
    .ADR5(\u_engine/win_cnt [8]),
    .ADR1(\u_engine/win_end<18>1_7607 ),
    .ADR2(\u_engine/win_end<18>2_7617 ),
    .O(\u_engine/Mcount_win_cnt_eqn_8 )
  );
  X_FF #(
    .LOC ( "SLICE_X3Y36" ),
    .INIT ( 1'b0 ))
  \u_engine/syn_cnt_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/syn_cnt_2/CLK ),
    .I(\u_engine/syn_cnt_2_rstpot_1761 ),
    .O(\u_engine/syn_cnt [2]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y36" ),
    .INIT ( 64'h3300330032103300 ))
  \u_engine/syn_cnt_2_rstpot  (
    .ADR2(N377),
    .ADR4(\u_engine/s_tindex[15]_idx_flags[15]_equal_12_o_0 ),
    .ADR5(N217),
    .ADR3(\u_engine/syn_cnt [2]),
    .ADR1(\u_engine/win_end ),
    .ADR0(N37),
    .O(\u_engine/syn_cnt_2_rstpot_1761 )
  );
  X_FF #(
    .LOC ( "SLICE_X3Y36" ),
    .INIT ( 1'b0 ))
  \u_engine/syn_cnt_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/syn_cnt_1/CLK ),
    .I(\u_engine/syn_cnt_1_rstpot_1770 ),
    .O(\u_engine/syn_cnt [1]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y36" ),
    .INIT ( 64'h5500541055005500 ))
  \u_engine/syn_cnt_1_rstpot  (
    .ADR2(N379_0),
    .ADR5(\u_engine/s_tindex[15]_idx_flags[15]_equal_12_o_0 ),
    .ADR1(N217),
    .ADR3(\u_engine/syn_cnt [1]),
    .ADR0(\u_engine/win_end ),
    .ADR4(N37),
    .O(\u_engine/syn_cnt_1_rstpot_1770 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y36" ),
    .INIT ( 64'hAAACAAAAAAACAAAA ))
  \u_engine/syn_cnt_0_rstpot_SW0  (
    .ADR5(1'b1),
    .ADR0(\u_engine/syn_cnt [0]),
    .ADR4(\u_engine/proto [2]),
    .ADR2(\u_engine/proto [4]),
    .ADR3(N217),
    .ADR1(\u_engine/Result<0>_0 ),
    .O(N364)
  );
  X_FF #(
    .LOC ( "SLICE_X3Y36" ),
    .INIT ( 1'b0 ))
  \u_engine/syn_cnt_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/syn_cnt_0/CLK ),
    .I(\u_engine/syn_cnt_0_rstpot_1784 ),
    .O(\u_engine/syn_cnt [0]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y36" ),
    .INIT ( 64'h555D5519004C0008 ))
  \u_engine/syn_cnt_0_rstpot  (
    .ADR2(N365),
    .ADR1(\u_engine/s_tindex[15]_idx_flags[15]_equal_12_o_0 ),
    .ADR0(\u_engine/win_end ),
    .ADR5(\u_engine/syn_cnt [0]),
    .ADR4(N364),
    .ADR3(N37),
    .O(\u_engine/syn_cnt_0_rstpot_1784 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y37" ),
    .INIT ( 64'hF0F0FCFCF0F03030 ))
  \u_engine/_n0377_inv_SW6  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR2(\u_engine/syn_cnt [2]),
    .ADR4(\u_engine/proto [4]),
    .ADR1(\u_engine/proto [2]),
    .ADR5(\u_engine/Result<2>_0 ),
    .O(N377)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y6" ),
    .INIT ( 1'b0 ))
  \u_rx_b/hold_d_7  (
    .CE(\u_rx_b/_n0178_inv ),
    .CLK(\NlwBufferSignal_u_rx_b/hold_d_7/CLK ),
    .I(\NlwBufferSignal_u_rx_b/hold_d_7/IN ),
    .O(\u_rx_b/hold_d [7]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y6" ),
    .INIT ( 1'b0 ))
  \u_rx_b/hold_d_6  (
    .CE(\u_rx_b/_n0178_inv ),
    .CLK(\NlwBufferSignal_u_rx_b/hold_d_6/CLK ),
    .I(\NlwBufferSignal_u_rx_b/hold_d_6/IN ),
    .O(\u_rx_b/hold_d [6]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y6" ),
    .INIT ( 1'b0 ))
  \u_rx_b/hold_d_5  (
    .CE(\u_rx_b/_n0178_inv ),
    .CLK(\NlwBufferSignal_u_rx_b/hold_d_5/CLK ),
    .I(\NlwBufferSignal_u_rx_b/hold_d_5/IN ),
    .O(\u_rx_b/hold_d [5]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y6" ),
    .INIT ( 1'b0 ))
  \u_rx_b/hold_d_4  (
    .CE(\u_rx_b/_n0178_inv ),
    .CLK(\NlwBufferSignal_u_rx_b/hold_d_4/CLK ),
    .I(\NlwBufferSignal_u_rx_b/hold_d_4/IN ),
    .O(\u_rx_b/hold_d [4]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y7" ),
    .INIT ( 1'b0 ))
  \u_rx_b/shreg_7  (
    .CE(\u_rx_b/_n0171_inv ),
    .CLK(\NlwBufferSignal_u_rx_b/shreg_7/CLK ),
    .I(\NlwBufferSignal_u_rx_b/shreg_7/IN ),
    .O(\u_rx_b/shreg [7]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y7" ),
    .INIT ( 1'b0 ))
  \u_rx_b/shreg_6  (
    .CE(\u_rx_b/_n0171_inv ),
    .CLK(\NlwBufferSignal_u_rx_b/shreg_6/CLK ),
    .I(\NlwBufferSignal_u_rx_b/shreg_6/IN ),
    .O(\u_rx_b/shreg [6]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X4Y8" ))
  \u_rx_b/hold_v_rstpot  (
    .IA(N494),
    .IB(N495),
    .O(\u_rx_b/hold_v_rstpot_1815 ),
    .SEL(\u_rx_b/state_FSM_FFd1_7840 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y8" ),
    .INIT ( 64'h2200AA00AA00AA00 ))
  \u_rx_b/hold_v_rstpot_F  (
    .ADR2(1'b1),
    .ADR0(\u_rx_b/hold_v_7986 ),
    .ADR3(\u_rx_b/state_FSM_FFd2_7838 ),
    .ADR5(\u_rx_b/crs_r_7842 ),
    .ADR4(\u_rx_b/rxd_r [1]),
    .ADR1(\u_rx_b/rxd_r [0]),
    .O(N494)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y8" ),
    .INIT ( 1'b0 ))
  \u_rx_b/hold_v  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_rx_b/hold_v/CLK ),
    .I(\u_rx_b/hold_v_rstpot_1815 ),
    .O(\u_rx_b/hold_v_7986 ),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y8" ),
    .INIT ( 64'hFFFFEEEE30002000 ))
  \u_rx_b/hold_v_rstpot_G  (
    .ADR4(\u_rx_b/crs_r_7842 ),
    .ADR0(\u_rx_b/crs_prev_7841 ),
    .ADR1(\u_rx_b/state_FSM_FFd2_7838 ),
    .ADR5(\u_rx_b/hold_v_7986 ),
    .ADR3(\u_rx_b/dcnt [0]),
    .ADR2(\u_rx_b/dcnt [1]),
    .O(N495)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y9" ),
    .INIT ( 1'b0 ))
  \u_rx_b/hold_d_3  (
    .CE(\u_rx_b/_n0178_inv ),
    .CLK(\NlwBufferSignal_u_rx_b/hold_d_3/CLK ),
    .I(\NlwBufferSignal_u_rx_b/hold_d_3/IN ),
    .O(\u_rx_b/hold_d [3]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y9" ),
    .INIT ( 1'b0 ))
  \u_rx_b/hold_d_2  (
    .CE(\u_rx_b/_n0178_inv ),
    .CLK(\NlwBufferSignal_u_rx_b/hold_d_2/CLK ),
    .I(\NlwBufferSignal_u_rx_b/hold_d_2/IN ),
    .O(\u_rx_b/hold_d [2]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y9" ),
    .INIT ( 1'b0 ))
  \u_rx_b/hold_d_1  (
    .CE(\u_rx_b/_n0178_inv ),
    .CLK(\NlwBufferSignal_u_rx_b/hold_d_1/CLK ),
    .I(\NlwBufferSignal_u_rx_b/hold_d_1/IN ),
    .O(\u_rx_b/hold_d [1]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y9" ),
    .INIT ( 1'b0 ))
  \u_rx_b/hold_d_0  (
    .CE(\u_rx_b/_n0178_inv ),
    .CLK(\NlwBufferSignal_u_rx_b/hold_d_0/CLK ),
    .I(\NlwBufferSignal_u_rx_b/hold_d_0/IN ),
    .O(\u_rx_b/hold_d [0]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_BUF   \u_rx_b/_n0171_inv/u_rx_b/_n0171_inv_DMUX_Delay  (
    .I(\u_rx_b/m_tlast_1846 ),
    .O(\u_rx_b/m_tlast_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y10" ),
    .INIT ( 64'h00A800A800A800A8 ))
  \u_rx_b/_n0171_inv1  (
    .ADR4(1'b1),
    .ADR0(\u_rx_b/state_FSM_FFd1_7840 ),
    .ADR3(\u_rx_b/state_FSM_FFd2_7838 ),
    .ADR2(\u_rx_b/crs_prev_7841 ),
    .ADR1(\u_rx_b/crs_r_7842 ),
    .ADR5(1'b1),
    .O(\u_rx_b/_n0171_inv )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y10" ),
    .INIT ( 32'h00020000 ))
  \u_rx_b/Mmux_state[1]_GND_3_o_Mux_41_o11  (
    .ADR4(\u_rx_b/hold_v_7986 ),
    .ADR0(\u_rx_b/state_FSM_FFd1_7840 ),
    .ADR3(\u_rx_b/state_FSM_FFd2_7838 ),
    .ADR2(\u_rx_b/crs_prev_7841 ),
    .ADR1(\u_rx_b/crs_r_7842 ),
    .O(\u_rx_b/state[1]_GND_3_o_Mux_41_o )
  );
  X_FF #(
    .LOC ( "SLICE_X4Y10" ),
    .INIT ( 1'b0 ))
  \u_rx_b/m_tlast  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_rx_b/m_tlast/CLK ),
    .I(\u_rx_b/state[1]_GND_3_o_Mux_41_o ),
    .O(\u_rx_b/m_tlast_1846 ),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y18" ),
    .INIT ( 64'h0FF0F00F0FF0F00F ))
  \u_fifo_b2a/Mxor_rptr_w<4>_xo<0>1_SW2  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR3(\u_fifo_b2a/rg_s2 [2]),
    .ADR2(\u_fifo_b2a/rg_s2 [3]),
    .ADR4(\u_fifo_b2a/wptr [2]),
    .O(N135)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y22" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rg_s2_7  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rg_s2_7/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/rg_s2_7/IN ),
    .O(\u_fifo_b2a/rg_s2 [7]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y22" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rg_s2_6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rg_s2_6/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/rg_s2_6/IN ),
    .O(\u_fifo_b2a/rg_s2 [6]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y22" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rg_s2_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rg_s2_5/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/rg_s2_5/IN ),
    .O(\u_fifo_b2a/rg_s2 [5]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y22" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rg_s2_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rg_s2_4/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/rg_s2_4/IN ),
    .O(\u_fifo_b2a/rg_s2 [4]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y23" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rg_s1_7  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rg_s1_7/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/rg_s1_7/IN ),
    .O(\u_fifo_b2a/rg_s1 [7]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y23" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rg_s1_6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rg_s1_6/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/rg_s1_6/IN ),
    .O(\u_fifo_b2a/rg_s1 [6]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y23" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rg_s1_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rg_s1_5/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/rg_s1_5/IN ),
    .O(\u_fifo_b2a/rg_s1 [5]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y23" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rg_s1_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rg_s1_4/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/rg_s1_4/IN ),
    .O(\u_fifo_b2a/rg_s1 [4]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y25" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rg_s2_11  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rg_s2_11/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/rg_s2_11/IN ),
    .O(\u_fifo_b2a/rg_s2 [11]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y25" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rg_s2_10  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rg_s2_10/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/rg_s2_10/IN ),
    .O(\u_fifo_b2a/rg_s2 [10]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y25" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rg_s2_9  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rg_s2_9/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/rg_s2_9/IN ),
    .O(\u_fifo_b2a/rg_s2 [9]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y25" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rg_s2_8  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rg_s2_8/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/rg_s2_8/IN ),
    .O(\u_fifo_b2a/rg_s2 [8]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_BUF   \u_engine/win<21>/u_engine/win<21>_DMUX_Delay  (
    .I(\u_engine/win [22]),
    .O(\u_engine/win<22>_0 )
  );
  X_BUF   \u_engine/win<21>/u_engine/win<21>_CMUX_Delay  (
    .I(\u_engine/win [20]),
    .O(\u_engine/win<20>_0 )
  );
  X_BUF   \u_engine/win<21>/u_engine/win<21>_BMUX_Delay  (
    .I(\u_engine/win [27]),
    .O(\u_engine/win<27>_0 )
  );
  X_BUF   \u_engine/win<21>/u_engine/win<21>_AMUX_Delay  (
    .I(\u_engine/win [17]),
    .O(\u_engine/win<17>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X4Y28" ),
    .INIT ( 1'b0 ))
  \u_engine/win_21  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_21/CLK ),
    .I(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<21> ),
    .O(\u_engine/win [21]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y28" ),
    .INIT ( 64'h3300330033003300 ))
  \u_engine/Mmux_win_nxt[55]_GND_6_o_mux_51_OUT141  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(\u_engine/win<13>_0 ),
    .ADR1(\u_rx_a/m_tlast_0 ),
    .ADR5(1'b1),
    .O(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<21> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y28" ),
    .INIT ( 32'h30303030 ))
  \u_engine/Mmux_win_nxt[55]_GND_6_o_mux_51_OUT151  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(\u_engine/win [14]),
    .ADR3(1'b1),
    .ADR1(\u_rx_a/m_tlast_0 ),
    .O(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<22> )
  );
  X_FF #(
    .LOC ( "SLICE_X4Y28" ),
    .INIT ( 1'b0 ))
  \u_engine/win_22  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_22/CLK ),
    .I(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<22> ),
    .O(\u_engine/win [22]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y28" ),
    .INIT ( 1'b0 ))
  \u_engine/win_19  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_19/CLK ),
    .I(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<19> ),
    .O(\u_engine/win [19]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y28" ),
    .INIT ( 64'h0000AAAA0000AAAA ))
  \u_engine/Mmux_win_nxt[55]_GND_6_o_mux_51_OUT111  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR0(\u_engine/win<11>_0 ),
    .ADR4(\u_rx_a/m_tlast_0 ),
    .ADR5(1'b1),
    .O(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<19> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y28" ),
    .INIT ( 32'h0000CCCC ))
  \u_engine/Mmux_win_nxt[55]_GND_6_o_mux_51_OUT131  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR1(\u_engine/win [12]),
    .ADR3(1'b1),
    .ADR4(\u_rx_a/m_tlast_0 ),
    .O(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<20> )
  );
  X_FF #(
    .LOC ( "SLICE_X4Y28" ),
    .INIT ( 1'b0 ))
  \u_engine/win_20  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_20/CLK ),
    .I(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<20> ),
    .O(\u_engine/win [20]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y28" ),
    .INIT ( 1'b0 ))
  \u_engine/win_18  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_18/CLK ),
    .I(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<18> ),
    .O(\u_engine/win [18]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y28" ),
    .INIT ( 64'h00CC00CC00CC00CC ))
  \u_engine/Mmux_win_nxt[55]_GND_6_o_mux_51_OUT101  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR1(\u_engine/win [10]),
    .ADR3(\u_rx_a/m_tlast_0 ),
    .ADR5(1'b1),
    .O(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<18> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y28" ),
    .INIT ( 32'h00AA00AA ))
  \u_engine/Mmux_win_nxt[55]_GND_6_o_mux_51_OUT201  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR0(\u_engine/win [19]),
    .ADR4(1'b1),
    .ADR3(\u_rx_a/m_tlast_0 ),
    .O(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<27> )
  );
  X_FF #(
    .LOC ( "SLICE_X4Y28" ),
    .INIT ( 1'b0 ))
  \u_engine/win_27  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_27/CLK ),
    .I(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<27> ),
    .O(\u_engine/win [27]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y28" ),
    .INIT ( 1'b0 ))
  \u_engine/win_16  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_16/CLK ),
    .I(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<16> ),
    .O(\u_engine/win [16]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y28" ),
    .INIT ( 64'h00F000F000F000F0 ))
  \u_engine/Mmux_win_nxt[55]_GND_6_o_mux_51_OUT81  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR2(\u_engine/win [8]),
    .ADR3(\u_rx_a/m_tlast_0 ),
    .ADR5(1'b1),
    .O(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<16> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y28" ),
    .INIT ( 32'h00AA00AA ))
  \u_engine/Mmux_win_nxt[55]_GND_6_o_mux_51_OUT91  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR0(\u_engine/win<9>_0 ),
    .ADR4(1'b1),
    .ADR3(\u_rx_a/m_tlast_0 ),
    .O(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<17> )
  );
  X_FF #(
    .LOC ( "SLICE_X4Y28" ),
    .INIT ( 1'b0 ))
  \u_engine/win_17  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_17/CLK ),
    .I(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<17> ),
    .O(\u_engine/win [17]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_BUF   \u_rx_b/state_FSM_FFd2/u_rx_b/state_FSM_FFd2_BMUX_Delay  (
    .I(\u_rx_b/_n0167_inv ),
    .O(\u_rx_b/_n0167_inv_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y6" ),
    .INIT ( 1'b0 ))
  \u_rx_b/state_FSM_FFd2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_rx_b/state_FSM_FFd2/CLK ),
    .I(\u_rx_b/state_FSM_FFd2-In ),
    .O(\u_rx_b/state_FSM_FFd2_7838 ),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y6" ),
    .INIT ( 64'h3000100030001000 ))
  \u_rx_b/state_FSM_FFd2-In1  (
    .ADR2(\u_rx_b/crs_r_7842 ),
    .ADR3(\u_rx_b/rxd_r [0]),
    .ADR1(\u_rx_b/rxd_r [1]),
    .ADR4(\u_rx_b/state_FSM_FFd2_7838 ),
    .ADR0(\u_rx_b/state_FSM_FFd1_7840 ),
    .ADR5(1'b1),
    .O(\u_rx_b/state_FSM_FFd2-In )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y6" ),
    .INIT ( 32'h4000FFFF ))
  \u_rx_b/_n0167_inv1  (
    .ADR2(\u_rx_b/crs_r_7842 ),
    .ADR3(\u_rx_b/rxd_r [0]),
    .ADR1(\u_rx_b/rxd_r [1]),
    .ADR4(\u_rx_b/state_FSM_FFd2_7838 ),
    .ADR0(\u_rx_b/state_FSM_FFd1_7840 ),
    .O(\u_rx_b/_n0167_inv )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y6" ),
    .INIT ( 1'b0 ))
  \u_rx_b/state_FSM_FFd1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_rx_b/state_FSM_FFd1/CLK ),
    .I(\u_rx_b/state_FSM_FFd1-In ),
    .O(\u_rx_b/state_FSM_FFd1_7840 ),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y6" ),
    .INIT ( 64'hFFFFFF0080008000 ))
  \u_rx_b/state_FSM_FFd1-In1  (
    .ADR3(\u_rx_b/crs_r_7842 ),
    .ADR4(\u_rx_b/crs_prev_7841 ),
    .ADR0(\u_rx_b/state_FSM_FFd2_7838 ),
    .ADR5(\u_rx_b/state_FSM_FFd1_7840 ),
    .ADR2(\u_rx_b/rxd_r [1]),
    .ADR1(\u_rx_b/rxd_r [0]),
    .O(\u_rx_b/state_FSM_FFd1-In )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y7" ),
    .INIT ( 1'b0 ))
  \u_rx_b/crs_prev  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_rx_b/crs_prev/CLK ),
    .I(\NlwBufferSignal_u_rx_b/crs_prev/IN ),
    .O(\u_rx_b/crs_prev_7841 ),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y7" ),
    .INIT ( 64'h0000808000008000 ))
  \u_rx_b/_n0178_inv1  (
    .ADR0(\u_rx_b/dcnt [1]),
    .ADR4(\u_rx_b/state_FSM_FFd2_7838 ),
    .ADR2(\u_rx_b/dcnt [0]),
    .ADR5(\u_rx_b/crs_prev_7841 ),
    .ADR1(\u_rx_b/state_FSM_FFd1_7840 ),
    .ADR3(\u_rx_b/crs_r_7842 ),
    .O(\u_rx_b/_n0178_inv )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y8" ),
    .INIT ( 1'b0 ))
  \u_rx_b/m_tvalid  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_rx_b/m_tvalid/CLK ),
    .I(\u_rx_b/state[1]_GND_3_o_Mux_40_o ),
    .O(\u_rx_b/m_tvalid_7995 ),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y8" ),
    .INIT ( 64'h3300200000000000 ))
  \u_rx_b/state[1]_GND_3_o_Mux_40_o1  (
    .ADR3(\u_rx_b/hold_v_7986 ),
    .ADR1(\u_rx_b/state_FSM_FFd2_7838 ),
    .ADR5(\u_rx_b/state_FSM_FFd1_7840 ),
    .ADR0(\u_rx_b/dcnt [0]),
    .ADR2(\u_rx_b/dcnt [1]),
    .ADR4(\u_rx_b/crs_r_crs_prev_AND_2_o ),
    .O(\u_rx_b/state[1]_GND_3_o_Mux_40_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y8" ),
    .INIT ( 64'h000000000F0F0F0F ))
  \u_rx_b/crs_r_crs_prev_AND_2_o1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR5(\u_rx_b/crs_r_7842 ),
    .ADR2(\u_rx_b/crs_prev_7841 ),
    .O(\u_rx_b/crs_r_crs_prev_AND_2_o )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y9" ),
    .INIT ( 1'b0 ))
  \u_rx_b/shreg_5  (
    .CE(\u_rx_b/_n0171_inv ),
    .CLK(\NlwBufferSignal_u_rx_b/shreg_5/CLK ),
    .I(\NlwBufferSignal_u_rx_b/shreg_5/IN ),
    .O(\u_rx_b/shreg [5]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X5Y9" ),
    .INIT ( 1'b0 ))
  \u_rx_b/shreg_4  (
    .CE(\u_rx_b/_n0171_inv ),
    .CLK(\NlwBufferSignal_u_rx_b/shreg_4/CLK ),
    .I(\NlwBufferSignal_u_rx_b/shreg_4/IN ),
    .O(\u_rx_b/shreg [4]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X5Y9" ),
    .INIT ( 1'b0 ))
  \u_rx_b/shreg_3  (
    .CE(\u_rx_b/_n0171_inv ),
    .CLK(\NlwBufferSignal_u_rx_b/shreg_3/CLK ),
    .I(\NlwBufferSignal_u_rx_b/shreg_3/IN ),
    .O(\u_rx_b/shreg [3]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X5Y9" ),
    .INIT ( 1'b0 ))
  \u_rx_b/shreg_2  (
    .CE(\u_rx_b/_n0171_inv ),
    .CLK(\NlwBufferSignal_u_rx_b/shreg_2/CLK ),
    .I(\NlwBufferSignal_u_rx_b/shreg_2/IN ),
    .O(\u_rx_b/shreg [2]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y18" ),
    .INIT ( 64'h00FF00FFFF00FF00 ))
  \u_fifo_b2a/Mxor_rptr_w<4>_xo<0>1_SW3  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\u_fifo_b2a/wptr [3]),
    .ADR5(\u_fifo_b2a/rg_s2 [3]),
    .O(N137)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y19" ),
    .INIT ( 64'h6996966969969669 ))
  \u_fifo_b2a/Mxor_rptr_w<4>_xo<0>1_SW0  (
    .ADR5(1'b1),
    .ADR3(\u_fifo_b2a/rg_s2 [0]),
    .ADR0(\u_fifo_b2a/rg_s2 [1]),
    .ADR1(\u_fifo_b2a/rg_s2 [2]),
    .ADR4(\u_fifo_b2a/rg_s2 [3]),
    .ADR2(\u_fifo_b2a/rg_s2 [4]),
    .O(N131)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y20" ),
    .INIT ( 64'h6996966996696996 ))
  \u_fifo_b2a/Mxor_rptr_w<6>_xo<0>1  (
    .ADR3(\u_fifo_b2a/rg_s2 [8]),
    .ADR4(\u_fifo_b2a/rg_s2 [9]),
    .ADR0(\u_fifo_b2a/rg_s2 [10]),
    .ADR1(\u_fifo_b2a/rg_s2 [6]),
    .ADR2(\u_fifo_b2a/rg_s2 [11]),
    .ADR5(\u_fifo_b2a/rg_s2 [7]),
    .O(\u_fifo_b2a/rptr_w[6] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y20" ),
    .INIT ( 64'h5AA5A55A5AA5A55A ))
  \u_fifo_b2a/Mxor_rptr_w<8>_xo<0>1  (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR0(\u_fifo_b2a/rg_s2 [8]),
    .ADR2(\u_fifo_b2a/rg_s2 [9]),
    .ADR3(\u_fifo_b2a/rg_s2 [10]),
    .ADR4(\u_fifo_b2a/rg_s2 [11]),
    .O(\u_fifo_b2a/rptr_w[8] )
  );
  X_BUF   \u_engine/win<37>/u_engine/win<37>_DMUX_Delay  (
    .I(\u_engine/win [38]),
    .O(\u_engine/win<38>_0 )
  );
  X_BUF   \u_engine/win<37>/u_engine/win<37>_CMUX_Delay  (
    .I(\u_engine/win [45]),
    .O(\u_engine/win<45>_0 )
  );
  X_BUF   \u_engine/win<37>/u_engine/win<37>_BMUX_Delay  (
    .I(\u_engine/win [35]),
    .O(\u_engine/win<35>_0 )
  );
  X_BUF   \u_engine/win<37>/u_engine/win<37>_AMUX_Delay  (
    .I(\u_engine/win [33]),
    .O(\u_engine/win<33>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y29" ),
    .INIT ( 1'b0 ))
  \u_engine/win_37  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_37/CLK ),
    .I(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<37> ),
    .O(\u_engine/win [37]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y29" ),
    .INIT ( 64'h00CC00CC00CC00CC ))
  \u_engine/Mmux_win_nxt[55]_GND_6_o_mux_51_OUT311  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR1(\u_engine/win<29>_0 ),
    .ADR3(\u_rx_a/m_tlast_0 ),
    .ADR5(1'b1),
    .O(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<37> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y29" ),
    .INIT ( 32'h00F000F0 ))
  \u_engine/Mmux_win_nxt[55]_GND_6_o_mux_51_OUT321  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\u_engine/win [30]),
    .ADR4(1'b1),
    .ADR3(\u_rx_a/m_tlast_0 ),
    .O(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<38> )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y29" ),
    .INIT ( 1'b0 ))
  \u_engine/win_38  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_38/CLK ),
    .I(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<38> ),
    .O(\u_engine/win [38]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X5Y29" ),
    .INIT ( 1'b0 ))
  \u_engine/win_36  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_36/CLK ),
    .I(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<36> ),
    .O(\u_engine/win [36]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y29" ),
    .INIT ( 64'h0000FF000000FF00 ))
  \u_engine/Mmux_win_nxt[55]_GND_6_o_mux_51_OUT301  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\u_engine/win [28]),
    .ADR4(\u_rx_a/m_tlast_0 ),
    .ADR5(1'b1),
    .O(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<36> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y29" ),
    .INIT ( 32'h0000AAAA ))
  \u_engine/Mmux_win_nxt[55]_GND_6_o_mux_51_OUT401  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR0(\u_engine/win [37]),
    .ADR3(1'b1),
    .ADR4(\u_rx_a/m_tlast_0 ),
    .O(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<45> )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y29" ),
    .INIT ( 1'b0 ))
  \u_engine/win_45  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_45/CLK ),
    .I(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<45> ),
    .O(\u_engine/win [45]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X5Y29" ),
    .INIT ( 1'b0 ))
  \u_engine/win_34  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_34/CLK ),
    .I(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<34> ),
    .O(\u_engine/win [34]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y29" ),
    .INIT ( 64'h0000FF000000FF00 ))
  \u_engine/Mmux_win_nxt[55]_GND_6_o_mux_51_OUT281  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\u_engine/win<26>_0 ),
    .ADR4(\u_rx_a/m_tlast_0 ),
    .ADR5(1'b1),
    .O(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<34> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y29" ),
    .INIT ( 32'h0000F0F0 ))
  \u_engine/Mmux_win_nxt[55]_GND_6_o_mux_51_OUT291  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\u_engine/win<27>_0 ),
    .ADR3(1'b1),
    .ADR4(\u_rx_a/m_tlast_0 ),
    .O(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<35> )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y29" ),
    .INIT ( 1'b0 ))
  \u_engine/win_35  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_35/CLK ),
    .I(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<35> ),
    .O(\u_engine/win [35]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X5Y29" ),
    .INIT ( 1'b0 ))
  \u_engine/win_32  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_32/CLK ),
    .I(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<32> ),
    .O(\u_engine/win [32]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y29" ),
    .INIT ( 64'h0000FF000000FF00 ))
  \u_engine/Mmux_win_nxt[55]_GND_6_o_mux_51_OUT261  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\u_engine/win<24>_0 ),
    .ADR4(\u_rx_a/m_tlast_0 ),
    .ADR5(1'b1),
    .O(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<32> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y29" ),
    .INIT ( 32'h0000CCCC ))
  \u_engine/Mmux_win_nxt[55]_GND_6_o_mux_51_OUT271  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR1(\u_engine/win [25]),
    .ADR3(1'b1),
    .ADR4(\u_rx_a/m_tlast_0 ),
    .O(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<33> )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y29" ),
    .INIT ( 1'b0 ))
  \u_engine/win_33  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_33/CLK ),
    .I(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<33> ),
    .O(\u_engine/win [33]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X5Y42" ),
    .INIT ( 1'b0 ))
  \u_uart/hb_cnt_6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/hb_cnt_6/CLK ),
    .I(\u_uart/Mcount_hb_cnt_eqn_6 ),
    .O(\u_uart/hb_cnt [6]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y42" ),
    .INIT ( 64'h4CCCCCCCCCCCCCCC ))
  \u_uart/Mcount_hb_cnt_eqn_61  (
    .ADR1(\u_uart/Result<6>_0 ),
    .ADR4(\u_uart/hb_pend_PWR_8_o_MUX_9428_o_2 [27]),
    .ADR0(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>1_8310 ),
    .ADR2(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>2_8311 ),
    .ADR3(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>3_8312 ),
    .ADR5(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>4_8313 ),
    .O(\u_uart/Mcount_hb_cnt_eqn_6 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y42" ),
    .INIT ( 1'b0 ))
  \u_uart/hb_cnt_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/hb_cnt_5/CLK ),
    .I(\u_uart/Mcount_hb_cnt_eqn_5 ),
    .O(\u_uart/hb_cnt [5]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y42" ),
    .INIT ( 64'h2AAAAAAAAAAAAAAA ))
  \u_uart/Mcount_hb_cnt_eqn_51  (
    .ADR0(\u_uart/Result<5>_0 ),
    .ADR5(\u_uart/hb_pend_PWR_8_o_MUX_9428_o_2 [27]),
    .ADR2(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>1_8310 ),
    .ADR3(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>2_8311 ),
    .ADR4(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>3_8312 ),
    .ADR1(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>4_8313 ),
    .O(\u_uart/Mcount_hb_cnt_eqn_5 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y42" ),
    .INIT ( 1'b0 ))
  \u_uart/hb_cnt_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/hb_cnt_4/CLK ),
    .I(\u_uart/Mcount_hb_cnt_eqn_4 ),
    .O(\u_uart/hb_cnt [4]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y42" ),
    .INIT ( 64'h2AAAAAAAAAAAAAAA ))
  \u_uart/Mcount_hb_cnt_eqn_41  (
    .ADR0(\u_uart/Result<4>_0 ),
    .ADR1(\u_uart/hb_pend_PWR_8_o_MUX_9428_o_2 [27]),
    .ADR3(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>1_8310 ),
    .ADR5(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>2_8311 ),
    .ADR4(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>3_8312 ),
    .ADR2(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>4_8313 ),
    .O(\u_uart/Mcount_hb_cnt_eqn_4 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y42" ),
    .INIT ( 1'b0 ))
  \u_uart/hb_cnt_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/hb_cnt_3/CLK ),
    .I(\u_uart/Mcount_hb_cnt_eqn_3 ),
    .O(\u_uart/hb_cnt [3]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y42" ),
    .INIT ( 64'h7FFFFFFF00000000 ))
  \u_uart/Mcount_hb_cnt_eqn_31  (
    .ADR5(\u_uart/Result<3>_0 ),
    .ADR2(\u_uart/hb_pend_PWR_8_o_MUX_9428_o_2 [27]),
    .ADR3(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>1_8310 ),
    .ADR4(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>2_8311 ),
    .ADR0(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>3_8312 ),
    .ADR1(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>4_8313 ),
    .O(\u_uart/Mcount_hb_cnt_eqn_3 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y43" ),
    .INIT ( 64'h0000010000000000 ))
  \u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>4  (
    .ADR2(\u_uart/hb_cnt [9]),
    .ADR4(\u_uart/hb_cnt [10]),
    .ADR3(\u_uart/hb_cnt [1]),
    .ADR5(\u_uart/hb_cnt [0]),
    .ADR0(\u_uart/hb_cnt [11]),
    .ADR1(\u_uart/hb_cnt [12]),
    .O(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>3_8312 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y44" ),
    .INIT ( 1'b0 ))
  \u_uart/hb_cnt_14  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/hb_cnt_14/CLK ),
    .I(\u_uart/Mcount_hb_cnt_eqn_14 ),
    .O(\u_uart/hb_cnt [14]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y44" ),
    .INIT ( 64'h4CCCCCCCCCCCCCCC ))
  \u_uart/Mcount_hb_cnt_eqn_141  (
    .ADR1(\u_uart/Result<14>_0 ),
    .ADR4(\u_uart/hb_pend_PWR_8_o_MUX_9428_o_2 [27]),
    .ADR5(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>1_8310 ),
    .ADR3(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>2_8311 ),
    .ADR2(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>3_8312 ),
    .ADR0(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>4_8313 ),
    .O(\u_uart/Mcount_hb_cnt_eqn_14 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y44" ),
    .INIT ( 1'b0 ))
  \u_uart/hb_cnt_13  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/hb_cnt_13/CLK ),
    .I(\u_uart/Mcount_hb_cnt_eqn_13 ),
    .O(\u_uart/hb_cnt [13]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y44" ),
    .INIT ( 64'h2AAAAAAAAAAAAAAA ))
  \u_uart/Mcount_hb_cnt_eqn_131  (
    .ADR0(\u_uart/Result<13>_0 ),
    .ADR5(\u_uart/hb_pend_PWR_8_o_MUX_9428_o_2 [27]),
    .ADR4(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>1_8310 ),
    .ADR3(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>2_8311 ),
    .ADR2(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>3_8312 ),
    .ADR1(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>4_8313 ),
    .O(\u_uart/Mcount_hb_cnt_eqn_13 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y44" ),
    .INIT ( 1'b0 ))
  \u_uart/hb_cnt_12  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/hb_cnt_12/CLK ),
    .I(\u_uart/Mcount_hb_cnt_eqn_12 ),
    .O(\u_uart/hb_cnt [12]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y44" ),
    .INIT ( 64'h2AAAAAAAAAAAAAAA ))
  \u_uart/Mcount_hb_cnt_eqn_121  (
    .ADR0(\u_uart/Result<12>_0 ),
    .ADR1(\u_uart/hb_pend_PWR_8_o_MUX_9428_o_2 [27]),
    .ADR3(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>1_8310 ),
    .ADR5(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>2_8311 ),
    .ADR2(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>3_8312 ),
    .ADR4(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>4_8313 ),
    .O(\u_uart/Mcount_hb_cnt_eqn_12 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y44" ),
    .INIT ( 1'b0 ))
  \u_uart/hb_cnt_11  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/hb_cnt_11/CLK ),
    .I(\u_uart/Mcount_hb_cnt_eqn_11 ),
    .O(\u_uart/hb_cnt [11]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y44" ),
    .INIT ( 64'h2AAAAAAAAAAAAAAA ))
  \u_uart/Mcount_hb_cnt_eqn_111  (
    .ADR0(\u_uart/Result<11>_0 ),
    .ADR2(\u_uart/hb_pend_PWR_8_o_MUX_9428_o_2 [27]),
    .ADR3(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>1_8310 ),
    .ADR4(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>2_8311 ),
    .ADR5(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>3_8312 ),
    .ADR1(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>4_8313 ),
    .O(\u_uart/Mcount_hb_cnt_eqn_11 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y45" ),
    .INIT ( 64'h8000000000000000 ))
  \u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>3  (
    .ADR2(\u_uart/hb_cnt [3]),
    .ADR4(\u_uart/hb_cnt [2]),
    .ADR0(\u_uart/hb_cnt [5]),
    .ADR1(\u_uart/hb_cnt [4]),
    .ADR5(\u_uart/hb_cnt [7]),
    .ADR3(\u_uart/hb_cnt [6]),
    .O(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>2_8311 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y45" ),
    .INIT ( 64'h8000000000000000 ))
  \u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>2  (
    .ADR0(\u_uart/hb_cnt [14]),
    .ADR2(\u_uart/hb_cnt [8]),
    .ADR4(\u_uart/hb_cnt [16]),
    .ADR3(\u_uart/hb_cnt [15]),
    .ADR1(\u_uart/hb_cnt [19]),
    .ADR5(\u_uart/hb_cnt [17]),
    .O(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>1_8310 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y45" ),
    .INIT ( 64'h8000000000000000 ))
  \u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>1  (
    .ADR1(\u_uart/hb_cnt [22]),
    .ADR2(\u_uart/hb_cnt [21]),
    .ADR4(\u_uart/hb_cnt [24]),
    .ADR5(\u_uart/hb_cnt [23]),
    .ADR0(\u_uart/hb_cnt [27]),
    .ADR3(\u_uart/hb_cnt [25]),
    .O(\u_uart/hb_pend_PWR_8_o_MUX_9428_o_2 [27])
  );
  X_FF #(
    .LOC ( "SLICE_X5Y45" ),
    .INIT ( 1'b0 ))
  \u_uart/hb_cnt_27  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/hb_cnt_27/CLK ),
    .I(\u_uart/Mcount_hb_cnt_eqn_27 ),
    .O(\u_uart/hb_cnt [27]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y45" ),
    .INIT ( 64'h7F00FF00FF00FF00 ))
  \u_uart/Mcount_hb_cnt_eqn_271  (
    .ADR3(\u_uart/Result<27>_0 ),
    .ADR4(\u_uart/hb_pend_PWR_8_o_MUX_9428_o_2 [27]),
    .ADR1(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>1_8310 ),
    .ADR2(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>2_8311 ),
    .ADR5(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>3_8312 ),
    .ADR0(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>4_8313 ),
    .O(\u_uart/Mcount_hb_cnt_eqn_27 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y46" ),
    .INIT ( 1'b0 ))
  \u_uart/hb_cnt_22  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/hb_cnt_22/CLK ),
    .I(\u_uart/Mcount_hb_cnt_eqn_22 ),
    .O(\u_uart/hb_cnt [22]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y46" ),
    .INIT ( 64'h7F00FF00FF00FF00 ))
  \u_uart/Mcount_hb_cnt_eqn_221  (
    .ADR3(\u_uart/Result<22>_0 ),
    .ADR4(\u_uart/hb_pend_PWR_8_o_MUX_9428_o_2 [27]),
    .ADR0(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>1_8310 ),
    .ADR5(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>2_8311 ),
    .ADR2(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>3_8312 ),
    .ADR1(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>4_8313 ),
    .O(\u_uart/Mcount_hb_cnt_eqn_22 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y46" ),
    .INIT ( 1'b0 ))
  \u_uart/hb_cnt_21  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/hb_cnt_21/CLK ),
    .I(\u_uart/Mcount_hb_cnt_eqn_21 ),
    .O(\u_uart/hb_cnt [21]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y46" ),
    .INIT ( 64'h2AAAAAAAAAAAAAAA ))
  \u_uart/Mcount_hb_cnt_eqn_211  (
    .ADR0(\u_uart/Result<21>_0 ),
    .ADR4(\u_uart/hb_pend_PWR_8_o_MUX_9428_o_2 [27]),
    .ADR3(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>1_8310 ),
    .ADR5(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>2_8311 ),
    .ADR2(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>3_8312 ),
    .ADR1(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>4_8313 ),
    .O(\u_uart/Mcount_hb_cnt_eqn_21 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y46" ),
    .INIT ( 1'b0 ))
  \u_uart/hb_cnt_20  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/hb_cnt_20/CLK ),
    .I(\u_uart/Mcount_hb_cnt_eqn_20 ),
    .O(\u_uart/hb_cnt [20]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y46" ),
    .INIT ( 64'h4CCCCCCCCCCCCCCC ))
  \u_uart/Mcount_hb_cnt_eqn_201  (
    .ADR1(\u_uart/Result<20>_0 ),
    .ADR4(\u_uart/hb_pend_PWR_8_o_MUX_9428_o_2 [27]),
    .ADR3(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>1_8310 ),
    .ADR2(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>2_8311 ),
    .ADR5(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>3_8312 ),
    .ADR0(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>4_8313 ),
    .O(\u_uart/Mcount_hb_cnt_eqn_20 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y46" ),
    .INIT ( 1'b0 ))
  \u_uart/hb_cnt_19  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/hb_cnt_19/CLK ),
    .I(\u_uart/Mcount_hb_cnt_eqn_19 ),
    .O(\u_uart/hb_cnt [19]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y46" ),
    .INIT ( 64'h2AAAAAAAAAAAAAAA ))
  \u_uart/Mcount_hb_cnt_eqn_191  (
    .ADR0(\u_uart/Result<19>_0 ),
    .ADR1(\u_uart/hb_pend_PWR_8_o_MUX_9428_o_2 [27]),
    .ADR3(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>1_8310 ),
    .ADR2(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>2_8311 ),
    .ADR5(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>3_8312 ),
    .ADR4(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>4_8313 ),
    .O(\u_uart/Mcount_hb_cnt_eqn_19 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y47" ),
    .INIT ( 1'b0 ))
  \u_uart/hb_cnt_26  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/hb_cnt_26/CLK ),
    .I(\u_uart/Mcount_hb_cnt_eqn_26 ),
    .O(\u_uart/hb_cnt [26]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y47" ),
    .INIT ( 64'h4CCCCCCCCCCCCCCC ))
  \u_uart/Mcount_hb_cnt_eqn_261  (
    .ADR1(\u_uart/Result<26>_0 ),
    .ADR3(\u_uart/hb_pend_PWR_8_o_MUX_9428_o_2 [27]),
    .ADR0(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>1_8310 ),
    .ADR5(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>2_8311 ),
    .ADR2(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>3_8312 ),
    .ADR4(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>4_8313 ),
    .O(\u_uart/Mcount_hb_cnt_eqn_26 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y47" ),
    .INIT ( 1'b0 ))
  \u_uart/hb_cnt_25  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/hb_cnt_25/CLK ),
    .I(\u_uart/Mcount_hb_cnt_eqn_25 ),
    .O(\u_uart/hb_cnt [25]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y47" ),
    .INIT ( 64'h2AAAAAAAAAAAAAAA ))
  \u_uart/Mcount_hb_cnt_eqn_251  (
    .ADR0(\u_uart/Result<25>_0 ),
    .ADR3(\u_uart/hb_pend_PWR_8_o_MUX_9428_o_2 [27]),
    .ADR4(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>1_8310 ),
    .ADR5(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>2_8311 ),
    .ADR2(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>3_8312 ),
    .ADR1(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>4_8313 ),
    .O(\u_uart/Mcount_hb_cnt_eqn_25 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y47" ),
    .INIT ( 1'b0 ))
  \u_uart/hb_cnt_24  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/hb_cnt_24/CLK ),
    .I(\u_uart/Mcount_hb_cnt_eqn_24 ),
    .O(\u_uart/hb_cnt [24]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y47" ),
    .INIT ( 64'h4CCCCCCCCCCCCCCC ))
  \u_uart/Mcount_hb_cnt_eqn_241  (
    .ADR1(\u_uart/Result<24>_0 ),
    .ADR2(\u_uart/hb_pend_PWR_8_o_MUX_9428_o_2 [27]),
    .ADR4(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>1_8310 ),
    .ADR3(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>2_8311 ),
    .ADR0(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>3_8312 ),
    .ADR5(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>4_8313 ),
    .O(\u_uart/Mcount_hb_cnt_eqn_24 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y47" ),
    .INIT ( 1'b0 ))
  \u_uart/hb_cnt_23  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/hb_cnt_23/CLK ),
    .I(\u_uart/Mcount_hb_cnt_eqn_23 ),
    .O(\u_uart/hb_cnt [23]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y47" ),
    .INIT ( 64'h2AAAAAAAAAAAAAAA ))
  \u_uart/Mcount_hb_cnt_eqn_231  (
    .ADR0(\u_uart/Result<23>_0 ),
    .ADR4(\u_uart/hb_pend_PWR_8_o_MUX_9428_o_2 [27]),
    .ADR3(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>1_8310 ),
    .ADR2(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>2_8311 ),
    .ADR5(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>3_8312 ),
    .ADR1(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>4_8313 ),
    .O(\u_uart/Mcount_hb_cnt_eqn_23 )
  );
  X_BUF   \u_tx_b/state_FSM_FFd2/u_tx_b/state_FSM_FFd2_DMUX_Delay  (
    .I(N263_pack_10),
    .O(N263)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y4" ),
    .INIT ( 64'hDDDDEEEEDDDDEEEE ))
  \u_fifo_a2b/rd_empty125_SW3  (
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR1(\u_tx_b/state_FSM_FFd2_7387 ),
    .ADR0(\u_fifo_a2b/rptr [0]),
    .ADR4(\u_fifo_a2b/cptr_r[0] ),
    .ADR5(1'b1),
    .O(N261)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y4" ),
    .INIT ( 32'hAAAA5555 ))
  \u_fifo_a2b/rd_empty125_SW4  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR0(\u_fifo_a2b/rptr [0]),
    .ADR4(\u_fifo_a2b/cptr_r[0] ),
    .O(N263_pack_10)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y4" ),
    .INIT ( 1'b0 ))
  \u_tx_b/state_FSM_FFd2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_tx_b/state_FSM_FFd2/CLK ),
    .I(\u_tx_b/state_FSM_FFd2-In ),
    .O(\u_tx_b/state_FSM_FFd2_7387 ),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y4" ),
    .INIT ( 64'hDDDDDDDD8DDDDDDD ))
  \u_tx_b/state_FSM_FFd2-In1  (
    .ADR0(\u_tx_b/state_FSM_FFd1_7386 ),
    .ADR1(N260),
    .ADR2(\u_fifo_a2b/rd_empty121_7283 ),
    .ADR3(\u_fifo_a2b/rd_empty12 ),
    .ADR4(\u_fifo_a2b/rd_empty124_7285 ),
    .ADR5(N261),
    .O(\u_tx_b/state_FSM_FFd2-In )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y4" ),
    .INIT ( 64'hF0F0F7FFF0F0FFFF ))
  \u_tx_b/state[1]_GND_5_o_Mux_24_o1  (
    .ADR4(\u_tx_b/state_FSM_FFd1_7386 ),
    .ADR2(\u_tx_b/state_FSM_FFd2_7387 ),
    .ADR1(\u_fifo_a2b/rd_empty121_7283 ),
    .ADR3(\u_fifo_a2b/rd_empty12 ),
    .ADR5(\u_fifo_a2b/rd_empty124_7285 ),
    .ADR0(N263),
    .O(\u_tx_b/state[1]_GND_5_o_Mux_24_o )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y4" ),
    .INIT ( 1'b0 ))
  \u_tx_b/state_FSM_FFd1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_tx_b/state_FSM_FFd1/CLK ),
    .I(\u_tx_b/state_FSM_FFd1-In ),
    .O(\u_tx_b/state_FSM_FFd1_7386 ),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y4" ),
    .INIT ( 64'hFFDDFFFFF000F000 ))
  \u_tx_b/state_FSM_FFd1-In1  (
    .ADR4(\u_tx_b/Madd_pcnt[5]_GND_5_o_add_21_OUT_cy<3> ),
    .ADR1(\u_tx_b/pcnt [4]),
    .ADR3(\u_tx_b/state_FSM_FFd2_7387 ),
    .ADR5(\u_tx_b/state_FSM_FFd1_7386 ),
    .ADR0(\u_tx_b/pcnt [5]),
    .ADR2(\u_tx_b/pcnt[5]_GND_5_o_equal_7_o ),
    .O(\u_tx_b/state_FSM_FFd1-In )
  );
  X_BUF   \u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT12/u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT12_DMUX_Delay  (
    .I(N267),
    .O(N267_0)
  );
  X_BUF   \u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT12/u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT12_CMUX_Delay  (
    .I(\u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT11 ),
    .O(\u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT11_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y5" ),
    .INIT ( 64'hFFFF8F83FFFF8F83 ))
  \u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT12  (
    .ADR2(\u_tx_b/state_FSM_FFd1_7386 ),
    .ADR1(\u_tx_b/state_FSM_FFd2_7387 ),
    .ADR0(\u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT1 ),
    .ADR3(\u_tx_b/pcnt[5]_GND_5_o_equal_7_o ),
    .ADR4(\u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT132 ),
    .ADR5(1'b1),
    .O(\u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT12_7979 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y5" ),
    .INIT ( 32'hFCFCFCFC ))
  \u_fifo_a2b/rd_empty125_SW6  (
    .ADR2(\u_tx_b/state_FSM_FFd1_7386 ),
    .ADR1(\u_tx_b/state_FSM_FFd2_7387 ),
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(N267)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y5" ),
    .INIT ( 64'h0300000003000000 ))
  \u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT1321  (
    .ADR0(1'b1),
    .ADR1(\u_tx_b/pcnt [4]),
    .ADR4(\u_tx_b/pcnt [5]),
    .ADR2(\u_tx_b/state_FSM_FFd2_7387 ),
    .ADR3(\u_tx_b/Madd_pcnt[5]_GND_5_o_add_21_OUT_cy<3> ),
    .ADR5(1'b1),
    .O(\u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT132 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y5" ),
    .INIT ( 32'h585A1A5A ))
  \u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT111  (
    .ADR0(\u_tx_b/state_FSM_FFd1_7386 ),
    .ADR1(\u_tx_b/pcnt [4]),
    .ADR4(\u_tx_b/pcnt [5]),
    .ADR2(\u_tx_b/state_FSM_FFd2_7387 ),
    .ADR3(\u_tx_b/Madd_pcnt[5]_GND_5_o_add_21_OUT_cy<3> ),
    .O(\u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT11 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y5" ),
    .INIT ( 64'hA0A0000000000000 ))
  \u_tx_b/Madd_pcnt[5]_GND_5_o_add_21_OUT_cy<3>11  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR0(\u_tx_b/pcnt [3]),
    .ADR5(\u_tx_b/pcnt [2]),
    .ADR2(\u_tx_b/pcnt [1]),
    .ADR4(\u_tx_b/pcnt [0]),
    .O(\u_tx_b/Madd_pcnt[5]_GND_5_o_add_21_OUT_cy<3> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y5" ),
    .INIT ( 64'hEEEEAAAAF3C0F3C0 ))
  \u_fifo_a2b/rd_empty125_SW1  (
    .ADR5(\u_tx_b/state_FSM_FFd1_7386 ),
    .ADR1(\u_tx_b/state_FSM_FFd2_7387 ),
    .ADR4(\u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT1 ),
    .ADR2(\u_tx_b/pcnt[5]_GND_5_o_equal_7_o ),
    .ADR3(\u_fifo_a2b/rd_empty122_7390 ),
    .ADR0(\u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT132 ),
    .O(N50)
  );
  X_BUF   \N88/N88_CMUX_Delay  (
    .I(N88),
    .O(N88_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y6" ))
  \u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_SW7  (
    .IA(N460),
    .IB(N461),
    .O(N88),
    .SEL(\u_fifo_a2b/cptr_r[0] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y6" ),
    .INIT ( 64'hDA88FAAAAA88AAAA ))
  \u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_SW7_F  (
    .ADR2(\u_tx_b/pcnt [4]),
    .ADR0(\u_tx_b/pcnt [5]),
    .ADR4(\u_fifo_a2b/rptr [0]),
    .ADR5(\u_tx_b/Madd_pcnt[5]_GND_5_o_add_21_OUT_cy<3> ),
    .ADR1(N49),
    .ADR3(\u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT11_0 ),
    .O(N460)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y6" ),
    .INIT ( 64'hFF88F788FF00F000 ))
  \u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_SW7_G  (
    .ADR0(\u_tx_b/pcnt [4]),
    .ADR3(\u_tx_b/pcnt [5]),
    .ADR2(\u_fifo_a2b/rptr [0]),
    .ADR1(\u_tx_b/Madd_pcnt[5]_GND_5_o_add_21_OUT_cy<3> ),
    .ADR4(N49),
    .ADR5(\u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT11_0 ),
    .O(N461)
  );
  X_BUF   \u_rx_b/dcnt<1>/u_rx_b/dcnt<1>_CMUX_Delay  (
    .I(N82),
    .O(N82_0)
  );
  X_BUF   \u_rx_b/dcnt<1>/u_rx_b/dcnt<1>_AMUX_Delay  (
    .I(\u_rx_b/dcnt<0>_pack_7 ),
    .O(\u_rx_b/dcnt [0])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y7" ))
  \u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_SW3  (
    .IA(N456),
    .IB(N457),
    .O(N82),
    .SEL(\u_fifo_a2b/cptr_r[0] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y7" ),
    .INIT ( 64'hBBFBF000FBFB0000 ))
  \u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_SW3_F  (
    .ADR4(\u_tx_b/pcnt [2]),
    .ADR5(\u_tx_b/pcnt [1]),
    .ADR3(\u_tx_b/pcnt [0]),
    .ADR1(\u_fifo_a2b/rptr [0]),
    .ADR0(N49),
    .ADR2(\u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT11_0 ),
    .O(N456)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y7" ),
    .INIT ( 64'hFAAAD8A8AAAAA8A8 ))
  \u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_SW3_G  (
    .ADR0(\u_tx_b/pcnt [2]),
    .ADR5(\u_tx_b/pcnt [1]),
    .ADR3(\u_tx_b/pcnt [0]),
    .ADR1(\u_fifo_a2b/rptr [0]),
    .ADR4(N49),
    .ADR2(\u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT11_0 ),
    .O(N457)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y7" ),
    .INIT ( 1'b0 ))
  \u_rx_b/dcnt_1  (
    .CE(\u_rx_b/_n0167_inv_0 ),
    .CLK(\NlwBufferSignal_u_rx_b/dcnt_1/CLK ),
    .I(\u_rx_b/state[1]_dcnt[1]_wide_mux_43_OUT<1> ),
    .O(\u_rx_b/dcnt [1]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y7" ),
    .INIT ( 64'h6660000066600000 ))
  \u_rx_b/Mmux_state[1]_dcnt[1]_wide_mux_43_OUT21  (
    .ADR3(\u_rx_b/crs_r_7842 ),
    .ADR2(\u_rx_b/crs_prev_7841 ),
    .ADR4(\u_rx_b/state_FSM_FFd1_7840 ),
    .ADR1(\u_rx_b/dcnt [1]),
    .ADR0(\u_rx_b/dcnt [0]),
    .ADR5(1'b1),
    .O(\u_rx_b/state[1]_dcnt[1]_wide_mux_43_OUT<1> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y7" ),
    .INIT ( 32'h55500000 ))
  \u_rx_b/Mmux_state[1]_dcnt[1]_wide_mux_43_OUT11  (
    .ADR3(\u_rx_b/crs_r_7842 ),
    .ADR2(\u_rx_b/crs_prev_7841 ),
    .ADR4(\u_rx_b/state_FSM_FFd1_7840 ),
    .ADR1(1'b1),
    .ADR0(\u_rx_b/dcnt [0]),
    .O(\u_rx_b/state[1]_dcnt[1]_wide_mux_43_OUT<0> )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y7" ),
    .INIT ( 1'b0 ))
  \u_rx_b/dcnt_0  (
    .CE(\u_rx_b/_n0167_inv_0 ),
    .CLK(\NlwBufferSignal_u_rx_b/dcnt_0/CLK ),
    .I(\u_rx_b/state[1]_dcnt[1]_wide_mux_43_OUT<0> ),
    .O(\u_rx_b/dcnt<0>_pack_7 ),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y17" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cptr_7  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cptr_7/CLK ),
    .I(\u_fifo_b2a/cptr_7_rstpot_2334 ),
    .O(\u_fifo_b2a/cptr [7]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y17" ),
    .INIT ( 64'hFFFFFFBF00400000 ))
  \u_fifo_b2a/cptr_7_rstpot  (
    .ADR1(\u_rx_b/m_tvalid_7995 ),
    .ADR2(\u_rx_b/m_tlast_0 ),
    .ADR0(\u_fifo_b2a/drop_7994 ),
    .ADR5(\u_fifo_b2a/cptr [7]),
    .ADR4(\u_fifo_b2a/wptr_n<7>_0 ),
    .ADR3(\u_fifo_b2a/used<11>_0 ),
    .O(\u_fifo_b2a/cptr_7_rstpot_2334 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y17" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cptr_6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cptr_6/CLK ),
    .I(\u_fifo_b2a/cptr_6_rstpot_2343 ),
    .O(\u_fifo_b2a/cptr [6]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y17" ),
    .INIT ( 64'hAAAAAAAAAAEAAA2A ))
  \u_fifo_b2a/cptr_6_rstpot  (
    .ADR1(\u_rx_b/m_tvalid_7995 ),
    .ADR2(\u_rx_b/m_tlast_0 ),
    .ADR5(\u_fifo_b2a/drop_7994 ),
    .ADR0(\u_fifo_b2a/cptr [6]),
    .ADR4(\u_fifo_b2a/wptr_n<6>_0 ),
    .ADR3(\u_fifo_b2a/used<11>_0 ),
    .O(\u_fifo_b2a/cptr_6_rstpot_2343 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y17" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cptr_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cptr_5/CLK ),
    .I(\u_fifo_b2a/cptr_5_rstpot_2317 ),
    .O(\u_fifo_b2a/cptr [5]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y17" ),
    .INIT ( 64'hFF00FF40FF00BF00 ))
  \u_fifo_b2a/cptr_5_rstpot  (
    .ADR2(\u_rx_b/m_tvalid_7995 ),
    .ADR1(\u_rx_b/m_tlast_0 ),
    .ADR0(\u_fifo_b2a/drop_7994 ),
    .ADR3(\u_fifo_b2a/cptr [5]),
    .ADR5(\u_fifo_b2a/wptr_n<5>_0 ),
    .ADR4(\u_fifo_b2a/used<11>_0 ),
    .O(\u_fifo_b2a/cptr_5_rstpot_2317 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y17" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cptr_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cptr_4/CLK ),
    .I(\u_fifo_b2a/cptr_4_rstpot_2325 ),
    .O(\u_fifo_b2a/cptr [4]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y17" ),
    .INIT ( 64'hFFFFFFBF00004000 ))
  \u_fifo_b2a/cptr_4_rstpot  (
    .ADR1(\u_rx_b/m_tvalid_7995 ),
    .ADR2(\u_rx_b/m_tlast_0 ),
    .ADR0(\u_fifo_b2a/drop_7994 ),
    .ADR5(\u_fifo_b2a/cptr [4]),
    .ADR3(\u_fifo_b2a/wptr_n<4>_0 ),
    .ADR4(\u_fifo_b2a/used<11>_0 ),
    .O(\u_fifo_b2a/cptr_4_rstpot_2325 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y18" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cptr_11  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cptr_11/CLK ),
    .I(\u_fifo_b2a/cptr_11_rstpot_2368 ),
    .O(\u_fifo_b2a/cptr [11]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y18" ),
    .INIT ( 64'hFFFFFFDF00200000 ))
  \u_fifo_b2a/cptr_11_rstpot  (
    .ADR0(\u_rx_b/m_tvalid_7995 ),
    .ADR2(\u_rx_b/m_tlast_0 ),
    .ADR1(\u_fifo_b2a/drop_7994 ),
    .ADR5(\u_fifo_b2a/cptr [11]),
    .ADR4(\u_fifo_b2a/wptr_n<11>_0 ),
    .ADR3(\u_fifo_b2a/used<11>_0 ),
    .O(\u_fifo_b2a/cptr_11_rstpot_2368 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y18" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cptr_10  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cptr_10/CLK ),
    .I(\u_fifo_b2a/cptr_10_rstpot_2377 ),
    .O(\u_fifo_b2a/cptr [10]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y18" ),
    .INIT ( 64'hAAAAAAAAAAE2AAAA ))
  \u_fifo_b2a/cptr_10_rstpot  (
    .ADR1(\u_rx_b/m_tvalid_7995 ),
    .ADR4(\u_rx_b/m_tlast_0 ),
    .ADR5(\u_fifo_b2a/drop_7994 ),
    .ADR0(\u_fifo_b2a/cptr [10]),
    .ADR2(\u_fifo_b2a/wptr_n<10>_0 ),
    .ADR3(\u_fifo_b2a/used<11>_0 ),
    .O(\u_fifo_b2a/cptr_10_rstpot_2377 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y18" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cptr_9  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cptr_9/CLK ),
    .I(\u_fifo_b2a/cptr_9_rstpot_2351 ),
    .O(\u_fifo_b2a/cptr [9]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y18" ),
    .INIT ( 64'hF0F0F0F0F0F0B8F0 ))
  \u_fifo_b2a/cptr_9_rstpot  (
    .ADR1(\u_rx_b/m_tvalid_7995 ),
    .ADR3(\u_rx_b/m_tlast_0 ),
    .ADR5(\u_fifo_b2a/drop_7994 ),
    .ADR2(\u_fifo_b2a/cptr [9]),
    .ADR0(\u_fifo_b2a/wptr_n<9>_0 ),
    .ADR4(\u_fifo_b2a/used<11>_0 ),
    .O(\u_fifo_b2a/cptr_9_rstpot_2351 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y18" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cptr_8  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cptr_8/CLK ),
    .I(\u_fifo_b2a/cptr_8_rstpot_2359 ),
    .O(\u_fifo_b2a/cptr [8]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y18" ),
    .INIT ( 64'hFFFF0000FFDF2000 ))
  \u_fifo_b2a/cptr_8_rstpot  (
    .ADR2(\u_rx_b/m_tvalid_7995 ),
    .ADR0(\u_rx_b/m_tlast_0 ),
    .ADR5(\u_fifo_b2a/drop_7994 ),
    .ADR4(\u_fifo_b2a/cptr [8]),
    .ADR3(\u_fifo_b2a/wptr_n<8>_0 ),
    .ADR1(\u_fifo_b2a/used<11>_0 ),
    .O(\u_fifo_b2a/cptr_8_rstpot_2359 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y19" ),
    .INIT ( 64'h6699996666999966 ))
  \u_fifo_b2a/Mxor_rptr_w<4>_xo<0>1_SW1  (
    .ADR2(1'b1),
    .ADR5(1'b1),
    .ADR0(\u_fifo_b2a/rg_s2 [1]),
    .ADR4(\u_fifo_b2a/rg_s2 [2]),
    .ADR1(\u_fifo_b2a/rg_s2 [3]),
    .ADR3(\u_fifo_b2a/wptr [1]),
    .O(N133)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y23" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cg_s1_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cg_s1_3/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/cg_s1_3/IN ),
    .O(\u_fifo_b2a/cg_s1 [3]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y23" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cg_s1_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cg_s1_2/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/cg_s1_2/IN ),
    .O(\u_fifo_b2a/cg_s1 [2]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y23" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cg_s1_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cg_s1_1/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/cg_s1_1/IN ),
    .O(\u_fifo_b2a/cg_s1 [1]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y23" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cg_s1_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cg_s1_0/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/cg_s1_0/IN ),
    .O(\u_fifo_b2a/cg_s1 [0]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_BUF   \u_engine/win<30>/u_engine/win<30>_DMUX_Delay  (
    .I(\u_engine/win [31]),
    .O(\u_engine/win<31>_0 )
  );
  X_BUF   \u_engine/win<30>/u_engine/win<30>_CMUX_Delay  (
    .I(\u_engine/win [29]),
    .O(\u_engine/win<29>_0 )
  );
  X_BUF   \u_engine/win<30>/u_engine/win<30>_BMUX_Delay  (
    .I(\u_engine/win [26]),
    .O(\u_engine/win<26>_0 )
  );
  X_BUF   \u_engine/win<30>/u_engine/win<30>_AMUX_Delay  (
    .I(\u_engine/win [24]),
    .O(\u_engine/win<24>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y27" ),
    .INIT ( 1'b0 ))
  \u_engine/win_30  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_30/CLK ),
    .I(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<30> ),
    .O(\u_engine/win [30]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y27" ),
    .INIT ( 64'h3300330033003300 ))
  \u_engine/Mmux_win_nxt[55]_GND_6_o_mux_51_OUT241  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(\u_engine/win<22>_0 ),
    .ADR1(\u_rx_a/m_tlast_0 ),
    .ADR5(1'b1),
    .O(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<30> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y27" ),
    .INIT ( 32'h22222222 ))
  \u_engine/Mmux_win_nxt[55]_GND_6_o_mux_51_OUT251  (
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR0(\u_engine/win [23]),
    .ADR3(1'b1),
    .ADR1(\u_rx_a/m_tlast_0 ),
    .O(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<31> )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y27" ),
    .INIT ( 1'b0 ))
  \u_engine/win_31  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_31/CLK ),
    .I(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<31> ),
    .O(\u_engine/win [31]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y27" ),
    .INIT ( 1'b0 ))
  \u_engine/win_28  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_28/CLK ),
    .I(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<28> ),
    .O(\u_engine/win [28]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y27" ),
    .INIT ( 64'h0000F0F00000F0F0 ))
  \u_engine/Mmux_win_nxt[55]_GND_6_o_mux_51_OUT211  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\u_engine/win<20>_0 ),
    .ADR4(\u_rx_a/m_tlast_0 ),
    .ADR5(1'b1),
    .O(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<28> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y27" ),
    .INIT ( 32'h0000CCCC ))
  \u_engine/Mmux_win_nxt[55]_GND_6_o_mux_51_OUT221  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR1(\u_engine/win [21]),
    .ADR3(1'b1),
    .ADR4(\u_rx_a/m_tlast_0 ),
    .O(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<29> )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y27" ),
    .INIT ( 1'b0 ))
  \u_engine/win_29  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_29/CLK ),
    .I(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<29> ),
    .O(\u_engine/win [29]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y27" ),
    .INIT ( 1'b0 ))
  \u_engine/win_25  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_25/CLK ),
    .I(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<25> ),
    .O(\u_engine/win [25]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y27" ),
    .INIT ( 64'h5555000055550000 ))
  \u_engine/Mmux_win_nxt[55]_GND_6_o_mux_51_OUT181  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_engine/win<17>_0 ),
    .ADR0(\u_rx_a/m_tlast_0 ),
    .ADR5(1'b1),
    .O(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<25> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y27" ),
    .INIT ( 32'h44444444 ))
  \u_engine/Mmux_win_nxt[55]_GND_6_o_mux_51_OUT191  (
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR1(\u_engine/win [18]),
    .ADR3(1'b1),
    .ADR0(\u_rx_a/m_tlast_0 ),
    .O(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<26> )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y27" ),
    .INIT ( 1'b0 ))
  \u_engine/win_26  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_26/CLK ),
    .I(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<26> ),
    .O(\u_engine/win [26]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y27" ),
    .INIT ( 1'b0 ))
  \u_engine/win_23  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_23/CLK ),
    .I(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<23> ),
    .O(\u_engine/win [23]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y27" ),
    .INIT ( 64'h0F000F000F000F00 ))
  \u_engine/Mmux_win_nxt[55]_GND_6_o_mux_51_OUT161  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(\u_engine/win<15>_0 ),
    .ADR2(\u_rx_a/m_tlast_0 ),
    .ADR5(1'b1),
    .O(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<23> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y27" ),
    .INIT ( 32'h0A0A0A0A ))
  \u_engine/Mmux_win_nxt[55]_GND_6_o_mux_51_OUT171  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR0(\u_engine/win [16]),
    .ADR3(1'b1),
    .ADR2(\u_rx_a/m_tlast_0 ),
    .O(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<24> )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y27" ),
    .INIT ( 1'b0 ))
  \u_engine/win_24  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_24/CLK ),
    .I(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<24> ),
    .O(\u_engine/win [24]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_BUF   \u_engine/win<3>/u_engine/win<3>_DMUX_Delay  (
    .I(\u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<7> ),
    .O(\u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<7>_0 )
  );
  X_BUF   \u_engine/win<3>/u_engine/win<3>_BMUX_Delay  (
    .I(\u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<2>_pack_2 ),
    .O(\u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<2> )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y35" ),
    .INIT ( 1'b0 ))
  \u_engine/win_3  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_3/CLK ),
    .I(\u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<3> ),
    .O(\u_engine/win [3]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y35" ),
    .INIT ( 64'h3030303030303030 ))
  \u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<3>1  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\u_rx_a/m_tdata [3]),
    .ADR1(\u_rx_a/m_tlast_0 ),
    .ADR5(1'b1),
    .O(\u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<3> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y35" ),
    .INIT ( 32'h33330000 ))
  \u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<7>1  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_rx_a/m_tdata [7]),
    .ADR3(1'b1),
    .ADR1(\u_rx_a/m_tlast_0 ),
    .O(\u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<7> )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y35" ),
    .INIT ( 1'b0 ))
  \u_engine/win_2  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_2/CLK ),
    .I(\NlwBufferSignal_u_engine/win_2/IN ),
    .O(\u_engine/win [2]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y35" ),
    .INIT ( 1'b0 ))
  \u_engine/win_1  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_1/CLK ),
    .I(\u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<1> ),
    .O(\u_engine/win [1]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y35" ),
    .INIT ( 64'h0F000F000F000F00 ))
  \u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<1>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(\u_rx_a/m_tdata [1]),
    .ADR2(\u_rx_a/m_tlast_0 ),
    .ADR5(1'b1),
    .O(\u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<1> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y35" ),
    .INIT ( 32'h0A0A0A0A ))
  \u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<2>1  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR0(\u_rx_a/m_tdata [2]),
    .ADR3(1'b1),
    .ADR2(\u_rx_a/m_tlast_0 ),
    .O(\u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<2>_pack_2 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y35" ),
    .INIT ( 1'b0 ))
  \u_engine/win_0  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_0/CLK ),
    .I(\NlwBufferSignal_u_engine/win_0/IN ),
    .O(\u_engine/win [0]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_BUF   \u_engine/proto<3>/u_engine/proto<3>_AMUX_Delay  (
    .I(\u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<6> ),
    .O(\u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<6>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y36" ),
    .INIT ( 1'b0 ))
  \u_engine/proto_3  (
    .CE(\u_engine/_n0367_inv_8340 ),
    .CLK(\NlwBufferSignal_u_engine/proto_3/CLK ),
    .I(\NlwBufferSignal_u_engine/proto_3/IN ),
    .O(\u_engine/proto [3]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y36" ),
    .INIT ( 64'h0020000008000000 ))
  \u_engine/Mmux_GND_6_o_s_tindex[15]_MUX_167_o12  (
    .ADR0(\u_rx_a/m_tdata [2]),
    .ADR4(\u_rx_a/m_tdata [4]),
    .ADR5(\u_engine/proto [0]),
    .ADR2(\u_engine/proto [4]),
    .ADR1(\u_engine/proto [2]),
    .ADR3(\u_engine/proto [1]),
    .O(\u_engine/Mmux_GND_6_o_s_tindex[15]_MUX_167_o1 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y36" ),
    .INIT ( 1'b0 ))
  \u_engine/proto_2  (
    .CE(\u_engine/_n0367_inv_8340 ),
    .CLK(\NlwBufferSignal_u_engine/proto_2/CLK ),
    .I(\NlwBufferSignal_u_engine/proto_2/IN ),
    .O(\u_engine/proto [2]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y36" ),
    .INIT ( 64'h8800000000000000 ))
  \u_engine/_n0377_inv_SW0  (
    .ADR2(1'b1),
    .ADR5(\u_engine/syn_cnt [1]),
    .ADR4(\u_engine/syn_cnt [5]),
    .ADR0(\u_engine/syn_cnt [0]),
    .ADR3(\u_engine/syn_cnt [3]),
    .ADR1(\u_engine/syn_cnt [2]),
    .O(N39)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y36" ),
    .INIT ( 1'b0 ))
  \u_engine/proto_1  (
    .CE(\u_engine/_n0367_inv_8340 ),
    .CLK(\NlwBufferSignal_u_engine/proto_1/CLK ),
    .I(\NlwBufferSignal_u_engine/proto_1/IN ),
    .O(\u_engine/proto [1]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y36" ),
    .INIT ( 64'hFDDDDDDDDDDDDDDD ))
  \u_engine/syn_hit_SW2  (
    .ADR1(\u_engine/proto [0]),
    .ADR5(\u_engine/syn_cnt [7]),
    .ADR4(\u_engine/syn_cnt [6]),
    .ADR0(\u_engine/proto [1]),
    .ADR2(\u_engine/syn_cnt [4]),
    .ADR3(N39),
    .O(N217)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y36" ),
    .INIT ( 1'b0 ))
  \u_engine/proto_0  (
    .CE(\u_engine/_n0367_inv_8340 ),
    .CLK(\NlwBufferSignal_u_engine/proto_0/CLK ),
    .I(\u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<0> ),
    .O(\u_engine/proto [0]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y36" ),
    .INIT ( 64'h00F000F000F000F0 ))
  \u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<0>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR2(\u_rx_a/m_tdata [0]),
    .ADR3(\u_rx_a/m_tlast_0 ),
    .ADR5(1'b1),
    .O(\u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<0> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y36" ),
    .INIT ( 32'h00FF0000 ))
  \u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<6>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(\u_rx_a/m_tdata [6]),
    .ADR2(1'b1),
    .ADR3(\u_rx_a/m_tlast_0 ),
    .O(\u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<6> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y37" ),
    .INIT ( 64'hFFFFFFFBFFFFFFFF ))
  \u_engine/syn_hit_SW3  (
    .ADR1(\u_engine/proto [2]),
    .ADR3(\u_engine/proto [0]),
    .ADR2(\u_engine/proto [4]),
    .ADR0(\u_engine/syn_cnt [7]),
    .ADR4(\u_engine/syn_cnt [6]),
    .ADR5(\u_engine/proto [1]),
    .O(N357)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y37" ),
    .INIT ( 64'hFFFFFFFFFDFFFFFF ))
  \u_engine/syn_hit_SW1  (
    .ADR4(\u_engine/proto [2]),
    .ADR1(\u_engine/syn_cnt [6]),
    .ADR0(\u_engine/proto [1]),
    .ADR5(\u_engine/proto [0]),
    .ADR2(\u_engine/syn_cnt [7]),
    .ADR3(\u_engine/syn_cnt [4]),
    .O(N57)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y37" ),
    .INIT ( 64'hCCCCCCCCFF00CCCC ))
  \u_engine/_n0377_inv_SW1  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR1(\u_engine/syn_cnt [7]),
    .ADR5(\u_engine/proto [4]),
    .ADR4(\u_engine/proto [2]),
    .ADR3(\u_engine/Result<7>_0 ),
    .O(N367)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y37" ),
    .INIT ( 1'b0 ))
  \u_engine/syn_cnt_7  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/syn_cnt_7/CLK ),
    .I(\u_engine/syn_cnt_7_rstpot_2508 ),
    .O(\u_engine/syn_cnt [7]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y37" ),
    .INIT ( 64'h5500550055005140 ))
  \u_engine/syn_cnt_7_rstpot  (
    .ADR1(\u_engine/s_tindex[15]_idx_flags[15]_equal_12_o_0 ),
    .ADR2(N367),
    .ADR4(N217),
    .ADR3(\u_engine/syn_cnt [7]),
    .ADR0(\u_engine/win_end ),
    .ADR5(N37),
    .O(\u_engine/syn_cnt_7_rstpot_2508 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y38" ),
    .INIT ( 64'hFFFFFFFFF0FFFFFF ))
  \u_engine/syn_cnt_0_rstpot_SW1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(\u_engine/proto [2]),
    .ADR3(\u_engine/proto [1]),
    .ADR5(\u_engine/proto [4]),
    .ADR2(\u_engine/proto [0]),
    .O(N365)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y43" ),
    .INIT ( 1'b0 ))
  \u_uart/hb_cnt_10  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/hb_cnt_10/CLK ),
    .I(\u_uart/Mcount_hb_cnt_eqn_10 ),
    .O(\u_uart/hb_cnt [10]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y43" ),
    .INIT ( 64'h70F0F0F0F0F0F0F0 ))
  \u_uart/Mcount_hb_cnt_eqn_101  (
    .ADR2(\u_uart/Result<10>_0 ),
    .ADR1(\u_uart/hb_pend_PWR_8_o_MUX_9428_o_2 [27]),
    .ADR4(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>1_8310 ),
    .ADR3(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>2_8311 ),
    .ADR0(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>3_8312 ),
    .ADR5(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>4_8313 ),
    .O(\u_uart/Mcount_hb_cnt_eqn_10 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y43" ),
    .INIT ( 1'b0 ))
  \u_uart/hb_cnt_9  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/hb_cnt_9/CLK ),
    .I(\u_uart/Mcount_hb_cnt_eqn_9 ),
    .O(\u_uart/hb_cnt [9]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y43" ),
    .INIT ( 64'h7FFF0000FFFF0000 ))
  \u_uart/Mcount_hb_cnt_eqn_91  (
    .ADR4(\u_uart/Result<9>_0 ),
    .ADR0(\u_uart/hb_pend_PWR_8_o_MUX_9428_o_2 [27]),
    .ADR5(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>1_8310 ),
    .ADR2(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>2_8311 ),
    .ADR3(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>3_8312 ),
    .ADR1(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>4_8313 ),
    .O(\u_uart/Mcount_hb_cnt_eqn_9 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y43" ),
    .INIT ( 1'b0 ))
  \u_uart/hb_cnt_8  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/hb_cnt_8/CLK ),
    .I(\u_uart/Mcount_hb_cnt_eqn_8 ),
    .O(\u_uart/hb_cnt [8]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y43" ),
    .INIT ( 64'h7FFF0000FFFF0000 ))
  \u_uart/Mcount_hb_cnt_eqn_81  (
    .ADR4(\u_uart/Result<8>_0 ),
    .ADR3(\u_uart/hb_pend_PWR_8_o_MUX_9428_o_2 [27]),
    .ADR0(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>1_8310 ),
    .ADR5(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>2_8311 ),
    .ADR1(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>3_8312 ),
    .ADR2(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>4_8313 ),
    .O(\u_uart/Mcount_hb_cnt_eqn_8 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y43" ),
    .INIT ( 1'b0 ))
  \u_uart/hb_cnt_7  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/hb_cnt_7/CLK ),
    .I(\u_uart/Mcount_hb_cnt_eqn_7 ),
    .O(\u_uart/hb_cnt [7]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y43" ),
    .INIT ( 64'h7FFFFFFF00000000 ))
  \u_uart/Mcount_hb_cnt_eqn_71  (
    .ADR5(\u_uart/Result<7>_0 ),
    .ADR0(\u_uart/hb_pend_PWR_8_o_MUX_9428_o_2 [27]),
    .ADR2(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>1_8310 ),
    .ADR1(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>2_8311 ),
    .ADR4(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>3_8312 ),
    .ADR3(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>4_8313 ),
    .O(\u_uart/Mcount_hb_cnt_eqn_7 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y44" ),
    .INIT ( 1'b0 ))
  \u_uart/hb_cnt_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/hb_cnt_2/CLK ),
    .I(\u_uart/Mcount_hb_cnt_eqn_2 ),
    .O(\u_uart/hb_cnt [2]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y44" ),
    .INIT ( 64'h70F0F0F0F0F0F0F0 ))
  \u_uart/Mcount_hb_cnt_eqn_28  (
    .ADR2(\u_uart/Result<2>_0 ),
    .ADR3(\u_uart/hb_pend_PWR_8_o_MUX_9428_o_2 [27]),
    .ADR4(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>1_8310 ),
    .ADR5(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>2_8311 ),
    .ADR0(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>3_8312 ),
    .ADR1(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>4_8313 ),
    .O(\u_uart/Mcount_hb_cnt_eqn_2 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y44" ),
    .INIT ( 1'b0 ))
  \u_uart/hb_cnt_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/hb_cnt_1/CLK ),
    .I(\u_uart/Mcount_hb_cnt_eqn_1 ),
    .O(\u_uart/hb_cnt [1]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y44" ),
    .INIT ( 64'h70F0F0F0F0F0F0F0 ))
  \u_uart/Mcount_hb_cnt_eqn_110  (
    .ADR2(\u_uart/Result<1>_0 ),
    .ADR0(\u_uart/hb_pend_PWR_8_o_MUX_9428_o_2 [27]),
    .ADR4(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>1_8310 ),
    .ADR1(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>2_8311 ),
    .ADR3(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>3_8312 ),
    .ADR5(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>4_8313 ),
    .O(\u_uart/Mcount_hb_cnt_eqn_1 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y44" ),
    .INIT ( 64'h0000000500000005 ))
  \u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>5  (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR4(\u_uart/hb_cnt [18]),
    .ADR0(\u_uart/hb_cnt [13]),
    .ADR3(\u_uart/hb_cnt [20]),
    .ADR2(\u_uart/hb_cnt [26]),
    .O(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>4_8313 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y44" ),
    .INIT ( 1'b0 ))
  \u_uart/hb_cnt_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/hb_cnt_0/CLK ),
    .I(\u_uart/Mcount_hb_cnt_eqn_0 ),
    .O(\u_uart/hb_cnt [0]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y44" ),
    .INIT ( 64'h7FFFFFFF00000000 ))
  \u_uart/Mcount_hb_cnt_eqn_01  (
    .ADR5(\u_uart/Result<0>_0 ),
    .ADR1(\u_uart/hb_pend_PWR_8_o_MUX_9428_o_2 [27]),
    .ADR0(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>1_8310 ),
    .ADR2(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>2_8311 ),
    .ADR4(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>3_8312 ),
    .ADR3(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>4_8313 ),
    .O(\u_uart/Mcount_hb_cnt_eqn_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y45" ),
    .INIT ( 1'b0 ))
  \u_uart/hb_cnt_18  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/hb_cnt_18/CLK ),
    .I(\u_uart/Mcount_hb_cnt_eqn_18 ),
    .O(\u_uart/hb_cnt [18]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y45" ),
    .INIT ( 64'h2AAAAAAAAAAAAAAA ))
  \u_uart/Mcount_hb_cnt_eqn_181  (
    .ADR0(\u_uart/Result<18>_0 ),
    .ADR5(\u_uart/hb_pend_PWR_8_o_MUX_9428_o_2 [27]),
    .ADR4(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>1_8310 ),
    .ADR3(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>2_8311 ),
    .ADR1(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>3_8312 ),
    .ADR2(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>4_8313 ),
    .O(\u_uart/Mcount_hb_cnt_eqn_18 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y45" ),
    .INIT ( 1'b0 ))
  \u_uart/hb_cnt_17  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/hb_cnt_17/CLK ),
    .I(\u_uart/Mcount_hb_cnt_eqn_17 ),
    .O(\u_uart/hb_cnt [17]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y45" ),
    .INIT ( 64'h7FFF0000FFFF0000 ))
  \u_uart/Mcount_hb_cnt_eqn_171  (
    .ADR4(\u_uart/Result<17>_0 ),
    .ADR0(\u_uart/hb_pend_PWR_8_o_MUX_9428_o_2 [27]),
    .ADR5(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>1_8310 ),
    .ADR2(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>2_8311 ),
    .ADR1(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>3_8312 ),
    .ADR3(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>4_8313 ),
    .O(\u_uart/Mcount_hb_cnt_eqn_17 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y45" ),
    .INIT ( 1'b0 ))
  \u_uart/hb_cnt_16  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/hb_cnt_16/CLK ),
    .I(\u_uart/Mcount_hb_cnt_eqn_16 ),
    .O(\u_uart/hb_cnt [16]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y45" ),
    .INIT ( 64'h7FFF0000FFFF0000 ))
  \u_uart/Mcount_hb_cnt_eqn_161  (
    .ADR4(\u_uart/Result<16>_0 ),
    .ADR3(\u_uart/hb_pend_PWR_8_o_MUX_9428_o_2 [27]),
    .ADR2(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>1_8310 ),
    .ADR5(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>2_8311 ),
    .ADR0(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>3_8312 ),
    .ADR1(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>4_8313 ),
    .O(\u_uart/Mcount_hb_cnt_eqn_16 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y45" ),
    .INIT ( 1'b0 ))
  \u_uart/hb_cnt_15  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/hb_cnt_15/CLK ),
    .I(\u_uart/Mcount_hb_cnt_eqn_15 ),
    .O(\u_uart/hb_cnt [15]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y45" ),
    .INIT ( 64'h4CCCCCCCCCCCCCCC ))
  \u_uart/Mcount_hb_cnt_eqn_151  (
    .ADR1(\u_uart/Result<15>_0 ),
    .ADR0(\u_uart/hb_pend_PWR_8_o_MUX_9428_o_2 [27]),
    .ADR2(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>1_8310 ),
    .ADR5(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>2_8311 ),
    .ADR3(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>3_8312 ),
    .ADR4(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>4_8313 ),
    .O(\u_uart/Mcount_hb_cnt_eqn_15 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y53" ),
    .INIT ( 64'h000001D100C02200 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT213  (
    .ADR4(\u_uart/idx [5]),
    .ADR2(\u_uart/idx [1]),
    .ADR1(\u_uart/idx [0]),
    .ADR0(\u_uart/idx [2]),
    .ADR5(\u_uart/idx [4]),
    .ADR3(\u_uart/idx [3]),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT213_8379 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y60" ),
    .INIT ( 64'hFCF4FC44F0F00000 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT74  (
    .ADR1(\u_uart/idx [3]),
    .ADR5(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT11 ),
    .ADR3(\u_uart/GND_7_o_GND_7_o_sub_40_OUT<5>1 ),
    .ADR0(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT371 ),
    .ADR2(\u_uart/Sh18102 ),
    .ADR4(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT223 ),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT73_8404 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y60" ),
    .INIT ( 64'h0000000000100001 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT2231  (
    .ADR3(\u_uart/code [1]),
    .ADR5(\u_uart/code<0>_0 ),
    .ADR0(\u_uart/code [2]),
    .ADR4(\u_uart/idx [5]),
    .ADR2(\u_uart/idx [4]),
    .ADR1(\u_uart/idx [3]),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT223 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y60" ),
    .INIT ( 1'b0 ))
  \u_uart/tx_data_6  (
    .CE(\u_uart/GND_7_o_tx_busy_MUX_9398_o ),
    .CLK(\NlwBufferSignal_u_uart/tx_data_6/CLK ),
    .I(\u_uart/code[2]_GND_7_o_select_48_OUT<6> ),
    .O(\u_uart/tx_data [6]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y60" ),
    .INIT ( 64'hFFFFFFFFFEFCEECC ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT713  (
    .ADR2(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT12_7535 ),
    .ADR0(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT13_7513 ),
    .ADR3(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT78 ),
    .ADR1(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT72_7564 ),
    .ADR4(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT711 ),
    .ADR5(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT76_8403 ),
    .O(\u_uart/code[2]_GND_7_o_select_48_OUT<6> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y60" ),
    .INIT ( 64'h3330F3C03320B380 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT77  (
    .ADR2(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT11 ),
    .ADR4(\u_uart/idx [5]),
    .ADR1(\u_uart/idx [4]),
    .ADR5(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT75_0 ),
    .ADR0(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT74_7562 ),
    .ADR3(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT73_8404 ),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT76_8403 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y6" ),
    .INIT ( 64'h1B5757571B575757 ))
  \u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_SW5  (
    .ADR5(1'b1),
    .ADR4(\u_tx_b/pcnt [4]),
    .ADR0(\u_tx_b/pcnt [5]),
    .ADR3(\u_tx_b/Madd_pcnt[5]_GND_5_o_add_21_OUT_cy<3> ),
    .ADR2(N49),
    .ADR1(\u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT11_0 ),
    .O(N86)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y6" ),
    .INIT ( 1'b0 ))
  \u_tx_b/pcnt_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_tx_b/pcnt_5/CLK ),
    .I(\u_tx_b/state[1]_pcnt[5]_wide_mux_27_OUT<5> ),
    .O(\u_tx_b/pcnt [5]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y6" ),
    .INIT ( 64'h80BF80BF003FC0FF ))
  \u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT61  (
    .ADR2(\u_fifo_a2b/rd_empty12 ),
    .ADR5(N50),
    .ADR1(\u_fifo_a2b/rd_empty124_7285 ),
    .ADR3(N86),
    .ADR0(N88_0),
    .ADR4(N87_0),
    .O(\u_tx_b/state[1]_pcnt[5]_wide_mux_27_OUT<5> )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y6" ),
    .INIT ( 1'b0 ))
  \u_tx_b/pcnt_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_tx_b/pcnt_4/CLK ),
    .I(\u_tx_b/state[1]_pcnt[5]_wide_mux_27_OUT<4> ),
    .O(\u_tx_b/pcnt [4]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y6" ),
    .INIT ( 64'hFF00FF3C1C1C0000 ))
  \u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT51  (
    .ADR0(\u_tx_b/pcnt [5]),
    .ADR2(\u_tx_b/state_FSM_FFd1_7386 ),
    .ADR1(\u_tx_b/state_FSM_FFd2_7387 ),
    .ADR5(\u_tx_b/pcnt [4]),
    .ADR4(\u_tx_b/Madd_pcnt[5]_GND_5_o_add_21_OUT_cy<3> ),
    .ADR3(\u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_8278 ),
    .O(\u_tx_b/state[1]_pcnt[5]_wide_mux_27_OUT<4> )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y7" ),
    .INIT ( 1'b0 ))
  \u_tx_b/pcnt_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_tx_b/pcnt_3/CLK ),
    .I(\u_tx_b/state[1]_pcnt[5]_wide_mux_27_OUT<3> ),
    .O(\u_tx_b/pcnt [3]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y7" ),
    .INIT ( 64'hFFFF70F080008000 ))
  \u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT41  (
    .ADR2(\u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT11_0 ),
    .ADR3(\u_tx_b/pcnt [0]),
    .ADR0(\u_tx_b/pcnt [1]),
    .ADR5(\u_tx_b/pcnt [3]),
    .ADR1(\u_tx_b/pcnt [2]),
    .ADR4(\u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_8278 ),
    .O(\u_tx_b/state[1]_pcnt[5]_wide_mux_27_OUT<3> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y7" ),
    .INIT ( 64'hF7FF8000FFF70080 ))
  \u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21  (
    .ADR3(\u_fifo_a2b/rptr [0]),
    .ADR4(N49),
    .ADR5(\u_fifo_a2b/cptr_r[0] ),
    .ADR1(\u_fifo_a2b/rd_empty12 ),
    .ADR0(\u_fifo_a2b/rd_empty1241 ),
    .ADR2(N50),
    .O(\u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_8278 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y7" ),
    .INIT ( 64'h11DD337733773377 ))
  \u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_SW1  (
    .ADR2(1'b1),
    .ADR1(\u_tx_b/pcnt [2]),
    .ADR4(\u_tx_b/pcnt [1]),
    .ADR5(\u_tx_b/pcnt [0]),
    .ADR3(N49),
    .ADR0(\u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT11_0 ),
    .O(N80)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y7" ),
    .INIT ( 1'b0 ))
  \u_tx_b/pcnt_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_tx_b/pcnt_2/CLK ),
    .I(\u_tx_b/state[1]_pcnt[5]_wide_mux_27_OUT<2> ),
    .O(\u_tx_b/pcnt [2]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y7" ),
    .INIT ( 64'h880FBB0F0F0F0F0F ))
  \u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT31  (
    .ADR5(\u_fifo_a2b/rd_empty12 ),
    .ADR1(N50),
    .ADR3(\u_fifo_a2b/rd_empty124_7285 ),
    .ADR2(N80),
    .ADR0(N82_0),
    .ADR4(N81_0),
    .O(\u_tx_b/state[1]_pcnt[5]_wide_mux_27_OUT<2> )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y8" ),
    .INIT ( 1'b0 ))
  \u_rx_b/m_tdata_7  (
    .CE(\u_rx_b/state[1]_GND_3_o_Mux_40_o ),
    .CLK(\NlwBufferSignal_u_rx_b/m_tdata_7/CLK ),
    .I(\NlwBufferSignal_u_rx_b/m_tdata_7/IN ),
    .O(\u_rx_b/m_tdata [7]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y8" ),
    .INIT ( 1'b0 ))
  \u_rx_b/m_tdata_6  (
    .CE(\u_rx_b/state[1]_GND_3_o_Mux_40_o ),
    .CLK(\NlwBufferSignal_u_rx_b/m_tdata_6/CLK ),
    .I(\NlwBufferSignal_u_rx_b/m_tdata_6/IN ),
    .O(\u_rx_b/m_tdata [6]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y8" ),
    .INIT ( 1'b0 ))
  \u_rx_b/m_tdata_5  (
    .CE(\u_rx_b/state[1]_GND_3_o_Mux_40_o ),
    .CLK(\NlwBufferSignal_u_rx_b/m_tdata_5/CLK ),
    .I(\NlwBufferSignal_u_rx_b/m_tdata_5/IN ),
    .O(\u_rx_b/m_tdata [5]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y8" ),
    .INIT ( 1'b0 ))
  \u_rx_b/m_tdata_4  (
    .CE(\u_rx_b/state[1]_GND_3_o_Mux_40_o ),
    .CLK(\NlwBufferSignal_u_rx_b/m_tdata_4/CLK ),
    .I(\NlwBufferSignal_u_rx_b/m_tdata_4/IN ),
    .O(\u_rx_b/m_tdata [4]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y9" ),
    .INIT ( 1'b0 ))
  \u_rx_b/m_tdata_3  (
    .CE(\u_rx_b/state[1]_GND_3_o_Mux_40_o ),
    .CLK(\NlwBufferSignal_u_rx_b/m_tdata_3/CLK ),
    .I(\NlwBufferSignal_u_rx_b/m_tdata_3/IN ),
    .O(\u_rx_b/m_tdata [3]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y9" ),
    .INIT ( 1'b0 ))
  \u_rx_b/m_tdata_2  (
    .CE(\u_rx_b/state[1]_GND_3_o_Mux_40_o ),
    .CLK(\NlwBufferSignal_u_rx_b/m_tdata_2/CLK ),
    .I(\NlwBufferSignal_u_rx_b/m_tdata_2/IN ),
    .O(\u_rx_b/m_tdata [2]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y9" ),
    .INIT ( 1'b0 ))
  \u_rx_b/m_tdata_1  (
    .CE(\u_rx_b/state[1]_GND_3_o_Mux_40_o ),
    .CLK(\NlwBufferSignal_u_rx_b/m_tdata_1/CLK ),
    .I(\NlwBufferSignal_u_rx_b/m_tdata_1/IN ),
    .O(\u_rx_b/m_tdata [1]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y9" ),
    .INIT ( 1'b0 ))
  \u_rx_b/m_tdata_0  (
    .CE(\u_rx_b/state[1]_GND_3_o_Mux_40_o ),
    .CLK(\NlwBufferSignal_u_rx_b/m_tdata_0/CLK ),
    .I(\NlwBufferSignal_u_rx_b/m_tdata_0/IN ),
    .O(\u_rx_b/m_tdata [0]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y17" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/wptr_7  (
    .CE(\u_rx_b/m_tvalid_7995 ),
    .CLK(\NlwBufferSignal_u_fifo_b2a/wptr_7/CLK ),
    .I(\u_fifo_b2a/wptr_7_dpot_2737 ),
    .O(\u_fifo_b2a/wptr [7]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y17" ),
    .INIT ( 64'hAAB8FFFCAAB80030 ))
  \u_fifo_b2a/wptr_7_dpot  (
    .ADR0(\u_fifo_b2a/cptr [7]),
    .ADR4(\u_rx_b/m_tlast_0 ),
    .ADR1(\u_fifo_b2a/drop_7994 ),
    .ADR5(\u_fifo_b2a/wptr [7]),
    .ADR2(\u_fifo_b2a/wptr_n<7>_0 ),
    .ADR3(\u_fifo_b2a/used<11>_0 ),
    .O(\u_fifo_b2a/wptr_7_dpot_2737 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y17" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/wptr_6  (
    .CE(\u_rx_b/m_tvalid_7995 ),
    .CLK(\NlwBufferSignal_u_fifo_b2a/wptr_6/CLK ),
    .I(\u_fifo_b2a/wptr_6_dpot_2747 ),
    .O(\u_fifo_b2a/wptr [6]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y17" ),
    .INIT ( 64'hF3F7C0D5F3A2C080 ))
  \u_fifo_b2a/wptr_6_dpot  (
    .ADR2(\u_fifo_b2a/cptr [6]),
    .ADR1(\u_rx_b/m_tlast_0 ),
    .ADR0(\u_fifo_b2a/drop_7994 ),
    .ADR4(\u_fifo_b2a/wptr [6]),
    .ADR5(\u_fifo_b2a/wptr_n<6>_0 ),
    .ADR3(\u_fifo_b2a/used<11>_0 ),
    .O(\u_fifo_b2a/wptr_6_dpot_2747 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y17" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/wptr_5  (
    .CE(\u_rx_b/m_tvalid_7995 ),
    .CLK(\NlwBufferSignal_u_fifo_b2a/wptr_5/CLK ),
    .I(\u_fifo_b2a/wptr_5_dpot_2755 ),
    .O(\u_fifo_b2a/wptr [5]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y17" ),
    .INIT ( 64'hCCCACCCAFFFA000A ))
  \u_fifo_b2a/wptr_5_dpot  (
    .ADR1(\u_fifo_b2a/cptr [5]),
    .ADR5(\u_rx_b/m_tlast_0 ),
    .ADR2(\u_fifo_b2a/drop_7994 ),
    .ADR4(\u_fifo_b2a/wptr [5]),
    .ADR0(\u_fifo_b2a/wptr_n<5>_0 ),
    .ADR3(\u_fifo_b2a/used<11>_0 ),
    .O(\u_fifo_b2a/wptr_5_dpot_2755 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y17" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/wptr_4  (
    .CE(\u_rx_b/m_tvalid_7995 ),
    .CLK(\NlwBufferSignal_u_fifo_b2a/wptr_4/CLK ),
    .I(\u_fifo_b2a/wptr_4_dpot_2763 ),
    .O(\u_fifo_b2a/wptr [4]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y17" ),
    .INIT ( 64'hCCFFD8FACC00D850 ))
  \u_fifo_b2a/wptr_4_dpot  (
    .ADR1(\u_fifo_b2a/cptr [4]),
    .ADR3(\u_rx_b/m_tlast_0 ),
    .ADR0(\u_fifo_b2a/drop_7994 ),
    .ADR5(\u_fifo_b2a/wptr [4]),
    .ADR2(\u_fifo_b2a/wptr_n<4>_0 ),
    .ADR4(\u_fifo_b2a/used<11>_0 ),
    .O(\u_fifo_b2a/wptr_4_dpot_2763 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y18" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/wptr_11  (
    .CE(\u_rx_b/m_tvalid_7995 ),
    .CLK(\NlwBufferSignal_u_fifo_b2a/wptr_11/CLK ),
    .I(\u_fifo_b2a/wptr_11_dpot_2772 ),
    .O(\u_fifo_b2a/wptr [11]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y18" ),
    .INIT ( 64'hCCCAFFFACCCA000A ))
  \u_fifo_b2a/wptr_11_dpot  (
    .ADR1(\u_fifo_b2a/cptr [11]),
    .ADR4(\u_rx_b/m_tlast_0 ),
    .ADR2(\u_fifo_b2a/drop_7994 ),
    .ADR5(\u_fifo_b2a/wptr [11]),
    .ADR0(\u_fifo_b2a/wptr_n<11>_0 ),
    .ADR3(\u_fifo_b2a/used<11>_0 ),
    .O(\u_fifo_b2a/wptr_11_dpot_2772 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y18" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/wptr_10  (
    .CE(\u_rx_b/m_tvalid_7995 ),
    .CLK(\NlwBufferSignal_u_fifo_b2a/wptr_10/CLK ),
    .I(\u_fifo_b2a/wptr_10_dpot_2782 ),
    .O(\u_fifo_b2a/wptr [10]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y18" ),
    .INIT ( 64'hF3F3C0C0F3AAC0AA ))
  \u_fifo_b2a/wptr_10_dpot  (
    .ADR2(\u_fifo_b2a/cptr [10]),
    .ADR1(\u_rx_b/m_tlast_0 ),
    .ADR5(\u_fifo_b2a/drop_7994 ),
    .ADR4(\u_fifo_b2a/wptr [10]),
    .ADR0(\u_fifo_b2a/wptr_n<10>_0 ),
    .ADR3(\u_fifo_b2a/used<11>_0 ),
    .O(\u_fifo_b2a/wptr_10_dpot_2782 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y18" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/wptr_9  (
    .CE(\u_rx_b/m_tvalid_7995 ),
    .CLK(\NlwBufferSignal_u_fifo_b2a/wptr_9/CLK ),
    .I(\u_fifo_b2a/wptr_9_dpot_2790 ),
    .O(\u_fifo_b2a/wptr [9]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y18" ),
    .INIT ( 64'hDD88DD88DD88F0F0 ))
  \u_fifo_b2a/wptr_9_dpot  (
    .ADR1(\u_fifo_b2a/cptr [9]),
    .ADR0(\u_rx_b/m_tlast_0 ),
    .ADR5(\u_fifo_b2a/drop_7994 ),
    .ADR3(\u_fifo_b2a/wptr [9]),
    .ADR2(\u_fifo_b2a/wptr_n<9>_0 ),
    .ADR4(\u_fifo_b2a/used<11>_0 ),
    .O(\u_fifo_b2a/wptr_9_dpot_2790 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y18" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/wptr_8  (
    .CE(\u_rx_b/m_tvalid_7995 ),
    .CLK(\NlwBufferSignal_u_fifo_b2a/wptr_8/CLK ),
    .I(\u_fifo_b2a/wptr_8_dpot_2798 ),
    .O(\u_fifo_b2a/wptr [8]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y18" ),
    .INIT ( 64'hAAFFACFCAA00AC0C ))
  \u_fifo_b2a/wptr_8_dpot  (
    .ADR0(\u_fifo_b2a/cptr [8]),
    .ADR3(\u_rx_b/m_tlast_0 ),
    .ADR2(\u_fifo_b2a/drop_7994 ),
    .ADR5(\u_fifo_b2a/wptr [8]),
    .ADR1(\u_fifo_b2a/wptr_n<8>_0 ),
    .ADR4(\u_fifo_b2a/used<11>_0 ),
    .O(\u_fifo_b2a/wptr_8_dpot_2798 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y19" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rg_s2_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rg_s2_3/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/rg_s2_3/IN ),
    .O(\u_fifo_b2a/rg_s2 [3]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y19" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rg_s2_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rg_s2_2/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/rg_s2_2/IN ),
    .O(\u_fifo_b2a/rg_s2 [2]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y19" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rg_s2_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rg_s2_1/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/rg_s2_1/IN ),
    .O(\u_fifo_b2a/rg_s2 [1]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y19" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rg_s2_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rg_s2_0/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/rg_s2_0/IN ),
    .O(\u_fifo_b2a/rg_s2 [0]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y24" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cg_s2_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cg_s2_3/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/cg_s2_3/IN ),
    .O(\u_fifo_b2a/cg_s2 [3]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y24" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cg_s2_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cg_s2_2/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/cg_s2_2/IN ),
    .O(\u_fifo_b2a/cg_s2 [2]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y24" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cg_s2_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cg_s2_1/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/cg_s2_1/IN ),
    .O(\u_fifo_b2a/cg_s2 [1]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y24" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cg_s2_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cg_s2_0/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/cg_s2_0/IN ),
    .O(\u_fifo_b2a/cg_s2 [0]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_BUF   \u_engine/win<14>/u_engine/win<14>_DMUX_Delay  (
    .I(\u_engine/win [15]),
    .O(\u_engine/win<15>_0 )
  );
  X_BUF   \u_engine/win<14>/u_engine/win<14>_CMUX_Delay  (
    .I(\u_engine/win [13]),
    .O(\u_engine/win<13>_0 )
  );
  X_BUF   \u_engine/win<14>/u_engine/win<14>_BMUX_Delay  (
    .I(\u_engine/win [11]),
    .O(\u_engine/win<11>_0 )
  );
  X_BUF   \u_engine/win<14>/u_engine/win<14>_AMUX_Delay  (
    .I(\u_engine/win [9]),
    .O(\u_engine/win<9>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y28" ),
    .INIT ( 1'b0 ))
  \u_engine/win_14  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_14/CLK ),
    .I(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<14> ),
    .O(\u_engine/win [14]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y28" ),
    .INIT ( 64'h0000F0F00000F0F0 ))
  \u_engine/Mmux_win_nxt[55]_GND_6_o_mux_51_OUT61  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\u_engine/win [6]),
    .ADR4(\u_rx_a/m_tlast_0 ),
    .ADR5(1'b1),
    .O(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<14> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y28" ),
    .INIT ( 32'h0000CCCC ))
  \u_engine/Mmux_win_nxt[55]_GND_6_o_mux_51_OUT71  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR1(\u_engine/win [7]),
    .ADR3(1'b1),
    .ADR4(\u_rx_a/m_tlast_0 ),
    .O(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<15> )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y28" ),
    .INIT ( 1'b0 ))
  \u_engine/win_15  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_15/CLK ),
    .I(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<15> ),
    .O(\u_engine/win [15]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y28" ),
    .INIT ( 1'b0 ))
  \u_engine/win_12  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_12/CLK ),
    .I(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<12> ),
    .O(\u_engine/win [12]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y28" ),
    .INIT ( 64'h0F0F00000F0F0000 ))
  \u_engine/Mmux_win_nxt[55]_GND_6_o_mux_51_OUT43  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_engine/win [4]),
    .ADR2(\u_rx_a/m_tlast_0 ),
    .ADR5(1'b1),
    .O(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<12> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y28" ),
    .INIT ( 32'h0C0C0C0C ))
  \u_engine/Mmux_win_nxt[55]_GND_6_o_mux_51_OUT51  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR1(\u_engine/win [5]),
    .ADR3(1'b1),
    .ADR2(\u_rx_a/m_tlast_0 ),
    .O(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<13> )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y28" ),
    .INIT ( 1'b0 ))
  \u_engine/win_13  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_13/CLK ),
    .I(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<13> ),
    .O(\u_engine/win [13]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y28" ),
    .INIT ( 1'b0 ))
  \u_engine/win_10  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_10/CLK ),
    .I(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<10> ),
    .O(\u_engine/win [10]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y28" ),
    .INIT ( 64'h00FF000000FF0000 ))
  \u_engine/Mmux_win_nxt[55]_GND_6_o_mux_51_OUT23  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_engine/win [2]),
    .ADR3(\u_rx_a/m_tlast_0 ),
    .ADR5(1'b1),
    .O(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<10> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y28" ),
    .INIT ( 32'h00F000F0 ))
  \u_engine/Mmux_win_nxt[55]_GND_6_o_mux_51_OUT34  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\u_engine/win [3]),
    .ADR4(1'b1),
    .ADR3(\u_rx_a/m_tlast_0 ),
    .O(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<11> )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y28" ),
    .INIT ( 1'b0 ))
  \u_engine/win_11  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_11/CLK ),
    .I(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<11> ),
    .O(\u_engine/win [11]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y28" ),
    .INIT ( 1'b0 ))
  \u_engine/win_8  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_8/CLK ),
    .I(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<8> ),
    .O(\u_engine/win [8]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y28" ),
    .INIT ( 64'h00AA00AA00AA00AA ))
  \u_engine/Mmux_win_nxt[55]_GND_6_o_mux_51_OUT471  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR0(\u_engine/win [0]),
    .ADR3(\u_rx_a/m_tlast_0 ),
    .ADR5(1'b1),
    .O(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<8> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y28" ),
    .INIT ( 32'h00CC00CC ))
  \u_engine/Mmux_win_nxt[55]_GND_6_o_mux_51_OUT481  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR1(\u_engine/win [1]),
    .ADR4(1'b1),
    .ADR3(\u_rx_a/m_tlast_0 ),
    .O(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<9> )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y28" ),
    .INIT ( 1'b0 ))
  \u_engine/win_9  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_9/CLK ),
    .I(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<9> ),
    .O(\u_engine/win [9]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_BUF   \u_engine/win<46>/u_engine/win<46>_DMUX_Delay  (
    .I(\u_engine/win [47]),
    .O(\u_engine/win<47>_0 )
  );
  X_BUF   \u_engine/win<46>/u_engine/win<46>_CMUX_Delay  (
    .I(\u_engine/win [44]),
    .O(\u_engine/win<44>_0 )
  );
  X_BUF   \u_engine/win<46>/u_engine/win<46>_BMUX_Delay  (
    .I(\u_engine/win [42]),
    .O(\u_engine/win<42>_0 )
  );
  X_BUF   \u_engine/win<46>/u_engine/win<46>_AMUX_Delay  (
    .I(\u_engine/win [40]),
    .O(\u_engine/win<40>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y29" ),
    .INIT ( 1'b0 ))
  \u_engine/win_46  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_46/CLK ),
    .I(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<46> ),
    .O(\u_engine/win [46]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y29" ),
    .INIT ( 64'h0000F0F00000F0F0 ))
  \u_engine/Mmux_win_nxt[55]_GND_6_o_mux_51_OUT411  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\u_engine/win<38>_0 ),
    .ADR4(\u_rx_a/m_tlast_0 ),
    .ADR5(1'b1),
    .O(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<46> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y29" ),
    .INIT ( 32'h0000CCCC ))
  \u_engine/Mmux_win_nxt[55]_GND_6_o_mux_51_OUT421  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR1(\u_engine/win [39]),
    .ADR3(1'b1),
    .ADR4(\u_rx_a/m_tlast_0 ),
    .O(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<47> )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y29" ),
    .INIT ( 1'b0 ))
  \u_engine/win_47  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_47/CLK ),
    .I(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<47> ),
    .O(\u_engine/win [47]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y29" ),
    .INIT ( 1'b0 ))
  \u_engine/win_43  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_43/CLK ),
    .I(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<43> ),
    .O(\u_engine/win [43]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y29" ),
    .INIT ( 64'h0000FF000000FF00 ))
  \u_engine/Mmux_win_nxt[55]_GND_6_o_mux_51_OUT381  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\u_engine/win<35>_0 ),
    .ADR4(\u_rx_a/m_tlast_0 ),
    .ADR5(1'b1),
    .O(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<43> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y29" ),
    .INIT ( 32'h0000AAAA ))
  \u_engine/Mmux_win_nxt[55]_GND_6_o_mux_51_OUT391  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR0(\u_engine/win [36]),
    .ADR3(1'b1),
    .ADR4(\u_rx_a/m_tlast_0 ),
    .O(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<44> )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y29" ),
    .INIT ( 1'b0 ))
  \u_engine/win_44  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_44/CLK ),
    .I(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<44> ),
    .O(\u_engine/win [44]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y29" ),
    .INIT ( 1'b0 ))
  \u_engine/win_41  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_41/CLK ),
    .I(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<41> ),
    .O(\u_engine/win [41]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y29" ),
    .INIT ( 64'h00F000F000F000F0 ))
  \u_engine/Mmux_win_nxt[55]_GND_6_o_mux_51_OUT361  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR2(\u_engine/win<33>_0 ),
    .ADR3(\u_rx_a/m_tlast_0 ),
    .ADR5(1'b1),
    .O(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<41> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y29" ),
    .INIT ( 32'h00CC00CC ))
  \u_engine/Mmux_win_nxt[55]_GND_6_o_mux_51_OUT371  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR1(\u_engine/win [34]),
    .ADR4(1'b1),
    .ADR3(\u_rx_a/m_tlast_0 ),
    .O(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<42> )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y29" ),
    .INIT ( 1'b0 ))
  \u_engine/win_42  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_42/CLK ),
    .I(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<42> ),
    .O(\u_engine/win [42]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y29" ),
    .INIT ( 1'b0 ))
  \u_engine/win_39  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_39/CLK ),
    .I(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<39> ),
    .O(\u_engine/win [39]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y29" ),
    .INIT ( 64'h00FF000000FF0000 ))
  \u_engine/Mmux_win_nxt[55]_GND_6_o_mux_51_OUT331  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_engine/win<31>_0 ),
    .ADR3(\u_rx_a/m_tlast_0 ),
    .ADR5(1'b1),
    .O(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<39> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y29" ),
    .INIT ( 32'h00F000F0 ))
  \u_engine/Mmux_win_nxt[55]_GND_6_o_mux_51_OUT351  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\u_engine/win [32]),
    .ADR4(1'b1),
    .ADR3(\u_rx_a/m_tlast_0 ),
    .O(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<40> )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y29" ),
    .INIT ( 1'b0 ))
  \u_engine/win_40  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_40/CLK ),
    .I(\u_engine/win_nxt[55]_GND_6_o_mux_51_OUT<40> ),
    .O(\u_engine/win [40]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y30" ),
    .INIT ( 1'b0 ))
  \u_engine/sig_done  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/sig_done/CLK ),
    .I(\u_engine/sig_done_rstpot_2898 ),
    .O(\u_engine/sig_done_8141 ),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y30" ),
    .INIT ( 64'h0000FFCCFF00FF00 ))
  \u_engine/sig_done_rstpot  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR5(\u_rx_a/m_tvalid_7480 ),
    .ADR3(\u_engine/sig_done_8141 ),
    .ADR4(\u_rx_a/m_tlast_0 ),
    .ADR1(\u_engine/sig_done_win_nxt[55]_AND_42_o_0 ),
    .O(\u_engine/sig_done_rstpot_2898 )
  );
  X_BUF   \u_engine/win<7>/u_engine/win<7>_AMUX_Delay  (
    .I(\u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<5>_pack_1 ),
    .O(\u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<5> )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y35" ),
    .INIT ( 1'b0 ))
  \u_engine/win_7  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_7/CLK ),
    .I(\NlwBufferSignal_u_engine/win_7/IN ),
    .O(\u_engine/win [7]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y35" ),
    .INIT ( 1'b0 ))
  \u_engine/win_6  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_6/CLK ),
    .I(\NlwBufferSignal_u_engine/win_6/IN ),
    .O(\u_engine/win [6]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y35" ),
    .INIT ( 1'b0 ))
  \u_engine/win_5  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_5/CLK ),
    .I(\NlwBufferSignal_u_engine/win_5/IN ),
    .O(\u_engine/win [5]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y35" ),
    .INIT ( 1'b0 ))
  \u_engine/win_4  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_engine/win_4/CLK ),
    .I(\u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<4> ),
    .O(\u_engine/win [4]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y35" ),
    .INIT ( 64'h3030303030303030 ))
  \u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<4>1  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\u_rx_a/m_tdata [4]),
    .ADR1(\u_rx_a/m_tlast_0 ),
    .ADR5(1'b1),
    .O(\u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<4> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y35" ),
    .INIT ( 32'h33330000 ))
  \u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<5>1  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_rx_a/m_tdata [5]),
    .ADR3(1'b1),
    .ADR1(\u_rx_a/m_tlast_0 ),
    .O(\u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<5>_pack_1 )
  );
  X_BUF   \u_engine/proto<7>/u_engine/proto<7>_BMUX_Delay  (
    .I(N379),
    .O(N379_0)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y36" ),
    .INIT ( 1'b0 ))
  \u_engine/proto_7  (
    .CE(\u_engine/_n0367_inv_8340 ),
    .CLK(\NlwBufferSignal_u_engine/proto_7/CLK ),
    .I(\NlwBufferSignal_u_engine/proto_7/IN ),
    .O(\u_engine/proto [7]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y36" ),
    .INIT ( 1'b0 ))
  \u_engine/proto_6  (
    .CE(\u_engine/_n0367_inv_8340 ),
    .CLK(\NlwBufferSignal_u_engine/proto_6/CLK ),
    .I(\NlwBufferSignal_u_engine/proto_6/IN ),
    .O(\u_engine/proto [6]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y36" ),
    .INIT ( 1'b0 ))
  \u_engine/proto_5  (
    .CE(\u_engine/_n0367_inv_8340 ),
    .CLK(\NlwBufferSignal_u_engine/proto_5/CLK ),
    .I(\NlwBufferSignal_u_engine/proto_5/IN ),
    .O(\u_engine/proto [5]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y36" ),
    .INIT ( 64'h1111111111111111 ))
  \u_engine/_n0442_inv_SW0  (
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR1(N29),
    .ADR0(\u_engine/proto [4]),
    .ADR5(1'b1),
    .O(N210)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y36" ),
    .INIT ( 32'hF5F0A0F0 ))
  \u_engine/_n0377_inv_SW7  (
    .ADR2(\u_engine/syn_cnt [1]),
    .ADR3(\u_engine/proto [2]),
    .ADR4(\u_engine/Result<1>_0 ),
    .ADR1(1'b1),
    .ADR0(\u_engine/proto [4]),
    .O(N379)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y36" ),
    .INIT ( 1'b0 ))
  \u_engine/proto_4  (
    .CE(\u_engine/_n0367_inv_8340 ),
    .CLK(\NlwBufferSignal_u_engine/proto_4/CLK ),
    .I(\NlwBufferSignal_u_engine/proto_4/IN ),
    .O(\u_engine/proto [4]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y36" ),
    .INIT ( 64'hFFFFFFFFFFFFFBFF ))
  \u_engine/Mmux_GND_6_o_GND_6_o_MUX_194_o1_SW0  (
    .ADR1(\u_engine/syn_cnt [1]),
    .ADR2(\u_engine/syn_cnt [2]),
    .ADR5(\u_engine/syn_flood_active_8306 ),
    .ADR4(\u_engine/syn_cnt [0]),
    .ADR0(\u_engine/syn_cnt [3]),
    .ADR3(\u_engine/syn_cnt [5]),
    .O(N29)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y37" ),
    .INIT ( 1'b0 ))
  \u_engine/trigger_syn_flood  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/trigger_syn_flood/CLK ),
    .I(\u_engine/GND_6_o_GND_6_o_MUX_194_o ),
    .O(\u_engine/trigger_syn_flood_8302 ),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y37" ),
    .INIT ( 64'h0000000000000400 ))
  \u_engine/Mmux_GND_6_o_GND_6_o_MUX_194_o1  (
    .ADR3(\u_engine/syn_cnt [4]),
    .ADR4(N29),
    .ADR5(N357),
    .ADR1(\u_engine/s_tindex[15]_idx_flags[15]_equal_12_o_0 ),
    .ADR0(\u_engine/win_end ),
    .ADR2(N37),
    .O(\u_engine/GND_6_o_GND_6_o_MUX_194_o )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y37" ),
    .INIT ( 1'b0 ))
  \u_engine/syn_flood_active  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/syn_flood_active/CLK ),
    .I(\u_engine/syn_flood_active_rstpot_2962 ),
    .O(\u_engine/syn_flood_active_8306 ),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y37" ),
    .INIT ( 64'h5555010055550000 ))
  \u_engine/syn_flood_active_rstpot  (
    .ADR2(N57),
    .ADR3(\u_engine/s_tindex[15]_idx_flags[15]_equal_12_o_0 ),
    .ADR5(N210),
    .ADR4(\u_engine/syn_flood_active_8306 ),
    .ADR0(\u_engine/win_end ),
    .ADR1(N37),
    .O(\u_engine/syn_flood_active_rstpot_2962 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y37" ),
    .INIT ( 64'hFFDFFFFFFFDFFFFF ))
  \u_engine/Mmux_GND_6_o_s_tindex[15]_MUX_167_o11_SW0  (
    .ADR5(1'b1),
    .ADR3(\u_engine/proto [5]),
    .ADR1(\u_engine/proto [3]),
    .ADR2(\u_engine/ihl_ok_7478 ),
    .ADR4(\u_engine/is_ipv4_7479 ),
    .ADR0(\u_rx_a/m_tvalid_7480 ),
    .O(N35)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y37" ),
    .INIT ( 64'hFFFFFFFFFFFFFBFF ))
  \u_engine/syn_hit_SW0  (
    .ADR2(\u_engine/proto [7]),
    .ADR1(\u_engine/ver_ok_0 ),
    .ADR5(\u_rx_a/m_tdata [4]),
    .ADR3(\u_rx_a/m_tdata [1]),
    .ADR0(N67),
    .ADR4(N35),
    .O(N37)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y42" ),
    .INIT ( 1'b0 ))
  \u_uart/tgl_a_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/tgl_a_3/CLK ),
    .I(\u_uart/tgl_a[3]_trig_port_scan_xor_0_OUT<3> ),
    .O(\u_uart/tgl_a [3]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y42" ),
    .INIT ( 64'h0F0F0F0FF0F0F0F0 ))
  \u_uart/Mxor_tgl_a[3]_trig_port_scan_xor_0_OUT_3_xo<0>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR5(\u_uart/tgl_a [3]),
    .ADR4(1'b1),
    .ADR2(\u_engine/trigger_port_scan_7329 ),
    .O(\u_uart/tgl_a[3]_trig_port_scan_xor_0_OUT<3> )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y42" ),
    .INIT ( 1'b0 ))
  \u_uart/tgl_a_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/tgl_a_2/CLK ),
    .I(\u_uart/tgl_a[3]_trig_port_scan_xor_0_OUT<2> ),
    .O(\u_uart/tgl_a [2]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y42" ),
    .INIT ( 64'h0000FFFFFFFF0000 ))
  \u_uart/Mxor_tgl_a[3]_trig_port_scan_xor_0_OUT_2_xo<0>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_uart/tgl_a [2]),
    .ADR3(1'b1),
    .ADR5(\u_engine/trigger_syn_flood_8302 ),
    .O(\u_uart/tgl_a[3]_trig_port_scan_xor_0_OUT<2> )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y42" ),
    .INIT ( 1'b0 ))
  \u_uart/tgl_a_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/tgl_a_1/CLK ),
    .I(\u_uart/tgl_a[3]_trig_port_scan_xor_0_OUT<1> ),
    .O(\u_uart/tgl_a [1]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y42" ),
    .INIT ( 64'h00FFFF0000FFFF00 ))
  \u_uart/Mxor_tgl_a[3]_trig_port_scan_xor_0_OUT_1_xo<0>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\u_uart/tgl_a [1]),
    .ADR5(1'b1),
    .ADR4(\u_engine/trigger_signature_8145 ),
    .O(\u_uart/tgl_a[3]_trig_port_scan_xor_0_OUT<1> )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y42" ),
    .INIT ( 1'b0 ))
  \u_uart/tgl_a_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/tgl_a_0/CLK ),
    .I(\u_uart/tgl_a[3]_trig_port_scan_xor_0_OUT<0> ),
    .O(\u_uart/tgl_a [0]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y42" ),
    .INIT ( 64'h00FF00FFFF00FF00 ))
  \u_uart/Mxor_tgl_a[3]_trig_port_scan_xor_0_OUT_0_xo<0>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(\u_uart/tgl_a [0]),
    .ADR4(1'b1),
    .ADR3(\u_engine/trigger_icmp_8294 ),
    .O(\u_uart/tgl_a[3]_trig_port_scan_xor_0_OUT<0> )
  );
  X_BUF   \u_uart/t1<3>/u_uart/t1<3>_DMUX_Delay  (
    .I(\u_uart/t2 [3]),
    .O(\u_uart/t2<3>_0 )
  );
  X_BUF   \u_uart/t1<3>/u_uart/t1<3>_CMUX_Delay  (
    .I(\u_uart/t2 [2]),
    .O(\u_uart/t2<2>_0 )
  );
  X_BUF   \u_uart/t1<3>/u_uart/t1<3>_BMUX_Delay  (
    .I(\u_uart/t2 [1]),
    .O(\u_uart/t2<1>_0 )
  );
  X_BUF   \u_uart/t1<3>/u_uart/t1<3>_AMUX_Delay  (
    .I(\u_uart/t2 [0]),
    .O(\u_uart/t2<0>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y49" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_uart/t1_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/t1_3/CLK ),
    .I(\NlwBufferSignal_u_uart/t1_3/IN ),
    .O(\u_uart/t1 [3]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y49" ),
    .INIT ( 32'hFFFF0000 ))
  \u_uart/t1<3>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_uart/t1 [3]),
    .ADR3(1'b1),
    .O(\u_uart/t1<3>_rt_2997 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y49" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_uart/t2_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/t2_3/CLK ),
    .I(\u_uart/t1<3>_rt_2997 ),
    .O(\u_uart/t2 [3]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y49" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_uart/t1_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/t1_2/CLK ),
    .I(\NlwBufferSignal_u_uart/t1_2/IN ),
    .O(\u_uart/t1 [2]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y49" ),
    .INIT ( 32'hFFFF0000 ))
  \u_uart/t1<2>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_uart/t1 [2]),
    .ADR3(1'b1),
    .O(\u_uart/t1<2>_rt_3003 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y49" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_uart/t2_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/t2_2/CLK ),
    .I(\u_uart/t1<2>_rt_3003 ),
    .O(\u_uart/t2 [2]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y49" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_uart/t1_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/t1_1/CLK ),
    .I(\NlwBufferSignal_u_uart/t1_1/IN ),
    .O(\u_uart/t1 [1]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y49" ),
    .INIT ( 32'hFFFF0000 ))
  \u_uart/t1<1>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_uart/t1 [1]),
    .ADR3(1'b1),
    .O(\u_uart/t1<1>_rt_3008 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y49" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_uart/t2_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/t2_1/CLK ),
    .I(\u_uart/t1<1>_rt_3008 ),
    .O(\u_uart/t2 [1]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y49" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_uart/t1_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/t1_0/CLK ),
    .I(\NlwBufferSignal_u_uart/t1_0/IN ),
    .O(\u_uart/t1 [0]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y49" ),
    .INIT ( 32'hFFFF0000 ))
  \u_uart/t1<0>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_uart/t1 [0]),
    .ADR3(1'b1),
    .O(\u_uart/t1<0>_rt_3013 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y49" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_uart/t2_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/t2_0/CLK ),
    .I(\u_uart/t1<0>_rt_3013 ),
    .O(\u_uart/t2 [0]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y53" ),
    .INIT ( 64'h04B1318403E26283 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT214  (
    .ADR3(\u_uart/idx [5]),
    .ADR2(\u_uart/idx [1]),
    .ADR5(\u_uart/idx [0]),
    .ADR0(\u_uart/idx [2]),
    .ADR4(\u_uart/idx [4]),
    .ADR1(\u_uart/idx [3]),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT214_8381 )
  );
  X_BUF   \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT78/u_uart/Mmux_code[2]_GND_7_o_select_48_OUT78_BMUX_Delay  (
    .I(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT75_3035 ),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT75_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y60" ),
    .INIT ( 64'h55555B5F4557475F ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT79  (
    .ADR2(\u_uart/idx [4]),
    .ADR4(\u_uart/idx [3]),
    .ADR0(\u_uart/idx [5]),
    .ADR5(\u_uart/idx [2]),
    .ADR1(\u_uart/idx [1]),
    .ADR3(\u_uart/idx [0]),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT78 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y60" ),
    .INIT ( 64'h5F5FFFFF5F5FFFFF ))
  \u_uart/Sh181021  (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\u_uart/idx [1]),
    .ADR4(\u_uart/idx [0]),
    .ADR0(\u_uart/idx [2]),
    .O(\u_uart/Sh18102 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y60" ),
    .INIT ( 64'h883388E2883388E2 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT75  (
    .ADR3(\u_uart/idx [3]),
    .ADR1(\u_uart/idx [4]),
    .ADR0(\u_uart/idx [1]),
    .ADR4(\u_uart/idx [0]),
    .ADR2(\u_uart/idx [2]),
    .ADR5(1'b1),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT74_7562 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y60" ),
    .INIT ( 32'hCF4F0F47 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT76  (
    .ADR3(\u_uart/idx [3]),
    .ADR1(\u_uart/idx [4]),
    .ADR0(\u_uart/idx [1]),
    .ADR4(\u_uart/idx [0]),
    .ADR2(\u_uart/idx [2]),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT75_3035 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y60" ),
    .INIT ( 64'hFFFFFFFFFF00FF00 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT3711  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR5(\u_uart/idx [1]),
    .ADR3(\u_uart/idx [0]),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT371 )
  );
  X_BUF   \u_tx_b/bcnt_FSM_FFd2/u_tx_b/bcnt_FSM_FFd2_CMUX_Delay  (
    .I(\u_tx_b/state[1]_GND_5_o_wide_mux_25_OUT<1> ),
    .O(\u_tx_b/state[1]_GND_5_o_wide_mux_25_OUT<1>_0 )
  );
  X_BUF   \u_tx_b/bcnt_FSM_FFd2/u_tx_b/bcnt_FSM_FFd2_BMUX_Delay  (
    .I(\u_tx_b/bcnt_FSM_FFd1_pack_11 ),
    .O(\u_tx_b/bcnt_FSM_FFd1_7666 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X8Y4" ))
  \u_tx_b/Mmux_state[1]_GND_5_o_wide_mux_25_OUT22  (
    .IA(N472),
    .IB(N473),
    .O(\u_tx_b/state[1]_GND_5_o_wide_mux_25_OUT<1> ),
    .SEL(\u_tx_b/bcnt_FSM_FFd1_7666 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y4" ),
    .INIT ( 64'h8CCC80C08C0C8000 ))
  \u_tx_b/Mmux_state[1]_GND_5_o_wide_mux_25_OUT22_F  (
    .ADR1(\u_tx_b/state_FSM_FFd2_7387 ),
    .ADR2(\u_tx_b/state_FSM_FFd1_7386 ),
    .ADR3(\u_tx_b/bcnt_FSM_FFd2_7665 ),
    .ADR5(a2b_rd_data[1]),
    .ADR0(\u_tx_b/cur [3]),
    .ADR4(\u_tx_b/pcnt[5]_GND_5_o_equal_7_o ),
    .O(N472)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y4" ),
    .INIT ( 64'hCACA0000FA0A0000 ))
  \u_tx_b/Mmux_state[1]_GND_5_o_wide_mux_25_OUT22_G  (
    .ADR4(\u_tx_b/state_FSM_FFd2_7387 ),
    .ADR2(\u_tx_b/state_FSM_FFd1_7386 ),
    .ADR5(\u_tx_b/bcnt_FSM_FFd2_7665 ),
    .ADR3(\u_tx_b/cur [7]),
    .ADR1(\u_tx_b/cur [5]),
    .ADR0(\u_tx_b/pcnt[5]_GND_5_o_equal_7_o ),
    .O(N473)
  );
  X_FF #(
    .LOC ( "SLICE_X8Y4" ),
    .INIT ( 1'b0 ))
  \u_tx_b/bcnt_FSM_FFd2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_tx_b/bcnt_FSM_FFd2/CLK ),
    .I(\u_tx_b/bcnt_FSM_FFd2-In ),
    .O(\u_tx_b/bcnt_FSM_FFd2_7665 ),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y4" ),
    .INIT ( 64'h4F7F40404F7F4040 ))
  \u_tx_b/bcnt_FSM_FFd2-In1  (
    .ADR2(\u_tx_b/state_FSM_FFd2_7387 ),
    .ADR1(\u_tx_b/state_FSM_FFd1_7386 ),
    .ADR3(\u_tx_b/pcnt[5]_GND_5_o_equal_7_o ),
    .ADR4(\u_tx_b/bcnt_FSM_FFd2_7665 ),
    .ADR0(\u_tx_b/bcnt_FSM_FFd1_7666 ),
    .ADR5(1'b1),
    .O(\u_tx_b/bcnt_FSM_FFd2-In )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y4" ),
    .INIT ( 32'hCAEA0A2A ))
  \u_tx_b/bcnt_FSM_FFd1-In1  (
    .ADR2(\u_tx_b/state_FSM_FFd2_7387 ),
    .ADR1(\u_tx_b/state_FSM_FFd1_7386 ),
    .ADR3(\u_tx_b/pcnt[5]_GND_5_o_equal_7_o ),
    .ADR4(\u_tx_b/bcnt_FSM_FFd2_7665 ),
    .ADR0(\u_tx_b/bcnt_FSM_FFd1_7666 ),
    .O(\u_tx_b/bcnt_FSM_FFd1-In )
  );
  X_FF #(
    .LOC ( "SLICE_X8Y4" ),
    .INIT ( 1'b0 ))
  \u_tx_b/bcnt_FSM_FFd1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_tx_b/bcnt_FSM_FFd1/CLK ),
    .I(\u_tx_b/bcnt_FSM_FFd1-In ),
    .O(\u_tx_b/bcnt_FSM_FFd1_pack_11 ),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y4" ),
    .INIT ( 64'h4000000000000000 ))
  \u_tx_b/pcnt[5]_GND_5_o_equal_7_o<5>2  (
    .ADR2(\u_tx_b/pcnt [3]),
    .ADR5(\u_tx_b/pcnt [2]),
    .ADR0(\u_tx_b/pcnt [5]),
    .ADR3(\u_tx_b/pcnt [1]),
    .ADR1(\u_tx_b/pcnt [4]),
    .ADR4(\u_tx_b/pcnt [0]),
    .O(\u_tx_b/pcnt[5]_GND_5_o_equal_7_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y5" ),
    .INIT ( 64'hF0FF0000FFFF0000 ))
  \u_fifo_a2b/rd_empty125_SW2  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(\u_tx_b/state_FSM_FFd2_7387 ),
    .ADR2(\u_tx_b/bcnt_FSM_FFd2_7665 ),
    .ADR3(\u_tx_b/cur_last_8411 ),
    .ADR5(\u_tx_b/bcnt_FSM_FFd1_7666 ),
    .O(N260)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y5" ),
    .INIT ( 64'hAFAFAFAFFFFFFFFF ))
  \u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_SW0  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\u_tx_b/cur_last_8411 ),
    .ADR5(\u_tx_b/bcnt_FSM_FFd1_7666 ),
    .ADR0(\u_tx_b/bcnt_FSM_FFd2_7665 ),
    .O(\u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT1 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y5" ),
    .INIT ( 64'hCE40CC0002400000 ))
  \u_fifo_a2b/rd_empty125_SW0  (
    .ADR0(\u_tx_b/pcnt [4]),
    .ADR2(\u_tx_b/pcnt [5]),
    .ADR1(\u_tx_b/state_FSM_FFd1_7386 ),
    .ADR3(\u_tx_b/state_FSM_FFd2_7387 ),
    .ADR5(\u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT1 ),
    .ADR4(\u_tx_b/Madd_pcnt[5]_GND_5_o_add_21_OUT_cy<3> ),
    .O(N49)
  );
  X_FF #(
    .LOC ( "SLICE_X8Y5" ),
    .INIT ( 1'b0 ))
  \u_tx_b/cur_last  (
    .CE(a2b_rd_en),
    .CLK(\NlwBufferSignal_u_tx_b/cur_last/CLK ),
    .I(\NlwBufferSignal_u_tx_b/cur_last/IN ),
    .O(\u_tx_b/cur_last_8411 ),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y5" ),
    .INIT ( 64'hEEEE6666AAAA0000 ))
  \u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_SW4_SW0  (
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(\u_tx_b/pcnt [1]),
    .ADR1(\u_tx_b/pcnt [0]),
    .ADR4(N49),
    .ADR5(\u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT11_0 ),
    .O(N230)
  );
  X_BUF   \N87/N87_CMUX_Delay  (
    .I(N87),
    .O(N87_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X8Y6" ))
  \u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_SW6  (
    .IA(N458),
    .IB(N459),
    .O(N87),
    .SEL(\u_fifo_a2b/cptr_r[0] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y6" ),
    .INIT ( 64'h195599555F5FFFFF ))
  \u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_SW6_F  (
    .ADR1(\u_tx_b/pcnt [4]),
    .ADR0(\u_tx_b/pcnt [5]),
    .ADR4(\u_fifo_a2b/rptr [0]),
    .ADR3(\u_tx_b/Madd_pcnt[5]_GND_5_o_add_21_OUT_cy<3> ),
    .ADR2(N49),
    .ADR5(\u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT11_0 ),
    .O(N458)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y6" ),
    .INIT ( 64'hC4333333F7F7F7F7 ))
  \u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_SW6_G  (
    .ADR4(\u_tx_b/pcnt [4]),
    .ADR1(\u_tx_b/pcnt [5]),
    .ADR2(\u_fifo_a2b/rptr [0]),
    .ADR3(\u_tx_b/Madd_pcnt[5]_GND_5_o_add_21_OUT_cy<3> ),
    .ADR0(N49),
    .ADR5(\u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT11_0 ),
    .O(N459)
  );
  X_BUF   \N81/N81_CMUX_Delay  (
    .I(N81),
    .O(N81_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X8Y7" ))
  \u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_SW2  (
    .IA(N454),
    .IB(N455),
    .O(N81),
    .SEL(\u_fifo_a2b/cptr_r[0] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y7" ),
    .INIT ( 64'h20A05F5F33FFFFFF ))
  \u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_SW2_F  (
    .ADR4(\u_tx_b/pcnt [2]),
    .ADR0(\u_tx_b/pcnt [1]),
    .ADR2(\u_tx_b/pcnt [0]),
    .ADR3(\u_fifo_a2b/rptr [0]),
    .ADR1(N49),
    .ADR5(\u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT11_0 ),
    .O(N454)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y7" ),
    .INIT ( 64'hB7B73F3F07B70F3F ))
  \u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_SW2_G  (
    .ADR2(\u_tx_b/pcnt [2]),
    .ADR4(\u_tx_b/pcnt [1]),
    .ADR0(\u_tx_b/pcnt [0]),
    .ADR5(\u_fifo_a2b/rptr [0]),
    .ADR3(N49),
    .ADR1(\u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT11_0 ),
    .O(N455)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y8" ),
    .INIT ( 64'h9669699669969669 ))
  \u_fifo_a2b/Mxor_cptr_r<0>_xo<0>1  (
    .ADR5(\u_fifo_a2b/cg_s2 [3]),
    .ADR0(\u_fifo_a2b/cg_s2 [4]),
    .ADR3(\u_fifo_a2b/cg_s2 [5]),
    .ADR1(\u_fifo_a2b/cg_s2 [6]),
    .ADR2(N121),
    .ADR4(\u_fifo_a2b/cptr_r[7] ),
    .O(\u_fifo_a2b/cptr_r[0] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y8" ),
    .INIT ( 64'hFFAEC0C0FF5DC0C0 ))
  \u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_SW4_SW2  (
    .ADR4(\u_tx_b/pcnt [1]),
    .ADR2(\u_tx_b/pcnt [0]),
    .ADR0(\u_fifo_a2b/rptr [0]),
    .ADR3(N49),
    .ADR1(\u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT11_0 ),
    .ADR5(\u_fifo_a2b/cptr_r[0] ),
    .O(N232)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y8" ),
    .INIT ( 64'h0069009696FF69FF ))
  \u_fifo_a2b/rd_empty121_1  (
    .ADR0(\u_fifo_a2b/cg_s2 [4]),
    .ADR1(\u_fifo_a2b/cg_s2 [5]),
    .ADR2(\u_fifo_a2b/cg_s2 [6]),
    .ADR3(N129),
    .ADR5(N128),
    .ADR4(\u_fifo_a2b/cptr_r[7] ),
    .O(\u_fifo_a2b/rd_empty1211 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y24" ),
    .INIT ( 64'hF0F0AA550F0FAA55 ))
  \u_fifo_b2a/pop1_SW34  (
    .ADR1(1'b1),
    .ADR0(\u_fifo_b2a/rptr [5]),
    .ADR3(\u_fifo_b2a/rptr [6]),
    .ADR2(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<5>_0 ),
    .ADR5(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<6>_0 ),
    .ADR4(b2a_rd_en),
    .O(N332)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y25" ),
    .INIT ( 64'hAAAAC3AA5555C355 ))
  \u_fifo_b2a/pop1_SW35  (
    .ADR0(\u_fifo_b2a/rptr [6]),
    .ADR5(\u_fifo_b2a/rptr [5]),
    .ADR1(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<5>_0 ),
    .ADR2(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<6>_0 ),
    .ADR3(b2a_rd_en),
    .ADR4(\u_fifo_b2a/rd_empty12 ),
    .O(N333)
  );
  X_FF #(
    .LOC ( "SLICE_X8Y25" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rptr_gray_r_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rptr_gray_r_5/CLK ),
    .I(\u_fifo_b2a/rptr_n[11]_GND_4_o_xor_25_OUT<5> ),
    .O(\u_fifo_b2a/rptr_gray [5]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y25" ),
    .INIT ( 64'h15D5457555555555 ))
  \u_fifo_b2a/Mxor_rptr_n[11]_GND_4_o_xor_25_OUT_5_xo<0>1  (
    .ADR4(\u_fifo_b2a/rptr [0]),
    .ADR1(\u_fifo_b2a/cptr_r[0] ),
    .ADR5(\u_fifo_b2a/rd_empty121_7418 ),
    .ADR0(N332),
    .ADR2(\u_fifo_b2a/rd_empty124_7572 ),
    .ADR3(N333),
    .O(\u_fifo_b2a/rptr_n[11]_GND_4_o_xor_25_OUT<5> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y25" ),
    .INIT ( 64'hA5CCA5A5A533A5A5 ))
  \u_fifo_b2a/pop1_SW33  (
    .ADR2(\u_fifo_b2a/rptr [4]),
    .ADR0(\u_fifo_b2a/rptr [5]),
    .ADR1(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<4>_0 ),
    .ADR5(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<5>_0 ),
    .ADR4(b2a_rd_en),
    .ADR3(\u_fifo_b2a/rd_empty12 ),
    .O(N330)
  );
  X_FF #(
    .LOC ( "SLICE_X8Y25" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rptr_gray_r_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rptr_gray_r_4/CLK ),
    .I(\u_fifo_b2a/rptr_n[11]_GND_4_o_xor_25_OUT<4> ),
    .O(\u_fifo_b2a/rptr_gray [4]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y25" ),
    .INIT ( 64'h000080407FBFFFFF ))
  \u_fifo_b2a/Mxor_rptr_n[11]_GND_4_o_xor_25_OUT_4_xo<0>1  (
    .ADR3(\u_fifo_b2a/rptr [0]),
    .ADR0(\u_fifo_b2a/cptr_r[0] ),
    .ADR2(\u_fifo_b2a/rd_empty121_7418 ),
    .ADR5(N329),
    .ADR1(\u_fifo_b2a/rd_empty124_7572 ),
    .ADR4(N330),
    .O(\u_fifo_b2a/rptr_n[11]_GND_4_o_xor_25_OUT<4> )
  );
  X_FF #(
    .LOC ( "SLICE_X8Y26" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rg_s1_11  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rg_s1_11/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/rg_s1_11/IN ),
    .O(\u_fifo_b2a/rg_s1 [11]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X8Y26" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rg_s1_10  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rg_s1_10/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/rg_s1_10/IN ),
    .O(\u_fifo_b2a/rg_s1 [10]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X8Y26" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rg_s1_9  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rg_s1_9/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/rg_s1_9/IN ),
    .O(\u_fifo_b2a/rg_s1 [9]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X8Y26" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rg_s1_8  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rg_s1_8/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/rg_s1_8/IN ),
    .O(\u_fifo_b2a/rg_s1 [8]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y50" ),
    .INIT ( 64'h0011004400550000 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT5421  (
    .ADR2(1'b1),
    .ADR3(\u_uart/idx [5]),
    .ADR0(\u_uart/idx [0]),
    .ADR4(\u_uart/idx [4]),
    .ADR5(\u_uart/idx [2]),
    .ADR1(\u_uart/idx [3]),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT542 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y50" ),
    .INIT ( 64'h0000004400000000 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT59  (
    .ADR2(1'b1),
    .ADR3(\u_uart/code [1]),
    .ADR1(\u_uart/code<0>_0 ),
    .ADR4(\u_uart/code [2]),
    .ADR0(\u_uart/idx [2]),
    .ADR5(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT542 ),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT58_8387 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y51" ),
    .INIT ( 64'hAAAAAAA8AAAAA8A8 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT516  (
    .ADR0(\u_uart/idx [1]),
    .ADR5(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT11 ),
    .ADR3(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT512 ),
    .ADR2(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT514_8415 ),
    .ADR4(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT513_8417 ),
    .ADR1(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT58_8387 ),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT515_7549 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y51" ),
    .INIT ( 64'h0000004000C0A080 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT514  (
    .ADR5(\u_uart/idx [5]),
    .ADR4(\u_uart/idx [3]),
    .ADR0(\u_uart/idx [4]),
    .ADR2(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT14 ),
    .ADR3(\u_uart/idx [0]),
    .ADR1(\u_uart/Sh35521 ),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT513_8417 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y51" ),
    .INIT ( 64'hFFCCFFFFFFFFFFFF ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT515_SW0  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR5(\u_uart/code [1]),
    .ADR3(\u_uart/code<0>_0 ),
    .ADR1(\u_uart/code [2]),
    .ADR4(\u_uart/idx [0]),
    .O(N431)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y51" ),
    .INIT ( 64'h0000040801020000 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT515  (
    .ADR4(\u_uart/idx [5]),
    .ADR3(\u_uart/idx [1]),
    .ADR5(\u_uart/idx [4]),
    .ADR0(\u_uart/idx [2]),
    .ADR1(\u_uart/idx [3]),
    .ADR2(N431),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT514_8415 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y53" ),
    .INIT ( 64'h1111000001000000 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT15  (
    .ADR4(\u_uart/idx [5]),
    .ADR1(\u_uart/idx [2]),
    .ADR0(\u_uart/idx [4]),
    .ADR2(\u_uart/idx [3]),
    .ADR3(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT14 ),
    .ADR5(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT11 ),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT18_7516 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y60" ),
    .INIT ( 64'h5523557741775575 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT712  (
    .ADR0(\u_uart/idx [5]),
    .ADR3(\u_uart/idx [4]),
    .ADR5(\u_uart/idx [1]),
    .ADR1(\u_uart/idx [3]),
    .ADR2(\u_uart/idx [2]),
    .ADR4(\u_uart/idx [0]),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT711 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y5" ),
    .INIT ( 64'h9199F5FF19995FFF ))
  \u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_SW4_SW1  (
    .ADR0(\u_tx_b/pcnt [1]),
    .ADR1(\u_tx_b/pcnt [0]),
    .ADR5(\u_fifo_a2b/rptr [0]),
    .ADR3(N49),
    .ADR4(\u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT11_0 ),
    .ADR2(\u_fifo_a2b/cptr_r[0] ),
    .O(N231)
  );
  X_FF #(
    .LOC ( "SLICE_X9Y5" ),
    .INIT ( 1'b0 ))
  \u_tx_b/pcnt_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_tx_b/pcnt_1/CLK ),
    .I(\u_tx_b/state[1]_pcnt[5]_wide_mux_27_OUT<1> ),
    .O(\u_tx_b/pcnt [1]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y5" ),
    .INIT ( 64'hB3BF808CFFFF0000 ))
  \u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT22  (
    .ADR5(\u_fifo_a2b/rd_empty12 ),
    .ADR2(N50),
    .ADR1(\u_fifo_a2b/rd_empty124_7285 ),
    .ADR4(N230),
    .ADR0(N232),
    .ADR3(N231),
    .O(\u_tx_b/state[1]_pcnt[5]_wide_mux_27_OUT<1> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y5" ),
    .INIT ( 64'hFFFFEAAAFFFFAEAA ))
  \u_fifo_a2b/rd_empty125_SW7  (
    .ADR0(\u_tx_b/state_FSM_FFd1_7386 ),
    .ADR4(\u_tx_b/state_FSM_FFd2_7387 ),
    .ADR2(\u_fifo_a2b/rptr [0]),
    .ADR5(\u_fifo_a2b/cptr_r[0] ),
    .ADR1(\u_fifo_a2b/rd_empty121_7283 ),
    .ADR3(\u_fifo_a2b/rd_empty12 ),
    .O(N268)
  );
  X_FF #(
    .LOC ( "SLICE_X9Y5" ),
    .INIT ( 1'b0 ))
  \u_tx_b/pcnt_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_tx_b/pcnt_0/CLK ),
    .I(\u_tx_b/state[1]_pcnt[5]_wide_mux_27_OUT<0> ),
    .O(\u_tx_b/pcnt [0]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y5" ),
    .INIT ( 64'hF1FFFBFFF111FBBB ))
  \u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT13  (
    .ADR1(N267_0),
    .ADR5(\u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT11_0 ),
    .ADR2(\u_tx_b/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT12_7979 ),
    .ADR3(\u_tx_b/pcnt [0]),
    .ADR0(\u_fifo_a2b/rd_empty124_7285 ),
    .ADR4(N268),
    .O(\u_tx_b/state[1]_pcnt[5]_wide_mux_27_OUT<0> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y8" ),
    .INIT ( 64'h70F0F0F0B0F0F0F0 ))
  \u_fifo_a2b/pop1  (
    .ADR0(\u_fifo_a2b/rptr [0]),
    .ADR2(a2b_rd_en),
    .ADR4(\u_fifo_a2b/rd_empty121_7283 ),
    .ADR1(\u_fifo_a2b/rd_empty12 ),
    .ADR5(\u_fifo_a2b/cptr_r[0] ),
    .ADR3(\u_fifo_a2b/rd_empty1241 ),
    .O(\u_fifo_a2b/pop )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y8" ),
    .INIT ( 64'hFFE7E7FFBDFFFFBD ))
  \u_fifo_a2b/Mxor_cptr_r<3>_xo<0>1_SW1  (
    .ADR3(\u_fifo_a2b/cg_s2 [1]),
    .ADR1(\u_fifo_a2b/cg_s2 [2]),
    .ADR0(\u_fifo_a2b/cg_s2 [3]),
    .ADR2(\u_fifo_a2b/rptr [3]),
    .ADR4(\u_fifo_a2b/rptr [1]),
    .ADR5(\u_fifo_a2b/rptr [2]),
    .O(N129)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y8" ),
    .INIT ( 64'h0069009696FF69FF ))
  \u_fifo_a2b/rd_empty121  (
    .ADR0(\u_fifo_a2b/cg_s2 [4]),
    .ADR1(\u_fifo_a2b/cg_s2 [5]),
    .ADR2(\u_fifo_a2b/cg_s2 [6]),
    .ADR3(N129),
    .ADR5(N128),
    .ADR4(\u_fifo_a2b/cptr_r[7] ),
    .O(\u_fifo_a2b/rd_empty12 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y8" ),
    .INIT ( 64'hFF6F9FFFF9FFFFF6 ))
  \u_fifo_a2b/Mxor_cptr_r<3>_xo<0>1_SW0  (
    .ADR4(\u_fifo_a2b/cg_s2 [2]),
    .ADR0(\u_fifo_a2b/cg_s2 [1]),
    .ADR2(\u_fifo_a2b/cg_s2 [3]),
    .ADR5(\u_fifo_a2b/rptr [3]),
    .ADR1(\u_fifo_a2b/rptr [1]),
    .ADR3(\u_fifo_a2b/rptr [2]),
    .O(N128)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y9" ),
    .INIT ( 64'h9669699669969669 ))
  \u_fifo_a2b/Mxor_cptr_r<0>_xo<0>1_1  (
    .ADR2(\u_fifo_a2b/cg_s2 [3]),
    .ADR5(\u_fifo_a2b/cg_s2 [4]),
    .ADR0(\u_fifo_a2b/cg_s2 [5]),
    .ADR3(\u_fifo_a2b/cg_s2 [6]),
    .ADR1(N121),
    .ADR4(\u_fifo_a2b/cptr_r[7] ),
    .O(\u_fifo_a2b/Mxor_cptr_r<0>_xo<0>1_7844 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y11" ),
    .INIT ( 64'h00FFFF00FF0000FF ))
  \u_fifo_a2b/Mxor_cptr_r<5>_xo<0>1_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(\u_fifo_a2b/cg_s2 [0]),
    .ADR4(\u_fifo_a2b/cg_s2 [1]),
    .ADR3(\u_fifo_a2b/cg_s2 [2]),
    .O(N121)
  );
  X_FF #(
    .LOC ( "SLICE_X9Y17" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/wptr_3  (
    .CE(\u_rx_b/m_tvalid_7995 ),
    .CLK(\NlwBufferSignal_u_fifo_b2a/wptr_3/CLK ),
    .I(\u_fifo_b2a/wptr_3_dpot_3332 ),
    .O(\u_fifo_b2a/wptr [3]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y17" ),
    .INIT ( 64'hFFEE0F4EF0E40044 ))
  \u_fifo_b2a/wptr_3_dpot  (
    .ADR4(\u_fifo_b2a/cptr [3]),
    .ADR2(\u_rx_b/m_tlast_0 ),
    .ADR0(\u_fifo_b2a/drop_7994 ),
    .ADR5(\u_fifo_b2a/wptr [3]),
    .ADR1(\u_fifo_b2a/wptr_n<3>_0 ),
    .ADR3(\u_fifo_b2a/used<11>_0 ),
    .O(\u_fifo_b2a/wptr_3_dpot_3332 )
  );
  X_FF #(
    .LOC ( "SLICE_X9Y17" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/wptr_2  (
    .CE(\u_rx_b/m_tvalid_7995 ),
    .CLK(\NlwBufferSignal_u_fifo_b2a/wptr_2/CLK ),
    .I(\u_fifo_b2a/wptr_2_dpot_3342 ),
    .O(\u_fifo_b2a/wptr [2]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y17" ),
    .INIT ( 64'hFFEEF0E20F2E0022 ))
  \u_fifo_b2a/wptr_2_dpot  (
    .ADR5(\u_fifo_b2a/cptr [2]),
    .ADR2(\u_rx_b/m_tlast_0 ),
    .ADR1(\u_fifo_b2a/drop_7994 ),
    .ADR4(\u_fifo_b2a/wptr [2]),
    .ADR0(\u_fifo_b2a/wptr_n<2>_0 ),
    .ADR3(\u_fifo_b2a/used<11>_0 ),
    .O(\u_fifo_b2a/wptr_2_dpot_3342 )
  );
  X_FF #(
    .LOC ( "SLICE_X9Y17" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/wptr_1  (
    .CE(\u_rx_b/m_tvalid_7995 ),
    .CLK(\NlwBufferSignal_u_fifo_b2a/wptr_1/CLK ),
    .I(\u_fifo_b2a/wptr_1_dpot_3350 ),
    .O(\u_fifo_b2a/wptr [1]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y17" ),
    .INIT ( 64'hFFAAFCB855007430 ))
  \u_fifo_b2a/wptr_1_dpot  (
    .ADR5(\u_fifo_b2a/cptr [1]),
    .ADR0(\u_rx_b/m_tlast_0 ),
    .ADR1(\u_fifo_b2a/drop_7994 ),
    .ADR3(\u_fifo_b2a/wptr [1]),
    .ADR2(\u_fifo_b2a/wptr_n<1>_0 ),
    .ADR4(\u_fifo_b2a/used<11>_0 ),
    .O(\u_fifo_b2a/wptr_1_dpot_3350 )
  );
  X_FF #(
    .LOC ( "SLICE_X9Y17" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/wptr_0  (
    .CE(\u_rx_b/m_tvalid_7995 ),
    .CLK(\NlwBufferSignal_u_fifo_b2a/wptr_0/CLK ),
    .I(\u_fifo_b2a/wptr_0_dpot_3358 ),
    .O(\u_fifo_b2a/wptr [0]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y17" ),
    .INIT ( 64'hF0E4FFEEF0E40044 ))
  \u_fifo_b2a/wptr_0_dpot  (
    .ADR2(\u_fifo_b2a/cptr [0]),
    .ADR4(\u_rx_b/m_tlast_0 ),
    .ADR3(\u_fifo_b2a/drop_7994 ),
    .ADR5(\u_fifo_b2a/wptr [0]),
    .ADR1(\u_fifo_b2a/wptr_n<0>_0 ),
    .ADR0(\u_fifo_b2a/used<11>_0 ),
    .O(\u_fifo_b2a/wptr_0_dpot_3358 )
  );
  X_FF #(
    .LOC ( "SLICE_X9Y18" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cptr_gray_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cptr_gray_3/CLK ),
    .I(\u_fifo_b2a/cptr_gray_3_rstpot_3390 ),
    .O(\u_fifo_b2a/cptr_gray [3]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y18" ),
    .INIT ( 64'hFFDEFFFF00120000 ))
  \u_fifo_b2a/cptr_gray_3_rstpot  (
    .ADR1(\u_fifo_b2a/drop_7994 ),
    .ADR2(\u_fifo_b2a/wptr_n<3>_0 ),
    .ADR0(\u_fifo_b2a/wptr_n<4>_0 ),
    .ADR5(\u_fifo_b2a/cptr_gray [3]),
    .ADR4(\u_fifo_b2a/_n0130_inv1_rstpot_8316 ),
    .ADR3(\u_fifo_b2a/used<11>_0 ),
    .O(\u_fifo_b2a/cptr_gray_3_rstpot_3390 )
  );
  X_FF #(
    .LOC ( "SLICE_X9Y18" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cptr_gray_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cptr_gray_2/CLK ),
    .I(\u_fifo_b2a/cptr_gray_2_rstpot_3365 ),
    .O(\u_fifo_b2a/cptr_gray [2]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y18" ),
    .INIT ( 64'hFFBE0014FFFF0000 ))
  \u_fifo_b2a/cptr_gray_2_rstpot  (
    .ADR0(\u_fifo_b2a/drop_7994 ),
    .ADR2(\u_fifo_b2a/wptr_n<2>_0 ),
    .ADR1(\u_fifo_b2a/wptr_n<3>_0 ),
    .ADR4(\u_fifo_b2a/cptr_gray [2]),
    .ADR5(\u_fifo_b2a/_n0130_inv1_rstpot_8316 ),
    .ADR3(\u_fifo_b2a/used<11>_0 ),
    .O(\u_fifo_b2a/cptr_gray_2_rstpot_3365 )
  );
  X_FF #(
    .LOC ( "SLICE_X9Y18" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cptr_gray_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cptr_gray_1/CLK ),
    .I(\u_fifo_b2a/cptr_gray_1_rstpot_3373 ),
    .O(\u_fifo_b2a/cptr_gray [1]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y18" ),
    .INIT ( 64'hFF00FF00FF007B48 ))
  \u_fifo_b2a/cptr_gray_1_rstpot  (
    .ADR5(\u_fifo_b2a/drop_7994 ),
    .ADR2(\u_fifo_b2a/wptr_n<1>_0 ),
    .ADR0(\u_fifo_b2a/wptr_n<2>_0 ),
    .ADR3(\u_fifo_b2a/cptr_gray [1]),
    .ADR1(\u_fifo_b2a/_n0130_inv1_rstpot_8316 ),
    .ADR4(\u_fifo_b2a/used<11>_0 ),
    .O(\u_fifo_b2a/cptr_gray_1_rstpot_3373 )
  );
  X_FF #(
    .LOC ( "SLICE_X9Y18" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cptr_gray_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cptr_gray_0/CLK ),
    .I(\u_fifo_b2a/cptr_gray_0_rstpot_3381 ),
    .O(\u_fifo_b2a/cptr_gray [0]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y18" ),
    .INIT ( 64'hFFFFBEFF00001400 ))
  \u_fifo_b2a/cptr_gray_0_rstpot  (
    .ADR0(\u_fifo_b2a/drop_7994 ),
    .ADR1(\u_fifo_b2a/wptr_n<0>_0 ),
    .ADR2(\u_fifo_b2a/wptr_n<1>_0 ),
    .ADR5(\u_fifo_b2a/cptr_gray [0]),
    .ADR3(\u_fifo_b2a/_n0130_inv1_rstpot_8316 ),
    .ADR4(\u_fifo_b2a/used<11>_0 ),
    .O(\u_fifo_b2a/cptr_gray_0_rstpot_3381 )
  );
  X_FF #(
    .LOC ( "SLICE_X9Y21" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rg_s1_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rg_s1_3/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/rg_s1_3/IN ),
    .O(\u_fifo_b2a/rg_s1 [3]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X9Y21" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rg_s1_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rg_s1_2/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/rg_s1_2/IN ),
    .O(\u_fifo_b2a/rg_s1 [2]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X9Y21" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rg_s1_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rg_s1_1/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/rg_s1_1/IN ),
    .O(\u_fifo_b2a/rg_s1 [1]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X9Y21" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rg_s1_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rg_s1_0/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/rg_s1_0/IN ),
    .O(\u_fifo_b2a/rg_s1 [0]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y24" ),
    .INIT ( 64'h00FFFF00FF0000FF ))
  \u_fifo_b2a/Mxor_cptr_r<5>_xo<0>1_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(\u_fifo_b2a/cg_s2 [0]),
    .ADR4(\u_fifo_b2a/cg_s2 [1]),
    .ADR3(\u_fifo_b2a/cg_s2 [2]),
    .O(N119)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y25" ),
    .INIT ( 64'hCCCCF00F3333F00F ))
  \u_fifo_b2a/pop1_SW32  (
    .ADR0(1'b1),
    .ADR3(\u_fifo_b2a/rptr [4]),
    .ADR2(\u_fifo_b2a/rptr [5]),
    .ADR1(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<4>_0 ),
    .ADR5(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<5>_0 ),
    .ADR4(b2a_rd_en),
    .O(N329)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y36" ),
    .INIT ( 64'hFFFF00FFFFFF00FF ))
  \u_engine/Mmux_GND_6_o_s_tindex[15]_MUX_167_o11_SW1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(1'b1),
    .ADR3(\u_engine/frag_ok_7333 ),
    .ADR4(\u_engine/proto [6]),
    .O(N67)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y37" ),
    .INIT ( 64'h00000000CC000000 ))
  \u_engine/Mmux_GND_6_o_s_tindex[15]_MUX_167_o15_SW0  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR3(\u_engine/Mmux_GND_6_o_s_tindex[15]_MUX_167_o13_7324 ),
    .ADR1(\u_engine/Mmux_GND_6_o_s_tindex[15]_MUX_167_o12_7325 ),
    .ADR4(\u_engine/Mmux_GND_6_o_s_tindex[15]_MUX_167_o1 ),
    .ADR5(\u_engine/dport_hi [0]),
    .O(N359)
  );
  X_FF #(
    .LOC ( "SLICE_X9Y37" ),
    .INIT ( 1'b0 ))
  \u_engine/port_done  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/port_done/CLK ),
    .I(\u_engine/port_done_rstpot_3450 ),
    .O(\u_engine/port_done_7345 ),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y37" ),
    .INIT ( 64'h323072F03030F0F0 ))
  \u_engine/port_done_rstpot  (
    .ADR4(\u_rx_a/m_tvalid_7480 ),
    .ADR5(N359),
    .ADR0(\u_engine/s_tindex[15]_idx_dport_lo[15]_equal_47_o_0 ),
    .ADR2(\u_engine/port_done_7345 ),
    .ADR3(\u_engine/Mmux_GND_6_o_s_tindex[15]_MUX_167_o11_8420 ),
    .ADR1(\u_rx_a/m_tlast_0 ),
    .O(\u_engine/port_done_rstpot_3450 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y37" ),
    .INIT ( 64'h0000002000000000 ))
  \u_engine/Mmux_GND_6_o_s_tindex[15]_MUX_167_o11  (
    .ADR3(\u_engine/proto [6]),
    .ADR1(\u_engine/proto [7]),
    .ADR0(\u_engine/ver_ok_0 ),
    .ADR2(\u_engine/frag_ok_7333 ),
    .ADR5(\u_rx_a/m_tdata [1]),
    .ADR4(N35),
    .O(\u_engine/Mmux_GND_6_o_s_tindex[15]_MUX_167_o11_8420 )
  );
  X_FF #(
    .LOC ( "SLICE_X9Y37" ),
    .INIT ( 1'b0 ))
  \u_engine/trigger_port_scan  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/trigger_port_scan/CLK ),
    .I(\u_engine/GND_6_o_s_tindex[15]_MUX_167_o ),
    .O(\u_engine/trigger_port_scan_7329 ),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y37" ),
    .INIT ( 64'h2000000000000000 ))
  \u_engine/Mmux_GND_6_o_s_tindex[15]_MUX_167_o15  (
    .ADR1(\u_engine/dport_hi [0]),
    .ADR0(\u_engine/Mmux_GND_6_o_s_tindex[15]_MUX_167_o13_7324 ),
    .ADR5(\u_engine/Mmux_GND_6_o_s_tindex[15]_MUX_167_o12_7325 ),
    .ADR3(\u_engine/Mmux_GND_6_o_s_tindex[15]_MUX_167_o1 ),
    .ADR2(\u_engine/s_tindex[15]_idx_dport_lo[15]_equal_47_o_0 ),
    .ADR4(\u_engine/Mmux_GND_6_o_s_tindex[15]_MUX_167_o11_8420 ),
    .O(\u_engine/GND_6_o_s_tindex[15]_MUX_167_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y47" ),
    .INIT ( 64'h20008000C0C03030 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT27  (
    .ADR4(\u_uart/idx [5]),
    .ADR3(\u_uart/idx [1]),
    .ADR5(\u_uart/idx [0]),
    .ADR1(\u_uart/idx [4]),
    .ADR0(\u_uart/idx [2]),
    .ADR2(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT11 ),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT26_7531 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y51" ),
    .INIT ( 64'h00000000000000FF ))
  \u_uart/Sh355211  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(\u_uart/idx_4_1_7811 ),
    .ADR3(\u_uart/idx [2]),
    .ADR4(\u_uart/idx [3]),
    .O(\u_uart/Sh35521 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y53" ),
    .INIT ( 64'h0F0FF0F0FFFF0000 ))
  \u_uart/Msub_GND_7_o_GND_7_o_sub_36_OUT<5:0>_xor<4>11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_uart/idx_4_1_7811 ),
    .ADR2(\u_uart/idx [2]),
    .ADR5(\u_uart/idx [3]),
    .O(\u_uart/GND_7_o_GND_7_o_sub_36_OUT<4>1 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y53" ),
    .INIT ( 64'h0000F0000000F844 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT13  (
    .ADR4(\u_uart/idx [0]),
    .ADR3(\u_uart/idx [2]),
    .ADR0(\u_uart/idx [3]),
    .ADR1(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT13_7513 ),
    .ADR5(\u_uart/GND_7_o_GND_7_o_sub_36_OUT<5>1 ),
    .ADR2(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT29_7515 ),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT16_7512 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y53" ),
    .INIT ( 64'hFFF0000FFF0000FF ))
  \u_uart/Msub_GND_7_o_GND_7_o_sub_36_OUT<5:0>_xor<5>11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(\u_uart/idx_4_1_7811 ),
    .ADR4(\u_uart/idx [5]),
    .ADR5(\u_uart/idx [2]),
    .ADR2(\u_uart/idx [3]),
    .O(\u_uart/GND_7_o_GND_7_o_sub_36_OUT<5>1 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y53" ),
    .INIT ( 64'hFFFFFFFFFFFFF5FF ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT123_SW1  (
    .ADR1(1'b1),
    .ADR5(\u_uart/code [1]),
    .ADR0(\u_uart/code<0>_0 ),
    .ADR4(\u_uart/code [2]),
    .ADR2(\u_uart/GND_7_o_GND_7_o_sub_36_OUT<4>1 ),
    .ADR3(\u_uart/GND_7_o_GND_7_o_sub_36_OUT<5>1 ),
    .O(N220)
  );
  X_FF #(
    .LOC ( "SLICE_X10Y17" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cptr_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cptr_3/CLK ),
    .I(\u_fifo_b2a/cptr_3_rstpot_3508 ),
    .O(\u_fifo_b2a/cptr [3]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y17" ),
    .INIT ( 64'hFFFBFFFF00400000 ))
  \u_fifo_b2a/cptr_3_rstpot  (
    .ADR1(\u_rx_b/m_tvalid_7995 ),
    .ADR4(\u_rx_b/m_tlast_0 ),
    .ADR0(\u_fifo_b2a/drop_7994 ),
    .ADR5(\u_fifo_b2a/cptr [3]),
    .ADR2(\u_fifo_b2a/wptr_n<3>_0 ),
    .ADR3(\u_fifo_b2a/used<11>_0 ),
    .O(\u_fifo_b2a/cptr_3_rstpot_3508 )
  );
  X_FF #(
    .LOC ( "SLICE_X10Y17" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cptr_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cptr_2/CLK ),
    .I(\u_fifo_b2a/cptr_2_rstpot_3517 ),
    .O(\u_fifo_b2a/cptr [2]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y17" ),
    .INIT ( 64'hAABAAAAAAA8AAAAA ))
  \u_fifo_b2a/cptr_2_rstpot  (
    .ADR4(\u_rx_b/m_tvalid_7995 ),
    .ADR2(\u_rx_b/m_tlast_0 ),
    .ADR1(\u_fifo_b2a/drop_7994 ),
    .ADR0(\u_fifo_b2a/cptr [2]),
    .ADR5(\u_fifo_b2a/wptr_n<2>_0 ),
    .ADR3(\u_fifo_b2a/used<11>_0 ),
    .O(\u_fifo_b2a/cptr_2_rstpot_3517 )
  );
  X_FF #(
    .LOC ( "SLICE_X10Y17" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cptr_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cptr_1/CLK ),
    .I(\u_fifo_b2a/cptr_1_rstpot_3491 ),
    .O(\u_fifo_b2a/cptr [1]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y17" ),
    .INIT ( 64'hFEFF1000FFFF0000 ))
  \u_fifo_b2a/cptr_1_rstpot  (
    .ADR3(\u_rx_b/m_tvalid_7995 ),
    .ADR5(\u_rx_b/m_tlast_0 ),
    .ADR0(\u_fifo_b2a/drop_7994 ),
    .ADR4(\u_fifo_b2a/cptr [1]),
    .ADR2(\u_fifo_b2a/wptr_n<1>_0 ),
    .ADR1(\u_fifo_b2a/used<11>_0 ),
    .O(\u_fifo_b2a/cptr_1_rstpot_3491 )
  );
  X_FF #(
    .LOC ( "SLICE_X10Y17" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cptr_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cptr_0/CLK ),
    .I(\u_fifo_b2a/cptr_0_rstpot_3499 ),
    .O(\u_fifo_b2a/cptr [0]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y17" ),
    .INIT ( 64'hFFFFFDFF00000800 ))
  \u_fifo_b2a/cptr_0_rstpot  (
    .ADR0(\u_rx_b/m_tlast_0 ),
    .ADR3(\u_rx_b/m_tvalid_7995 ),
    .ADR4(\u_fifo_b2a/drop_7994 ),
    .ADR5(\u_fifo_b2a/cptr [0]),
    .ADR1(\u_fifo_b2a/wptr_n<0>_0 ),
    .ADR2(\u_fifo_b2a/used<11>_0 ),
    .O(\u_fifo_b2a/cptr_0_rstpot_3499 )
  );
  X_FF #(
    .LOC ( "SLICE_X10Y18" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cptr_gray_9  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cptr_gray_9/CLK ),
    .I(\u_fifo_b2a/cptr_gray_9_rstpot_3528 ),
    .O(\u_fifo_b2a/cptr_gray [9]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y18" ),
    .INIT ( 64'hFDFFFFFD00020200 ))
  \u_fifo_b2a/cptr_gray_9_rstpot  (
    .ADR1(\u_fifo_b2a/drop_7994 ),
    .ADR3(\u_fifo_b2a/wptr_n<9>_0 ),
    .ADR4(\u_fifo_b2a/wptr_n<10>_0 ),
    .ADR5(\u_fifo_b2a/cptr_gray [9]),
    .ADR0(\u_fifo_b2a/_n0130_inv1_rstpot_8316 ),
    .ADR2(\u_fifo_b2a/used<11>_0 ),
    .O(\u_fifo_b2a/cptr_gray_9_rstpot_3528 )
  );
  X_FF #(
    .LOC ( "SLICE_X10Y18" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cptr_gray_8  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cptr_gray_8/CLK ),
    .I(\u_fifo_b2a/cptr_gray_8_rstpot_3537 ),
    .O(\u_fifo_b2a/cptr_gray [8]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y18" ),
    .INIT ( 64'hFDFE0102FFFF0000 ))
  \u_fifo_b2a/cptr_gray_8_rstpot  (
    .ADR1(\u_fifo_b2a/drop_7994 ),
    .ADR3(\u_fifo_b2a/wptr_n<8>_0 ),
    .ADR0(\u_fifo_b2a/wptr_n<9>_0 ),
    .ADR4(\u_fifo_b2a/cptr_gray [8]),
    .ADR5(\u_fifo_b2a/_n0130_inv1_rstpot_8316 ),
    .ADR2(\u_fifo_b2a/used<11>_0 ),
    .O(\u_fifo_b2a/cptr_gray_8_rstpot_3537 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y18" ),
    .INIT ( 64'hFF000000FF000000 ))
  \u_fifo_b2a/_n0130_inv1_rstpot  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(1'b1),
    .ADR3(\u_rx_b/m_tvalid_7995 ),
    .ADR4(\u_rx_b/m_tlast_0 ),
    .O(\u_fifo_b2a/_n0130_inv1_rstpot_8316 )
  );
  X_FF #(
    .LOC ( "SLICE_X10Y18" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cptr_gray_7  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cptr_gray_7/CLK ),
    .I(\u_fifo_b2a/cptr_gray_7_rstpot_3519 ),
    .O(\u_fifo_b2a/cptr_gray [7]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y18" ),
    .INIT ( 64'hFFBEFFFF00140000 ))
  \u_fifo_b2a/cptr_gray_7_rstpot  (
    .ADR0(\u_fifo_b2a/drop_7994 ),
    .ADR2(\u_fifo_b2a/wptr_n<7>_0 ),
    .ADR1(\u_fifo_b2a/wptr_n<8>_0 ),
    .ADR5(\u_fifo_b2a/cptr_gray [7]),
    .ADR4(\u_fifo_b2a/_n0130_inv1_rstpot_8316 ),
    .ADR3(\u_fifo_b2a/used<11>_0 ),
    .O(\u_fifo_b2a/cptr_gray_7_rstpot_3519 )
  );
  X_FF #(
    .LOC ( "SLICE_X10Y19" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cptr_gray_6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cptr_gray_6/CLK ),
    .I(\u_fifo_b2a/cptr_gray_6_rstpot_3549 ),
    .O(\u_fifo_b2a/cptr_gray [6]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y19" ),
    .INIT ( 64'hFFDE0012FFFF0000 ))
  \u_fifo_b2a/cptr_gray_6_rstpot  (
    .ADR1(\u_fifo_b2a/drop_7994 ),
    .ADR2(\u_fifo_b2a/wptr_n<6>_0 ),
    .ADR0(\u_fifo_b2a/wptr_n<7>_0 ),
    .ADR4(\u_fifo_b2a/cptr_gray [6]),
    .ADR5(\u_fifo_b2a/_n0130_inv1_rstpot_8316 ),
    .ADR3(\u_fifo_b2a/used<11>_0 ),
    .O(\u_fifo_b2a/cptr_gray_6_rstpot_3549 )
  );
  X_FF #(
    .LOC ( "SLICE_X10Y19" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cptr_gray_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cptr_gray_5/CLK ),
    .I(\u_fifo_b2a/cptr_gray_5_rstpot_3557 ),
    .O(\u_fifo_b2a/cptr_gray [5]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y19" ),
    .INIT ( 64'hFF00F704FF00FB08 ))
  \u_fifo_b2a/cptr_gray_5_rstpot  (
    .ADR2(\u_fifo_b2a/drop_7994 ),
    .ADR0(\u_fifo_b2a/wptr_n<5>_0 ),
    .ADR5(\u_fifo_b2a/wptr_n<6>_0 ),
    .ADR3(\u_fifo_b2a/cptr_gray [5]),
    .ADR1(\u_fifo_b2a/_n0130_inv1_rstpot_8316 ),
    .ADR4(\u_fifo_b2a/used<11>_0 ),
    .O(\u_fifo_b2a/cptr_gray_5_rstpot_3557 )
  );
  X_FF #(
    .LOC ( "SLICE_X10Y19" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cptr_gray_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cptr_gray_4/CLK ),
    .I(\u_fifo_b2a/cptr_gray_4_rstpot_3565 ),
    .O(\u_fifo_b2a/cptr_gray [4]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y19" ),
    .INIT ( 64'hFFFF0000FF7B0048 ))
  \u_fifo_b2a/cptr_gray_4_rstpot  (
    .ADR3(\u_fifo_b2a/drop_7994 ),
    .ADR0(\u_fifo_b2a/wptr_n<4>_0 ),
    .ADR2(\u_fifo_b2a/wptr_n<5>_0 ),
    .ADR4(\u_fifo_b2a/cptr_gray [4]),
    .ADR1(\u_fifo_b2a/_n0130_inv1_rstpot_8316 ),
    .ADR5(\u_fifo_b2a/used<11>_0 ),
    .O(\u_fifo_b2a/cptr_gray_4_rstpot_3565 )
  );
  X_FF #(
    .LOC ( "SLICE_X10Y20" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cg_s2_7  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cg_s2_7/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/cg_s2_7/IN ),
    .O(\u_fifo_b2a/cg_s2 [7]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X10Y20" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cg_s2_6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cg_s2_6/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/cg_s2_6/IN ),
    .O(\u_fifo_b2a/cg_s2 [6]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X10Y20" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cg_s2_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cg_s2_5/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/cg_s2_5/IN ),
    .O(\u_fifo_b2a/cg_s2 [5]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X10Y20" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cg_s2_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cg_s2_4/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/cg_s2_4/IN ),
    .O(\u_fifo_b2a/cg_s2 [4]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y27" ),
    .INIT ( 64'hC3C3EB41C3C341EB ))
  \u_fifo_b2a/pop1_SW39  (
    .ADR2(\u_fifo_b2a/rptr [7]),
    .ADR1(\u_fifo_b2a/rptr [8]),
    .ADR3(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<7>_0 ),
    .ADR5(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<8>_0 ),
    .ADR0(b2a_rd_en),
    .ADR4(\u_fifo_b2a/rd_empty12 ),
    .O(N339)
  );
  X_FF #(
    .LOC ( "SLICE_X10Y27" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rptr_gray_r_7  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rptr_gray_r_7/CLK ),
    .I(\u_fifo_b2a/rptr_n[11]_GND_4_o_xor_25_OUT<7> ),
    .O(\u_fifo_b2a/rptr_gray [7]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y27" ),
    .INIT ( 64'h00807FFF0008F7FF ))
  \u_fifo_b2a/Mxor_rptr_n[11]_GND_4_o_xor_25_OUT_7_xo<0>1  (
    .ADR2(\u_fifo_b2a/rptr [0]),
    .ADR5(\u_fifo_b2a/cptr_r[0] ),
    .ADR0(\u_fifo_b2a/rd_empty121_7418 ),
    .ADR4(N338),
    .ADR1(\u_fifo_b2a/rd_empty124_7572 ),
    .ADR3(N339),
    .O(\u_fifo_b2a/rptr_n[11]_GND_4_o_xor_25_OUT<7> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y27" ),
    .INIT ( 64'hF099F0F00F990F0F ))
  \u_fifo_b2a/pop1_SW37  (
    .ADR5(\u_fifo_b2a/rptr [7]),
    .ADR2(\u_fifo_b2a/rptr [6]),
    .ADR1(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<6>_0 ),
    .ADR0(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<7>_0 ),
    .ADR4(b2a_rd_en),
    .ADR3(\u_fifo_b2a/rd_empty12 ),
    .O(N336)
  );
  X_FF #(
    .LOC ( "SLICE_X10Y27" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rptr_gray_r_6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rptr_gray_r_6/CLK ),
    .I(\u_fifo_b2a/rptr_n[11]_GND_4_o_xor_25_OUT<6> ),
    .O(\u_fifo_b2a/rptr_gray [6]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y27" ),
    .INIT ( 64'h1555D55551555D55 ))
  \u_fifo_b2a/Mxor_rptr_n[11]_GND_4_o_xor_25_OUT_6_xo<0>1  (
    .ADR5(\u_fifo_b2a/rptr [0]),
    .ADR2(\u_fifo_b2a/cptr_r[0] ),
    .ADR1(\u_fifo_b2a/rd_empty121_7418 ),
    .ADR0(N335),
    .ADR3(\u_fifo_b2a/rd_empty124_7572 ),
    .ADR4(N336),
    .O(\u_fifo_b2a/rptr_n[11]_GND_4_o_xor_25_OUT<6> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y36" ),
    .INIT ( 64'h0000000000000001 ))
  \u_engine/Mmux_GND_6_o_s_tindex[15]_MUX_167_o13  (
    .ADR3(\u_rx_a/m_tdata [6]),
    .ADR5(\u_rx_a/m_tdata [7]),
    .ADR4(\u_rx_a/m_tdata [5]),
    .ADR2(\u_rx_a/m_tdata [3]),
    .ADR0(\u_engine/port_done_7345 ),
    .ADR1(\u_engine/dport_hi [7]),
    .O(\u_engine/Mmux_GND_6_o_s_tindex[15]_MUX_167_o12_7325 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y37" ),
    .INIT ( 64'h0000000000000001 ))
  \u_engine/Mmux_GND_6_o_s_tindex[15]_MUX_167_o14  (
    .ADR4(\u_engine/dport_hi [5]),
    .ADR0(\u_engine/dport_hi [6]),
    .ADR1(\u_engine/dport_hi [4]),
    .ADR5(\u_engine/dport_hi [3]),
    .ADR2(\u_engine/dport_hi [2]),
    .ADR3(\u_engine/dport_hi [1]),
    .O(\u_engine/Mmux_GND_6_o_s_tindex[15]_MUX_167_o13_7324 )
  );
  X_BUF   \u_engine/idx_dport_lo<6>/u_engine/idx_dport_lo<6>_DMUX_Delay  (
    .I(\u_engine/idx_dport_lo [5]),
    .O(\u_engine/idx_dport_lo<5>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X10Y41" ),
    .INIT ( 1'b0 ))
  \u_engine/idx_dport_lo_6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/idx_dport_lo_6/CLK ),
    .I(\u_engine/l4_base[15]_GND_6_o_add_2_OUT<6> ),
    .O(\u_engine/idx_dport_lo [6]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y41" ),
    .INIT ( 64'hF0F00000F0F00000 ))
  \u_engine/l4_base[15]_GND_6_o_add_2_OUT<6>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\u_engine/ihl [3]),
    .ADR4(\u_engine/ihl [2]),
    .ADR5(1'b1),
    .O(\u_engine/l4_base[15]_GND_6_o_add_2_OUT<6> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y41" ),
    .INIT ( 32'h0F0FF0F0 ))
  \u_engine/l4_base[15]_GND_6_o_add_2_OUT<5>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\u_engine/ihl [3]),
    .ADR4(\u_engine/ihl [2]),
    .O(\u_engine/l4_base[15]_GND_6_o_add_2_OUT<5> )
  );
  X_FF #(
    .LOC ( "SLICE_X10Y41" ),
    .INIT ( 1'b0 ))
  \u_engine/idx_dport_lo_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/idx_dport_lo_5/CLK ),
    .I(\u_engine/l4_base[15]_GND_6_o_add_2_OUT<5> ),
    .O(\u_engine/idx_dport_lo [5]),
    .RST(GND),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X10Y41" ),
    .INIT ( 1'b0 ))
  \u_engine/idx_dport_lo_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/idx_dport_lo_4/CLK ),
    .I(\u_engine/l4_base[15]_GND_6_o_add_2_OUT<4> ),
    .O(\u_engine/idx_dport_lo [4]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y41" ),
    .INIT ( 64'h5555555555555555 ))
  \u_engine/l4_base[15]_GND_6_o_add_2_OUT<4>1_INV_0  (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR0(\u_engine/ihl [2]),
    .O(\u_engine/l4_base[15]_GND_6_o_add_2_OUT<4> )
  );
  X_FF #(
    .LOC ( "SLICE_X10Y41" ),
    .INIT ( 1'b0 ))
  \u_engine/idx_dport_lo_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/idx_dport_lo_3/CLK ),
    .I(\NlwBufferSignal_u_engine/idx_dport_lo_3/IN ),
    .O(\u_engine/idx_dport_lo [3]),
    .RST(GND),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X10Y41" ),
    .INIT ( 1'b0 ))
  \u_engine/idx_dport_lo_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/idx_dport_lo_2/CLK ),
    .I(\NlwBufferSignal_u_engine/idx_dport_lo_2/IN ),
    .O(\u_engine/idx_dport_lo [2]),
    .RST(GND),
    .SET(GND)
  );
  X_BUF   \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT28/u_uart/Mmux_code[2]_GND_7_o_select_48_OUT28_CMUX_Delay  (
    .I(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT23_pack_7 ),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT23 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X10Y47" ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT24  (
    .IA(1'b0),
    .IB(N507),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT23_pack_7 ),
    .SEL(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT11 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y47" ),
    .INIT ( 64'h0000000000000000 ))
  \N1_195.D6LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\NLW_N1_195.D6LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y47" ),
    .INIT ( 64'h0000400000006060 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT24_G  (
    .ADR4(\u_uart/idx [5]),
    .ADR2(\u_uart/idx [4]),
    .ADR0(\u_uart/idx [2]),
    .ADR1(\u_uart/idx [3]),
    .ADR3(\u_uart/idx [0]),
    .ADR5(\u_uart/idx [1]),
    .O(N507)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y47" ),
    .INIT ( 64'hFFFFFFFFDCDCDCCC ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT29  (
    .ADR0(\u_uart/idx [4]),
    .ADR2(\u_uart/idx [3]),
    .ADR5(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT23 ),
    .ADR4(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT26_7531 ),
    .ADR3(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT27_8424 ),
    .ADR1(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT25 ),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT28_7541 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y47" ),
    .INIT ( 64'h2222002228280028 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT28  (
    .ADR1(\u_uart/idx [5]),
    .ADR2(\u_uart/idx [3]),
    .ADR5(\u_uart/idx [4]),
    .ADR0(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT14 ),
    .ADR3(\u_uart/Sh86341 ),
    .ADR4(\u_uart/Sh198111 ),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT27_8424 )
  );
  X_FF #(
    .LOC ( "SLICE_X10Y50" ),
    .INIT ( 1'b0 ))
  \u_uart/t3_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/t3_3/CLK ),
    .I(\NlwBufferSignal_u_uart/t3_3/IN ),
    .O(\u_uart/t3 [3]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X10Y50" ),
    .INIT ( 1'b0 ))
  \u_uart/t3_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/t3_2/CLK ),
    .I(\NlwBufferSignal_u_uart/t3_2/IN ),
    .O(\u_uart/t3 [2]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X10Y50" ),
    .INIT ( 1'b0 ))
  \u_uart/t3_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/t3_1/CLK ),
    .I(\NlwBufferSignal_u_uart/t3_1/IN ),
    .O(\u_uart/t3 [1]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X10Y50" ),
    .INIT ( 1'b0 ))
  \u_uart/t3_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/t3_0/CLK ),
    .I(\NlwBufferSignal_u_uart/t3_0/IN ),
    .O(\u_uart/t3 [0]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_BUF   \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT15/u_uart/Mmux_code[2]_GND_7_o_select_48_OUT15_CMUX_Delay  (
    .I(N447),
    .O(N447_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X10Y52" ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT17_SW0  (
    .IA(N476),
    .IB(N477),
    .O(N447),
    .SEL(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT13_7513 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y52" ),
    .INIT ( 64'hFFFFFF5FFFFFFF5F ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT17_SW0_F  (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR2(\u_uart/code [1]),
    .ADR4(\u_uart/code<0>_0 ),
    .ADR3(\u_uart/code [2]),
    .ADR0(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT15_8427 ),
    .O(N476)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y52" ),
    .INIT ( 64'h0F0E0F0FFFEEFFFF ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT17_SW0_G  (
    .ADR4(\u_uart/idx [0]),
    .ADR2(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT12_7535 ),
    .ADR0(\u_uart/GND_7_o_GND_7_o_sub_36_OUT<3>1 ),
    .ADR1(\u_uart/GND_7_o_GND_7_o_sub_36_OUT<4>1 ),
    .ADR3(\u_uart/GND_7_o_GND_7_o_sub_36_OUT<5>1 ),
    .ADR5(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT15_8427 ),
    .O(N477)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y52" ),
    .INIT ( 64'h8500070AA60A8BA5 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT12  (
    .ADR1(\u_uart/idx_1_1_7400 ),
    .ADR2(\u_uart/idx_4_1_7811 ),
    .ADR5(\u_uart/idx [5]),
    .ADR3(\u_uart/idx [0]),
    .ADR4(\u_uart/idx [2]),
    .ADR0(\u_uart/idx [3]),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT15_8427 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y52" ),
    .INIT ( 64'hCCCC3333CCCC3333 ))
  \u_uart/Msub_GND_7_o_GND_7_o_sub_36_OUT<5:0>_xor<3>11  (
    .ADR0(1'b1),
    .ADR5(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\u_uart/idx [2]),
    .ADR4(\u_uart/idx [3]),
    .O(\u_uart/GND_7_o_GND_7_o_sub_36_OUT<3>1 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y53" ),
    .INIT ( 64'hFFFFFFFFFCFECCCC ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT215_SW0  (
    .ADR4(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT12_7535 ),
    .ADR2(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT213_8379 ),
    .ADR0(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT214_8381 ),
    .ADR3(\u_uart/GND_7_o_GND_7_o_sub_38_OUT<4>1 ),
    .ADR1(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT53_0 ),
    .ADR5(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT211_8378 ),
    .O(N445)
  );
  X_FF #(
    .LOC ( "SLICE_X10Y53" ),
    .INIT ( 1'b0 ))
  \u_uart/tx_data_1  (
    .CE(\u_uart/GND_7_o_tx_busy_MUX_9398_o ),
    .CLK(\NlwBufferSignal_u_uart/tx_data_1/CLK ),
    .I(\u_uart/code[2]_GND_7_o_select_48_OUT<1> ),
    .O(\u_uart/tx_data [1]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y53" ),
    .INIT ( 64'hFFFFFFFFCFCECECE ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT215  (
    .ADR2(\u_uart/idx [1]),
    .ADR3(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT13_7513 ),
    .ADR4(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT21_0 ),
    .ADR0(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT2 ),
    .ADR1(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT28_7541 ),
    .ADR5(N445),
    .O(\u_uart/code[2]_GND_7_o_select_48_OUT<1> )
  );
  X_FF #(
    .LOC ( "SLICE_X10Y53" ),
    .INIT ( 1'b0 ))
  \u_uart/tx_data_0  (
    .CE(\u_uart/GND_7_o_tx_busy_MUX_9398_o ),
    .CLK(\NlwBufferSignal_u_uart/tx_data_0/CLK ),
    .I(\u_uart/code[2]_GND_7_o_select_48_OUT<0> ),
    .O(\u_uart/tx_data [0]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y53" ),
    .INIT ( 64'hFFFFFFFFFAFAFEFE ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT125  (
    .ADR3(1'b1),
    .ADR4(\u_uart/idx [2]),
    .ADR2(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT122_7526 ),
    .ADR0(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT114 ),
    .ADR1(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT125_7528 ),
    .ADR5(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT111_8428 ),
    .O(\u_uart/code[2]_GND_7_o_select_48_OUT<0> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y53" ),
    .INIT ( 64'h3333313033333133 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT18  (
    .ADR1(\u_uart/idx [1]),
    .ADR0(N448),
    .ADR3(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT19_7523 ),
    .ADR4(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT18_7516 ),
    .ADR2(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT16_7512 ),
    .ADR5(N447_0),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT111_8428 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y54" ),
    .INIT ( 64'h000050A050A0AA00 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT210  (
    .ADR1(1'b1),
    .ADR2(\u_uart/idx_1_1_7400 ),
    .ADR4(\u_uart/idx_4_1_7811 ),
    .ADR5(\u_uart/idx [0]),
    .ADR0(\u_uart/idx [2]),
    .ADR3(\u_uart/idx [3]),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT210_8376 )
  );
  X_BUF   \u_uart/GND_7_o_GND_7_o_sub_34_OUT<5>1/u_uart/GND_7_o_GND_7_o_sub_34_OUT<5>1_DMUX_Delay  (
    .I(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT413_pack_12 ),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT413 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y57" ),
    .INIT ( 64'hFCFC0303FCFC0303 ))
  \u_uart/Msub_GND_7_o_GND_7_o_sub_34_OUT<5:0>_xor<5>11  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_uart/idx [5]),
    .ADR1(\u_uart/idx [3]),
    .ADR2(\u_uart/idx [4]),
    .ADR5(1'b1),
    .O(\u_uart/GND_7_o_GND_7_o_sub_34_OUT<5>1 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y57" ),
    .INIT ( 32'h00000100 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT4131  (
    .ADR3(\u_uart/code [2]),
    .ADR0(\u_uart/idx [2]),
    .ADR4(\u_uart/idx [5]),
    .ADR1(\u_uart/idx [3]),
    .ADR2(\u_uart/idx [4]),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT413_pack_12 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y57" ),
    .INIT ( 64'hFFFFFFFF33000A0A ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT21  (
    .ADR4(\u_uart/idx [0]),
    .ADR1(\u_uart/idx [2]),
    .ADR2(\u_uart/idx [4]),
    .ADR0(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT223 ),
    .ADR3(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT182 ),
    .ADR5(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT413 ),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT2 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y57" ),
    .INIT ( 64'h1000400000000000 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT1821  (
    .ADR4(\u_uart/idx_4_1_7811 ),
    .ADR5(\u_uart/code [1]),
    .ADR3(\u_uart/code<0>_0 ),
    .ADR0(\u_uart/code [2]),
    .ADR1(\u_uart/idx [5]),
    .ADR2(\u_uart/idx [3]),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT182 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y57" ),
    .INIT ( 64'hF0F0F4F4F4F8F4F8 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT16  (
    .ADR0(\u_uart/idx [5]),
    .ADR5(\u_uart/idx [4]),
    .ADR3(\u_uart/idx [3]),
    .ADR4(\u_uart/idx [2]),
    .ADR1(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT14 ),
    .ADR2(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT182 ),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT19_7523 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y59" ),
    .INIT ( 64'h2309000200440000 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT113  (
    .ADR1(\u_uart/idx [5]),
    .ADR5(\u_uart/idx [1]),
    .ADR4(\u_uart/idx [0]),
    .ADR3(\u_uart/idx [4]),
    .ADR0(\u_uart/idx [2]),
    .ADR2(\u_uart/idx [3]),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT115_8375 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y60" ),
    .INIT ( 64'h0004000000040004 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT119  (
    .ADR5(\u_uart/idx [1]),
    .ADR4(\u_uart/idx [0]),
    .ADR2(\u_uart/idx [4]),
    .ADR0(\u_uart/idx [3]),
    .ADR3(\u_uart/idx [2]),
    .ADR1(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT32 ),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT121_8433 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y60" ),
    .INIT ( 64'h0000040004000008 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT118  (
    .ADR2(\u_uart/idx [5]),
    .ADR5(\u_uart/idx [1]),
    .ADR4(\u_uart/idx [0]),
    .ADR0(\u_uart/idx [4]),
    .ADR3(\u_uart/idx [3]),
    .ADR1(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT11 ),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT120_8432 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y60" ),
    .INIT ( 64'hFFFFFFFFFFFFFFEA ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT120  (
    .ADR2(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT12_7535 ),
    .ADR1(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT115_8375 ),
    .ADR4(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT119_0 ),
    .ADR3(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT120_8432 ),
    .ADR0(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT121_8433 ),
    .ADR5(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT117_8431 ),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT122_7526 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y60" ),
    .INIT ( 64'h0000000000500050 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT115  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(\u_uart/code [2]),
    .ADR5(\u_uart/idx [5]),
    .ADR0(\u_uart/idx [4]),
    .ADR3(N429),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT117_8431 )
  );
  X_FF #(
    .LOC ( "SLICE_X11Y12" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cg_s2_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cg_s2_3/CLK ),
    .I(\NlwBufferSignal_u_fifo_a2b/cg_s2_3/IN ),
    .O(\u_fifo_a2b/cg_s2 [3]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y12" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cg_s2_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cg_s2_2/CLK ),
    .I(\NlwBufferSignal_u_fifo_a2b/cg_s2_2/IN ),
    .O(\u_fifo_a2b/cg_s2 [2]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y12" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cg_s2_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cg_s2_1/CLK ),
    .I(\NlwBufferSignal_u_fifo_a2b/cg_s2_1/IN ),
    .O(\u_fifo_a2b/cg_s2 [1]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y12" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cg_s2_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cg_s2_0/CLK ),
    .I(\NlwBufferSignal_u_fifo_a2b/cg_s2_0/IN ),
    .O(\u_fifo_a2b/cg_s2 [0]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y13" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cg_s1_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cg_s1_3/CLK ),
    .I(\NlwBufferSignal_u_fifo_a2b/cg_s1_3/IN ),
    .O(\u_fifo_a2b/cg_s1 [3]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y13" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cg_s1_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cg_s1_2/CLK ),
    .I(\NlwBufferSignal_u_fifo_a2b/cg_s1_2/IN ),
    .O(\u_fifo_a2b/cg_s1 [2]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y13" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cg_s1_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cg_s1_1/CLK ),
    .I(\NlwBufferSignal_u_fifo_a2b/cg_s1_1/IN ),
    .O(\u_fifo_a2b/cg_s1 [1]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y13" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cg_s1_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cg_s1_0/CLK ),
    .I(\NlwBufferSignal_u_fifo_a2b/cg_s1_0/IN ),
    .O(\u_fifo_a2b/cg_s1 [0]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_BUF   \u_fifo_b2a/cptr_gray<11>/u_fifo_b2a/cptr_gray<11>_CMUX_Delay  (
    .I(\u_fifo_b2a/drop_pack_10 ),
    .O(\u_fifo_b2a/drop_7994 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y18" ),
    .INIT ( 64'h0303000003030000 ))
  \u_fifo_b2a/wr_valid_wr_ok_AND_4_o1  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR1(\u_fifo_b2a/drop_7994 ),
    .ADR4(\u_rx_b/m_tvalid_7995 ),
    .ADR2(\u_fifo_b2a/used<11>_0 ),
    .ADR5(1'b1),
    .O(\u_fifo_b2a/wr_valid_wr_ok_AND_4_o )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X11Y18" ),
    .INIT ( 32'h00FCCCCC ))
  \u_fifo_b2a/drop_rstpot  (
    .ADR0(1'b1),
    .ADR3(\u_rx_b/m_tlast_0 ),
    .ADR1(\u_fifo_b2a/drop_7994 ),
    .ADR4(\u_rx_b/m_tvalid_7995 ),
    .ADR2(\u_fifo_b2a/used<11>_0 ),
    .O(\u_fifo_b2a/drop_rstpot_3824 )
  );
  X_FF #(
    .LOC ( "SLICE_X11Y18" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/drop  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/drop/CLK ),
    .I(\u_fifo_b2a/drop_rstpot_3824 ),
    .O(\u_fifo_b2a/drop_pack_10 ),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y18" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cptr_gray_11  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cptr_gray_11/CLK ),
    .I(\u_fifo_b2a/cptr_gray_11_rstpot_3831 ),
    .O(\u_fifo_b2a/cptr_gray [11]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y18" ),
    .INIT ( 64'hFFFF0000FFBF0080 ))
  \u_fifo_b2a/cptr_gray_11_rstpot  (
    .ADR2(\u_rx_b/m_tvalid_7995 ),
    .ADR1(\u_rx_b/m_tlast_0 ),
    .ADR5(\u_fifo_b2a/drop_7994 ),
    .ADR4(\u_fifo_b2a/cptr_gray [11]),
    .ADR0(\u_fifo_b2a/wptr_n<11>_0 ),
    .ADR3(\u_fifo_b2a/used<11>_0 ),
    .O(\u_fifo_b2a/cptr_gray_11_rstpot_3831 )
  );
  X_FF #(
    .LOC ( "SLICE_X11Y18" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cptr_gray_10  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cptr_gray_10/CLK ),
    .I(\u_fifo_b2a/cptr_gray_10_rstpot_3839 ),
    .O(\u_fifo_b2a/cptr_gray [10]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y18" ),
    .INIT ( 64'hFFDFFFFD00020020 ))
  \u_fifo_b2a/cptr_gray_10_rstpot  (
    .ADR1(\u_fifo_b2a/drop_7994 ),
    .ADR4(\u_fifo_b2a/wptr_n<10>_0 ),
    .ADR2(\u_fifo_b2a/wptr_n<11>_0 ),
    .ADR5(\u_fifo_b2a/cptr_gray [10]),
    .ADR0(\u_fifo_b2a/_n0130_inv1_rstpot_8316 ),
    .ADR3(\u_fifo_b2a/used<11>_0 ),
    .O(\u_fifo_b2a/cptr_gray_10_rstpot_3839 )
  );
  X_FF #(
    .LOC ( "SLICE_X11Y20" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cg_s1_7  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cg_s1_7/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/cg_s1_7/IN ),
    .O(\u_fifo_b2a/cg_s1 [7]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y20" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cg_s1_6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cg_s1_6/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/cg_s1_6/IN ),
    .O(\u_fifo_b2a/cg_s1 [6]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y20" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cg_s1_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cg_s1_5/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/cg_s1_5/IN ),
    .O(\u_fifo_b2a/cg_s1 [5]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y20" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cg_s1_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cg_s1_4/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/cg_s1_4/IN ),
    .O(\u_fifo_b2a/cg_s1 [4]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y25" ),
    .INIT ( 64'hEFFEFDDFF77FBFFB ))
  \u_fifo_b2a/Mxor_cptr_r<3>_xo<0>1_SW1  (
    .ADR3(\u_fifo_b2a/cg_s2 [1]),
    .ADR4(\u_fifo_b2a/cg_s2 [2]),
    .ADR1(\u_fifo_b2a/cg_s2 [3]),
    .ADR5(\u_fifo_b2a/rptr [3]),
    .ADR2(\u_fifo_b2a/rptr [1]),
    .ADR0(\u_fifo_b2a/rptr [2]),
    .O(N126)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y26" ),
    .INIT ( 64'hFDEFF7BF7FFBDFFE ))
  \u_fifo_b2a/Mxor_cptr_r<3>_xo<0>1_SW0  (
    .ADR2(\u_fifo_b2a/cg_s2 [2]),
    .ADR1(\u_fifo_b2a/cg_s2 [1]),
    .ADR3(\u_fifo_b2a/cg_s2 [3]),
    .ADR0(\u_fifo_b2a/rptr [3]),
    .ADR4(\u_fifo_b2a/rptr [1]),
    .ADR5(\u_fifo_b2a/rptr [2]),
    .O(N125)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y27" ),
    .INIT ( 64'hC3FFC300C300C3FF ))
  \u_fifo_b2a/pop1_SW36  (
    .ADR0(1'b1),
    .ADR4(\u_fifo_b2a/rptr [7]),
    .ADR5(\u_fifo_b2a/rptr [6]),
    .ADR2(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<6>_0 ),
    .ADR1(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<7>_0 ),
    .ADR3(b2a_rd_en),
    .O(N335)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y37" ),
    .INIT ( 1'b0 ))
  \u_engine/dport_hi_7  (
    .CE(\u_engine/_n0371_inv_0 ),
    .CLK(\NlwBufferSignal_u_engine/dport_hi_7/CLK ),
    .I(\NlwBufferSignal_u_engine/dport_hi_7/IN ),
    .O(\u_engine/dport_hi [7]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y37" ),
    .INIT ( 1'b0 ))
  \u_engine/dport_hi_6  (
    .CE(\u_engine/_n0371_inv_0 ),
    .CLK(\NlwBufferSignal_u_engine/dport_hi_6/CLK ),
    .I(\NlwBufferSignal_u_engine/dport_hi_6/IN ),
    .O(\u_engine/dport_hi [6]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y37" ),
    .INIT ( 1'b0 ))
  \u_engine/dport_hi_5  (
    .CE(\u_engine/_n0371_inv_0 ),
    .CLK(\NlwBufferSignal_u_engine/dport_hi_5/CLK ),
    .I(\NlwBufferSignal_u_engine/dport_hi_5/IN ),
    .O(\u_engine/dport_hi [5]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y37" ),
    .INIT ( 1'b0 ))
  \u_engine/dport_hi_4  (
    .CE(\u_engine/_n0371_inv_0 ),
    .CLK(\NlwBufferSignal_u_engine/dport_hi_4/CLK ),
    .I(\NlwBufferSignal_u_engine/dport_hi_4/IN ),
    .O(\u_engine/dport_hi [4]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y38" ),
    .INIT ( 1'b0 ))
  \u_engine/dport_hi_3  (
    .CE(\u_engine/_n0371_inv_0 ),
    .CLK(\NlwBufferSignal_u_engine/dport_hi_3/CLK ),
    .I(\NlwBufferSignal_u_engine/dport_hi_3/IN ),
    .O(\u_engine/dport_hi [3]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y38" ),
    .INIT ( 1'b0 ))
  \u_engine/dport_hi_2  (
    .CE(\u_engine/_n0371_inv_0 ),
    .CLK(\NlwBufferSignal_u_engine/dport_hi_2/CLK ),
    .I(\NlwBufferSignal_u_engine/dport_hi_2/IN ),
    .O(\u_engine/dport_hi [2]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y38" ),
    .INIT ( 1'b0 ))
  \u_engine/dport_hi_1  (
    .CE(\u_engine/_n0371_inv_0 ),
    .CLK(\NlwBufferSignal_u_engine/dport_hi_1/CLK ),
    .I(\NlwBufferSignal_u_engine/dport_hi_1/IN ),
    .O(\u_engine/dport_hi [1]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y38" ),
    .INIT ( 1'b0 ))
  \u_engine/dport_hi_0  (
    .CE(\u_engine/_n0371_inv_0 ),
    .CLK(\NlwBufferSignal_u_engine/dport_hi_0/CLK ),
    .I(\NlwBufferSignal_u_engine/dport_hi_0/IN ),
    .O(\u_engine/dport_hi [0]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y41" ),
    .INIT ( 1'b0 ))
  \u_engine/ihl_3  (
    .CE(\u_engine/_n0353_inv ),
    .CLK(\NlwBufferSignal_u_engine/ihl_3/CLK ),
    .I(\NlwBufferSignal_u_engine/ihl_3/IN ),
    .O(\u_engine/ihl [3]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y41" ),
    .INIT ( 1'b0 ))
  \u_engine/ihl_2  (
    .CE(\u_engine/_n0353_inv ),
    .CLK(\NlwBufferSignal_u_engine/ihl_2/CLK ),
    .I(\NlwBufferSignal_u_engine/ihl_2/IN ),
    .O(\u_engine/ihl [2]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y41" ),
    .INIT ( 1'b0 ))
  \u_engine/ihl_1  (
    .CE(\u_engine/_n0353_inv ),
    .CLK(\NlwBufferSignal_u_engine/ihl_1/CLK ),
    .I(\NlwBufferSignal_u_engine/ihl_1/IN ),
    .O(\u_engine/ihl [1]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y41" ),
    .INIT ( 1'b0 ))
  \u_engine/ihl_0  (
    .CE(\u_engine/_n0353_inv ),
    .CLK(\NlwBufferSignal_u_engine/ihl_0/CLK ),
    .I(\NlwBufferSignal_u_engine/ihl_0/IN ),
    .O(\u_engine/ihl [0]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_BUF   \u_engine/idx_flags<6>/u_engine/idx_flags<6>_CMUX_Delay  (
    .I(\u_engine/idx_flags [5]),
    .O(\u_engine/idx_flags<5>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X11Y42" ),
    .INIT ( 1'b0 ))
  \u_engine/idx_flags_6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/idx_flags_6/CLK ),
    .I(\u_engine/l4_base[15]_GND_6_o_add_4_OUT<6> ),
    .O(\u_engine/idx_flags [6]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y42" ),
    .INIT ( 64'hAAAAAA00AAAAAA00 ))
  \u_engine/Madd_l4_base[15]_GND_6_o_add_4_OUT_xor<6>11  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR0(\u_engine/ihl [3]),
    .ADR3(\u_engine/ihl [1]),
    .ADR4(\u_engine/ihl [2]),
    .ADR5(1'b1),
    .O(\u_engine/l4_base[15]_GND_6_o_add_4_OUT<6> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X11Y42" ),
    .INIT ( 32'h555555AA ))
  \u_engine/Madd_l4_base[15]_GND_6_o_add_4_OUT_xor<5>11  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR0(\u_engine/ihl [3]),
    .ADR3(\u_engine/ihl [1]),
    .ADR4(\u_engine/ihl [2]),
    .O(\u_engine/l4_base[15]_GND_6_o_add_4_OUT<5> )
  );
  X_FF #(
    .LOC ( "SLICE_X11Y42" ),
    .INIT ( 1'b0 ))
  \u_engine/idx_flags_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/idx_flags_5/CLK ),
    .I(\u_engine/l4_base[15]_GND_6_o_add_4_OUT<5> ),
    .O(\u_engine/idx_flags [5]),
    .RST(GND),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y42" ),
    .INIT ( 1'b0 ))
  \u_engine/idx_flags_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/idx_flags_4/CLK ),
    .I(\u_engine/l4_base[15]_GND_6_o_add_4_OUT<4> ),
    .O(\u_engine/idx_flags [4]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y42" ),
    .INIT ( 64'hFF0000FFFF0000FF ))
  \u_engine/Madd_l4_base[15]_GND_6_o_add_4_OUT_xor<4>11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(1'b1),
    .ADR4(\u_engine/ihl [1]),
    .ADR3(\u_engine/ihl [2]),
    .O(\u_engine/l4_base[15]_GND_6_o_add_4_OUT<4> )
  );
  X_FF #(
    .LOC ( "SLICE_X11Y42" ),
    .INIT ( 1'b0 ))
  \u_engine/idx_flags_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/idx_flags_3/CLK ),
    .I(\u_engine/l4_base[15]_GND_6_o_add_4_OUT<3> ),
    .O(\u_engine/idx_flags [3]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y42" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \u_engine/Madd_l4_base[15]_GND_6_o_add_4_OUT_xor<3>11_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .ADR4(\u_engine/ihl [1]),
    .O(\u_engine/l4_base[15]_GND_6_o_add_4_OUT<3> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y47" ),
    .INIT ( 64'hFFAAFFFFF7FFFBFF ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT26_SW0  (
    .ADR4(\u_uart/idx_1_1_7400 ),
    .ADR3(\u_uart/idx [5]),
    .ADR2(\u_uart/idx [4]),
    .ADR1(\u_uart/idx [0]),
    .ADR0(\u_uart/idx [2]),
    .ADR5(\u_uart/idx [3]),
    .O(N452)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y47" ),
    .INIT ( 64'h0000000000000055 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT26  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR5(\u_uart/code [2]),
    .ADR4(\u_uart/code [1]),
    .ADR0(\u_uart/code<0>_0 ),
    .ADR3(N452),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT25 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y47" ),
    .INIT ( 64'h00FF000000000000 ))
  \u_uart/idx[7]_code[2]_equal_60_o8211  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\u_uart/idx_1_1_7400 ),
    .ADR4(\u_uart/idx [0]),
    .ADR5(\u_uart/idx [2]),
    .O(\u_uart/Sh198111 )
  );
  X_BUF   \u_uart/cq_r<2>/u_uart/cq_r<2>_DMUX_Delay  (
    .I(\u_uart/cq_r<3>_pack_6 ),
    .O(\u_uart/cq_r [3])
  );
  X_FF #(
    .LOC ( "SLICE_X11Y48" ),
    .INIT ( 1'b0 ))
  \u_uart/cq_r_2  (
    .CE(\u_uart/_n0234_inv_0 ),
    .CLK(\NlwBufferSignal_u_uart/cq_r_2/CLK ),
    .I(\u_uart/Result<2>2 ),
    .O(\u_uart/cq_r [2]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y48" ),
    .INIT ( 64'h55FFAA0055FFAA00 ))
  \u_uart/Result<2>21  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR3(\u_uart/cq_r [0]),
    .ADR4(\u_uart/cq_r [2]),
    .ADR0(\u_uart/cq_r [1]),
    .ADR5(1'b1),
    .O(\u_uart/Result<2>2 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X11Y48" ),
    .INIT ( 32'h66CCCCCC ))
  \u_uart/Result<3>21  (
    .ADR2(1'b1),
    .ADR1(\u_uart/cq_r [3]),
    .ADR3(\u_uart/cq_r [0]),
    .ADR4(\u_uart/cq_r [2]),
    .ADR0(\u_uart/cq_r [1]),
    .O(\u_uart/Result<3>2 )
  );
  X_FF #(
    .LOC ( "SLICE_X11Y48" ),
    .INIT ( 1'b0 ))
  \u_uart/cq_r_3  (
    .CE(\u_uart/_n0234_inv_0 ),
    .CLK(\NlwBufferSignal_u_uart/cq_r_3/CLK ),
    .I(\u_uart/Result<3>2 ),
    .O(\u_uart/cq_r<3>_pack_6 ),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y48" ),
    .INIT ( 1'b0 ))
  \u_uart/cq_r_1  (
    .CE(\u_uart/_n0234_inv_0 ),
    .CLK(\NlwBufferSignal_u_uart/cq_r_1/CLK ),
    .I(\u_uart/Result<1>2 ),
    .O(\u_uart/cq_r [1]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y48" ),
    .INIT ( 64'h5555AAAA5555AAAA ))
  \u_uart/Mcount_cq_r_xor<1>11  (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_uart/cq_r [1]),
    .ADR3(1'b1),
    .ADR0(\u_uart/cq_r [0]),
    .O(\u_uart/Result<1>2 )
  );
  X_FF #(
    .LOC ( "SLICE_X11Y48" ),
    .INIT ( 1'b0 ))
  \u_uart/cq_r_0  (
    .CE(\u_uart/_n0234_inv_0 ),
    .CLK(\NlwBufferSignal_u_uart/cq_r_0/CLK ),
    .I(\u_uart/Result<0>2 ),
    .O(\u_uart/cq_r [0]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y48" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \u_uart/Mcount_cq_r_xor<0>11_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_uart/cq_r [0]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\u_uart/Result<0>2 )
  );
  X_BUF   \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT512/u_uart/Mmux_code[2]_GND_7_o_select_48_OUT512_AMUX_Delay  (
    .I(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT21_3964 ),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT21_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y52" ),
    .INIT ( 64'h010DAD60010DAD60 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT513  (
    .ADR4(\u_uart/idx [5]),
    .ADR2(\u_uart/idx [4]),
    .ADR0(\u_uart/idx [2]),
    .ADR1(\u_uart/idx [0]),
    .ADR3(\u_uart/idx [3]),
    .ADR5(1'b1),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT512 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X11Y52" ),
    .INIT ( 32'h000EA213 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT22  (
    .ADR4(\u_uart/idx [5]),
    .ADR2(\u_uart/idx [4]),
    .ADR0(\u_uart/idx [2]),
    .ADR1(\u_uart/idx [0]),
    .ADR3(\u_uart/idx [3]),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT21_3964 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y53" ),
    .INIT ( 64'h5050DC500000CC00 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT211  (
    .ADR1(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT13_7513 ),
    .ADR2(\u_uart/Sh198111 ),
    .ADR0(\u_uart/GND_7_o_GND_7_o_sub_42_OUT<3>1 ),
    .ADR3(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT210_8376 ),
    .ADR4(\u_uart/GND_7_o_GND_7_o_sub_36_OUT<5>1 ),
    .ADR5(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT29_7515 ),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT211_8378 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y53" ),
    .INIT ( 64'hA5A50F0FA5A50F0F ))
  \u_uart/Msub_GND_7_o_GND_7_o_sub_42_OUT<5:0>_xor<3>11  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR0(\u_uart/idx_1_1_7400 ),
    .ADR4(\u_uart/idx [2]),
    .ADR2(\u_uart/idx [3]),
    .O(\u_uart/GND_7_o_GND_7_o_sub_42_OUT<3>1 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y53" ),
    .INIT ( 64'h5F5F5F5F4C5F5F5F ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT123_SW0  (
    .ADR1(\u_uart/idx [1]),
    .ADR4(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT13_7513 ),
    .ADR0(\u_uart/GND_7_o_GND_7_o_sub_42_OUT<3>1 ),
    .ADR5(\u_uart/GND_7_o_GND_7_o_sub_36_OUT<4>1 ),
    .ADR3(\u_uart/GND_7_o_GND_7_o_sub_36_OUT<5>1 ),
    .ADR2(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT29_7515 ),
    .O(N219)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y53" ),
    .INIT ( 64'hBFEEBFFFAEAEBFBF ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT124  (
    .ADR1(\u_uart/idx [0]),
    .ADR3(\u_uart/idx [4]),
    .ADR5(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT182 ),
    .ADR0(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT123 ),
    .ADR2(N220),
    .ADR4(N219),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT125_7528 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y57" ),
    .INIT ( 64'h8100030003000300 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT291  (
    .ADR0(\u_uart/idx_1_1_7400 ),
    .ADR1(\u_uart/idx_4_1_7811 ),
    .ADR3(\u_uart/code [2]),
    .ADR2(\u_uart/idx [5]),
    .ADR5(\u_uart/idx [2]),
    .ADR4(\u_uart/idx [3]),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT29_7515 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y57" ),
    .INIT ( 64'h2A7FAAFF5F7F5FFF ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT68_SW0  (
    .ADR2(\u_uart/idx [1]),
    .ADR4(\u_uart/idx [0]),
    .ADR5(\u_uart/idx [3]),
    .ADR0(\u_uart/idx [2]),
    .ADR1(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT223 ),
    .ADR3(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT29_7515 ),
    .O(N222)
  );
  X_BUF   \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT612/u_uart/Mmux_code[2]_GND_7_o_select_48_OUT612_BMUX_Delay  (
    .I(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT69_pack_1 ),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT69 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y59" ),
    .INIT ( 64'hEC7FFFF9EC7FFFF9 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT613  (
    .ADR3(\u_uart/idx [1]),
    .ADR2(\u_uart/idx [0]),
    .ADR0(\u_uart/idx [4]),
    .ADR4(\u_uart/idx [2]),
    .ADR1(\u_uart/idx [3]),
    .ADR5(1'b1),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT612 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X11Y59" ),
    .INIT ( 32'hFE6ECEE2 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT610  (
    .ADR3(\u_uart/idx [1]),
    .ADR2(\u_uart/idx [0]),
    .ADR0(\u_uart/idx [4]),
    .ADR4(\u_uart/idx [2]),
    .ADR1(\u_uart/idx [3]),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT69_pack_1 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y59" ),
    .INIT ( 64'h44440000F444F000 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT614  (
    .ADR5(\u_uart/idx [5]),
    .ADR4(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT14 ),
    .ADR2(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT11 ),
    .ADR0(\u_uart/GND_7_o_GND_7_o_sub_34_OUT<5>1 ),
    .ADR1(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT612 ),
    .ADR3(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT69 ),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT613_7559 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y60" ),
    .INIT ( 64'h00010000AAABAAAA ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT73  (
    .ADR2(\u_uart/code [1]),
    .ADR1(\u_uart/code<0>_0 ),
    .ADR0(\u_uart/code [2]),
    .ADR3(\u_uart/GND_7_o_GND_7_o_sub_34_OUT<5>1 ),
    .ADR4(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT71 ),
    .ADR5(N488),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT72_7564 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y60" ),
    .INIT ( 64'hFFFFFAFEFAFAFAFA ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT73_SW0  (
    .ADR2(\u_uart/idx [5]),
    .ADR1(\u_uart/idx [1]),
    .ADR3(\u_uart/idx [0]),
    .ADR5(\u_uart/idx [2]),
    .ADR0(\u_uart/idx [4]),
    .ADR4(\u_uart/idx [3]),
    .O(N488)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y60" ),
    .INIT ( 64'hFF3033FFFF3033FF ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT115_SW0  (
    .ADR0(1'b1),
    .ADR5(1'b1),
    .ADR2(\u_uart/idx_1_1_7400 ),
    .ADR1(\u_uart/idx [0]),
    .ADR4(\u_uart/idx [2]),
    .ADR3(\u_uart/idx [3]),
    .O(N429)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y4" ),
    .INIT ( 64'hCC33E4B1CC334E1B ))
  \u_fifo_a2b/pop1_SW31  (
    .ADR1(\u_fifo_a2b/rptr [4]),
    .ADR3(\u_fifo_a2b/rptr [3]),
    .ADR2(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<3>_0 ),
    .ADR5(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<4>_0 ),
    .ADR0(a2b_rd_en),
    .ADR4(\u_fifo_a2b/rd_empty12 ),
    .O(N292)
  );
  X_FF #(
    .LOC ( "SLICE_X12Y4" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rptr_gray_r_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rptr_gray_r_3/CLK ),
    .I(\u_fifo_a2b/rptr_n[11]_GND_4_o_xor_25_OUT<3> ),
    .O(\u_fifo_a2b/rptr_gray [3]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y4" ),
    .INIT ( 64'h070F8F0F0B0F4F0F ))
  \u_fifo_a2b/Mxor_rptr_n[11]_GND_4_o_xor_25_OUT_3_xo<0>1  (
    .ADR0(\u_fifo_a2b/rptr [0]),
    .ADR5(\u_fifo_a2b/cptr_r[0] ),
    .ADR1(\u_fifo_a2b/rd_empty121_7283 ),
    .ADR2(N291),
    .ADR3(\u_fifo_a2b/rd_empty124_7285 ),
    .ADR4(N292),
    .O(\u_fifo_a2b/rptr_n[11]_GND_4_o_xor_25_OUT<3> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y4" ),
    .INIT ( 64'h9999F00F99999999 ))
  \u_fifo_a2b/pop1_SW29  (
    .ADR0(\u_fifo_a2b/rptr [2]),
    .ADR1(\u_fifo_a2b/rptr [3]),
    .ADR2(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<2>_0 ),
    .ADR3(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<3>_0 ),
    .ADR5(a2b_rd_en),
    .ADR4(\u_fifo_a2b/rd_empty12 ),
    .O(N289)
  );
  X_FF #(
    .LOC ( "SLICE_X12Y4" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rptr_gray_r_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rptr_gray_r_2/CLK ),
    .I(\u_fifo_a2b/rptr_n[11]_GND_4_o_xor_25_OUT<2> ),
    .O(\u_fifo_a2b/rptr_gray [2]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y4" ),
    .INIT ( 64'h13B33333313B3333 ))
  \u_fifo_a2b/Mxor_rptr_n[11]_GND_4_o_xor_25_OUT_2_xo<0>1  (
    .ADR5(\u_fifo_a2b/rptr [0]),
    .ADR2(\u_fifo_a2b/cptr_r[0] ),
    .ADR0(\u_fifo_a2b/rd_empty121_7283 ),
    .ADR1(N288),
    .ADR4(\u_fifo_a2b/rd_empty124_7285 ),
    .ADR3(N289),
    .O(\u_fifo_a2b/rptr_n[11]_GND_4_o_xor_25_OUT<2> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y5" ),
    .INIT ( 64'hFF00C3C300FFC3C3 ))
  \u_fifo_a2b/pop1_SW38  (
    .ADR0(1'b1),
    .ADR1(\u_fifo_a2b/rptr [7]),
    .ADR2(\u_fifo_a2b/rptr [8]),
    .ADR3(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<7>_0 ),
    .ADR5(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<8>_0 ),
    .ADR4(a2b_rd_en),
    .O(N303)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y10" ),
    .INIT ( 64'hA55A5AA55AA5A55A ))
  \u_fifo_a2b/Mxor_cptr_r<7>_xo<0>1  (
    .ADR1(1'b1),
    .ADR3(\u_fifo_a2b/cg_s2 [7]),
    .ADR0(\u_fifo_a2b/cg_s2 [11]),
    .ADR2(\u_fifo_a2b/cg_s2 [10]),
    .ADR4(\u_fifo_a2b/cg_s2 [9]),
    .ADR5(\u_fifo_a2b/cg_s2 [8]),
    .O(\u_fifo_a2b/cptr_r[7] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y10" ),
    .INIT ( 64'h6006099006609009 ))
  \u_fifo_a2b/rd_empty122_1  (
    .ADR1(\u_fifo_a2b/cg_s2 [4]),
    .ADR2(\u_fifo_a2b/cg_s2 [5]),
    .ADR3(\u_fifo_a2b/cg_s2 [6]),
    .ADR0(\u_fifo_a2b/rptr [4]),
    .ADR4(\u_fifo_a2b/rptr [5]),
    .ADR5(\u_fifo_a2b/cptr_r[7] ),
    .O(\u_fifo_a2b/rd_empty122_7390 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y10" ),
    .INIT ( 64'h00CC3300CC000033 ))
  \u_fifo_a2b/SF0121  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR5(\u_fifo_a2b/cg_s2 [8]),
    .ADR4(\u_fifo_a2b/cg_s2 [9]),
    .ADR3(\u_fifo_a2b/rptr [8]),
    .ADR1(\u_fifo_a2b/rptr [9]),
    .O(\u_fifo_a2b/SF012 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y22" ),
    .INIT ( 64'hCCE433B1CC4E331B ))
  \u_fifo_b2a/pop1_SW27  (
    .ADR1(\u_fifo_b2a/rptr [1]),
    .ADR4(\u_fifo_b2a/rptr [2]),
    .ADR5(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<1>_0 ),
    .ADR2(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<2>_0 ),
    .ADR0(b2a_rd_en),
    .ADR3(\u_fifo_b2a/rd_empty12 ),
    .O(N321)
  );
  X_FF #(
    .LOC ( "SLICE_X12Y22" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rptr_gray_r_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rptr_gray_r_1/CLK ),
    .I(\u_fifo_b2a/rptr_n[11]_GND_4_o_xor_25_OUT<1> ),
    .O(\u_fifo_b2a/rptr_gray [1]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y22" ),
    .INIT ( 64'h1333B33331333B33 ))
  \u_fifo_b2a/Mxor_rptr_n[11]_GND_4_o_xor_25_OUT_1_xo<0>1  (
    .ADR5(\u_fifo_b2a/rptr [0]),
    .ADR2(\u_fifo_b2a/cptr_r[0] ),
    .ADR0(\u_fifo_b2a/rd_empty121_7418 ),
    .ADR1(N320),
    .ADR3(\u_fifo_b2a/rd_empty124_7572 ),
    .ADR4(N321),
    .O(\u_fifo_b2a/rptr_n[11]_GND_4_o_xor_25_OUT<1> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y22" ),
    .INIT ( 64'hF9F0090F90F09F0F ))
  \u_fifo_b2a/pop1_SW25  (
    .ADR4(\u_fifo_b2a/rptr [1]),
    .ADR2(\u_fifo_b2a/rptr [0]),
    .ADR0(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<0>_0 ),
    .ADR1(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<1>_0 ),
    .ADR3(b2a_rd_en),
    .ADR5(\u_fifo_b2a/cptr_r[0] ),
    .O(N318)
  );
  X_FF #(
    .LOC ( "SLICE_X12Y22" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rptr_gray_r_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rptr_gray_r_0/CLK ),
    .I(\u_fifo_b2a/rptr_n[11]_GND_4_o_xor_25_OUT<0> ),
    .O(\u_fifo_b2a/rptr_gray [0]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y22" ),
    .INIT ( 64'h1B1B333333333333 ))
  \u_fifo_b2a/Mxor_rptr_n[11]_GND_4_o_xor_25_OUT_0_xo<0>1  (
    .ADR3(1'b1),
    .ADR4(\u_fifo_b2a/rd_empty121_7418 ),
    .ADR5(\u_fifo_b2a/rd_empty12 ),
    .ADR1(N317),
    .ADR0(\u_fifo_b2a/rd_empty124_7572 ),
    .ADR2(N318),
    .O(\u_fifo_b2a/rptr_n[11]_GND_4_o_xor_25_OUT<0> )
  );
  X_BUF   \u_fifo_b2a/cg_s2<11>/u_fifo_b2a/cg_s2<11>_DMUX_Delay  (
    .I(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<7> ),
    .O(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<7>_0 )
  );
  X_BUF   \u_fifo_b2a/cg_s2<11>/u_fifo_b2a/cg_s2<11>_CMUX_Delay  (
    .I(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<6> ),
    .O(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<6>_0 )
  );
  X_BUF   \u_fifo_b2a/cg_s2<11>/u_fifo_b2a/cg_s2<11>_BMUX_Delay  (
    .I(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<5> ),
    .O(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<5>_0 )
  );
  X_BUF   \u_fifo_b2a/cg_s2<11>/u_fifo_b2a/cg_s2<11>_AMUX_Delay  (
    .I(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<4> ),
    .O(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<4>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y24" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cg_s2_11  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cg_s2_11/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/cg_s2_11/IN ),
    .O(\u_fifo_b2a/cg_s2 [11]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y24" ),
    .INIT ( 64'hCCCCCCCCCCCCCCCC ))
  \u_fifo_b2a/rptr<7>_rt  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\u_fifo_b2a/rptr [7]),
    .ADR5(1'b1),
    .O(\u_fifo_b2a/cg_s2<11>/u_fifo_b2a/rptr<7>_rt )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y24" ),
    .INIT ( 32'h00000000 ))
  \N1_69.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_69.D5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y24" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cg_s2_10  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cg_s2_10/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/cg_s2_10/IN ),
    .O(\u_fifo_b2a/cg_s2 [10]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X12Y24" ))
  \u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<7>  (
    .CI(\u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<3>_8170 ),
    .CYINIT(1'b0),
    .CO({\u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<7>_8171 , \NLW_u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<7>_CO[2]_UNCONNECTED , 
\NLW_u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<7>_CO[1]_UNCONNECTED , \NLW_u_fifo_b2a/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<7>_CO[0]_UNCONNECTED })
,
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<7> , \u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<6> , \u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<5> , 
\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<4> }),
    .S({\u_fifo_b2a/cg_s2<11>/u_fifo_b2a/rptr<7>_rt , \u_fifo_b2a/cg_s2<11>/u_fifo_b2a/rptr<6>_rt , \u_fifo_b2a/cg_s2<11>/u_fifo_b2a/rptr<5>_rt , 
\u_fifo_b2a/cg_s2<11>/u_fifo_b2a/rptr<4>_rt })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y24" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_fifo_b2a/rptr<6>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_fifo_b2a/rptr [6]),
    .ADR5(1'b1),
    .O(\u_fifo_b2a/cg_s2<11>/u_fifo_b2a/rptr<6>_rt )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y24" ),
    .INIT ( 32'h00000000 ))
  \N1_70.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_70.C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y24" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cg_s2_9  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cg_s2_9/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/cg_s2_9/IN ),
    .O(\u_fifo_b2a/cg_s2 [9]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y24" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_fifo_b2a/rptr<5>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_fifo_b2a/rptr [5]),
    .ADR5(1'b1),
    .O(\u_fifo_b2a/cg_s2<11>/u_fifo_b2a/rptr<5>_rt )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y24" ),
    .INIT ( 32'h00000000 ))
  \N1_71.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_71.B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y24" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cg_s2_8  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cg_s2_8/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/cg_s2_8/IN ),
    .O(\u_fifo_b2a/cg_s2 [8]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y24" ),
    .INIT ( 64'hCCCCCCCCCCCCCCCC ))
  \u_fifo_b2a/rptr<4>_rt  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\u_fifo_b2a/rptr [4]),
    .ADR5(1'b1),
    .O(\u_fifo_b2a/cg_s2<11>/u_fifo_b2a/rptr<4>_rt )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y24" ),
    .INIT ( 32'h00000000 ))
  \N1_72.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_72.A5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y26" ),
    .INIT ( 64'h217B12B712B7217B ))
  \u_fifo_b2a/rd_empty121  (
    .ADR2(\u_fifo_b2a/cg_s2 [4]),
    .ADR4(\u_fifo_b2a/cg_s2 [5]),
    .ADR0(\u_fifo_b2a/cg_s2 [6]),
    .ADR3(N126),
    .ADR1(N125),
    .ADR5(\u_fifo_b2a/cptr_r[7] ),
    .O(\u_fifo_b2a/rd_empty12 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y27" ),
    .INIT ( 64'hAAF0AA0F55F0550F ))
  \u_fifo_b2a/pop1_SW38  (
    .ADR1(1'b1),
    .ADR4(\u_fifo_b2a/rptr [7]),
    .ADR2(\u_fifo_b2a/rptr [8]),
    .ADR5(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<7>_0 ),
    .ADR0(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<8>_0 ),
    .ADR3(b2a_rd_en),
    .O(N338)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y27" ),
    .INIT ( 64'hBB7788448844BB77 ))
  \u_fifo_b2a/pop1_SW42  (
    .ADR2(1'b1),
    .ADR4(\u_fifo_b2a/rptr [10]),
    .ADR5(\u_fifo_b2a/rptr [9]),
    .ADR3(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<9>_0 ),
    .ADR0(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<10>_0 ),
    .ADR1(b2a_rd_en),
    .O(N344)
  );
  X_FF #(
    .LOC ( "SLICE_X12Y30" ),
    .INIT ( 1'b0 ))
  \u_engine/len_gt  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/len_gt/CLK ),
    .I(\u_engine/len_gt_rstpot_4184 ),
    .O(\u_engine/len_gt_7639 ),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y30" ),
    .INIT ( 64'h4755555503000000 ))
  \u_engine/len_gt_rstpot  (
    .ADR0(N115_0),
    .ADR3(\u_rx_a/m_tindex [0]),
    .ADR4(\u_engine/_n0409_inv1 ),
    .ADR5(\u_engine/len_gt_7639 ),
    .ADR1(\u_rx_a/m_tindex [2]),
    .ADR2(N215),
    .O(\u_engine/len_gt_rstpot_4184 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y30" ),
    .INIT ( 64'hFF03FF07FF03FF0F ))
  \u_engine/_n0409_inv2_SW1  (
    .ADR2(\u_engine/Mmux_len_gt_GND_6_o_MUX_94_o1 ),
    .ADR4(\u_engine/len_hi [1]),
    .ADR5(N440),
    .ADR0(\u_engine/Mmux_len_gt_GND_6_o_MUX_94_o11_7635 ),
    .ADR1(\u_engine/len_hi [2]),
    .ADR3(\u_rx_a/m_tlast_0 ),
    .O(N215)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y34" ),
    .INIT ( 64'hFAFAFAFAFAFAFAFA ))
  \u_engine/Mmux_frag_ok_GND_6_o_MUX_95_o1_SW0  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR3(1'b1),
    .ADR0(\u_engine/frag_hi [1]),
    .ADR2(\u_engine/frag_hi [0]),
    .O(N41)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y34" ),
    .INIT ( 64'h0000000100000000 ))
  \u_engine/Mmux_frag_ok_GND_6_o_MUX_95_o1  (
    .ADR2(\u_rx_a/m_tdata [3]),
    .ADR4(\u_engine/frag_hi<4>_0 ),
    .ADR1(\u_engine/frag_hi [3]),
    .ADR3(\u_engine/frag_hi [2]),
    .ADR0(N41),
    .ADR5(\u_engine/Mmux_frag_ok_GND_6_o_MUX_95_o11 ),
    .O(\u_engine/frag_ok_GND_6_o_MUX_95_o )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y34" ),
    .INIT ( 1'b0 ))
  \u_engine/frag_ok  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/frag_ok/CLK ),
    .I(\u_engine/frag_ok_rstpot_4212 ),
    .O(\u_engine/frag_ok_7333 ),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y34" ),
    .INIT ( 64'hFFFF1555EAAA0000 ))
  \u_engine/frag_ok_rstpot  (
    .ADR0(N115_0),
    .ADR1(\u_rx_a/m_tindex [0]),
    .ADR3(\u_rx_a/m_tindex [2]),
    .ADR5(\u_engine/frag_ok_7333 ),
    .ADR2(\u_engine/_n0409_inv1 ),
    .ADR4(\u_engine/frag_ok_GND_6_o_MUX_95_o ),
    .O(\u_engine/frag_ok_rstpot_4212 )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y36" ),
    .INIT ( 1'b0 ))
  \u_engine/ihl_ok  (
    .CE(\u_engine/_n0397_inv ),
    .CLK(\NlwBufferSignal_u_engine/ihl_ok/CLK ),
    .I(\u_engine/ihl_ok_GND_6_o_MUX_93_o ),
    .O(\u_engine/ihl_ok_7478 ),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y36" ),
    .INIT ( 64'h0000FFAA0000FF88 ))
  \u_engine/Mmux_ihl_ok_GND_6_o_MUX_93_o11  (
    .ADR2(1'b1),
    .ADR4(\u_rx_a/m_tlast_0 ),
    .ADR0(\u_rx_a/m_tdata [2]),
    .ADR5(\u_rx_a/m_tdata [0]),
    .ADR1(\u_rx_a/m_tdata [1]),
    .ADR3(\u_rx_a/m_tdata [3]),
    .O(\u_engine/ihl_ok_GND_6_o_MUX_93_o )
  );
  X_BUF   \u_engine/is_ipv4/u_engine/is_ipv4_CMUX_Delay  (
    .I(\u_engine/et_hi_ok_GND_6_o_MUX_90_o_pack_10 ),
    .O(\u_engine/et_hi_ok_GND_6_o_MUX_90_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y37" ),
    .INIT ( 64'hFF00FF0080000000 ))
  \u_engine/_n0367_inv  (
    .ADR2(\u_rx_a/m_tindex [4]),
    .ADR1(\u_rx_a/m_tindex [2]),
    .ADR0(N33_0),
    .ADR5(\u_rx_a/m_tlast_0 ),
    .ADR3(\u_rx_a/m_tvalid_7480 ),
    .ADR4(\u_engine/_n0385_inv1_8292 ),
    .O(\u_engine/_n0367_inv_8340 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y37" ),
    .INIT ( 64'h3030000030300000 ))
  \u_engine/Mmux_is_ipv4_GND_6_o_MUX_91_o11  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR1(\u_rx_a/m_tdata [3]),
    .ADR4(\u_engine/et_hi_ok_8447 ),
    .ADR2(\u_engine/Mmux_frag_ok_GND_6_o_MUX_95_o11 ),
    .ADR5(1'b1),
    .O(\u_engine/is_ipv4_GND_6_o_MUX_91_o )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y37" ),
    .INIT ( 32'hC0C0C0C0 ))
  \u_engine/Mmux_et_hi_ok_GND_6_o_MUX_90_o11  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR1(\u_rx_a/m_tdata [3]),
    .ADR3(1'b1),
    .ADR2(\u_engine/Mmux_frag_ok_GND_6_o_MUX_95_o11 ),
    .O(\u_engine/et_hi_ok_GND_6_o_MUX_90_o_pack_10 )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y37" ),
    .INIT ( 1'b0 ))
  \u_engine/is_ipv4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/is_ipv4/CLK ),
    .I(\u_engine/is_ipv4_rstpot_4244 ),
    .O(\u_engine/is_ipv4_7479 ),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y37" ),
    .INIT ( 64'hFF15EA00FF3FC000 ))
  \u_engine/is_ipv4_rstpot  (
    .ADR5(\u_rx_a/m_tindex [0]),
    .ADR2(\u_rx_a/m_tlast_0 ),
    .ADR1(\u_rx_a/m_tvalid_7480 ),
    .ADR4(\u_engine/is_ipv4_7479 ),
    .ADR0(\u_engine/_n0385_inv4 ),
    .ADR3(\u_engine/is_ipv4_GND_6_o_MUX_91_o ),
    .O(\u_engine/is_ipv4_rstpot_4244 )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y37" ),
    .INIT ( 1'b0 ))
  \u_engine/et_hi_ok  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/et_hi_ok/CLK ),
    .I(\u_engine/et_hi_ok_rstpot_4252 ),
    .O(\u_engine/et_hi_ok_8447 ),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y37" ),
    .INIT ( 64'hDDFFCDCF8800C8C0 ))
  \u_engine/et_hi_ok_rstpot  (
    .ADR4(\u_rx_a/m_tindex [0]),
    .ADR3(\u_rx_a/m_tlast_0 ),
    .ADR0(\u_rx_a/m_tvalid_7480 ),
    .ADR5(\u_engine/et_hi_ok_8447 ),
    .ADR2(\u_engine/_n0385_inv4 ),
    .ADR1(\u_engine/et_hi_ok_GND_6_o_MUX_90_o ),
    .O(\u_engine/et_hi_ok_rstpot_4252 )
  );
  X_BUF   \u_rx_a/m_tindex<7>/u_rx_a/m_tindex<7>_CMUX_Delay  (
    .I(\u_engine/_n0371_inv ),
    .O(\u_engine/_n0371_inv_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y42" ),
    .INIT ( 1'b0 ))
  \u_rx_a/m_tindex_7  (
    .CE(\u_rx_a/state[1]_GND_3_o_Mux_40_o ),
    .CLK(\NlwBufferSignal_u_rx_a/m_tindex_7/CLK ),
    .I(\NlwBufferSignal_u_rx_a/m_tindex_7/IN ),
    .O(\u_rx_a/m_tindex [7]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X12Y42" ),
    .INIT ( 1'b0 ))
  \u_rx_a/m_tindex_6  (
    .CE(\u_rx_a/state[1]_GND_3_o_Mux_40_o ),
    .CLK(\NlwBufferSignal_u_rx_a/m_tindex_6/CLK ),
    .I(\NlwBufferSignal_u_rx_a/m_tindex_6/IN ),
    .O(\u_rx_a/m_tindex [6]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X12Y42" ))
  \u_engine/_n0371_inv1_cy  (
    .CI(\u_engine/Mcompar__n0368_cy [3]),
    .CYINIT(1'b0),
    .CO({\NLW_u_engine/_n0371_inv1_cy_CO[3]_UNCONNECTED , \u_engine/_n0371_inv , \NLW_u_engine/_n0371_inv1_cy_CO[1]_UNCONNECTED , 
\NLW_u_engine/_n0371_inv1_cy_CO[0]_UNCONNECTED }),
    .DI({\NLW_u_engine/_n0371_inv1_cy_DI[3]_UNCONNECTED , 1'b0, 1'b0, 1'b0}),
    .O({\NLW_u_engine/_n0371_inv1_cy_O[3]_UNCONNECTED , \NLW_u_engine/_n0371_inv1_cy_O[2]_UNCONNECTED , \NLW_u_engine/_n0371_inv1_cy_O[1]_UNCONNECTED 
, \NLW_u_engine/_n0371_inv1_cy_O[0]_UNCONNECTED }),
    .S({\NLW_u_engine/_n0371_inv1_cy_S[3]_UNCONNECTED , \u_rx_a/m_tindex<7>/u_rx_a/m_tvalid_rt , \u_engine/Mcompar__n0368_lut [5], 
\u_engine/Mcompar__n0368_lut [4]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y42" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_rx_a/m_tvalid_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_rx_a/m_tvalid_7480 ),
    .ADR5(1'b1),
    .O(\u_rx_a/m_tindex<7>/u_rx_a/m_tvalid_rt )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y42" ),
    .INIT ( 32'h00000000 ))
  \N1_192.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_192.C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y42" ),
    .INIT ( 1'b0 ))
  \u_rx_a/m_tindex_5  (
    .CE(\u_rx_a/state[1]_GND_3_o_Mux_40_o ),
    .CLK(\NlwBufferSignal_u_rx_a/m_tindex_5/CLK ),
    .I(\NlwBufferSignal_u_rx_a/m_tindex_5/IN ),
    .O(\u_rx_a/m_tindex [5]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y42" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \u_engine/Mcompar__n0368_lut<5>1_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\u_rx_a/m_tindex [15]),
    .ADR5(1'b1),
    .O(\u_engine/Mcompar__n0368_lut [5])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y42" ),
    .INIT ( 32'h00000000 ))
  \N1_169.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_169.B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y42" ),
    .INIT ( 1'b0 ))
  \u_rx_a/m_tindex_4  (
    .CE(\u_rx_a/state[1]_GND_3_o_Mux_40_o ),
    .CLK(\NlwBufferSignal_u_rx_a/m_tindex_4/CLK ),
    .I(\NlwBufferSignal_u_rx_a/m_tindex_4/IN ),
    .O(\u_rx_a/m_tindex [4]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y42" ),
    .INIT ( 64'h0000003300000033 ))
  \u_engine/Mcompar__n0368_lut<4>1  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR1(\u_rx_a/m_tindex [12]),
    .ADR4(\u_rx_a/m_tindex [13]),
    .ADR3(\u_rx_a/m_tindex [14]),
    .ADR5(1'b1),
    .O(\u_engine/Mcompar__n0368_lut [4])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y42" ),
    .INIT ( 32'h00000000 ))
  \N1_170.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_170.A5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y47" ),
    .INIT ( 64'hFFFFFFFF0000FFFF ))
  \u_uart/Sh863411  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_uart/idx [1]),
    .ADR5(\u_uart/idx [0]),
    .O(\u_uart/Sh86341 )
  );
  X_RAMD64_ADV #(
    .LOC ( "SLICE_X12Y48" ),
    .INIT ( 64'h0000000000000000 ))
  \u_uart/Mram_cq1/SP  (
    .RADR0(1'b0),
    .RADR1(1'b0),
    .RADR2(\NlwBufferSignal_u_uart/Mram_cq1/SP/RADR2 ),
    .RADR3(\NlwBufferSignal_u_uart/Mram_cq1/SP/RADR3 ),
    .RADR4(\NlwBufferSignal_u_uart/Mram_cq1/SP/RADR4 ),
    .RADR5(1'b1),
    .CLK(\NlwBufferSignal_u_uart/Mram_cq1/SP/CLK ),
    .I(\NlwBufferSignal_u_uart/Mram_cq1/SP/IN ),
    .O(\NLW_u_uart/Mram_cq1/SP_O_UNCONNECTED ),
    .WADR0(1'b0),
    .WADR1(1'b0),
    .WADR2(\NlwBufferSignal_u_uart/Mram_cq1/SP/WADR2 ),
    .WADR3(\NlwBufferSignal_u_uart/Mram_cq1/SP/WADR3 ),
    .WADR4(\NlwBufferSignal_u_uart/Mram_cq1/SP/WADR4 ),
    .WADR5(1'b1),
    .WE1(1'b1),
    .WE2(1'b1),
    .WE(\NlwBufferSignal_u_uart/Mram_cq1/SP/WE )
  );
  X_RAMD64_ADV #(
    .LOC ( "SLICE_X12Y48" ),
    .INIT ( 64'h0000000000000000 ))
  \u_uart/Mram_cq2/SP  (
    .RADR0(1'b0),
    .RADR1(1'b0),
    .RADR2(\NlwBufferSignal_u_uart/Mram_cq2/SP/RADR2 ),
    .RADR3(\NlwBufferSignal_u_uart/Mram_cq2/SP/RADR3 ),
    .RADR4(\NlwBufferSignal_u_uart/Mram_cq2/SP/RADR4 ),
    .RADR5(1'b1),
    .CLK(\NlwBufferSignal_u_uart/Mram_cq2/SP/CLK ),
    .I(\NlwBufferSignal_u_uart/Mram_cq2/SP/IN ),
    .O(\NLW_u_uart/Mram_cq2/SP_O_UNCONNECTED ),
    .WADR0(1'b0),
    .WADR1(1'b0),
    .WADR2(\NlwBufferSignal_u_uart/Mram_cq2/SP/WADR2 ),
    .WADR3(\NlwBufferSignal_u_uart/Mram_cq2/SP/WADR3 ),
    .WADR4(\NlwBufferSignal_u_uart/Mram_cq2/SP/WADR4 ),
    .WADR5(1'b1),
    .WE1(1'b1),
    .WE2(1'b1),
    .WE(\NlwBufferSignal_u_uart/Mram_cq2/SP/WE )
  );
  X_RAMD64_ADV #(
    .LOC ( "SLICE_X12Y48" ),
    .INIT ( 64'h0000000000000000 ))
  \u_uart/Mram_cq1/DP  (
    .RADR0(1'b0),
    .RADR1(1'b0),
    .RADR2(\NlwBufferSignal_u_uart/Mram_cq1/DP/RADR2 ),
    .RADR3(\NlwBufferSignal_u_uart/Mram_cq1/DP/RADR3 ),
    .RADR4(\NlwBufferSignal_u_uart/Mram_cq1/DP/RADR4 ),
    .RADR5(1'b1),
    .CLK(\NlwBufferSignal_u_uart/Mram_cq1/DP/CLK ),
    .I(\NlwBufferSignal_u_uart/Mram_cq1/DP/IN ),
    .O(\u_uart/_n0204 [0]),
    .WADR0(1'b0),
    .WADR1(1'b0),
    .WADR2(\NlwBufferSignal_u_uart/Mram_cq1/DP/WADR2 ),
    .WADR3(\NlwBufferSignal_u_uart/Mram_cq1/DP/WADR3 ),
    .WADR4(\NlwBufferSignal_u_uart/Mram_cq1/DP/WADR4 ),
    .WADR5(1'b1),
    .WE1(1'b1),
    .WE2(1'b1),
    .WE(\NlwBufferSignal_u_uart/Mram_cq1/DP/WE )
  );
  X_RAMD64_ADV #(
    .LOC ( "SLICE_X12Y48" ),
    .INIT ( 64'h0000000000000000 ))
  \u_uart/Mram_cq2/DP  (
    .RADR0(1'b0),
    .RADR1(1'b0),
    .RADR2(\NlwBufferSignal_u_uart/Mram_cq2/DP/RADR2 ),
    .RADR3(\NlwBufferSignal_u_uart/Mram_cq2/DP/RADR3 ),
    .RADR4(\NlwBufferSignal_u_uart/Mram_cq2/DP/RADR4 ),
    .RADR5(1'b1),
    .CLK(\NlwBufferSignal_u_uart/Mram_cq2/DP/CLK ),
    .I(\NlwBufferSignal_u_uart/Mram_cq2/DP/IN ),
    .O(\u_uart/_n0204 [1]),
    .WADR0(1'b0),
    .WADR1(1'b0),
    .WADR2(\NlwBufferSignal_u_uart/Mram_cq2/DP/WADR2 ),
    .WADR3(\NlwBufferSignal_u_uart/Mram_cq2/DP/WADR3 ),
    .WADR4(\NlwBufferSignal_u_uart/Mram_cq2/DP/WADR4 ),
    .WADR5(1'b1),
    .WE1(1'b1),
    .WE2(1'b1),
    .WE(\NlwBufferSignal_u_uart/Mram_cq2/DP/WE )
  );
  X_BUF   \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT11/u_uart/Mmux_code[2]_GND_7_o_select_48_OUT11_CMUX_Delay  (
    .I(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT410 ),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT410_0 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X12Y52" ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT411  (
    .IA(1'b0),
    .IB(N501),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT410 ),
    .SEL(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT11 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y52" ),
    .INIT ( 64'h0000000000000000 ))
  \N1_193.D6LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\NLW_N1_193.D6LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y52" ),
    .INIT ( 64'h0001400084800200 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT411_G  (
    .ADR5(\u_uart/idx [4]),
    .ADR0(\u_uart/idx [5]),
    .ADR1(\u_uart/idx [3]),
    .ADR4(\u_uart/idx [2]),
    .ADR2(\u_uart/idx [1]),
    .ADR3(\u_uart/idx [0]),
    .O(N501)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y52" ),
    .INIT ( 64'h00F0000000F00000 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT111  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR4(\u_uart/code [1]),
    .ADR2(\u_uart/code<0>_0 ),
    .ADR3(\u_uart/code [2]),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT11 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y52" ),
    .INIT ( 64'hFAFAFFFBFFFFFFFF ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT110_SW0  (
    .ADR5(\u_uart/idx [1]),
    .ADR0(\u_uart/idx [0]),
    .ADR2(\u_uart/idx [4]),
    .ADR3(\u_uart/idx [3]),
    .ADR1(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT14 ),
    .ADR4(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT11 ),
    .O(N59)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y53" ),
    .INIT ( 64'hF0F2F0F0F0FAF0F8 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT19  (
    .ADR0(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT12_7535 ),
    .ADR2(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT163 ),
    .ADR5(\u_uart/GND_7_o_GND_7_o_sub_38_OUT<2>1 ),
    .ADR4(\u_uart/GND_7_o_GND_7_o_sub_38_OUT<3>1 ),
    .ADR1(\u_uart/GND_7_o_GND_7_o_sub_38_OUT<4>1 ),
    .ADR3(\u_uart/GND_7_o_GND_7_o_sub_38_OUT<5>1 ),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT112_8450 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y53" ),
    .INIT ( 64'h3333333327000F00 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT112  (
    .ADR3(\u_uart/idx [2]),
    .ADR4(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT13_7513 ),
    .ADR1(\u_uart/Sh86341 ),
    .ADR0(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT1612 ),
    .ADR2(N59),
    .ADR5(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT112_8450 ),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT114 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y53" ),
    .INIT ( 64'h000000FF00000000 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT121  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(\u_uart/code [1]),
    .ADR3(\u_uart/code<0>_0 ),
    .ADR4(\u_uart/code [2]),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT12_7535 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y53" ),
    .INIT ( 64'h3333233323331323 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT17_SW1  (
    .ADR1(\u_uart/idx [0]),
    .ADR5(\u_uart/idx [4]),
    .ADR3(\u_uart/idx [3]),
    .ADR4(\u_uart/idx [5]),
    .ADR0(\u_uart/idx [2]),
    .ADR2(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT12_7535 ),
    .O(N448)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y56" ),
    .INIT ( 64'hF7FFFFFFFFFFFFFF ))
  \u_uart/mstate[2]_idx[7]_select_72_OUT<5>_SW0  (
    .ADR3(\u_uart/idx [3]),
    .ADR4(\u_uart/idx [2]),
    .ADR0(\u_uart/idx [1]),
    .ADR2(\u_uart/u_core/tx_busy_7870 ),
    .ADR1(\u_uart/idx [0]),
    .ADR5(\u_uart/idx [4]),
    .O(N3)
  );
  X_BUF   \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT53/u_uart/Mmux_code[2]_GND_7_o_select_48_OUT53_CMUX_Delay  (
    .I(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT53_4374 ),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT53_0 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X12Y57" ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT53  (
    .IA(N508),
    .IB(N509),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT53_4374 ),
    .SEL(\u_uart/code [2])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y57" ),
    .INIT ( 64'h0000000000100000 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT53_F  (
    .ADR0(\u_uart/idx [0]),
    .ADR5(\u_uart/idx [1]),
    .ADR4(\u_uart/code<0>_0 ),
    .ADR2(\u_uart/code [1]),
    .ADR1(\u_uart/idx [5]),
    .ADR3(\u_uart/idx [4]),
    .O(N508)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y57" ),
    .INIT ( 64'h0000000100000401 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT53_G  (
    .ADR4(\u_uart/idx [0]),
    .ADR0(\u_uart/idx [4]),
    .ADR2(\u_uart/idx [5]),
    .ADR3(\u_uart/idx [3]),
    .ADR5(\u_uart/idx [2]),
    .ADR1(\u_uart/idx [1]),
    .O(N509)
  );
  X_BUF   \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT13/u_uart/Mmux_code[2]_GND_7_o_select_48_OUT13_CMUX_Delay  (
    .I(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT119_4390 ),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT119_0 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X12Y60" ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT117  (
    .IA(1'b0),
    .IB(N503),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT119_4390 ),
    .SEL(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT13_7513 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y60" ),
    .INIT ( 64'h0000000000000000 ))
  \N1_194.D6LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\NLW_N1_194.D6LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y60" ),
    .INIT ( 64'h0222232033080808 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT117_G  (
    .ADR1(\u_uart/idx [5]),
    .ADR5(\u_uart/idx [4]),
    .ADR0(\u_uart/idx [1]),
    .ADR4(\u_uart/idx [3]),
    .ADR3(\u_uart/idx [2]),
    .ADR2(\u_uart/idx [0]),
    .O(N503)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y60" ),
    .INIT ( 64'h0000000033003300 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT131  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR1(\u_uart/code [1]),
    .ADR3(\u_uart/code<0>_0 ),
    .ADR5(\u_uart/code [2]),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT13_7513 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y60" ),
    .INIT ( 64'h00100020001000E0 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT520  (
    .ADR4(\u_uart/idx [5]),
    .ADR5(\u_uart/idx [0]),
    .ADR0(\u_uart/idx [2]),
    .ADR1(\u_uart/idx [4]),
    .ADR3(\u_uart/idx [3]),
    .ADR2(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT13_7513 ),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT519_7546 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y4" ),
    .INIT ( 64'hA5A5FF00A5A500FF ))
  \u_fifo_a2b/pop1_SW28  (
    .ADR1(1'b1),
    .ADR3(\u_fifo_a2b/rptr [2]),
    .ADR5(\u_fifo_a2b/rptr [3]),
    .ADR2(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<2>_0 ),
    .ADR0(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<3>_0 ),
    .ADR4(a2b_rd_en),
    .O(N288)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y4" ),
    .INIT ( 64'hF0F0CC330F0FCC33 ))
  \u_fifo_a2b/pop1_SW26  (
    .ADR0(1'b1),
    .ADR1(\u_fifo_a2b/rptr [1]),
    .ADR3(\u_fifo_a2b/rptr [2]),
    .ADR5(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<1>_0 ),
    .ADR2(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<2>_0 ),
    .ADR4(a2b_rd_en),
    .O(N285)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y5" ),
    .INIT ( 64'hAAAAAAAABA8AAAAA ))
  \u_fifo_a2b/pop1_SW0  (
    .ADR0(\u_fifo_a2b/rptr [0]),
    .ADR4(\u_tx_b/state_FSM_FFd2_7387 ),
    .ADR2(\u_tx_b/state_FSM_FFd1_7386 ),
    .ADR1(\u_tx_b/bcnt_FSM_FFd2_7665 ),
    .ADR5(\u_tx_b/bcnt_FSM_FFd1_7666 ),
    .ADR3(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<0>_0 ),
    .O(N139)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y5" ),
    .INIT ( 64'hFFCCCC00FFFF0000 ))
  \u_fifo_a2b/Mmux_rptr_n13_SW0  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR1(\u_fifo_a2b/rptr [0]),
    .ADR4(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<0>_0 ),
    .ADR3(\u_fifo_a2b/Mxor_cptr_r<0>_xo<0>1_7844 ),
    .ADR5(\u_fifo_a2b/rd_empty12 ),
    .O(N350)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y5" ),
    .INIT ( 64'hFC30B8B8F0F0F0F0 ))
  \u_fifo_a2b/Mmux_rptr_n13  (
    .ADR0(\u_fifo_a2b/rptr [0]),
    .ADR4(a2b_rd_en),
    .ADR2(N139),
    .ADR5(\u_fifo_a2b/rd_empty121_7283 ),
    .ADR1(\u_fifo_a2b/rd_empty1241 ),
    .ADR3(N350),
    .O(\u_fifo_a2b/rptr_n [0])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y5" ),
    .INIT ( 64'hAAF055F0AA0F550F ))
  \u_fifo_a2b/pop1_SW30  (
    .ADR1(1'b1),
    .ADR5(\u_fifo_a2b/rptr [4]),
    .ADR2(\u_fifo_a2b/rptr [3]),
    .ADR0(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<3>_0 ),
    .ADR4(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<4>_0 ),
    .ADR3(a2b_rd_en),
    .O(N291)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y9" ),
    .INIT ( 64'h4821082040010000 ))
  \u_fifo_a2b/rd_empty123  (
    .ADR3(\u_fifo_a2b/cg_s2 [11]),
    .ADR2(\u_fifo_a2b/cg_s2 [10]),
    .ADR1(\u_fifo_a2b/rptr [11]),
    .ADR0(\u_fifo_a2b/rptr [10]),
    .ADR4(\u_fifo_a2b/SF012 ),
    .ADR5(\u_fifo_a2b/SF013 ),
    .O(\u_fifo_a2b/rd_empty123_7848 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y9" ),
    .INIT ( 64'h6000090060000900 ))
  \u_fifo_a2b/rd_empty124_1  (
    .ADR5(1'b1),
    .ADR1(\u_fifo_a2b/cg_s2 [6]),
    .ADR2(\u_fifo_a2b/rptr [7]),
    .ADR0(\u_fifo_a2b/rptr [6]),
    .ADR4(\u_fifo_a2b/cptr_r[7] ),
    .ADR3(\u_fifo_a2b/rd_empty123_7848 ),
    .O(\u_fifo_a2b/rd_empty1241 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y10" ),
    .INIT ( 64'h50500A0A0505A0A0 ))
  \u_fifo_a2b/SF0131  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR5(\u_fifo_a2b/cg_s2 [8]),
    .ADR4(\u_fifo_a2b/cg_s2 [9]),
    .ADR2(\u_fifo_a2b/rptr [8]),
    .ADR0(\u_fifo_a2b/rptr [9]),
    .O(\u_fifo_a2b/SF013 )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y14" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cg_s2_11  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cg_s2_11/CLK ),
    .I(\NlwBufferSignal_u_fifo_a2b/cg_s2_11/IN ),
    .O(\u_fifo_a2b/cg_s2 [11]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y14" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cg_s2_10  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cg_s2_10/CLK ),
    .I(\NlwBufferSignal_u_fifo_a2b/cg_s2_10/IN ),
    .O(\u_fifo_a2b/cg_s2 [10]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y14" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cg_s2_9  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cg_s2_9/CLK ),
    .I(\NlwBufferSignal_u_fifo_a2b/cg_s2_9/IN ),
    .O(\u_fifo_a2b/cg_s2 [9]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y14" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cg_s2_8  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cg_s2_8/CLK ),
    .I(\NlwBufferSignal_u_fifo_a2b/cg_s2_8/IN ),
    .O(\u_fifo_a2b/cg_s2 [8]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y22" ),
    .INIT ( 64'hC3AAC355C3AAC355 ))
  \u_fifo_b2a/pop1_SW26  (
    .ADR5(1'b1),
    .ADR4(\u_fifo_b2a/rptr [1]),
    .ADR0(\u_fifo_b2a/rptr [2]),
    .ADR1(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<1>_0 ),
    .ADR2(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<2>_0 ),
    .ADR3(b2a_rd_en),
    .O(N320)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y23" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cg_s1_11  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cg_s1_11/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/cg_s1_11/IN ),
    .O(\u_fifo_b2a/cg_s1 [11]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y23" ),
    .INIT ( 64'hCEC4EE44EE44EE44 ))
  \u_fifo_b2a/Mmux_rptr_n41  (
    .ADR1(\u_fifo_b2a/rptr [1]),
    .ADR3(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<1>_0 ),
    .ADR0(b2a_rd_en),
    .ADR4(\u_fifo_b2a/rd_empty121_7418 ),
    .ADR2(\u_fifo_b2a/rd_empty1241 ),
    .ADR5(N275),
    .O(\u_fifo_b2a/rptr_n [1])
  );
  X_FF #(
    .LOC ( "SLICE_X13Y23" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cg_s1_10  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cg_s1_10/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/cg_s1_10/IN ),
    .O(\u_fifo_b2a/cg_s1 [10]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y23" ),
    .INIT ( 64'hF8F0FFFF70F00000 ))
  \u_fifo_b2a/Mmux_rptr_n21  (
    .ADR5(\u_fifo_b2a/rptr [10]),
    .ADR2(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<10>_0 ),
    .ADR4(b2a_rd_en),
    .ADR3(\u_fifo_b2a/rd_empty121_7418 ),
    .ADR1(\u_fifo_b2a/rd_empty1241 ),
    .ADR0(N275),
    .O(\u_fifo_b2a/rptr_n [10])
  );
  X_FF #(
    .LOC ( "SLICE_X13Y23" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cg_s1_9  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cg_s1_9/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/cg_s1_9/IN ),
    .O(\u_fifo_b2a/cg_s1 [9]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y23" ),
    .INIT ( 64'h48CCCCCCCCCCCCCC ))
  \u_fifo_b2a/pop1  (
    .ADR0(\u_fifo_b2a/rptr [0]),
    .ADR1(b2a_rd_en),
    .ADR3(\u_fifo_b2a/rd_empty121_7418 ),
    .ADR4(\u_fifo_b2a/rd_empty12 ),
    .ADR2(\u_fifo_b2a/cptr_r[0] ),
    .ADR5(\u_fifo_b2a/rd_empty1241 ),
    .O(\u_fifo_b2a/pop )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y23" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/cg_s1_8  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/cg_s1_8/CLK ),
    .I(\NlwBufferSignal_u_fifo_b2a/cg_s1_8/IN ),
    .O(\u_fifo_b2a/cg_s1 [8]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y23" ),
    .INIT ( 64'h2481000024810000 ))
  \u_fifo_b2a/rd_empty124_1  (
    .ADR5(1'b1),
    .ADR3(\u_fifo_b2a/cg_s2 [6]),
    .ADR0(\u_fifo_b2a/rptr [7]),
    .ADR1(\u_fifo_b2a/rptr [6]),
    .ADR2(\u_fifo_b2a/cptr_r[7] ),
    .ADR4(\u_fifo_b2a/rd_empty123_7752 ),
    .O(\u_fifo_b2a/rd_empty1241 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y24" ),
    .INIT ( 64'hC33C3CC33CC3C33C ))
  \u_fifo_b2a/Mxor_cptr_r<7>_xo<0>1  (
    .ADR0(1'b1),
    .ADR2(\u_fifo_b2a/cg_s2 [7]),
    .ADR1(\u_fifo_b2a/cg_s2 [11]),
    .ADR3(\u_fifo_b2a/cg_s2 [10]),
    .ADR4(\u_fifo_b2a/cg_s2 [9]),
    .ADR5(\u_fifo_b2a/cg_s2 [8]),
    .O(\u_fifo_b2a/cptr_r[7] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y24" ),
    .INIT ( 64'h1842421881242481 ))
  \u_fifo_b2a/rd_empty122_1  (
    .ADR5(\u_fifo_b2a/cg_s2 [4]),
    .ADR3(\u_fifo_b2a/cg_s2 [5]),
    .ADR1(\u_fifo_b2a/cg_s2 [6]),
    .ADR2(\u_fifo_b2a/rptr [4]),
    .ADR0(\u_fifo_b2a/rptr [5]),
    .ADR4(\u_fifo_b2a/cptr_r[7] ),
    .O(\u_fifo_b2a/rd_empty122_7439 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y25" ),
    .INIT ( 64'h2424424224244242 ))
  \u_fifo_b2a/SF0131  (
    .ADR3(1'b1),
    .ADR5(1'b1),
    .ADR4(\u_fifo_b2a/cg_s2 [8]),
    .ADR0(\u_fifo_b2a/cg_s2 [9]),
    .ADR2(\u_fifo_b2a/rptr [8]),
    .ADR1(\u_fifo_b2a/rptr [9]),
    .O(\u_fifo_b2a/SF013 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y25" ),
    .INIT ( 64'h30C00C0330C00C03 ))
  \u_fifo_b2a/SF0121  (
    .ADR0(1'b1),
    .ADR5(1'b1),
    .ADR1(\u_fifo_b2a/cg_s2 [8]),
    .ADR2(\u_fifo_b2a/cg_s2 [9]),
    .ADR3(\u_fifo_b2a/rptr [8]),
    .ADR4(\u_fifo_b2a/rptr [9]),
    .O(\u_fifo_b2a/SF012 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y25" ),
    .INIT ( 64'h0404A00080800500 ))
  \u_fifo_b2a/rd_empty123  (
    .ADR2(\u_fifo_b2a/cg_s2 [11]),
    .ADR5(\u_fifo_b2a/cg_s2 [10]),
    .ADR0(\u_fifo_b2a/rptr [11]),
    .ADR4(\u_fifo_b2a/rptr [10]),
    .ADR3(\u_fifo_b2a/SF012 ),
    .ADR1(\u_fifo_b2a/SF013 ),
    .O(\u_fifo_b2a/rd_empty123_7752 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y25" ),
    .INIT ( 64'h3C0000000000C300 ))
  \u_fifo_b2a/rd_empty124  (
    .ADR0(1'b1),
    .ADR1(\u_fifo_b2a/cg_s2 [6]),
    .ADR5(\u_fifo_b2a/rptr [7]),
    .ADR2(\u_fifo_b2a/rptr [6]),
    .ADR4(\u_fifo_b2a/cptr_r[7] ),
    .ADR3(\u_fifo_b2a/rd_empty123_7752 ),
    .O(\u_fifo_b2a/rd_empty124_7572 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y26" ),
    .INIT ( 64'hF33FC00CC00CF33F ))
  \u_fifo_b2a/pop1_SW44  (
    .ADR0(1'b1),
    .ADR4(\u_fifo_b2a/rptr [11]),
    .ADR5(\u_fifo_b2a/rptr [10]),
    .ADR3(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<11>_0 ),
    .ADR2(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<10>_0 ),
    .ADR1(b2a_rd_en),
    .O(N347)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y26" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rptr_gray_r_11  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rptr_gray_r_11/CLK ),
    .I(\u_fifo_b2a/rptr_n [11]),
    .O(\u_fifo_b2a/rptr_gray [11]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y26" ),
    .INIT ( 64'hECFFCCFF4C00CC00 ))
  \u_fifo_b2a/Mmux_rptr_n31  (
    .ADR5(\u_fifo_b2a/rptr [11]),
    .ADR1(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<11>_0 ),
    .ADR3(b2a_rd_en),
    .ADR4(\u_fifo_b2a/rd_empty121_7418 ),
    .ADR0(\u_fifo_b2a/rd_empty124_7572 ),
    .ADR2(N275),
    .O(\u_fifo_b2a/rptr_n [11])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y26" ),
    .INIT ( 64'hDC738C238C23DC73 ))
  \u_fifo_b2a/pop1_SW45  (
    .ADR3(\u_fifo_b2a/rptr [11]),
    .ADR1(\u_fifo_b2a/rptr [10]),
    .ADR4(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<11>_0 ),
    .ADR5(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<10>_0 ),
    .ADR2(b2a_rd_en),
    .ADR0(\u_fifo_b2a/rd_empty12 ),
    .O(N348)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y26" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rptr_gray_r_10  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rptr_gray_r_10/CLK ),
    .I(\u_fifo_b2a/rptr_n[11]_GND_4_o_xor_25_OUT<10> ),
    .O(\u_fifo_b2a/rptr_gray [10]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y26" ),
    .INIT ( 64'h070B8F4F0F0F0F0F ))
  \u_fifo_b2a/Mxor_rptr_n[11]_GND_4_o_xor_25_OUT_10_xo<0>1  (
    .ADR0(\u_fifo_b2a/rptr [0]),
    .ADR3(\u_fifo_b2a/cptr_r[0] ),
    .ADR5(\u_fifo_b2a/rd_empty121_7418 ),
    .ADR2(N347),
    .ADR1(\u_fifo_b2a/rd_empty124_7572 ),
    .ADR4(N348),
    .O(\u_fifo_b2a/rptr_n[11]_GND_4_o_xor_25_OUT<10> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y27" ),
    .INIT ( 64'hF44FB00BB00BF44F ))
  \u_fifo_b2a/pop1_SW43  (
    .ADR3(\u_fifo_b2a/rptr [10]),
    .ADR2(\u_fifo_b2a/rptr [9]),
    .ADR5(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<9>_0 ),
    .ADR4(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<10>_0 ),
    .ADR1(b2a_rd_en),
    .ADR0(\u_fifo_b2a/rd_empty12 ),
    .O(N345)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y27" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rptr_gray_r_9  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rptr_gray_r_9/CLK ),
    .I(\u_fifo_b2a/rptr_n[11]_GND_4_o_xor_25_OUT<9> ),
    .O(\u_fifo_b2a/rptr_gray [9]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y27" ),
    .INIT ( 64'h00827DFF0000FFFF ))
  \u_fifo_b2a/Mxor_rptr_n[11]_GND_4_o_xor_25_OUT_9_xo<0>1  (
    .ADR2(\u_fifo_b2a/rptr [0]),
    .ADR1(\u_fifo_b2a/cptr_r[0] ),
    .ADR5(\u_fifo_b2a/rd_empty121_7418 ),
    .ADR4(N344),
    .ADR0(\u_fifo_b2a/rd_empty124_7572 ),
    .ADR3(N345),
    .O(\u_fifo_b2a/rptr_n[11]_GND_4_o_xor_25_OUT<9> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y27" ),
    .INIT ( 64'hAEA2A2AE5D51515D ))
  \u_fifo_b2a/pop1_SW41  (
    .ADR0(\u_fifo_b2a/rptr [8]),
    .ADR5(\u_fifo_b2a/rptr [9]),
    .ADR4(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<8>_0 ),
    .ADR3(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<9>_0 ),
    .ADR1(b2a_rd_en),
    .ADR2(\u_fifo_b2a/rd_empty12 ),
    .O(N342)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y27" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rptr_gray_r_8  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rptr_gray_r_8/CLK ),
    .I(\u_fifo_b2a/rptr_n[11]_GND_4_o_xor_25_OUT<8> ),
    .O(\u_fifo_b2a/rptr_gray [8]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y27" ),
    .INIT ( 64'h000080407FBFFFFF ))
  \u_fifo_b2a/Mxor_rptr_n[11]_GND_4_o_xor_25_OUT_8_xo<0>1  (
    .ADR3(\u_fifo_b2a/rptr [0]),
    .ADR0(\u_fifo_b2a/cptr_r[0] ),
    .ADR1(\u_fifo_b2a/rd_empty121_7418 ),
    .ADR5(N341),
    .ADR2(\u_fifo_b2a/rd_empty124_7572 ),
    .ADR4(N342),
    .O(\u_fifo_b2a/rptr_n[11]_GND_4_o_xor_25_OUT<8> )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y29" ),
    .INIT ( 1'b0 ))
  \u_rx_a/m_tdata_3  (
    .CE(\u_rx_a/state[1]_GND_3_o_Mux_40_o ),
    .CLK(\NlwBufferSignal_u_rx_a/m_tdata_3/CLK ),
    .I(\NlwBufferSignal_u_rx_a/m_tdata_3/IN ),
    .O(\u_rx_a/m_tdata [3]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y29" ),
    .INIT ( 1'b0 ))
  \u_rx_a/m_tdata_2  (
    .CE(\u_rx_a/state[1]_GND_3_o_Mux_40_o ),
    .CLK(\NlwBufferSignal_u_rx_a/m_tdata_2/CLK ),
    .I(\NlwBufferSignal_u_rx_a/m_tdata_2/IN ),
    .O(\u_rx_a/m_tdata [2]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y29" ),
    .INIT ( 1'b0 ))
  \u_rx_a/m_tdata_1  (
    .CE(\u_rx_a/state[1]_GND_3_o_Mux_40_o ),
    .CLK(\NlwBufferSignal_u_rx_a/m_tdata_1/CLK ),
    .I(\NlwBufferSignal_u_rx_a/m_tdata_1/IN ),
    .O(\u_rx_a/m_tdata [1]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y29" ),
    .INIT ( 1'b0 ))
  \u_rx_a/m_tdata_0  (
    .CE(\u_rx_a/state[1]_GND_3_o_Mux_40_o ),
    .CLK(\NlwBufferSignal_u_rx_a/m_tdata_0/CLK ),
    .I(\NlwBufferSignal_u_rx_a/m_tdata_0/IN ),
    .O(\u_rx_a/m_tdata [0]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y30" ),
    .INIT ( 64'h0000000033003300 ))
  \u_engine/_n0357_inv1  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR1(\u_rx_a/m_tindex [2]),
    .ADR5(\u_rx_a/m_tindex [0]),
    .ADR3(\u_engine/_n0409_inv1 ),
    .O(\u_engine/_n0357_inv )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y31" ),
    .INIT ( 64'hFCCCCCCCECCCCCCC ))
  \u_engine/Mmux_len_gt_GND_6_o_MUX_94_o12  (
    .ADR2(\u_rx_a/m_tdata [3]),
    .ADR4(\u_rx_a/m_tdata [4]),
    .ADR3(\u_rx_a/m_tdata [2]),
    .ADR5(\u_rx_a/m_tdata [0]),
    .ADR0(\u_rx_a/m_tdata [1]),
    .ADR1(\u_rx_a/m_tdata [5]),
    .O(\u_engine/Mmux_len_gt_GND_6_o_MUX_94_o11_7635 )
  );
  X_BUF   \u_engine/frag_hi<3>/u_engine/frag_hi<3>_DMUX_Delay  (
    .I(\u_engine/frag_hi [4]),
    .O(\u_engine/frag_hi<4>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y34" ),
    .INIT ( 1'b0 ))
  \u_engine/frag_hi_3  (
    .CE(\u_engine/_n0361_inv ),
    .CLK(\NlwBufferSignal_u_engine/frag_hi_3/CLK ),
    .I(\NlwBufferSignal_u_engine/frag_hi_3/IN ),
    .O(\u_engine/frag_hi [3]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X13Y34" ),
    .INIT ( 32'hF0F0F0F0 ))
  \u_rx_a/m_tdata<4>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\u_rx_a/m_tdata [4]),
    .O(\u_rx_a/m_tdata<4>_rt_4642 )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y34" ),
    .INIT ( 1'b0 ))
  \u_engine/frag_hi_4  (
    .CE(\u_engine/_n0361_inv ),
    .CLK(\NlwBufferSignal_u_engine/frag_hi_4/CLK ),
    .I(\u_rx_a/m_tdata<4>_rt_4642 ),
    .O(\u_engine/frag_hi [4]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y34" ),
    .INIT ( 1'b0 ))
  \u_engine/frag_hi_2  (
    .CE(\u_engine/_n0361_inv ),
    .CLK(\NlwBufferSignal_u_engine/frag_hi_2/CLK ),
    .I(\NlwBufferSignal_u_engine/frag_hi_2/IN ),
    .O(\u_engine/frag_hi [2]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y34" ),
    .INIT ( 1'b0 ))
  \u_engine/frag_hi_1  (
    .CE(\u_engine/_n0361_inv ),
    .CLK(\NlwBufferSignal_u_engine/frag_hi_1/CLK ),
    .I(\NlwBufferSignal_u_engine/frag_hi_1/IN ),
    .O(\u_engine/frag_hi [1]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y34" ),
    .INIT ( 1'b0 ))
  \u_engine/frag_hi_0  (
    .CE(\u_engine/_n0361_inv ),
    .CLK(\NlwBufferSignal_u_engine/frag_hi_0/CLK ),
    .I(\NlwBufferSignal_u_engine/frag_hi_0/IN ),
    .O(\u_engine/frag_hi [0]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_BUF   \u_engine/_n0397_inv/u_engine/_n0397_inv_DMUX_Delay  (
    .I(N115),
    .O(N115_0)
  );
  X_BUF   \u_engine/_n0397_inv/u_engine/_n0397_inv_BMUX_Delay  (
    .I(\u_engine/ver_ok_4670 ),
    .O(\u_engine/ver_ok_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y36" ),
    .INIT ( 64'hFF00AA00FF00AA00 ))
  \u_engine/_n0397_inv1  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR0(\u_rx_a/m_tlast_0 ),
    .ADR3(\u_rx_a/m_tvalid_7480 ),
    .ADR4(\u_engine/s_tindex[15]_GND_6_o_equal_26_o ),
    .ADR5(1'b1),
    .O(\u_engine/_n0397_inv )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X13Y36" ),
    .INIT ( 32'hAA00AA00 ))
  \u_engine/_n0415_inv1_SW0  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR0(\u_rx_a/m_tlast_0 ),
    .ADR3(\u_rx_a/m_tvalid_7480 ),
    .ADR4(1'b1),
    .O(N115)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y36" ),
    .INIT ( 64'h0020000000000000 ))
  \u_engine/s_tindex[15]_GND_6_o_equal_26_o<15>1  (
    .ADR4(\u_rx_a/m_tindex [1]),
    .ADR3(\u_rx_a/m_tindex [0]),
    .ADR2(\u_rx_a/m_tindex [2]),
    .ADR0(\u_rx_a/m_tindex [3]),
    .ADR1(\u_rx_a/m_tindex [4]),
    .ADR5(\u_engine/_n0385_inv1_8292 ),
    .O(\u_engine/s_tindex[15]_GND_6_o_equal_26_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y36" ),
    .INIT ( 64'h0005000500050005 ))
  \u_engine/sig_done_win_nxt[55]_AND_42_o11  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR0(\u_rx_a/m_tdata [4]),
    .ADR3(\u_rx_a/m_tdata [7]),
    .ADR2(\u_rx_a/m_tdata [5]),
    .ADR5(1'b1),
    .O(\u_engine/sig_done_win_nxt[55]_AND_42_o1 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X13Y36" ),
    .INIT ( 32'h00000004 ))
  \u_engine/Mmux_ver_ok_GND_6_o_MUX_92_o11  (
    .ADR4(\u_rx_a/m_tlast_0 ),
    .ADR1(\u_rx_a/m_tdata [6]),
    .ADR0(\u_rx_a/m_tdata [4]),
    .ADR3(\u_rx_a/m_tdata [7]),
    .ADR2(\u_rx_a/m_tdata [5]),
    .O(\u_engine/ver_ok_GND_6_o_MUX_92_o )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y36" ),
    .INIT ( 1'b0 ))
  \u_engine/ver_ok  (
    .CE(\u_engine/_n0397_inv ),
    .CLK(\NlwBufferSignal_u_engine/ver_ok/CLK ),
    .I(\u_engine/ver_ok_GND_6_o_MUX_92_o ),
    .O(\u_engine/ver_ok_4670 ),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y36" ),
    .INIT ( 64'h0000000000010000 ))
  \u_engine/Mmux_frag_ok_GND_6_o_MUX_95_o111  (
    .ADR2(\u_rx_a/m_tdata [6]),
    .ADR5(\u_rx_a/m_tdata [0]),
    .ADR1(\u_rx_a/m_tdata [2]),
    .ADR0(\u_rx_a/m_tdata [1]),
    .ADR3(\u_rx_a/m_tlast_0 ),
    .ADR4(\u_engine/sig_done_win_nxt[55]_AND_42_o1 ),
    .O(\u_engine/Mmux_frag_ok_GND_6_o_MUX_95_o11 )
  );
  X_BUF   \u_engine/trigger_icmp/u_engine/trigger_icmp_DMUX_Delay  (
    .I(\u_engine/icmp_done_pack_4 ),
    .O(\u_engine/icmp_done_8296 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y37" ),
    .INIT ( 64'hF0F00000F0F00000 ))
  \u_engine/_n0353_inv1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\u_rx_a/m_tvalid_7480 ),
    .ADR4(\u_engine/s_tindex[15]_GND_6_o_equal_26_o ),
    .ADR5(1'b1),
    .O(\u_engine/_n0353_inv )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X13Y37" ),
    .INIT ( 32'h554C554C ))
  \u_engine/icmp_done_rstpot  (
    .ADR1(\u_engine/icmp_done_8296 ),
    .ADR0(\u_rx_a/m_tlast_0 ),
    .ADR3(\u_engine/GND_6_o_GND_6_o_MUX_165_o ),
    .ADR2(\u_rx_a/m_tvalid_7480 ),
    .ADR4(1'b1),
    .O(\u_engine/icmp_done_rstpot_4687 )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y37" ),
    .INIT ( 1'b0 ))
  \u_engine/icmp_done  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/icmp_done/CLK ),
    .I(\u_engine/icmp_done_rstpot_4687 ),
    .O(\u_engine/icmp_done_pack_4 ),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y37" ),
    .INIT ( 1'b0 ))
  \u_engine/trigger_icmp  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_engine/trigger_icmp/CLK ),
    .I(\u_engine/GND_6_o_GND_6_o_MUX_165_o ),
    .O(\u_engine/trigger_icmp_8294 ),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y37" ),
    .INIT ( 64'h8000000000000000 ))
  \u_engine/Mmux_GND_6_o_GND_6_o_MUX_165_o14  (
    .ADR5(\u_engine/len_gt_7639 ),
    .ADR0(\u_rx_a/m_tdata [0]),
    .ADR3(\u_engine/sig_done_win_nxt[55]_AND_42_o1 ),
    .ADR1(\u_engine/Mmux_GND_6_o_GND_6_o_MUX_165_o12_8459 ),
    .ADR4(\u_engine/_n0385_inv1_8292 ),
    .ADR2(\u_engine/Mmux_GND_6_o_GND_6_o_MUX_165_o11_8293 ),
    .O(\u_engine/GND_6_o_GND_6_o_MUX_165_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y37" ),
    .INIT ( 64'h8000000000000000 ))
  \u_engine/Mmux_GND_6_o_GND_6_o_MUX_165_o13  (
    .ADR3(\u_rx_a/m_tindex [0]),
    .ADR5(\u_rx_a/m_tindex [1]),
    .ADR4(\u_engine/is_ipv4_7479 ),
    .ADR2(\u_engine/ihl_ok_7478 ),
    .ADR1(\u_rx_a/m_tvalid_7480 ),
    .ADR0(\u_engine/ver_ok_0 ),
    .O(\u_engine/Mmux_GND_6_o_GND_6_o_MUX_165_o12_8459 )
  );
  X_BUF   \u_engine/_n0361_inv/u_engine/_n0361_inv_DMUX_Delay  (
    .I(N33),
    .O(N33_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y41" ),
    .INIT ( 64'h00AA000000AA0000 ))
  \u_engine/_n0361_inv1  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR3(\u_rx_a/m_tindex [0]),
    .ADR0(\u_rx_a/m_tindex [2]),
    .ADR4(\u_engine/_n0409_inv1 ),
    .ADR5(1'b1),
    .O(\u_engine/_n0361_inv )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X13Y41" ),
    .INIT ( 32'h0C000C00 ))
  \u_engine/_n0367_inv_SW0  (
    .ADR2(\u_rx_a/m_tindex [3]),
    .ADR1(\u_rx_a/m_tindex [1]),
    .ADR3(\u_rx_a/m_tindex [0]),
    .ADR0(1'b1),
    .ADR4(1'b1),
    .O(N33)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y41" ),
    .INIT ( 64'h0000000000000010 ))
  \u_engine/_n0409_inv11  (
    .ADR5(\u_rx_a/m_tindex [5]),
    .ADR2(\u_rx_a/m_tindex [4]),
    .ADR0(\u_rx_a/m_tindex [3]),
    .ADR4(\u_rx_a/m_tindex [1]),
    .ADR3(N43),
    .ADR1(N228),
    .O(\u_engine/_n0409_inv1 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y41" ),
    .INIT ( 64'hFFFFFFFFFFFFFFF3 ))
  \u_engine/_n0385_inv1_SW1  (
    .ADR0(1'b1),
    .ADR5(\u_rx_a/m_tindex [8]),
    .ADR3(\u_rx_a/m_tindex [6]),
    .ADR2(\u_rx_a/m_tindex [7]),
    .ADR4(\u_rx_a/m_tindex [9]),
    .ADR1(\u_rx_a/m_tvalid_7480 ),
    .O(N228)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y42" ),
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \u_engine/_n0385_inv1_SW0  (
    .ADR1(\u_rx_a/m_tindex [11]),
    .ADR0(\u_rx_a/m_tindex [10]),
    .ADR4(\u_rx_a/m_tindex [14]),
    .ADR3(\u_rx_a/m_tindex [13]),
    .ADR2(\u_rx_a/m_tindex [12]),
    .ADR5(\u_rx_a/m_tindex [15]),
    .O(N43)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y42" ),
    .INIT ( 64'h0000000000000001 ))
  \u_engine/_n0385_inv1  (
    .ADR2(\u_rx_a/m_tindex [6]),
    .ADR3(\u_rx_a/m_tindex [5]),
    .ADR1(\u_rx_a/m_tindex [8]),
    .ADR4(\u_rx_a/m_tindex [7]),
    .ADR0(\u_rx_a/m_tindex [9]),
    .ADR5(N43),
    .O(\u_engine/_n0385_inv1_8292 )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y43" ),
    .INIT ( 1'b0 ))
  \u_rx_a/m_tindex_11  (
    .CE(\u_rx_a/state[1]_GND_3_o_Mux_40_o ),
    .CLK(\NlwBufferSignal_u_rx_a/m_tindex_11/CLK ),
    .I(\NlwBufferSignal_u_rx_a/m_tindex_11/IN ),
    .O(\u_rx_a/m_tindex [11]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y43" ),
    .INIT ( 1'b0 ))
  \u_rx_a/m_tindex_10  (
    .CE(\u_rx_a/state[1]_GND_3_o_Mux_40_o ),
    .CLK(\NlwBufferSignal_u_rx_a/m_tindex_10/CLK ),
    .I(\NlwBufferSignal_u_rx_a/m_tindex_10/IN ),
    .O(\u_rx_a/m_tindex [10]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y43" ),
    .INIT ( 1'b0 ))
  \u_rx_a/m_tindex_9  (
    .CE(\u_rx_a/state[1]_GND_3_o_Mux_40_o ),
    .CLK(\NlwBufferSignal_u_rx_a/m_tindex_9/CLK ),
    .I(\NlwBufferSignal_u_rx_a/m_tindex_9/IN ),
    .O(\u_rx_a/m_tindex [9]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y43" ),
    .INIT ( 1'b0 ))
  \u_rx_a/m_tindex_8  (
    .CE(\u_rx_a/state[1]_GND_3_o_Mux_40_o ),
    .CLK(\NlwBufferSignal_u_rx_a/m_tindex_8/CLK ),
    .I(\NlwBufferSignal_u_rx_a/m_tindex_8/IN ),
    .O(\u_rx_a/m_tindex [8]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y52" ),
    .INIT ( 64'h33CCFF0033CCFF00 ))
  \u_uart/Msub_GND_7_o_GND_7_o_sub_38_OUT<5:0>_xor<2>11  (
    .ADR0(1'b1),
    .ADR5(1'b1),
    .ADR2(1'b1),
    .ADR1(\u_uart/idx_1_1_7400 ),
    .ADR4(\u_uart/idx [0]),
    .ADR3(\u_uart/idx [2]),
    .O(\u_uart/GND_7_o_GND_7_o_sub_38_OUT<2>1 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y53" ),
    .INIT ( 64'hFF00CC33FF0000FF ))
  \u_uart/Msub_GND_7_o_GND_7_o_sub_38_OUT<5:0>_xor<3>11  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR1(\u_uart/idx_1_1_7400 ),
    .ADR5(\u_uart/idx [0]),
    .ADR4(\u_uart/idx [2]),
    .ADR3(\u_uart/idx [3]),
    .O(\u_uart/GND_7_o_GND_7_o_sub_38_OUT<3>1 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y53" ),
    .INIT ( 64'h0FF03CF00FF0F0F0 ))
  \u_uart/Msub_GND_7_o_GND_7_o_sub_38_OUT<5:0>_xor<4>11  (
    .ADR0(1'b1),
    .ADR1(\u_uart/idx_1_1_7400 ),
    .ADR2(\u_uart/idx_4_1_7811 ),
    .ADR5(\u_uart/idx [0]),
    .ADR4(\u_uart/idx [2]),
    .ADR3(\u_uart/idx [3]),
    .O(\u_uart/GND_7_o_GND_7_o_sub_38_OUT<4>1 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y59" ),
    .INIT ( 64'h00000000990000C9 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT321  (
    .ADR0(\u_uart/idx_4_1_7811 ),
    .ADR3(\u_uart/code [1]),
    .ADR4(\u_uart/code<0>_0 ),
    .ADR5(\u_uart/code [2]),
    .ADR1(\u_uart/idx [5]),
    .ADR2(\u_uart/idx [3]),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT32 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y59" ),
    .INIT ( 64'h050F000000000000 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT57  (
    .ADR1(1'b1),
    .ADR0(\u_uart/idx [1]),
    .ADR3(\u_uart/idx [0]),
    .ADR2(\u_uart/idx [4]),
    .ADR4(\u_uart/idx [2]),
    .ADR5(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT32 ),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT56_7552 )
  );
  X_BUF   \N486/N486_CMUX_Delay  (
    .I(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT6_pack_10 ),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT6 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y60" ),
    .INIT ( 64'hFFFFFF7FFFFFFF7F ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT62_SW0  (
    .ADR5(1'b1),
    .ADR1(\u_uart/idx [1]),
    .ADR2(\u_uart/idx [0]),
    .ADR0(\u_uart/idx [2]),
    .ADR3(\u_uart/idx [4]),
    .ADR4(\u_uart/idx [3]),
    .O(N486)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y60" ),
    .INIT ( 64'hBCFFA3FFBCFFA3FF ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT72  (
    .ADR2(\u_uart/idx [1]),
    .ADR1(\u_uart/idx [0]),
    .ADR3(\u_uart/idx [2]),
    .ADR0(\u_uart/idx [4]),
    .ADR4(\u_uart/idx [3]),
    .ADR5(1'b1),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT71 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X13Y60" ),
    .INIT ( 32'hEAC9DFF9 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT61  (
    .ADR2(\u_uart/idx [1]),
    .ADR1(\u_uart/idx [0]),
    .ADR3(\u_uart/idx [2]),
    .ADR0(\u_uart/idx [4]),
    .ADR4(\u_uart/idx [3]),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT6_pack_10 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y60" ),
    .INIT ( 64'hC9C9C999C9C99999 ))
  \u_uart/Msub_GND_7_o_GND_7_o_sub_38_OUT<5:0>_xor<5>11  (
    .ADR0(\u_uart/idx_4_1_7811 ),
    .ADR3(\u_uart/idx_1_1_7400 ),
    .ADR1(\u_uart/idx [5]),
    .ADR5(\u_uart/idx [0]),
    .ADR4(\u_uart/idx [2]),
    .ADR2(\u_uart/idx [3]),
    .O(\u_uart/GND_7_o_GND_7_o_sub_38_OUT<5>1 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y60" ),
    .INIT ( 64'h00000000000C0088 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT62  (
    .ADR1(\u_uart/code [1]),
    .ADR3(\u_uart/code<0>_0 ),
    .ADR5(\u_uart/code [2]),
    .ADR2(N486),
    .ADR0(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT6 ),
    .ADR4(\u_uart/GND_7_o_GND_7_o_sub_38_OUT<5>1 ),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT61_7558 )
  );
  X_BUF   \u_tx_b/Mmux_state[1]_GND_5_o_wide_mux_25_OUT1/u_tx_b/Mmux_state[1]_GND_5_o_wide_mux_25_OUT1_CMUX_Delay  (
    .I(\u_tx_b/state[1]_GND_5_o_wide_mux_25_OUT<0> ),
    .O(\u_tx_b/state[1]_GND_5_o_wide_mux_25_OUT<0>_0 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X14Y3" ))
  \u_tx_b/Mmux_state[1]_GND_5_o_wide_mux_25_OUT13  (
    .IA(N470),
    .IB(N471),
    .O(\u_tx_b/state[1]_GND_5_o_wide_mux_25_OUT<0> ),
    .SEL(\u_tx_b/state_FSM_FFd1_7386 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y3" ),
    .INIT ( 64'hDFFFFFFFFDFFFFFF ))
  \u_tx_b/Mmux_state[1]_GND_5_o_wide_mux_25_OUT13_F  (
    .ADR1(\u_tx_b/state_FSM_FFd2_7387 ),
    .ADR5(\u_fifo_a2b/rptr [0]),
    .ADR0(\u_fifo_a2b/rd_empty121_7283 ),
    .ADR3(\u_fifo_a2b/rd_empty12 ),
    .ADR2(\u_fifo_a2b/cptr_r[0] ),
    .ADR4(\u_fifo_a2b/rd_empty124_7285 ),
    .O(N470)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y3" ),
    .INIT ( 64'hEEFC000022300000 ))
  \u_tx_b/Mmux_state[1]_GND_5_o_wide_mux_25_OUT13_G  (
    .ADR4(\u_tx_b/state_FSM_FFd2_7387 ),
    .ADR1(\u_tx_b/bcnt_FSM_FFd1_7666 ),
    .ADR3(\u_tx_b/bcnt_FSM_FFd2_7665 ),
    .ADR0(\u_tx_b/cur [2]),
    .ADR2(a2b_rd_data[0]),
    .ADR5(\u_tx_b/Mmux_state[1]_GND_5_o_wide_mux_25_OUT1 ),
    .O(N471)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y3" ),
    .INIT ( 64'hCCCCAAAACCCCAAAA ))
  \u_tx_b/Mmux_state[1]_GND_5_o_wide_mux_25_OUT11  (
    .ADR3(1'b1),
    .ADR5(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_tx_b/bcnt_FSM_FFd2_7665 ),
    .ADR0(\u_tx_b/cur [6]),
    .ADR1(\u_tx_b/cur [4]),
    .O(\u_tx_b/Mmux_state[1]_GND_5_o_wide_mux_25_OUT1 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y3" ),
    .INIT ( 64'h6000600009000900 ))
  \u_fifo_a2b/rd_empty124  (
    .ADR4(1'b1),
    .ADR0(\u_fifo_a2b/cg_s2 [6]),
    .ADR5(\u_fifo_a2b/rptr [7]),
    .ADR1(\u_fifo_a2b/rptr [6]),
    .ADR2(\u_fifo_a2b/cptr_r[7] ),
    .ADR3(\u_fifo_a2b/rd_empty123_7848 ),
    .O(\u_fifo_a2b/rd_empty124_7285 )
  );
  X_BUF   \u_tx_b/cur<7>/u_tx_b/cur<7>_DMUX_Delay  (
    .I(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<3> ),
    .O(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<3>_0 )
  );
  X_BUF   \u_tx_b/cur<7>/u_tx_b/cur<7>_CMUX_Delay  (
    .I(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<2> ),
    .O(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<2>_0 )
  );
  X_BUF   \u_tx_b/cur<7>/u_tx_b/cur<7>_BMUX_Delay  (
    .I(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<1> ),
    .O(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<1>_0 )
  );
  X_BUF   \u_tx_b/cur<7>/u_tx_b/cur<7>_AMUX_Delay  (
    .I(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<0> ),
    .O(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<0>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y4" ),
    .INIT ( 1'b0 ))
  \u_tx_b/cur_7  (
    .CE(a2b_rd_en),
    .CLK(\NlwBufferSignal_u_tx_b/cur_7/CLK ),
    .I(\NlwBufferSignal_u_tx_b/cur_7/IN ),
    .O(\u_tx_b/cur [7]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y4" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_tx_b/cur<7>/u_fifo_a2b/rptr<3>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_fifo_a2b/rptr [3]),
    .ADR5(1'b1),
    .O(\u_tx_b/cur<7>/u_fifo_a2b/rptr<3>_rt_4856 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y4" ),
    .INIT ( 32'h00000000 ))
  \N1_108.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_108.D5LUT_O_UNCONNECTED )
  );
  X_ZERO #(
    .LOC ( "SLICE_X14Y4" ))
  \ProtoComp393.CYINITGND  (
    .O(\ProtoComp393.CYINITGND.0 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y4" ),
    .INIT ( 1'b0 ))
  \u_tx_b/cur_6  (
    .CE(a2b_rd_en),
    .CLK(\NlwBufferSignal_u_tx_b/cur_6/CLK ),
    .I(\NlwBufferSignal_u_tx_b/cur_6/IN ),
    .O(\u_tx_b/cur [6]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X14Y4" ))
  \u_fifo_a2b/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<3>  (
    .CI(1'b0),
    .CYINIT(\ProtoComp393.CYINITGND.0 ),
    .CO({\u_fifo_a2b/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<3>_8167 , \NLW_u_fifo_a2b/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<3>_CO[2]_UNCONNECTED , 
\NLW_u_fifo_a2b/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<3>_CO[1]_UNCONNECTED , \NLW_u_fifo_a2b/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<3>_CO[0]_UNCONNECTED })
,
    .DI({1'b0, 1'b0, 1'b0, 1'b1}),
    .O({\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<3> , \u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<2> , \u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<1> , 
\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<0> }),
    .S({\u_tx_b/cur<7>/u_fifo_a2b/rptr<3>_rt_4856 , \u_tx_b/cur<7>/u_fifo_a2b/rptr<2>_rt_4844 , \u_tx_b/cur<7>/u_fifo_a2b/rptr<1>_rt_4847 , 
\u_fifo_a2b/Madd_rptr[11]_GND_4_o_add_23_OUT_lut<0> })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y4" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_tx_b/cur<7>/u_fifo_a2b/rptr<2>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_fifo_a2b/rptr [2]),
    .ADR5(1'b1),
    .O(\u_tx_b/cur<7>/u_fifo_a2b/rptr<2>_rt_4844 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y4" ),
    .INIT ( 32'h00000000 ))
  \N1_109.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_109.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y4" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_tx_b/cur<7>/u_fifo_a2b/rptr<1>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_fifo_a2b/rptr [1]),
    .ADR5(1'b1),
    .O(\u_tx_b/cur<7>/u_fifo_a2b/rptr<1>_rt_4847 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y4" ),
    .INIT ( 32'h00000000 ))
  \N1_110.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_110.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y4" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \u_fifo_a2b/Madd_rptr[11]_GND_4_o_add_23_OUT_lut<0>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_fifo_a2b/rptr [0]),
    .ADR5(1'b1),
    .O(\u_fifo_a2b/Madd_rptr[11]_GND_4_o_add_23_OUT_lut<0> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y4" ),
    .INIT ( 32'hFFFFFFFF ))
  \SevenSegmentEnable_0_OBUF_1_11.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_SevenSegmentEnable_0_OBUF_1_11.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \u_tx_b/cur<5>/u_tx_b/cur<5>_DMUX_Delay  (
    .I(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<7> ),
    .O(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<7>_0 )
  );
  X_BUF   \u_tx_b/cur<5>/u_tx_b/cur<5>_CMUX_Delay  (
    .I(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<6> ),
    .O(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<6>_0 )
  );
  X_BUF   \u_tx_b/cur<5>/u_tx_b/cur<5>_BMUX_Delay  (
    .I(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<5> ),
    .O(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<5>_0 )
  );
  X_BUF   \u_tx_b/cur<5>/u_tx_b/cur<5>_AMUX_Delay  (
    .I(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<4> ),
    .O(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<4>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y5" ),
    .INIT ( 1'b0 ))
  \u_tx_b/cur_5  (
    .CE(a2b_rd_en),
    .CLK(\NlwBufferSignal_u_tx_b/cur_5/CLK ),
    .I(\NlwBufferSignal_u_tx_b/cur_5/IN ),
    .O(\u_tx_b/cur [5]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y5" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \u_tx_b/cur<5>/u_fifo_a2b/rptr<7>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\u_fifo_a2b/rptr [7]),
    .ADR5(1'b1),
    .O(\u_tx_b/cur<5>/u_fifo_a2b/rptr<7>_rt_4886 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y5" ),
    .INIT ( 32'h00000000 ))
  \N1_104.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_104.D5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y5" ),
    .INIT ( 1'b0 ))
  \u_tx_b/cur_4  (
    .CE(a2b_rd_en),
    .CLK(\NlwBufferSignal_u_tx_b/cur_4/CLK ),
    .I(\NlwBufferSignal_u_tx_b/cur_4/IN ),
    .O(\u_tx_b/cur [4]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X14Y5" ))
  \u_fifo_a2b/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<7>  (
    .CI(\u_fifo_a2b/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<3>_8167 ),
    .CYINIT(1'b0),
    .CO({\u_fifo_a2b/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<7>_8168 , \NLW_u_fifo_a2b/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<7>_CO[2]_UNCONNECTED , 
\NLW_u_fifo_a2b/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<7>_CO[1]_UNCONNECTED , \NLW_u_fifo_a2b/Madd_rptr[11]_GND_4_o_add_23_OUT_cy<7>_CO[0]_UNCONNECTED })
,
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<7> , \u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<6> , \u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<5> , 
\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<4> }),
    .S({\u_tx_b/cur<5>/u_fifo_a2b/rptr<7>_rt_4886 , \u_tx_b/cur<5>/u_fifo_a2b/rptr<6>_rt_4870 , \u_tx_b/cur<5>/u_fifo_a2b/rptr<5>_rt_4875 , 
\u_tx_b/cur<5>/u_fifo_a2b/rptr<4>_rt_4880 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y5" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_tx_b/cur<5>/u_fifo_a2b/rptr<6>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_fifo_a2b/rptr [6]),
    .ADR5(1'b1),
    .O(\u_tx_b/cur<5>/u_fifo_a2b/rptr<6>_rt_4870 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y5" ),
    .INIT ( 32'h00000000 ))
  \N1_105.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_105.C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y5" ),
    .INIT ( 1'b0 ))
  \u_tx_b/cur_3  (
    .CE(a2b_rd_en),
    .CLK(\NlwBufferSignal_u_tx_b/cur_3/CLK ),
    .I(\NlwBufferSignal_u_tx_b/cur_3/IN ),
    .O(\u_tx_b/cur [3]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y5" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_tx_b/cur<5>/u_fifo_a2b/rptr<5>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_fifo_a2b/rptr [5]),
    .ADR5(1'b1),
    .O(\u_tx_b/cur<5>/u_fifo_a2b/rptr<5>_rt_4875 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y5" ),
    .INIT ( 32'h00000000 ))
  \N1_106.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_106.B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y5" ),
    .INIT ( 1'b0 ))
  \u_tx_b/cur_2  (
    .CE(a2b_rd_en),
    .CLK(\NlwBufferSignal_u_tx_b/cur_2/CLK ),
    .I(\NlwBufferSignal_u_tx_b/cur_2/IN ),
    .O(\u_tx_b/cur [2]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y5" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \u_tx_b/cur<5>/u_fifo_a2b/rptr<4>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_fifo_a2b/rptr [4]),
    .ADR5(1'b1),
    .O(\u_tx_b/cur<5>/u_fifo_a2b/rptr<4>_rt_4880 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y5" ),
    .INIT ( 32'h00000000 ))
  \N1_107.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_107.A5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y7" ),
    .INIT ( 64'hF0F000000000F0F0 ))
  \u_fifo_a2b/pop1_SW23  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR5(\u_fifo_a2b/rptr [0]),
    .ADR4(\u_fifo_a2b/Mxor_cptr_r<0>_xo<0>1_7844 ),
    .ADR2(\u_fifo_a2b/rd_empty1211 ),
    .O(N280)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y7" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rptr_gray_r_11  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rptr_gray_r_11/CLK ),
    .I(\u_fifo_a2b/rptr_n [11]),
    .O(\u_fifo_a2b/rptr_gray [11]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y7" ),
    .INIT ( 64'hEAFF2A00AAFFAA00 ))
  \u_fifo_a2b/Mmux_rptr_n31  (
    .ADR4(\u_fifo_a2b/rptr [11]),
    .ADR0(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<11>_0 ),
    .ADR3(a2b_rd_en),
    .ADR1(\u_fifo_a2b/rd_empty121_7283 ),
    .ADR2(\u_fifo_a2b/rd_empty124_7285 ),
    .ADR5(N280),
    .O(\u_fifo_a2b/rptr_n [11])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y7" ),
    .INIT ( 64'h9999F09999990F99 ))
  \u_fifo_a2b/pop1_SW45  (
    .ADR1(\u_fifo_a2b/rptr [11]),
    .ADR0(\u_fifo_a2b/rptr [10]),
    .ADR5(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<11>_0 ),
    .ADR2(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<10>_0 ),
    .ADR3(a2b_rd_en),
    .ADR4(\u_fifo_a2b/rd_empty12 ),
    .O(N313)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y7" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rptr_gray_r_10  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rptr_gray_r_10/CLK ),
    .I(\u_fifo_a2b/rptr_n[11]_GND_4_o_xor_25_OUT<10> ),
    .O(\u_fifo_a2b/rptr_gray [10]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y7" ),
    .INIT ( 64'h1551D55D55555555 ))
  \u_fifo_a2b/Mxor_rptr_n[11]_GND_4_o_xor_25_OUT_10_xo<0>1  (
    .ADR3(\u_fifo_a2b/rptr [0]),
    .ADR2(\u_fifo_a2b/cptr_r[0] ),
    .ADR1(\u_fifo_a2b/rd_empty121_7283 ),
    .ADR0(N312),
    .ADR5(\u_fifo_a2b/rd_empty124_7285 ),
    .ADR4(N313),
    .O(\u_fifo_a2b/rptr_n[11]_GND_4_o_xor_25_OUT<10> )
  );
  X_BUF   \u_fifo_a2b/cg_s2<7>/u_fifo_a2b/cg_s2<7>_DMUX_Delay  (
    .I(\u_fifo_a2b/cg_s1<7>_pack_4 ),
    .O(\u_fifo_a2b/cg_s1 [7])
  );
  X_BUF   \u_fifo_a2b/cg_s2<7>/u_fifo_a2b/cg_s2<7>_CMUX_Delay  (
    .I(\u_fifo_a2b/cg_s1<6>_pack_3 ),
    .O(\u_fifo_a2b/cg_s1 [6])
  );
  X_BUF   \u_fifo_a2b/cg_s2<7>/u_fifo_a2b/cg_s2<7>_BMUX_Delay  (
    .I(\u_fifo_a2b/cg_s1<5>_pack_2 ),
    .O(\u_fifo_a2b/cg_s1 [5])
  );
  X_BUF   \u_fifo_a2b/cg_s2<7>/u_fifo_a2b/cg_s2<7>_AMUX_Delay  (
    .I(\u_fifo_a2b/cg_s1<4>_pack_1 ),
    .O(\u_fifo_a2b/cg_s1 [4])
  );
  X_FF #(
    .LOC ( "SLICE_X14Y12" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cg_s2_7  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cg_s2_7/CLK ),
    .I(\NlwBufferSignal_u_fifo_a2b/cg_s2_7/IN ),
    .O(\u_fifo_a2b/cg_s2 [7]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y12" ),
    .INIT ( 32'hFF00FF00 ))
  \u_fifo_a2b/cptr_gray<7>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\u_fifo_a2b/cptr_gray [7]),
    .O(\u_fifo_a2b/cptr_gray<7>_rt_4934 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y12" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cg_s1_7  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cg_s1_7/CLK ),
    .I(\u_fifo_a2b/cptr_gray<7>_rt_4934 ),
    .O(\u_fifo_a2b/cg_s1<7>_pack_4 ),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y12" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cg_s2_6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cg_s2_6/CLK ),
    .I(\NlwBufferSignal_u_fifo_a2b/cg_s2_6/IN ),
    .O(\u_fifo_a2b/cg_s2 [6]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y12" ),
    .INIT ( 32'hFFFF0000 ))
  \u_fifo_a2b/cptr_gray<6>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_fifo_a2b/cptr_gray [6]),
    .O(\u_fifo_a2b/cptr_gray<6>_rt_4940 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y12" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cg_s1_6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cg_s1_6/CLK ),
    .I(\u_fifo_a2b/cptr_gray<6>_rt_4940 ),
    .O(\u_fifo_a2b/cg_s1<6>_pack_3 ),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y12" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cg_s2_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cg_s2_5/CLK ),
    .I(\NlwBufferSignal_u_fifo_a2b/cg_s2_5/IN ),
    .O(\u_fifo_a2b/cg_s2 [5]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y12" ),
    .INIT ( 32'hFF00FF00 ))
  \u_fifo_a2b/cptr_gray<5>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\u_fifo_a2b/cptr_gray [5]),
    .O(\u_fifo_a2b/cptr_gray<5>_rt_4945 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y12" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cg_s1_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cg_s1_5/CLK ),
    .I(\u_fifo_a2b/cptr_gray<5>_rt_4945 ),
    .O(\u_fifo_a2b/cg_s1<5>_pack_2 ),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y12" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cg_s2_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cg_s2_4/CLK ),
    .I(\NlwBufferSignal_u_fifo_a2b/cg_s2_4/IN ),
    .O(\u_fifo_a2b/cg_s2 [4]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y12" ),
    .INIT ( 32'hCCCCCCCC ))
  \u_fifo_a2b/cptr_gray<4>_rt  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\u_fifo_a2b/cptr_gray [4]),
    .O(\u_fifo_a2b/cptr_gray<4>_rt_4950 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y12" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cg_s1_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cg_s1_4/CLK ),
    .I(\u_fifo_a2b/cptr_gray<4>_rt_4950 ),
    .O(\u_fifo_a2b/cg_s1<4>_pack_1 ),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y14" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cg_s1_11  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cg_s1_11/CLK ),
    .I(\NlwBufferSignal_u_fifo_a2b/cg_s1_11/IN ),
    .O(\u_fifo_a2b/cg_s1 [11]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y14" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cg_s1_10  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cg_s1_10/CLK ),
    .I(\NlwBufferSignal_u_fifo_a2b/cg_s1_10/IN ),
    .O(\u_fifo_a2b/cg_s1 [10]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y14" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cg_s1_9  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cg_s1_9/CLK ),
    .I(\NlwBufferSignal_u_fifo_a2b/cg_s1_9/IN ),
    .O(\u_fifo_a2b/cg_s1 [9]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y14" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cg_s1_8  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cg_s1_8/CLK ),
    .I(\NlwBufferSignal_u_fifo_a2b/cg_s1_8/IN ),
    .O(\u_fifo_a2b/cg_s1 [8]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y21" ),
    .INIT ( 64'hFF4CB300FFCC3300 ))
  \u_fifo_b2a/Mmux_rptr_n71  (
    .ADR3(\u_fifo_b2a/rptr [4]),
    .ADR4(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<4>_0 ),
    .ADR1(b2a_rd_en),
    .ADR2(\u_fifo_b2a/rd_empty121_7418 ),
    .ADR0(\u_fifo_b2a/rd_empty1241 ),
    .ADR5(N275),
    .O(\u_fifo_b2a/rptr_n [4])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y21" ),
    .INIT ( 64'hF4FCFCFCB0303030 ))
  \u_fifo_b2a/Mmux_rptr_n61  (
    .ADR2(\u_fifo_b2a/rptr [3]),
    .ADR5(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<3>_0 ),
    .ADR1(b2a_rd_en),
    .ADR0(\u_fifo_b2a/rd_empty121_7418 ),
    .ADR3(\u_fifo_b2a/rd_empty1241 ),
    .ADR4(N275),
    .O(\u_fifo_b2a/rptr_n [3])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y21" ),
    .INIT ( 64'hEF40CFC0CFC0CFC0 ))
  \u_fifo_b2a/Mmux_rptr_n51  (
    .ADR3(\u_fifo_b2a/rptr [2]),
    .ADR1(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<2>_0 ),
    .ADR2(b2a_rd_en),
    .ADR5(\u_fifo_b2a/rd_empty121_7418 ),
    .ADR4(\u_fifo_b2a/rd_empty1241 ),
    .ADR0(N275),
    .O(\u_fifo_b2a/rptr_n [2])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y21" ),
    .INIT ( 64'h2481184218422481 ))
  \u_fifo_b2a/rd_empty122  (
    .ADR3(\u_fifo_b2a/cg_s2 [4]),
    .ADR0(\u_fifo_b2a/cg_s2 [5]),
    .ADR5(\u_fifo_b2a/cg_s2 [6]),
    .ADR1(\u_fifo_b2a/rptr [4]),
    .ADR2(\u_fifo_b2a/rptr [5]),
    .ADR4(\u_fifo_b2a/cptr_r[7] ),
    .O(\u_fifo_b2a/rd_empty121_7418 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y22" ),
    .INIT ( 64'hF0F099F00F0F990F ))
  \u_fifo_b2a/pop1_SW31  (
    .ADR2(\u_fifo_b2a/rptr [4]),
    .ADR5(\u_fifo_b2a/rptr [3]),
    .ADR0(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<3>_0 ),
    .ADR1(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<4>_0 ),
    .ADR3(b2a_rd_en),
    .ADR4(\u_fifo_b2a/rd_empty12 ),
    .O(N327)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y22" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rptr_gray_r_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rptr_gray_r_3/CLK ),
    .I(\u_fifo_b2a/rptr_n[11]_GND_4_o_xor_25_OUT<3> ),
    .O(\u_fifo_b2a/rptr_gray [3]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y22" ),
    .INIT ( 64'h00007FBF8040FFFF ))
  \u_fifo_b2a/Mxor_rptr_n[11]_GND_4_o_xor_25_OUT_3_xo<0>1  (
    .ADR0(\u_fifo_b2a/rptr [0]),
    .ADR3(\u_fifo_b2a/cptr_r[0] ),
    .ADR1(\u_fifo_b2a/rd_empty121_7418 ),
    .ADR4(N326),
    .ADR2(\u_fifo_b2a/rd_empty124_7572 ),
    .ADR5(N327),
    .O(\u_fifo_b2a/rptr_n[11]_GND_4_o_xor_25_OUT<3> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y22" ),
    .INIT ( 64'hF00FD88DF00F7227 ))
  \u_fifo_b2a/pop1_SW29  (
    .ADR3(\u_fifo_b2a/rptr [2]),
    .ADR2(\u_fifo_b2a/rptr [3]),
    .ADR5(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<2>_0 ),
    .ADR1(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<3>_0 ),
    .ADR0(b2a_rd_en),
    .ADR4(\u_fifo_b2a/rd_empty12 ),
    .O(N324)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y22" ),
    .INIT ( 1'b0 ))
  \u_fifo_b2a/rptr_gray_r_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_b2a/rptr_gray_r_2/CLK ),
    .I(\u_fifo_b2a/rptr_n[11]_GND_4_o_xor_25_OUT<2> ),
    .O(\u_fifo_b2a/rptr_gray [2]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y22" ),
    .INIT ( 64'h060F9F0F0F0F0F0F ))
  \u_fifo_b2a/Mxor_rptr_n[11]_GND_4_o_xor_25_OUT_2_xo<0>1  (
    .ADR1(\u_fifo_b2a/rptr [0]),
    .ADR0(\u_fifo_b2a/cptr_r[0] ),
    .ADR3(\u_fifo_b2a/rd_empty121_7418 ),
    .ADR2(N323),
    .ADR5(\u_fifo_b2a/rd_empty124_7572 ),
    .ADR4(N324),
    .O(\u_fifo_b2a/rptr_n[11]_GND_4_o_xor_25_OUT<2> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y23" ),
    .INIT ( 64'hB8F0F0F0AAAAAAAA ))
  \u_fifo_b2a/Mmux_rptr_n91  (
    .ADR0(\u_fifo_b2a/rptr [6]),
    .ADR2(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<6>_0 ),
    .ADR5(b2a_rd_en),
    .ADR1(\u_fifo_b2a/rd_empty121_7418 ),
    .ADR4(\u_fifo_b2a/rd_empty1241 ),
    .ADR3(N275),
    .O(\u_fifo_b2a/rptr_n [6])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y23" ),
    .INIT ( 64'hCCE4E4E4E4E4E4E4 ))
  \u_fifo_b2a/Mmux_rptr_n101  (
    .ADR1(\u_fifo_b2a/rptr [7]),
    .ADR2(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<7>_0 ),
    .ADR0(b2a_rd_en),
    .ADR5(\u_fifo_b2a/rd_empty121_7418 ),
    .ADR4(\u_fifo_b2a/rd_empty1241 ),
    .ADR3(N275),
    .O(\u_fifo_b2a/rptr_n [7])
  );
  X_FF #(
    .LOC ( "SLICE_X14Y29" ),
    .INIT ( 1'b0 ))
  \u_rx_a/shreg_5  (
    .CE(\u_rx_a/_n0171_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/shreg_5/CLK ),
    .I(\NlwBufferSignal_u_rx_a/shreg_5/IN ),
    .O(\u_rx_a/shreg [5]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y29" ),
    .INIT ( 1'b0 ))
  \u_rx_a/shreg_4  (
    .CE(\u_rx_a/_n0171_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/shreg_4/CLK ),
    .I(\NlwBufferSignal_u_rx_a/shreg_4/IN ),
    .O(\u_rx_a/shreg [4]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y29" ),
    .INIT ( 1'b0 ))
  \u_rx_a/shreg_3  (
    .CE(\u_rx_a/_n0171_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/shreg_3/CLK ),
    .I(\NlwBufferSignal_u_rx_a/shreg_3/IN ),
    .O(\u_rx_a/shreg [3]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y29" ),
    .INIT ( 1'b0 ))
  \u_rx_a/shreg_2  (
    .CE(\u_rx_a/_n0171_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/shreg_2/CLK ),
    .I(\NlwBufferSignal_u_rx_a/shreg_2/IN ),
    .O(\u_rx_a/shreg [2]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y30" ),
    .INIT ( 1'b0 ))
  \u_engine/len_hi_3  (
    .CE(\u_engine/_n0357_inv ),
    .CLK(\NlwBufferSignal_u_engine/len_hi_3/CLK ),
    .I(\NlwBufferSignal_u_engine/len_hi_3/IN ),
    .O(\u_engine/len_hi [3]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y30" ),
    .INIT ( 1'b0 ))
  \u_engine/len_hi_2  (
    .CE(\u_engine/_n0357_inv ),
    .CLK(\NlwBufferSignal_u_engine/len_hi_2/CLK ),
    .I(\NlwBufferSignal_u_engine/len_hi_2/IN ),
    .O(\u_engine/len_hi [2]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y30" ),
    .INIT ( 1'b0 ))
  \u_engine/len_hi_1  (
    .CE(\u_engine/_n0357_inv ),
    .CLK(\NlwBufferSignal_u_engine/len_hi_1/CLK ),
    .I(\NlwBufferSignal_u_engine/len_hi_1/IN ),
    .O(\u_engine/len_hi [1]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y30" ),
    .INIT ( 1'b0 ))
  \u_engine/len_hi_0  (
    .CE(\u_engine/_n0357_inv ),
    .CLK(\NlwBufferSignal_u_engine/len_hi_0/CLK ),
    .I(\NlwBufferSignal_u_engine/len_hi_0/IN ),
    .O(\u_engine/len_hi [0]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y31" ),
    .INIT ( 1'b0 ))
  \u_rx_a/hold_d_7  (
    .CE(\u_rx_a/_n0178_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/hold_d_7/CLK ),
    .I(\NlwBufferSignal_u_rx_a/hold_d_7/IN ),
    .O(\u_rx_a/hold_d [7]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y31" ),
    .INIT ( 1'b0 ))
  \u_rx_a/hold_d_6  (
    .CE(\u_rx_a/_n0178_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/hold_d_6/CLK ),
    .I(\NlwBufferSignal_u_rx_a/hold_d_6/IN ),
    .O(\u_rx_a/hold_d [6]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y31" ),
    .INIT ( 1'b0 ))
  \u_rx_a/hold_d_5  (
    .CE(\u_rx_a/_n0178_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/hold_d_5/CLK ),
    .I(\NlwBufferSignal_u_rx_a/hold_d_5/IN ),
    .O(\u_rx_a/hold_d [5]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y31" ),
    .INIT ( 1'b0 ))
  \u_rx_a/hold_d_4  (
    .CE(\u_rx_a/_n0178_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/hold_d_4/CLK ),
    .I(\NlwBufferSignal_u_rx_a/hold_d_4/IN ),
    .O(\u_rx_a/hold_d [4]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y37" ),
    .INIT ( 64'h0000000000100000 ))
  \u_engine/Mmux_GND_6_o_GND_6_o_MUX_165_o11  (
    .ADR1(\u_rx_a/m_tdata [6]),
    .ADR3(\u_rx_a/m_tdata [2]),
    .ADR4(\u_rx_a/m_tindex [2]),
    .ADR2(\u_rx_a/m_tindex [4]),
    .ADR0(\u_rx_a/m_tdata [1]),
    .ADR5(\u_rx_a/m_tindex [3]),
    .O(\u_engine/Mmux_GND_6_o_GND_6_o_MUX_165_o1 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y37" ),
    .INIT ( 64'h00000F0000000F00 ))
  \u_engine/Mmux_GND_6_o_GND_6_o_MUX_165_o12  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR4(\u_engine/icmp_done_8296 ),
    .ADR3(\u_engine/Mmux_GND_6_o_GND_6_o_MUX_165_o1 ),
    .ADR2(\u_rx_a/m_tdata [3]),
    .O(\u_engine/Mmux_GND_6_o_GND_6_o_MUX_165_o11_8293 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y37" ),
    .INIT ( 64'h0000000040000000 ))
  \u_engine/_n0385_inv41  (
    .ADR1(\u_rx_a/m_tvalid_7480 ),
    .ADR0(\u_rx_a/m_tindex [1]),
    .ADR4(\u_rx_a/m_tindex [2]),
    .ADR2(\u_rx_a/m_tindex [3]),
    .ADR5(\u_rx_a/m_tindex [4]),
    .ADR3(\u_engine/_n0385_inv1_8292 ),
    .O(\u_engine/_n0385_inv4 )
  );
  X_BUF   \u_uart/code<2>/u_uart/code<2>_CMUX_Delay  (
    .I(\u_uart/_n0234_inv ),
    .O(\u_uart/_n0234_inv_0 )
  );
  X_BUF   \u_uart/code<2>/u_uart/code<2>_AMUX_Delay  (
    .I(\u_uart/code [0]),
    .O(\u_uart/code<0>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y48" ),
    .INIT ( 64'hCCCC3333CCCC3333 ))
  \u_uart/cq_empty41121  (
    .ADR0(1'b1),
    .ADR5(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_uart/cq_r [1]),
    .ADR1(\u_uart/cq_w [1]),
    .O(\u_uart/cq_empty4112 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y48" ),
    .INIT ( 64'h00000C0F00000C0F ))
  \u_uart/_n0239_inv1  (
    .ADR0(1'b1),
    .ADR2(\u_uart/mstate_FSM_FFd1_7957 ),
    .ADR4(\u_uart/mstate_FSM_FFd2_7956 ),
    .ADR3(\u_uart/cq_empty ),
    .ADR1(\u_uart/hb_pend_8289 ),
    .ADR5(1'b1),
    .O(\u_uart/_n0239_inv )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y48" ),
    .INIT ( 32'h0000000F ))
  \u_uart/_n0234_inv1  (
    .ADR0(1'b1),
    .ADR2(\u_uart/mstate_FSM_FFd1_7957 ),
    .ADR4(\u_uart/mstate_FSM_FFd2_7956 ),
    .ADR3(\u_uart/cq_empty ),
    .ADR1(1'b1),
    .O(\u_uart/_n0234_inv )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y48" ),
    .INIT ( 1'b0 ))
  \u_uart/code_2  (
    .CE(\u_uart/_n0239_inv ),
    .CLK(\NlwBufferSignal_u_uart/code_2/CLK ),
    .I(\u_uart/cq_empty ),
    .O(\u_uart/code [2]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y48" ),
    .INIT ( 64'h8200008200000000 ))
  \u_uart/cq_empty41  (
    .ADR4(\u_uart/cq_r [3]),
    .ADR3(\u_uart/cq_w [3]),
    .ADR2(\u_uart/cq_r [2]),
    .ADR1(\u_uart/cq_w [2]),
    .ADR0(\u_uart/cq_empty4112 ),
    .ADR5(\u_uart/cq_empty412 ),
    .O(\u_uart/cq_empty )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y48" ),
    .INIT ( 1'b0 ))
  \u_uart/code_1  (
    .CE(\u_uart/_n0239_inv ),
    .CLK(\NlwBufferSignal_u_uart/code_1/CLK ),
    .I(\u_uart/code[2]_GND_7_o_mux_29_OUT<1> ),
    .O(\u_uart/code [1]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y48" ),
    .INIT ( 64'h0000AAAA0000AAAA ))
  \u_uart/Mmux_code[2]_GND_7_o_mux_29_OUT21  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR0(\u_uart/_n0204 [1]),
    .ADR4(\u_uart/cq_empty ),
    .ADR5(1'b1),
    .O(\u_uart/code[2]_GND_7_o_mux_29_OUT<1> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y48" ),
    .INIT ( 32'h0000FF00 ))
  \u_uart/Mmux_code[2]_GND_7_o_mux_29_OUT11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(\u_uart/_n0204 [0]),
    .ADR2(1'b1),
    .ADR4(\u_uart/cq_empty ),
    .O(\u_uart/code[2]_GND_7_o_mux_29_OUT<0> )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y48" ),
    .INIT ( 1'b0 ))
  \u_uart/code_0  (
    .CE(\u_uart/_n0239_inv ),
    .CLK(\NlwBufferSignal_u_uart/code_0/CLK ),
    .I(\u_uart/code[2]_GND_7_o_mux_29_OUT<0> ),
    .O(\u_uart/code [0]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_BUF   \u_uart/req<3>/u_uart/req<3>_CMUX_Delay  (
    .I(\u_uart/pick_code<1>_pack_7 ),
    .O(\u_uart/pick_code [1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y50" ),
    .INIT ( 64'h00AA00FA00AA00FA ))
  \u_uart/Mmux_pick_code11  (
    .ADR1(1'b1),
    .ADR3(\u_uart/req [0]),
    .ADR2(\u_uart/req [3]),
    .ADR4(\u_uart/req [2]),
    .ADR0(\u_uart/req [1]),
    .ADR5(1'b1),
    .O(\u_uart/pick_code [0])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y50" ),
    .INIT ( 32'h00550050 ))
  \u_uart/Mmux_pick_code21  (
    .ADR1(1'b1),
    .ADR3(\u_uart/req [0]),
    .ADR2(\u_uart/req [3]),
    .ADR4(\u_uart/req [2]),
    .ADR0(\u_uart/req [1]),
    .O(\u_uart/pick_code<1>_pack_7 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y50" ),
    .INIT ( 64'h0000000000110011 ))
  \u_uart/push_SW0  (
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR1(\u_uart/req [3]),
    .ADR5(\u_uart/req [2]),
    .ADR3(\u_uart/req [1]),
    .ADR0(\u_uart/req [0]),
    .O(N9)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y50" ),
    .INIT ( 1'b0 ))
  \u_uart/req_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/req_3/CLK ),
    .I(\u_uart/req[3]_ev[3]_or_20_OUT<3> ),
    .O(\u_uart/req [3]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y50" ),
    .INIT ( 64'h7FF70FF0FFFF0FF0 ))
  \u_uart/req[3]_ev[3]_or_20_OUT<3>1  (
    .ADR0(\u_uart/pick_code [0]),
    .ADR1(\u_uart/pick_code [1]),
    .ADR5(\u_uart/push_7903 ),
    .ADR4(\u_uart/req [3]),
    .ADR2(\u_uart/t3 [3]),
    .ADR3(\u_uart/t2<3>_0 ),
    .O(\u_uart/req[3]_ev[3]_or_20_OUT<3> )
  );
  X_BUF   \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT14/u_uart/Mmux_code[2]_GND_7_o_select_48_OUT14_CMUX_Delay  (
    .I(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT41 ),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT41_0 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X14Y53" ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT42  (
    .IA(N510),
    .IB(N511),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT41 ),
    .SEL(\u_uart/idx [2])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y53" ),
    .INIT ( 64'h0000030300000302 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT42_F  (
    .ADR4(\u_uart/idx [4]),
    .ADR2(\u_uart/idx [3]),
    .ADR1(\u_uart/idx [5]),
    .ADR0(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT14 ),
    .ADR5(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT11 ),
    .ADR3(\u_uart/code [2]),
    .O(N510)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y53" ),
    .INIT ( 64'h0000101000001000 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT42_G  (
    .ADR0(\u_uart/idx [4]),
    .ADR1(\u_uart/idx [3]),
    .ADR4(\u_uart/idx [5]),
    .ADR2(\u_uart/idx [1]),
    .ADR5(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT14 ),
    .ADR3(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT11 ),
    .O(N511)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y53" ),
    .INIT ( 64'h00000000000000FF ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT141  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(\u_uart/code [1]),
    .ADR3(\u_uart/code<0>_0 ),
    .ADR4(\u_uart/code [2]),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT14 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y53" ),
    .INIT ( 64'h3040000030400000 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT122  (
    .ADR5(1'b1),
    .ADR1(\u_uart/idx [5]),
    .ADR4(\u_uart/idx [0]),
    .ADR0(\u_uart/idx [4]),
    .ADR3(\u_uart/idx [3]),
    .ADR2(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT14 ),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT123 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y55" ),
    .INIT ( 64'hCCCC0000CCCC0000 ))
  \u_uart/idx[7]_code[2]_equal_60_o82  (
    .ADR0(1'b1),
    .ADR5(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u_uart/idx [2]),
    .ADR1(\u_uart/idx [3]),
    .O(\u_uart/idx[7]_code[2]_equal_60_o81_8475 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y55" ),
    .INIT ( 64'hA500005000000A00 ))
  \u_uart/idx[7]_code[2]_equal_60_o81  (
    .ADR1(1'b1),
    .ADR2(\u_uart/code [1]),
    .ADR4(\u_uart/code<0>_0 ),
    .ADR3(\u_uart/idx [0]),
    .ADR5(\u_uart/idx [3]),
    .ADR0(\u_uart/idx [2]),
    .O(\u_uart/idx[7]_code[2]_equal_60_o8 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y55" ),
    .INIT ( 64'h0000F00008080000 ))
  \u_uart/idx[7]_code[2]_equal_60_o83  (
    .ADR4(\u_uart/code [2]),
    .ADR2(\u_uart/idx [5]),
    .ADR5(\u_uart/idx [1]),
    .ADR0(\u_uart/idx [0]),
    .ADR1(\u_uart/idx[7]_code[2]_equal_60_o81_8475 ),
    .ADR3(\u_uart/idx[7]_code[2]_equal_60_o8 ),
    .O(\u_uart/idx[7]_code[2]_equal_60_o82_8348 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y56" ),
    .INIT ( 1'b0 ))
  \u_uart/idx_7  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/idx_7/CLK ),
    .I(\u_uart/mstate[2]_idx[7]_select_72_OUT<7>_5187 ),
    .O(\u_uart/idx [7]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y56" ),
    .INIT ( 64'hFF32FF0001010000 ))
  \u_uart/mstate[2]_idx[7]_select_72_OUT<7>  (
    .ADR1(\u_uart/mstate_FSM_FFd2_7956 ),
    .ADR4(\u_uart/mstate_FSM_FFd1_7957 ),
    .ADR0(N13),
    .ADR5(\u_uart/idx [7]),
    .ADR3(\u_uart/mstate[2]_idx[7]_select_72_OUT<0>1 ),
    .ADR2(\u_uart/idx[7]_code[2]_equal_60_o ),
    .O(\u_uart/mstate[2]_idx[7]_select_72_OUT<7>_5187 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y56" ),
    .INIT ( 1'b0 ))
  \u_uart/idx_6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/idx_6/CLK ),
    .I(\u_uart/mstate[2]_idx[7]_select_72_OUT<6>_5196 ),
    .O(\u_uart/idx [6]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y56" ),
    .INIT ( 64'hFFFF000400FB0004 ))
  \u_uart/mstate[2]_idx[7]_select_72_OUT<6>  (
    .ADR2(\u_uart/u_core/tx_busy_7870 ),
    .ADR3(N7),
    .ADR1(\u_uart/Madd_idx[7]_GND_7_o_add_60_OUT_cy<5> ),
    .ADR4(\u_uart/idx [6]),
    .ADR5(\u_uart/mstate[2]_idx[7]_select_72_OUT<0>1 ),
    .ADR0(\u_uart/idx[7]_code[2]_equal_60_o ),
    .O(\u_uart/mstate[2]_idx[7]_select_72_OUT<6>_5196 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y56" ),
    .INIT ( 1'b0 ))
  \u_uart/idx_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/idx_5/CLK ),
    .I(\u_uart/mstate[2]_idx[7]_select_72_OUT<5>_5204 ),
    .O(\u_uart/idx [5]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y56" ),
    .INIT ( 64'hFF000C00FF040804 ))
  \u_uart/mstate[2]_idx[7]_select_72_OUT<5>  (
    .ADR2(\u_uart/mstate_FSM_FFd2_7956 ),
    .ADR1(\u_uart/mstate_FSM_FFd1_7957 ),
    .ADR0(N3),
    .ADR3(\u_uart/idx [5]),
    .ADR4(\u_uart/mstate[2]_idx[7]_select_72_OUT<0>1 ),
    .ADR5(\u_uart/idx[7]_code[2]_equal_60_o ),
    .O(\u_uart/mstate[2]_idx[7]_select_72_OUT<5>_5204 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y56" ),
    .INIT ( 1'b0 ))
  \u_uart/idx_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/idx_4/CLK ),
    .I(\NlwBufferSignal_u_uart/idx_4/IN ),
    .O(\u_uart/idx [4]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y56" ),
    .INIT ( 64'hCCCCCCCC33333333 ))
  \u_uart/Msub_GND_7_o_GND_7_o_sub_40_OUT<5:0>_xor<5>11  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR5(\u_uart/idx [4]),
    .ADR4(1'b1),
    .ADR1(\u_uart/idx [5]),
    .O(\u_uart/GND_7_o_GND_7_o_sub_40_OUT<5>1 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y58" ),
    .INIT ( 64'h7E7EFFFFF6F6FCFC ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT56_SW0  (
    .ADR3(1'b1),
    .ADR4(\u_uart/code<0>_0 ),
    .ADR1(\u_uart/idx [1]),
    .ADR2(\u_uart/idx [4]),
    .ADR0(\u_uart/idx [2]),
    .ADR5(\u_uart/idx [3]),
    .O(N435)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y58" ),
    .INIT ( 64'h3FFCFCFCF3FCFFFF ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT56_SW1  (
    .ADR0(1'b1),
    .ADR4(\u_uart/code<0>_0 ),
    .ADR1(\u_uart/idx [1]),
    .ADR2(\u_uart/idx [4]),
    .ADR5(\u_uart/idx [3]),
    .ADR3(\u_uart/idx [2]),
    .O(N436)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y58" ),
    .INIT ( 64'h000000000000010D ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT56  (
    .ADR5(\u_uart/code [1]),
    .ADR2(\u_uart/code [2]),
    .ADR1(\u_uart/idx [5]),
    .ADR4(\u_uart/idx [0]),
    .ADR0(N435),
    .ADR3(N436),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT55 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y59" ),
    .INIT ( 64'h0000000001000000 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT54  (
    .ADR3(\u_uart/code [2]),
    .ADR1(\u_uart/idx [5]),
    .ADR0(\u_uart/idx [1]),
    .ADR2(\u_uart/idx [4]),
    .ADR5(\u_uart/idx [3]),
    .ADR4(\u_uart/idx [2]),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT52_7543 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y60" ),
    .INIT ( 1'b0 ))
  \u_uart/tx_data_5  (
    .CE(\u_uart/GND_7_o_tx_busy_MUX_9398_o ),
    .CLK(\NlwBufferSignal_u_uart/tx_data_5/CLK ),
    .I(\u_uart/code[2]_GND_7_o_select_48_OUT<5> ),
    .O(\u_uart/tx_data [5]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y60" ),
    .INIT ( 64'hFFFFFEFEFFFFEEEE ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT615  (
    .ADR3(1'b1),
    .ADR5(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT13_7513 ),
    .ADR2(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT64 ),
    .ADR0(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT61_7558 ),
    .ADR1(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT613_7559 ),
    .ADR4(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT67 ),
    .O(\u_uart/code[2]_GND_7_o_select_48_OUT<5> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y60" ),
    .INIT ( 64'h08000F0FF8F0FFFF ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT68  (
    .ADR3(\u_uart/idx [5]),
    .ADR2(\u_uart/idx [4]),
    .ADR0(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT11 ),
    .ADR1(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT65_0 ),
    .ADR5(N223),
    .ADR4(N222),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT67 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y60" ),
    .INIT ( 64'hFFFFFFFFEEEEFFFE ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT58  (
    .ADR4(\u_uart/idx [3]),
    .ADR0(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT52_7543 ),
    .ADR1(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT5 ),
    .ADR3(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT56_7552 ),
    .ADR5(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT51_7553 ),
    .ADR2(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT55 ),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT57_8479 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y60" ),
    .INIT ( 1'b0 ))
  \u_uart/tx_data_4  (
    .CE(\u_uart/GND_7_o_tx_busy_MUX_9398_o ),
    .CLK(\NlwBufferSignal_u_uart/tx_data_4/CLK ),
    .I(\u_uart/code[2]_GND_7_o_select_48_OUT<4> ),
    .O(\u_uart/tx_data [4]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y60" ),
    .INIT ( 64'hFFFFEEFEFFFFEEFF ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT522  (
    .ADR3(\u_uart/idx [1]),
    .ADR2(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT519_7546 ),
    .ADR1(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT53_0 ),
    .ADR5(N425),
    .ADR0(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT515_7549 ),
    .ADR4(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT57_8479 ),
    .O(\u_uart/code[2]_GND_7_o_select_48_OUT<4> )
  );
  X_BUF   \u_fifo_a2b/rg_s1<3>/u_fifo_a2b/rg_s1<3>_DMUX_Delay  (
    .I(\u_fifo_a2b/rg_s2 [3]),
    .O(\u_fifo_a2b/rg_s2<3>_0 )
  );
  X_BUF   \u_fifo_a2b/rg_s1<3>/u_fifo_a2b/rg_s1<3>_CMUX_Delay  (
    .I(\u_fifo_a2b/rg_s2 [2]),
    .O(\u_fifo_a2b/rg_s2<2>_0 )
  );
  X_BUF   \u_fifo_a2b/rg_s1<3>/u_fifo_a2b/rg_s1<3>_BMUX_Delay  (
    .I(\u_fifo_a2b/rg_s2 [1]),
    .O(\u_fifo_a2b/rg_s2<1>_0 )
  );
  X_BUF   \u_fifo_a2b/rg_s1<3>/u_fifo_a2b/rg_s1<3>_AMUX_Delay  (
    .I(\u_fifo_a2b/rg_s2 [0]),
    .O(\u_fifo_a2b/rg_s2<0>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y3" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rg_s1_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rg_s1_3/CLK ),
    .I(\NlwBufferSignal_u_fifo_a2b/rg_s1_3/IN ),
    .O(\u_fifo_a2b/rg_s1 [3]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X15Y3" ),
    .INIT ( 32'hFFFF0000 ))
  \u_fifo_a2b/rg_s1<3>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_fifo_a2b/rg_s1 [3]),
    .ADR3(1'b1),
    .O(\u_fifo_a2b/rg_s1<3>_rt_5273 )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y3" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rg_s2_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rg_s2_3/CLK ),
    .I(\u_fifo_a2b/rg_s1<3>_rt_5273 ),
    .O(\u_fifo_a2b/rg_s2 [3]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y3" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rg_s1_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rg_s1_2/CLK ),
    .I(\NlwBufferSignal_u_fifo_a2b/rg_s1_2/IN ),
    .O(\u_fifo_a2b/rg_s1 [2]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X15Y3" ),
    .INIT ( 32'hFFFF0000 ))
  \u_fifo_a2b/rg_s1<2>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_fifo_a2b/rg_s1 [2]),
    .ADR3(1'b1),
    .O(\u_fifo_a2b/rg_s1<2>_rt_5279 )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y3" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rg_s2_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rg_s2_2/CLK ),
    .I(\u_fifo_a2b/rg_s1<2>_rt_5279 ),
    .O(\u_fifo_a2b/rg_s2 [2]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y3" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rg_s1_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rg_s1_1/CLK ),
    .I(\NlwBufferSignal_u_fifo_a2b/rg_s1_1/IN ),
    .O(\u_fifo_a2b/rg_s1 [1]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X15Y3" ),
    .INIT ( 32'hFFFF0000 ))
  \u_fifo_a2b/rg_s1<1>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_fifo_a2b/rg_s1 [1]),
    .ADR3(1'b1),
    .O(\u_fifo_a2b/rg_s1<1>_rt_5284 )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y3" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rg_s2_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rg_s2_1/CLK ),
    .I(\u_fifo_a2b/rg_s1<1>_rt_5284 ),
    .O(\u_fifo_a2b/rg_s2 [1]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y3" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rg_s1_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rg_s1_0/CLK ),
    .I(\NlwBufferSignal_u_fifo_a2b/rg_s1_0/IN ),
    .O(\u_fifo_a2b/rg_s1 [0]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X15Y3" ),
    .INIT ( 32'hFFFF0000 ))
  \u_fifo_a2b/rg_s1<0>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_fifo_a2b/rg_s1 [0]),
    .ADR3(1'b1),
    .O(\u_fifo_a2b/rg_s1<0>_rt_5289 )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y3" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rg_s2_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rg_s2_0/CLK ),
    .I(\u_fifo_a2b/rg_s1<0>_rt_5289 ),
    .O(\u_fifo_a2b/rg_s2 [0]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y4" ),
    .INIT ( 64'hAA55CAC5AA553A35 ))
  \u_fifo_a2b/pop1_SW27  (
    .ADR3(\u_fifo_a2b/rptr [1]),
    .ADR0(\u_fifo_a2b/rptr [2]),
    .ADR5(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<1>_0 ),
    .ADR1(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<2>_0 ),
    .ADR2(a2b_rd_en),
    .ADR4(\u_fifo_a2b/rd_empty12 ),
    .O(N286)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y4" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rptr_gray_r_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rptr_gray_r_1/CLK ),
    .I(\u_fifo_a2b/rptr_n[11]_GND_4_o_xor_25_OUT<1> ),
    .O(\u_fifo_a2b/rptr_gray [1]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y4" ),
    .INIT ( 64'h00007FBF8040FFFF ))
  \u_fifo_a2b/Mxor_rptr_n[11]_GND_4_o_xor_25_OUT_1_xo<0>1  (
    .ADR0(\u_fifo_a2b/rptr [0]),
    .ADR3(\u_fifo_a2b/cptr_r[0] ),
    .ADR1(\u_fifo_a2b/rd_empty121_7283 ),
    .ADR4(N285),
    .ADR2(\u_fifo_a2b/rd_empty124_7285 ),
    .ADR5(N286),
    .O(\u_fifo_a2b/rptr_n[11]_GND_4_o_xor_25_OUT<1> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y4" ),
    .INIT ( 64'hEDCC213384CCB733 ))
  \u_fifo_a2b/pop1_SW25  (
    .ADR4(\u_fifo_a2b/rptr [1]),
    .ADR1(\u_fifo_a2b/rptr [0]),
    .ADR0(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<0>_0 ),
    .ADR2(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<1>_0 ),
    .ADR3(a2b_rd_en),
    .ADR5(\u_fifo_a2b/cptr_r[0] ),
    .O(N283)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y4" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rptr_gray_r_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rptr_gray_r_0/CLK ),
    .I(\u_fifo_a2b/rptr_n[11]_GND_4_o_xor_25_OUT<0> ),
    .O(\u_fifo_a2b/rptr_gray [0]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y4" ),
    .INIT ( 64'h1133BB3333333333 ))
  \u_fifo_a2b/Mxor_rptr_n[11]_GND_4_o_xor_25_OUT_0_xo<0>1  (
    .ADR2(1'b1),
    .ADR0(\u_fifo_a2b/rd_empty121_7283 ),
    .ADR3(\u_fifo_a2b/rd_empty12 ),
    .ADR1(N282),
    .ADR5(\u_fifo_a2b/rd_empty124_7285 ),
    .ADR4(N283),
    .O(\u_fifo_a2b/rptr_n[11]_GND_4_o_xor_25_OUT<0> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y5" ),
    .INIT ( 64'hB8748B47B8748B47 ))
  \u_fifo_a2b/pop1_SW36  (
    .ADR5(1'b1),
    .ADR2(\u_fifo_a2b/rptr [7]),
    .ADR4(\u_fifo_a2b/rptr [6]),
    .ADR0(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<6>_0 ),
    .ADR3(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<7>_0 ),
    .ADR1(a2b_rd_en),
    .O(N300)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y5" ),
    .INIT ( 64'hFFA500A500A5FFA5 ))
  \u_fifo_a2b/pop1_SW44  (
    .ADR1(1'b1),
    .ADR2(\u_fifo_a2b/rptr [11]),
    .ADR0(\u_fifo_a2b/rptr [10]),
    .ADR5(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<11>_0 ),
    .ADR4(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<10>_0 ),
    .ADR3(a2b_rd_en),
    .O(N312)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y5" ),
    .INIT ( 64'h0000000000AA0000 ))
  \u_tx_b/rd_en1  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR3(\u_tx_b/bcnt_FSM_FFd1_7666 ),
    .ADR5(\u_tx_b/bcnt_FSM_FFd2_7665 ),
    .ADR0(\u_tx_b/state_FSM_FFd1_7386 ),
    .ADR4(\u_tx_b/state_FSM_FFd2_7387 ),
    .O(a2b_rd_en)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y5" ),
    .INIT ( 64'hC3C3FF00C3C300FF ))
  \u_fifo_a2b/pop1_SW24  (
    .ADR0(1'b1),
    .ADR3(\u_fifo_a2b/rptr [1]),
    .ADR5(\u_fifo_a2b/rptr [0]),
    .ADR1(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<0>_0 ),
    .ADR2(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<1>_0 ),
    .ADR4(a2b_rd_en),
    .O(N282)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y10" ),
    .INIT ( 64'h4821214821484821 ))
  \u_fifo_a2b/rd_empty122  (
    .ADR0(\u_fifo_a2b/cg_s2 [4]),
    .ADR4(\u_fifo_a2b/cg_s2 [5]),
    .ADR3(\u_fifo_a2b/cg_s2 [6]),
    .ADR2(\u_fifo_a2b/rptr [4]),
    .ADR1(\u_fifo_a2b/rptr [5]),
    .ADR5(\u_fifo_a2b/cptr_r[7] ),
    .O(\u_fifo_a2b/rd_empty121_7283 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y21" ),
    .INIT ( 64'hAFA0A0AF5F50505F ))
  \u_fifo_b2a/pop1_SW28  (
    .ADR1(1'b1),
    .ADR3(\u_fifo_b2a/rptr [2]),
    .ADR4(\u_fifo_b2a/rptr [3]),
    .ADR5(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<2>_0 ),
    .ADR0(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<3>_0 ),
    .ADR2(b2a_rd_en),
    .O(N323)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y22" ),
    .INIT ( 64'hFCCF30033003FCCF ))
  \u_fifo_b2a/pop1_SW40  (
    .ADR0(1'b1),
    .ADR2(\u_fifo_b2a/rptr [8]),
    .ADR3(\u_fifo_b2a/rptr [9]),
    .ADR4(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<8>_0 ),
    .ADR5(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<9>_0 ),
    .ADR1(b2a_rd_en),
    .O(N341)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y22" ),
    .INIT ( 64'hAAF055F0AA0F550F ))
  \u_fifo_b2a/pop1_SW30  (
    .ADR1(1'b1),
    .ADR2(\u_fifo_b2a/rptr [4]),
    .ADR5(\u_fifo_b2a/rptr [3]),
    .ADR0(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<3>_0 ),
    .ADR4(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<4>_0 ),
    .ADR3(b2a_rd_en),
    .O(N326)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y22" ),
    .INIT ( 64'h00000F0000000000 ))
  \u_tx_a/rd_en1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(\u_tx_a/bcnt_FSM_FFd1_7641 ),
    .ADR2(\u_tx_a/bcnt_FSM_FFd2_7642 ),
    .ADR5(\u_tx_a/state_FSM_FFd1_7378 ),
    .ADR3(\u_tx_a/state_FSM_FFd2_7379 ),
    .O(b2a_rd_en)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y22" ),
    .INIT ( 64'hCC33F0F0CC330F0F ))
  \u_fifo_b2a/pop1_SW24  (
    .ADR0(1'b1),
    .ADR2(\u_fifo_b2a/rptr [1]),
    .ADR5(\u_fifo_b2a/rptr [0]),
    .ADR3(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<0>_0 ),
    .ADR1(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<1>_0 ),
    .ADR4(b2a_rd_en),
    .O(N317)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y23" ),
    .INIT ( 64'h9669699669969669 ))
  \u_fifo_b2a/Mxor_cptr_r<0>_xo<0>1  (
    .ADR2(\u_fifo_b2a/cg_s2 [3]),
    .ADR3(\u_fifo_b2a/cg_s2 [4]),
    .ADR0(\u_fifo_b2a/cg_s2 [5]),
    .ADR1(\u_fifo_b2a/cg_s2 [6]),
    .ADR5(N119),
    .ADR4(\u_fifo_b2a/cptr_r[7] ),
    .O(\u_fifo_b2a/cptr_r[0] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y24" ),
    .INIT ( 64'hDF80CCCCFF00CCCC ))
  \u_fifo_b2a/Mmux_rptr_n81  (
    .ADR1(\u_fifo_b2a/rptr [5]),
    .ADR3(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<5>_0 ),
    .ADR4(b2a_rd_en),
    .ADR5(\u_fifo_b2a/rd_empty121_7418 ),
    .ADR0(\u_fifo_b2a/rd_empty1241 ),
    .ADR2(N275),
    .O(\u_fifo_b2a/rptr_n [5])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y26" ),
    .INIT ( 64'h417D14D714D7417D ))
  \u_fifo_b2a/rd_empty121_1  (
    .ADR2(\u_fifo_b2a/cg_s2 [4]),
    .ADR4(\u_fifo_b2a/cg_s2 [5]),
    .ADR1(\u_fifo_b2a/cg_s2 [6]),
    .ADR3(N126),
    .ADR0(N125),
    .ADR5(\u_fifo_b2a/cptr_r[7] ),
    .O(\u_fifo_b2a/rd_empty1211 )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y29" ),
    .INIT ( 1'b0 ))
  \u_rx_a/hold_d_3  (
    .CE(\u_rx_a/_n0178_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/hold_d_3/CLK ),
    .I(\NlwBufferSignal_u_rx_a/hold_d_3/IN ),
    .O(\u_rx_a/hold_d [3]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y29" ),
    .INIT ( 1'b0 ))
  \u_rx_a/hold_d_2  (
    .CE(\u_rx_a/_n0178_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/hold_d_2/CLK ),
    .I(\NlwBufferSignal_u_rx_a/hold_d_2/IN ),
    .O(\u_rx_a/hold_d [2]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y29" ),
    .INIT ( 1'b0 ))
  \u_rx_a/hold_d_1  (
    .CE(\u_rx_a/_n0178_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/hold_d_1/CLK ),
    .I(\NlwBufferSignal_u_rx_a/hold_d_1/IN ),
    .O(\u_rx_a/hold_d [1]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y29" ),
    .INIT ( 1'b0 ))
  \u_rx_a/hold_d_0  (
    .CE(\u_rx_a/_n0178_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/hold_d_0/CLK ),
    .I(\NlwBufferSignal_u_rx_a/hold_d_0/IN ),
    .O(\u_rx_a/hold_d [0]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y30" ),
    .INIT ( 1'b0 ))
  \u_engine/len_hi_7  (
    .CE(\u_engine/_n0357_inv ),
    .CLK(\NlwBufferSignal_u_engine/len_hi_7/CLK ),
    .I(\NlwBufferSignal_u_engine/len_hi_7/IN ),
    .O(\u_engine/len_hi [7]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y30" ),
    .INIT ( 64'hFFFFFFFFFFFFFFEE ))
  \u_engine/Mmux_len_gt_GND_6_o_MUX_94_o11  (
    .ADR2(1'b1),
    .ADR0(\u_engine/len_hi [6]),
    .ADR1(\u_engine/len_hi [3]),
    .ADR5(\u_engine/len_hi [7]),
    .ADR4(\u_engine/len_hi [4]),
    .ADR3(\u_engine/len_hi [5]),
    .O(\u_engine/Mmux_len_gt_GND_6_o_MUX_94_o1 )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y30" ),
    .INIT ( 1'b0 ))
  \u_engine/len_hi_6  (
    .CE(\u_engine/_n0357_inv ),
    .CLK(\NlwBufferSignal_u_engine/len_hi_6/CLK ),
    .I(\NlwBufferSignal_u_engine/len_hi_6/IN ),
    .O(\u_engine/len_hi [6]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y30" ),
    .INIT ( 1'b0 ))
  \u_engine/len_hi_5  (
    .CE(\u_engine/_n0357_inv ),
    .CLK(\NlwBufferSignal_u_engine/len_hi_5/CLK ),
    .I(\NlwBufferSignal_u_engine/len_hi_5/IN ),
    .O(\u_engine/len_hi [5]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y30" ),
    .INIT ( 1'b0 ))
  \u_engine/len_hi_4  (
    .CE(\u_engine/_n0357_inv ),
    .CLK(\NlwBufferSignal_u_engine/len_hi_4/CLK ),
    .I(\NlwBufferSignal_u_engine/len_hi_4/IN ),
    .O(\u_engine/len_hi [4]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y30" ),
    .INIT ( 64'hA000A000A000A000 ))
  \u_engine/Mmux_len_gt_GND_6_o_MUX_94_o13_SW0  (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR2(\u_rx_a/m_tdata [7]),
    .ADR3(\u_rx_a/m_tdata [6]),
    .ADR0(\u_engine/len_hi [0]),
    .O(N440)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y31" ),
    .INIT ( 1'b0 ))
  \u_rx_a/m_tdata_7  (
    .CE(\u_rx_a/state[1]_GND_3_o_Mux_40_o ),
    .CLK(\NlwBufferSignal_u_rx_a/m_tdata_7/CLK ),
    .I(\NlwBufferSignal_u_rx_a/m_tdata_7/IN ),
    .O(\u_rx_a/m_tdata [7]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y31" ),
    .INIT ( 1'b0 ))
  \u_rx_a/m_tdata_6  (
    .CE(\u_rx_a/state[1]_GND_3_o_Mux_40_o ),
    .CLK(\NlwBufferSignal_u_rx_a/m_tdata_6/CLK ),
    .I(\NlwBufferSignal_u_rx_a/m_tdata_6/IN ),
    .O(\u_rx_a/m_tdata [6]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y31" ),
    .INIT ( 1'b0 ))
  \u_rx_a/m_tdata_5  (
    .CE(\u_rx_a/state[1]_GND_3_o_Mux_40_o ),
    .CLK(\NlwBufferSignal_u_rx_a/m_tdata_5/CLK ),
    .I(\NlwBufferSignal_u_rx_a/m_tdata_5/IN ),
    .O(\u_rx_a/m_tdata [5]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y31" ),
    .INIT ( 1'b0 ))
  \u_rx_a/m_tdata_4  (
    .CE(\u_rx_a/state[1]_GND_3_o_Mux_40_o ),
    .CLK(\NlwBufferSignal_u_rx_a/m_tdata_4/CLK ),
    .I(\NlwBufferSignal_u_rx_a/m_tdata_4/IN ),
    .O(\u_rx_a/m_tdata [4]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y41" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_rst_b/sync_q_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_rst_b/sync_q_2/CLK ),
    .I(\NlwBufferSignal_u_rst_b/sync_q_2/IN ),
    .O(\u_rst_b/sync_q [2]),
    .RST(\por_cnt<7>_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y41" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_rst_b/sync_q_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_rst_b/sync_q_1/CLK ),
    .I(\NlwBufferSignal_u_rst_b/sync_q_1/IN ),
    .O(\u_rst_b/sync_q [1]),
    .RST(\por_cnt<7>_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y41" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_rst_b/sync_q_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_rst_b/sync_q_0/CLK ),
    .I(1'b1),
    .O(\u_rst_b/sync_q [0]),
    .RST(\por_cnt<7>_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y41" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \u_rx_b/rst_n_inv1_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(1'b1),
    .ADR4(1'b1),
    .ADR3(\u_rst_b/sync_q [2]),
    .O(\u_fifo_a2b/rrst_n_inv )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y42" ),
    .INIT ( 1'b0 ))
  \u_rx_a/hold_i_7  (
    .CE(\u_rx_a/_n0178_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/hold_i_7/CLK ),
    .I(\NlwBufferSignal_u_rx_a/hold_i_7/IN ),
    .O(\u_rx_a/hold_i [7]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y42" ),
    .INIT ( 1'b0 ))
  \u_rx_a/hold_i_6  (
    .CE(\u_rx_a/_n0178_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/hold_i_6/CLK ),
    .I(\NlwBufferSignal_u_rx_a/hold_i_6/IN ),
    .O(\u_rx_a/hold_i [6]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y42" ),
    .INIT ( 1'b0 ))
  \u_rx_a/hold_i_5  (
    .CE(\u_rx_a/_n0178_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/hold_i_5/CLK ),
    .I(\NlwBufferSignal_u_rx_a/hold_i_5/IN ),
    .O(\u_rx_a/hold_i [5]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y42" ),
    .INIT ( 1'b0 ))
  \u_rx_a/hold_i_4  (
    .CE(\u_rx_a/_n0178_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/hold_i_4/CLK ),
    .I(\NlwBufferSignal_u_rx_a/hold_i_4/IN ),
    .O(\u_rx_a/hold_i [4]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y43" ),
    .INIT ( 1'b0 ))
  \u_rx_a/hold_i_11  (
    .CE(\u_rx_a/_n0178_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/hold_i_11/CLK ),
    .I(\NlwBufferSignal_u_rx_a/hold_i_11/IN ),
    .O(\u_rx_a/hold_i [11]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y43" ),
    .INIT ( 1'b0 ))
  \u_rx_a/hold_i_10  (
    .CE(\u_rx_a/_n0178_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/hold_i_10/CLK ),
    .I(\NlwBufferSignal_u_rx_a/hold_i_10/IN ),
    .O(\u_rx_a/hold_i [10]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y43" ),
    .INIT ( 1'b0 ))
  \u_rx_a/hold_i_9  (
    .CE(\u_rx_a/_n0178_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/hold_i_9/CLK ),
    .I(\NlwBufferSignal_u_rx_a/hold_i_9/IN ),
    .O(\u_rx_a/hold_i [9]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y43" ),
    .INIT ( 1'b0 ))
  \u_rx_a/hold_i_8  (
    .CE(\u_rx_a/_n0178_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/hold_i_8/CLK ),
    .I(\NlwBufferSignal_u_rx_a/hold_i_8/IN ),
    .O(\u_rx_a/hold_i [8]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y44" ),
    .INIT ( 1'b0 ))
  \u_rx_a/hold_i_15  (
    .CE(\u_rx_a/_n0178_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/hold_i_15/CLK ),
    .I(\NlwBufferSignal_u_rx_a/hold_i_15/IN ),
    .O(\u_rx_a/hold_i [15]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y44" ),
    .INIT ( 1'b0 ))
  \u_rx_a/hold_i_14  (
    .CE(\u_rx_a/_n0178_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/hold_i_14/CLK ),
    .I(\NlwBufferSignal_u_rx_a/hold_i_14/IN ),
    .O(\u_rx_a/hold_i [14]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y44" ),
    .INIT ( 1'b0 ))
  \u_rx_a/hold_i_13  (
    .CE(\u_rx_a/_n0178_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/hold_i_13/CLK ),
    .I(\NlwBufferSignal_u_rx_a/hold_i_13/IN ),
    .O(\u_rx_a/hold_i [13]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y44" ),
    .INIT ( 1'b0 ))
  \u_rx_a/hold_i_12  (
    .CE(\u_rx_a/_n0178_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/hold_i_12/CLK ),
    .I(\NlwBufferSignal_u_rx_a/hold_i_12/IN ),
    .O(\u_rx_a/hold_i [12]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y45" ),
    .INIT ( 1'b0 ))
  \u_rx_a/m_tindex_15  (
    .CE(\u_rx_a/state[1]_GND_3_o_Mux_40_o ),
    .CLK(\NlwBufferSignal_u_rx_a/m_tindex_15/CLK ),
    .I(\NlwBufferSignal_u_rx_a/m_tindex_15/IN ),
    .O(\u_rx_a/m_tindex [15]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y45" ),
    .INIT ( 1'b0 ))
  \u_rx_a/m_tindex_14  (
    .CE(\u_rx_a/state[1]_GND_3_o_Mux_40_o ),
    .CLK(\NlwBufferSignal_u_rx_a/m_tindex_14/CLK ),
    .I(\NlwBufferSignal_u_rx_a/m_tindex_14/IN ),
    .O(\u_rx_a/m_tindex [14]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y45" ),
    .INIT ( 1'b0 ))
  \u_rx_a/m_tindex_13  (
    .CE(\u_rx_a/state[1]_GND_3_o_Mux_40_o ),
    .CLK(\NlwBufferSignal_u_rx_a/m_tindex_13/CLK ),
    .I(\NlwBufferSignal_u_rx_a/m_tindex_13/IN ),
    .O(\u_rx_a/m_tindex [13]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y45" ),
    .INIT ( 1'b0 ))
  \u_rx_a/m_tindex_12  (
    .CE(\u_rx_a/state[1]_GND_3_o_Mux_40_o ),
    .CLK(\NlwBufferSignal_u_rx_a/m_tindex_12/CLK ),
    .I(\NlwBufferSignal_u_rx_a/m_tindex_12/IN ),
    .O(\u_rx_a/m_tindex [12]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_BUF   \u_uart/cq_w<2>/u_uart/cq_w<2>_CMUX_Delay  (
    .I(\u_uart/cq_w<1>_pack_8 ),
    .O(\u_uart/cq_w [1])
  );
  X_BUF   \u_uart/cq_w<2>/u_uart/cq_w<2>_BMUX_Delay  (
    .I(\u_uart/cq_w<3>_pack_6 ),
    .O(\u_uart/cq_w [3])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y48" ),
    .INIT ( 64'hCC33CC33CC33CC33 ))
  \u_uart/cq_empty31  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR5(1'b1),
    .ADR1(\u_uart/cq_w [3]),
    .ADR3(\u_uart/cq_r [3]),
    .O(\u_uart/cq_empty4 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y48" ),
    .INIT ( 64'hF00FF00FF00FF00F ))
  \u_uart/cq_empty4121  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(\u_uart/cq_r [0]),
    .ADR2(\u_uart/cq_w [0]),
    .ADR5(1'b1),
    .O(\u_uart/cq_empty412 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X15Y48" ),
    .INIT ( 32'h3C3C3C3C ))
  \u_uart/Mcount_cq_w_xor<1>11  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR1(\u_uart/cq_w [1]),
    .ADR3(1'b1),
    .ADR2(\u_uart/cq_w [0]),
    .O(\u_uart/Result<1>1 )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y48" ),
    .INIT ( 1'b0 ))
  \u_uart/cq_w_1  (
    .CE(\u_uart/push_7903 ),
    .CLK(\NlwBufferSignal_u_uart/cq_w_1/CLK ),
    .I(\u_uart/Result<1>1 ),
    .O(\u_uart/cq_w<1>_pack_8 ),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y48" ),
    .INIT ( 1'b0 ))
  \u_uart/cq_w_2  (
    .CE(\u_uart/push_7903 ),
    .CLK(\NlwBufferSignal_u_uart/cq_w_2/CLK ),
    .I(\u_uart/Result<2>1 ),
    .O(\u_uart/cq_w [2]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y48" ),
    .INIT ( 64'h5A5AF0F05A5AF0F0 ))
  \u_uart/Result<2>11  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR0(\u_uart/cq_w [0]),
    .ADR2(\u_uart/cq_w [2]),
    .ADR4(\u_uart/cq_w [1]),
    .ADR5(1'b1),
    .O(\u_uart/Result<2>1 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X15Y48" ),
    .INIT ( 32'h6C6CCCCC ))
  \u_uart/Result<3>11  (
    .ADR3(1'b1),
    .ADR1(\u_uart/cq_w [3]),
    .ADR0(\u_uart/cq_w [0]),
    .ADR2(\u_uart/cq_w [2]),
    .ADR4(\u_uart/cq_w [1]),
    .O(\u_uart/Result<3>1 )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y48" ),
    .INIT ( 1'b0 ))
  \u_uart/cq_w_3  (
    .CE(\u_uart/push_7903 ),
    .CLK(\NlwBufferSignal_u_uart/cq_w_3/CLK ),
    .I(\u_uart/Result<3>1 ),
    .O(\u_uart/cq_w<3>_pack_6 ),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y48" ),
    .INIT ( 1'b0 ))
  \u_uart/cq_w_0  (
    .CE(\u_uart/push_7903 ),
    .CLK(\NlwBufferSignal_u_uart/cq_w_0/CLK ),
    .I(\u_uart/Result<0>1 ),
    .O(\u_uart/cq_w [0]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y48" ),
    .INIT ( 64'h00000000FFFFFFFF ))
  \u_uart/Mcount_cq_w_xor<0>11_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(\u_uart/cq_w [0]),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .O(\u_uart/Result<0>1 )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y50" ),
    .INIT ( 1'b0 ))
  \u_uart/req_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/req_2/CLK ),
    .I(\u_uart/req[3]_ev[3]_or_20_OUT<2> ),
    .O(\u_uart/req [2]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y50" ),
    .INIT ( 64'hFFBFFFEF3333CCCC ))
  \u_uart/req[3]_ev[3]_or_20_OUT<2>1  (
    .ADR3(\u_uart/req [0]),
    .ADR0(\u_uart/req [1]),
    .ADR2(\u_uart/push_7903 ),
    .ADR5(\u_uart/req [2]),
    .ADR4(\u_uart/t3 [2]),
    .ADR1(\u_uart/t2<2>_0 ),
    .O(\u_uart/req[3]_ev[3]_or_20_OUT<2> )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y50" ),
    .INIT ( 1'b0 ))
  \u_uart/req_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/req_1/CLK ),
    .I(\u_uart/req[3]_ev[3]_or_20_OUT<1> ),
    .O(\u_uart/req [1]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y50" ),
    .INIT ( 64'hBBFF00FFFFBBFF00 ))
  \u_uart/req[3]_ev[3]_or_20_OUT<1>1  (
    .ADR2(1'b1),
    .ADR0(\u_uart/req [0]),
    .ADR1(\u_uart/push_7903 ),
    .ADR4(\u_uart/req [1]),
    .ADR5(\u_uart/t3 [1]),
    .ADR3(\u_uart/t2<1>_0 ),
    .O(\u_uart/req[3]_ev[3]_or_20_OUT<1> )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y50" ),
    .INIT ( 1'b0 ))
  \u_uart/req_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/req_0/CLK ),
    .I(\u_uart/req[3]_ev[3]_or_20_OUT<0> ),
    .O(\u_uart/req [0]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y50" ),
    .INIT ( 64'h55AA55AAFFFF55AA ))
  \u_uart/req[3]_ev[3]_or_20_OUT<0>1  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR3(\u_uart/t3 [0]),
    .ADR4(\u_uart/req [0]),
    .ADR0(\u_uart/t2<0>_0 ),
    .ADR5(\u_uart/push_7903 ),
    .O(\u_uart/req[3]_ev[3]_or_20_OUT<0> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y50" ),
    .INIT ( 64'h2333333333332333 ))
  \u_uart/push  (
    .ADR1(N9),
    .ADR2(\u_uart/cq_empty4112 ),
    .ADR3(\u_uart/cq_empty412 ),
    .ADR5(\u_uart/cq_w [2]),
    .ADR4(\u_uart/cq_r [2]),
    .ADR0(\u_uart/cq_empty4 ),
    .O(\u_uart/push_7903 )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y55" ),
    .INIT ( 1'b0 ))
  \u_uart/idx_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/idx_3/CLK ),
    .I(\u_uart/mstate[2]_idx[7]_select_72_OUT<3>_5568 ),
    .O(\u_uart/idx [3]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y55" ),
    .INIT ( 64'hFFFF540001000100 ))
  \u_uart/mstate[2]_idx[7]_select_72_OUT<3>  (
    .ADR0(\u_uart/mstate_FSM_FFd2_7956 ),
    .ADR3(\u_uart/mstate_FSM_FFd1_7957 ),
    .ADR1(N5),
    .ADR5(\u_uart/idx [3]),
    .ADR4(\u_uart/mstate[2]_idx[7]_select_72_OUT<0>1 ),
    .ADR2(\u_uart/idx[7]_code[2]_equal_60_o ),
    .O(\u_uart/mstate[2]_idx[7]_select_72_OUT<3>_5568 )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y55" ),
    .INIT ( 1'b0 ))
  \u_uart/idx_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/idx_2/CLK ),
    .I(\u_uart/mstate[2]_idx[7]_select_72_OUT<2>_5577 ),
    .O(\u_uart/idx [2]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y55" ),
    .INIT ( 64'hFFFF01000E000100 ))
  \u_uart/mstate[2]_idx[7]_select_72_OUT<2>  (
    .ADR2(\u_uart/mstate_FSM_FFd2_7956 ),
    .ADR3(\u_uart/mstate_FSM_FFd1_7957 ),
    .ADR0(N113_0),
    .ADR4(\u_uart/idx [2]),
    .ADR5(\u_uart/mstate[2]_idx[7]_select_72_OUT<0>1 ),
    .ADR1(\u_uart/idx[7]_code[2]_equal_60_o ),
    .O(\u_uart/mstate[2]_idx[7]_select_72_OUT<2>_5577 )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y55" ),
    .INIT ( 1'b0 ))
  \u_uart/idx_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/idx_0/CLK ),
    .I(\u_uart/mstate[2]_idx[7]_select_72_OUT<0> ),
    .O(\u_uart/idx [0]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y55" ),
    .INIT ( 64'hFF440000FF400404 ))
  \u_uart/mstate[2]_idx[7]_select_72_OUT<0>2  (
    .ADR0(\u_uart/mstate_FSM_FFd2_7956 ),
    .ADR1(\u_uart/mstate_FSM_FFd1_7957 ),
    .ADR2(\u_uart/u_core/tx_busy_7870 ),
    .ADR4(\u_uart/idx [0]),
    .ADR3(\u_uart/mstate[2]_idx[7]_select_72_OUT<0>1 ),
    .ADR5(\u_uart/idx[7]_code[2]_equal_60_o ),
    .O(\u_uart/mstate[2]_idx[7]_select_72_OUT<0> )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y55" ),
    .INIT ( 1'b0 ))
  \u_uart/idx_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/idx_1/CLK ),
    .I(\NlwBufferSignal_u_uart/idx_1/IN ),
    .O(\u_uart/idx [1]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y55" ),
    .INIT ( 64'h0000002200000022 ))
  \u_uart/idx[7]_code[2]_equal_60_o84  (
    .ADR5(1'b1),
    .ADR2(1'b1),
    .ADR4(\u_uart/idx [7]),
    .ADR1(\u_uart/idx [6]),
    .ADR3(\u_uart/idx [4]),
    .ADR0(\u_uart/idx[7]_code[2]_equal_60_o82_8348 ),
    .O(\u_uart/idx[7]_code[2]_equal_60_o )
  );
  X_BUF   \u_uart/idx_4_1/u_uart/idx_4_1_BMUX_Delay  (
    .I(\u_uart/hb_pend_pack_6 ),
    .O(\u_uart/hb_pend_8289 )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y56" ),
    .INIT ( 1'b0 ))
  \u_uart/idx_4_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/idx_4_1/CLK ),
    .I(\u_uart/mstate[2]_idx[7]_select_72_OUT<4>_7731 ),
    .O(\u_uart/idx_4_1_7811 ),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y56" ),
    .INIT ( 64'hC0C0C0C0F0F0E5F0 ))
  \u_uart/mstate[2]_idx[7]_select_72_OUT<4>  (
    .ADR0(\u_uart/u_core/tx_busy_7870 ),
    .ADR2(\u_uart/idx [4]),
    .ADR5(N7),
    .ADR3(\u_uart/Madd_idx[7]_GND_7_o_add_60_OUT_cy<3> ),
    .ADR1(\u_uart/mstate[2]_idx[7]_select_72_OUT<0>1 ),
    .ADR4(\u_uart/idx[7]_code[2]_equal_60_o ),
    .O(\u_uart/mstate[2]_idx[7]_select_72_OUT<4>_7731 )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y56" ),
    .INIT ( 1'b0 ))
  \u_uart/idx_1_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/idx_1_1/CLK ),
    .I(\u_uart/mstate[2]_idx[7]_select_72_OUT<1>_7730 ),
    .O(\u_uart/idx_1_1_7400 ),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y56" ),
    .INIT ( 64'hAA22AA22AB21AA22 ))
  \u_uart/mstate[2]_idx[7]_select_72_OUT<1>  (
    .ADR5(\u_uart/u_core/tx_busy_7870 ),
    .ADR0(\u_uart/idx [1]),
    .ADR4(\u_uart/idx [0]),
    .ADR1(N7),
    .ADR3(\u_uart/mstate[2]_idx[7]_select_72_OUT<0>1 ),
    .ADR2(\u_uart/idx[7]_code[2]_equal_60_o ),
    .O(\u_uart/mstate[2]_idx[7]_select_72_OUT<1>_7730 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y56" ),
    .INIT ( 64'hCDCCCDCCCDCCCDCC ))
  \u_uart/mstate[2]_idx[7]_select_72_OUT<0>11  (
    .ADR4(1'b1),
    .ADR2(\u_uart/hb_pend_8289 ),
    .ADR1(\u_uart/mstate_FSM_FFd2_7956 ),
    .ADR0(\u_uart/mstate_FSM_FFd1_7957 ),
    .ADR3(\u_uart/cq_empty ),
    .ADR5(1'b1),
    .O(\u_uart/mstate[2]_idx[7]_select_72_OUT<0>1 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X15Y56" ),
    .INIT ( 32'hFFFFE0F0 ))
  \u_uart/hb_pend_rstpot  (
    .ADR4(\u_uart/hb_pend_PWR_8_o_MUX_9428_o ),
    .ADR2(\u_uart/hb_pend_8289 ),
    .ADR1(\u_uart/mstate_FSM_FFd2_7956 ),
    .ADR0(\u_uart/mstate_FSM_FFd1_7957 ),
    .ADR3(\u_uart/cq_empty ),
    .O(\u_uart/hb_pend_rstpot_5619 )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y56" ),
    .INIT ( 1'b0 ))
  \u_uart/hb_pend  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/hb_pend/CLK ),
    .I(\u_uart/hb_pend_rstpot_5619 ),
    .O(\u_uart/hb_pend_pack_6 ),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y56" ),
    .INIT ( 64'hC000000000000000 ))
  \u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>6  (
    .ADR0(1'b1),
    .ADR5(\u_uart/hb_pend_PWR_8_o_MUX_9428_o_2 [27]),
    .ADR3(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>1_8310 ),
    .ADR2(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>2_8311 ),
    .ADR1(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>3_8312 ),
    .ADR4(\u_uart/hb_pend_PWR_8_o_MUX_9428_o<27>4_8313 ),
    .O(\u_uart/hb_pend_PWR_8_o_MUX_9428_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y57" ),
    .INIT ( 64'h8000000000000000 ))
  \u_uart/Madd_idx[7]_GND_7_o_add_60_OUT_cy<5>11  (
    .ADR4(\u_uart/idx [5]),
    .ADR5(\u_uart/idx [4]),
    .ADR2(\u_uart/idx [3]),
    .ADR3(\u_uart/idx [2]),
    .ADR1(\u_uart/idx [1]),
    .ADR0(\u_uart/idx [0]),
    .O(\u_uart/Madd_idx[7]_GND_7_o_add_60_OUT_cy<5> )
  );
  X_BUF   \u_uart/Madd_idx[7]_GND_7_o_add_60_OUT_cy<3>/u_uart/Madd_idx[7]_GND_7_o_add_60_OUT_cy<3>_BMUX_Delay  (
    .I(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT65_5634 ),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT65_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y58" ),
    .INIT ( 64'hC0000000C0000000 ))
  \u_uart/Madd_idx[7]_GND_7_o_add_60_OUT_cy<3>11  (
    .ADR0(1'b1),
    .ADR1(\u_uart/idx [1]),
    .ADR4(\u_uart/idx [0]),
    .ADR3(\u_uart/idx [2]),
    .ADR2(\u_uart/idx [3]),
    .ADR5(1'b1),
    .O(\u_uart/Madd_idx[7]_GND_7_o_add_60_OUT_cy<3> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X15Y58" ),
    .INIT ( 32'h3CFF3FFF ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT66  (
    .ADR0(1'b1),
    .ADR1(\u_uart/idx [1]),
    .ADR4(\u_uart/idx [0]),
    .ADR3(\u_uart/idx [2]),
    .ADR2(\u_uart/idx [3]),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT65_5634 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y58" ),
    .INIT ( 64'hBBFFFFFFFFFFFFFF ))
  \u_uart/mstate[2]_idx[7]_select_72_OUT<7>_SW0  (
    .ADR2(1'b1),
    .ADR3(\u_uart/idx [6]),
    .ADR0(\u_uart/u_core/tx_busy_7870 ),
    .ADR1(\u_uart/idx [5]),
    .ADR5(\u_uart/idx [4]),
    .ADR4(\u_uart/Madd_idx[7]_GND_7_o_add_60_OUT_cy<3> ),
    .O(N13)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y59" ),
    .INIT ( 64'h0FFF0FFF0FFF0FFF ))
  \u_uart/Msub_GND_7_o_GND_7_o_sub_38_OUT<5:0>_cy<1>11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .ADR2(\u_uart/idx [1]),
    .ADR3(\u_uart/idx [0]),
    .O(\u_uart/Msub_GND_7_o_GND_7_o_sub_38_OUT<5:0>_cy<1> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y59" ),
    .INIT ( 64'h000000000000000A ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT1631  (
    .ADR1(1'b1),
    .ADR0(\u_uart/idx_4_1_7811 ),
    .ADR2(\u_uart/code [1]),
    .ADR4(\u_uart/code<0>_0 ),
    .ADR3(\u_uart/code [2]),
    .ADR5(\u_uart/idx [5]),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT163 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y59" ),
    .INIT ( 64'h5510550000000000 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT52  (
    .ADR1(\u_uart/idx [5]),
    .ADR4(\u_uart/idx [3]),
    .ADR5(\u_uart/idx [2]),
    .ADR2(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT13_7513 ),
    .ADR0(\u_uart/Msub_GND_7_o_GND_7_o_sub_38_OUT<5:0>_cy<1> ),
    .ADR3(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT163 ),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT51_7553 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y60" ),
    .INIT ( 64'h0101FFDE0F0BF8D0 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT65  (
    .ADR4(\u_uart/idx [5]),
    .ADR2(\u_uart/idx [4]),
    .ADR0(\u_uart/idx [1]),
    .ADR1(\u_uart/idx [2]),
    .ADR3(\u_uart/idx [0]),
    .ADR5(\u_uart/idx [3]),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT64 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y60" ),
    .INIT ( 64'hFFFFFFFFFFFFFF55 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT51_SW2  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR0(\u_uart/code [1]),
    .ADR3(\u_uart/code<0>_0 ),
    .ADR5(\u_uart/code [2]),
    .ADR4(\u_uart/idx [0]),
    .O(N381)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y60" ),
    .INIT ( 64'h0000000000050051 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT51  (
    .ADR0(\u_uart/idx [5]),
    .ADR1(\u_uart/idx [1]),
    .ADR5(\u_uart/idx [4]),
    .ADR2(\u_uart/idx [3]),
    .ADR4(\u_uart/idx [2]),
    .ADR3(N381),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT5 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y4" ),
    .INIT ( 64'hEFCF40C0CFCFC0C0 ))
  \u_fifo_a2b/Mmux_rptr_n51  (
    .ADR4(\u_fifo_a2b/rptr [2]),
    .ADR1(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<2>_0 ),
    .ADR2(a2b_rd_en),
    .ADR3(\u_fifo_a2b/rd_empty121_7283 ),
    .ADR0(\u_fifo_a2b/rd_empty1241 ),
    .ADR5(N280),
    .O(\u_fifo_a2b/rptr_n [2])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y4" ),
    .INIT ( 64'hFFB3FF334C00CC00 ))
  \u_fifo_a2b/Mmux_rptr_n61  (
    .ADR5(\u_fifo_a2b/rptr [3]),
    .ADR3(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<3>_0 ),
    .ADR1(a2b_rd_en),
    .ADR0(\u_fifo_a2b/rd_empty121_7283 ),
    .ADR4(\u_fifo_a2b/rd_empty1241 ),
    .ADR2(N280),
    .O(\u_fifo_a2b/rptr_n [3])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y5" ),
    .INIT ( 64'hA5A5A5A5CCA533A5 ))
  \u_fifo_a2b/pop1_SW39  (
    .ADR0(\u_fifo_a2b/rptr [7]),
    .ADR2(\u_fifo_a2b/rptr [8]),
    .ADR4(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<7>_0 ),
    .ADR1(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<8>_0 ),
    .ADR3(a2b_rd_en),
    .ADR5(\u_fifo_a2b/rd_empty12 ),
    .O(N304)
  );
  X_FF #(
    .LOC ( "SLICE_X16Y5" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rptr_gray_r_7  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rptr_gray_r_7/CLK ),
    .I(\u_fifo_a2b/rptr_n[11]_GND_4_o_xor_25_OUT<7> ),
    .O(\u_fifo_a2b/rptr_gray [7]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y5" ),
    .INIT ( 64'h12B7333333333333 ))
  \u_fifo_a2b/Mxor_rptr_n[11]_GND_4_o_xor_25_OUT_7_xo<0>1  (
    .ADR0(\u_fifo_a2b/rptr [0]),
    .ADR2(\u_fifo_a2b/cptr_r[0] ),
    .ADR4(\u_fifo_a2b/rd_empty121_7283 ),
    .ADR1(N303),
    .ADR5(\u_fifo_a2b/rd_empty124_7285 ),
    .ADR3(N304),
    .O(\u_fifo_a2b/rptr_n[11]_GND_4_o_xor_25_OUT<7> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y5" ),
    .INIT ( 64'hA5CCA5A5A533A5A5 ))
  \u_fifo_a2b/pop1_SW37  (
    .ADR2(\u_fifo_a2b/rptr [7]),
    .ADR0(\u_fifo_a2b/rptr [6]),
    .ADR1(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<6>_0 ),
    .ADR5(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<7>_0 ),
    .ADR4(a2b_rd_en),
    .ADR3(\u_fifo_a2b/rd_empty12 ),
    .O(N301)
  );
  X_FF #(
    .LOC ( "SLICE_X16Y5" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rptr_gray_r_6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rptr_gray_r_6/CLK ),
    .I(\u_fifo_a2b/rptr_n[11]_GND_4_o_xor_25_OUT<6> ),
    .O(\u_fifo_a2b/rptr_gray [6]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y5" ),
    .INIT ( 64'h070F8F0F0D0F2F0F ))
  \u_fifo_a2b/Mxor_rptr_n[11]_GND_4_o_xor_25_OUT_6_xo<0>1  (
    .ADR5(\u_fifo_a2b/rptr [0]),
    .ADR1(\u_fifo_a2b/cptr_r[0] ),
    .ADR0(\u_fifo_a2b/rd_empty121_7283 ),
    .ADR2(N300),
    .ADR3(\u_fifo_a2b/rd_empty124_7285 ),
    .ADR4(N301),
    .O(\u_fifo_a2b/rptr_n[11]_GND_4_o_xor_25_OUT<6> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y6" ),
    .INIT ( 64'hEA2AFF00AAAAFF00 ))
  \u_fifo_a2b/Mmux_rptr_n21  (
    .ADR3(\u_fifo_a2b/rptr [10]),
    .ADR0(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<10>_0 ),
    .ADR4(a2b_rd_en),
    .ADR1(\u_fifo_a2b/rd_empty121_7283 ),
    .ADR5(\u_fifo_a2b/rd_empty124_7285 ),
    .ADR2(N280),
    .O(\u_fifo_a2b/rptr_n [10])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y6" ),
    .INIT ( 64'hFB08BB88BB88BB88 ))
  \u_fifo_a2b/Mmux_rptr_n121  (
    .ADR3(\u_fifo_a2b/rptr [9]),
    .ADR0(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<9>_0 ),
    .ADR1(a2b_rd_en),
    .ADR4(\u_fifo_a2b/rd_empty121_7283 ),
    .ADR5(\u_fifo_a2b/rd_empty1241 ),
    .ADR2(N280),
    .O(\u_fifo_a2b/rptr_n [9])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y7" ),
    .INIT ( 64'hFF0000FF9F90909F ))
  \u_fifo_a2b/pop1_SW43  (
    .ADR4(\u_fifo_a2b/rptr [10]),
    .ADR3(\u_fifo_a2b/rptr [9]),
    .ADR1(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<9>_0 ),
    .ADR0(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<10>_0 ),
    .ADR2(a2b_rd_en),
    .ADR5(\u_fifo_a2b/rd_empty12 ),
    .O(N310)
  );
  X_FF #(
    .LOC ( "SLICE_X16Y7" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rptr_gray_r_9  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rptr_gray_r_9/CLK ),
    .I(\u_fifo_a2b/rptr_n[11]_GND_4_o_xor_25_OUT<9> ),
    .O(\u_fifo_a2b/rptr_gray [9]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y7" ),
    .INIT ( 64'h007D00FF82FF00FF ))
  \u_fifo_a2b/Mxor_rptr_n[11]_GND_4_o_xor_25_OUT_9_xo<0>1  (
    .ADR1(\u_fifo_a2b/rptr [0]),
    .ADR2(\u_fifo_a2b/cptr_r[0] ),
    .ADR0(\u_fifo_a2b/rd_empty121_7283 ),
    .ADR3(N309),
    .ADR4(\u_fifo_a2b/rd_empty124_7285 ),
    .ADR5(N310),
    .O(\u_fifo_a2b/rptr_n[11]_GND_4_o_xor_25_OUT<9> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y7" ),
    .INIT ( 64'hF0B80F8BF0740F47 ))
  \u_fifo_a2b/pop1_SW41  (
    .ADR2(\u_fifo_a2b/rptr [8]),
    .ADR4(\u_fifo_a2b/rptr [9]),
    .ADR0(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<8>_0 ),
    .ADR5(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<9>_0 ),
    .ADR1(a2b_rd_en),
    .ADR3(\u_fifo_a2b/rd_empty12 ),
    .O(N307)
  );
  X_FF #(
    .LOC ( "SLICE_X16Y7" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rptr_gray_r_8  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rptr_gray_r_8/CLK ),
    .I(\u_fifo_a2b/rptr_n[11]_GND_4_o_xor_25_OUT<8> ),
    .O(\u_fifo_a2b/rptr_gray [8]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y7" ),
    .INIT ( 64'h060F9F0F0F0F0F0F ))
  \u_fifo_a2b/Mxor_rptr_n[11]_GND_4_o_xor_25_OUT_8_xo<0>1  (
    .ADR0(\u_fifo_a2b/rptr [0]),
    .ADR1(\u_fifo_a2b/cptr_r[0] ),
    .ADR5(\u_fifo_a2b/rd_empty121_7283 ),
    .ADR2(N306),
    .ADR3(\u_fifo_a2b/rd_empty124_7285 ),
    .ADR4(N307),
    .O(\u_fifo_a2b/rptr_n[11]_GND_4_o_xor_25_OUT<8> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y22" ),
    .INIT ( 64'hE4F0CCF0CCF0CCF0 ))
  \u_fifo_b2a/Mmux_rptr_n121  (
    .ADR2(\u_fifo_b2a/rptr [9]),
    .ADR1(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<9>_0 ),
    .ADR3(b2a_rd_en),
    .ADR0(\u_fifo_b2a/rd_empty121_7418 ),
    .ADR5(\u_fifo_b2a/rd_empty1241 ),
    .ADR4(N275),
    .O(\u_fifo_b2a/rptr_n [9])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y22" ),
    .INIT ( 64'hF0B8B8B8B8B8B8B8 ))
  \u_fifo_b2a/Mmux_rptr_n111  (
    .ADR2(\u_fifo_b2a/rptr [8]),
    .ADR0(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<8>_0 ),
    .ADR1(b2a_rd_en),
    .ADR3(\u_fifo_b2a/rd_empty121_7418 ),
    .ADR4(\u_fifo_b2a/rd_empty1241 ),
    .ADR5(N275),
    .O(\u_fifo_b2a/rptr_n [8])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y23" ),
    .INIT ( 64'h9669699669969669 ))
  \u_fifo_b2a/Mxor_cptr_r<0>_xo<0>1_1  (
    .ADR3(\u_fifo_b2a/cg_s2 [3]),
    .ADR1(\u_fifo_b2a/cg_s2 [4]),
    .ADR2(\u_fifo_b2a/cg_s2 [5]),
    .ADR0(\u_fifo_b2a/cg_s2 [6]),
    .ADR4(N119),
    .ADR5(\u_fifo_b2a/cptr_r[7] ),
    .O(\u_fifo_b2a/Mxor_cptr_r<0>_xo<0>1_7509 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y23" ),
    .INIT ( 64'hFF00FF00FF40BF00 ))
  \u_fifo_b2a/pop1_SW0  (
    .ADR3(\u_fifo_b2a/rptr [0]),
    .ADR1(\u_tx_a/state_FSM_FFd2_7379 ),
    .ADR2(\u_tx_a/state_FSM_FFd1_7378 ),
    .ADR5(\u_tx_a/bcnt_FSM_FFd2_7642 ),
    .ADR0(\u_tx_a/bcnt_FSM_FFd1_7641 ),
    .ADR4(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<0>_0 ),
    .O(N173)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y23" ),
    .INIT ( 64'hFFAAAA00FF00FF00 ))
  \u_fifo_b2a/Mmux_rptr_n13_SW0  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR4(\u_fifo_b2a/rptr [0]),
    .ADR3(\u_fifo_b2a/rptr[11]_GND_4_o_add_23_OUT<0>_0 ),
    .ADR0(\u_fifo_b2a/Mxor_cptr_r<0>_xo<0>1_7509 ),
    .ADR5(\u_fifo_b2a/rd_empty12 ),
    .O(N352)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y23" ),
    .INIT ( 64'hFCAA0CAAAAAAAAAA ))
  \u_fifo_b2a/Mmux_rptr_n13  (
    .ADR1(\u_fifo_b2a/rptr [0]),
    .ADR2(b2a_rd_en),
    .ADR0(N173),
    .ADR3(\u_fifo_b2a/rd_empty121_7418 ),
    .ADR5(\u_fifo_b2a/rd_empty1241 ),
    .ADR4(N352),
    .O(\u_fifo_b2a/rptr_n [0])
  );
  X_FF #(
    .LOC ( "SLICE_X16Y31" ),
    .INIT ( 1'b0 ))
  \u_rx_a/shreg_7  (
    .CE(\u_rx_a/_n0171_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/shreg_7/CLK ),
    .I(\NlwBufferSignal_u_rx_a/shreg_7/IN ),
    .O(\u_rx_a/shreg [7]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X16Y31" ),
    .INIT ( 1'b0 ))
  \u_rx_a/shreg_6  (
    .CE(\u_rx_a/_n0171_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/shreg_6/CLK ),
    .I(\NlwBufferSignal_u_rx_a/shreg_6/IN ),
    .O(\u_rx_a/shreg [6]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_BUF   \u_rx_a/m_tvalid/u_rx_a/m_tvalid_DMUX_Delay  (
    .I(\u_rx_a/crs_r_crs_prev_AND_2_o_pack_13 ),
    .O(\u_rx_a/crs_r_crs_prev_AND_2_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y34" ),
    .INIT ( 64'h22AAAAAA22AAAAAA ))
  \u_rx_a/_n0160<0>1  (
    .ADR2(1'b1),
    .ADR0(\u_rx_a/state_FSM_FFd2_7366 ),
    .ADR4(\u_rx_a/crs_r_7413 ),
    .ADR1(\u_rx_a/rxd_r [1]),
    .ADR3(\u_rx_a/rxd_r [0]),
    .ADR5(1'b1),
    .O(\u_rx_a/_n0160 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y34" ),
    .INIT ( 32'h00000F0F ))
  \u_rx_a/crs_r_crs_prev_AND_2_o1  (
    .ADR2(\u_rx_a/crs_prev_7412 ),
    .ADR1(1'b1),
    .ADR4(\u_rx_a/crs_r_7413 ),
    .ADR3(1'b1),
    .ADR0(1'b1),
    .O(\u_rx_a/crs_r_crs_prev_AND_2_o_pack_13 )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y34" ),
    .INIT ( 1'b0 ))
  \u_rx_a/m_tvalid  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_rx_a/m_tvalid/CLK ),
    .I(\u_rx_a/state[1]_GND_3_o_Mux_40_o ),
    .O(\u_rx_a/m_tvalid_7480 ),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y34" ),
    .INIT ( 64'h0A0800000A000000 ))
  \u_rx_a/state[1]_GND_3_o_Mux_40_o1  (
    .ADR4(\u_rx_a/hold_v_7921 ),
    .ADR2(\u_rx_a/state_FSM_FFd2_7366 ),
    .ADR0(\u_rx_a/state_FSM_FFd1_7367 ),
    .ADR5(\u_rx_a/dcnt [0]),
    .ADR1(\u_rx_a/dcnt [1]),
    .ADR3(\u_rx_a/crs_r_crs_prev_AND_2_o ),
    .O(\u_rx_a/state[1]_GND_3_o_Mux_40_o )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y34" ),
    .INIT ( 1'b0 ))
  \u_rx_a/hold_v  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_rx_a/hold_v/CLK ),
    .I(\u_rx_a/hold_v_rstpot_5833 ),
    .O(\u_rx_a/hold_v_7921 ),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y34" ),
    .INIT ( 64'hCFCF0300AAAA0000 ))
  \u_rx_a/hold_v_rstpot  (
    .ADR5(\u_rx_a/state_FSM_FFd1_7367 ),
    .ADR2(\u_rx_a/crs_r_crs_prev_AND_2_o ),
    .ADR1(\u_rx_a/state_FSM_FFd2_7366 ),
    .ADR4(\u_rx_a/hold_v_7921 ),
    .ADR3(N482_0),
    .ADR0(\u_rx_a/_n0160 ),
    .O(\u_rx_a/hold_v_rstpot_5833 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y34" ),
    .INIT ( 64'h0080008000800000 ))
  \u_rx_a/_n0178_inv1  (
    .ADR0(\u_rx_a/dcnt [1]),
    .ADR3(\u_rx_a/state_FSM_FFd2_7366 ),
    .ADR2(\u_rx_a/dcnt [0]),
    .ADR1(\u_rx_a/state_FSM_FFd1_7367 ),
    .ADR5(\u_rx_a/crs_prev_7412 ),
    .ADR4(\u_rx_a/crs_r_7413 ),
    .O(\u_rx_a/_n0178_inv )
  );
  X_BUF   \u_rx_a/_n0213_inv4/u_rx_a/_n0213_inv4_AMUX_Delay  (
    .I(N482),
    .O(N482_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y35" ),
    .INIT ( 64'h8800880088008800 ))
  \u_rx_a/_n0213_inv4  (
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR1(\u_rx_a/dcnt [0]),
    .ADR0(\u_rx_a/dcnt [1]),
    .ADR3(\u_rx_a/state_FSM_FFd1_7367 ),
    .ADR5(1'b1),
    .O(\u_rx_a/_n0213_inv4_7369 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y35" ),
    .INIT ( 32'h88888888 ))
  \u_rx_a/hold_v_rstpot_SW0  (
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR1(\u_rx_a/dcnt [0]),
    .ADR0(\u_rx_a/dcnt [1]),
    .ADR4(1'b1),
    .O(N482)
  );
  X_FF #(
    .LOC ( "SLICE_X16Y38" ),
    .INIT ( 1'b0 ))
  \u_rx_a/m_tindex_3  (
    .CE(\u_rx_a/state[1]_GND_3_o_Mux_40_o ),
    .CLK(\NlwBufferSignal_u_rx_a/m_tindex_3/CLK ),
    .I(\NlwBufferSignal_u_rx_a/m_tindex_3/IN ),
    .O(\u_rx_a/m_tindex [3]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X16Y38" ),
    .INIT ( 1'b0 ))
  \u_rx_a/m_tindex_2  (
    .CE(\u_rx_a/state[1]_GND_3_o_Mux_40_o ),
    .CLK(\NlwBufferSignal_u_rx_a/m_tindex_2/CLK ),
    .I(\NlwBufferSignal_u_rx_a/m_tindex_2/IN ),
    .O(\u_rx_a/m_tindex [2]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X16Y38" ),
    .INIT ( 1'b0 ))
  \u_rx_a/m_tindex_1  (
    .CE(\u_rx_a/state[1]_GND_3_o_Mux_40_o ),
    .CLK(\NlwBufferSignal_u_rx_a/m_tindex_1/CLK ),
    .I(\NlwBufferSignal_u_rx_a/m_tindex_1/IN ),
    .O(\u_rx_a/m_tindex [1]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X16Y38" ),
    .INIT ( 1'b0 ))
  \u_rx_a/m_tindex_0  (
    .CE(\u_rx_a/state[1]_GND_3_o_Mux_40_o ),
    .CLK(\NlwBufferSignal_u_rx_a/m_tindex_0/CLK ),
    .I(\NlwBufferSignal_u_rx_a/m_tindex_0/IN ),
    .O(\u_rx_a/m_tindex [0]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_BUF   \N362/N362_CMUX_Delay  (
    .I(N362),
    .O(N362_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y51" ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT313_SW0_SW1  (
    .IA(N498),
    .IB(N499),
    .O(N362),
    .SEL(\u_uart/idx [1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y51" ),
    .INIT ( 64'hAAFBFFABFBF5ABA5 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT313_SW0_SW1_F  (
    .ADR2(\u_uart/idx [4]),
    .ADR4(\u_uart/idx [2]),
    .ADR5(\u_uart/idx [0]),
    .ADR3(\u_uart/idx [3]),
    .ADR0(\u_uart/idx [5]),
    .ADR1(\u_uart/code [2]),
    .O(N498)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y51" ),
    .INIT ( 64'hCFCFD9D9E8E9F9F9 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT313_SW0_SW1_G  (
    .ADR2(\u_uart/idx [4]),
    .ADR1(\u_uart/idx [5]),
    .ADR5(\u_uart/idx [2]),
    .ADR0(\u_uart/idx [3]),
    .ADR4(\u_uart/idx [0]),
    .ADR3(\u_uart/code [2]),
    .O(N499)
  );
  X_BUF   \u_uart/u_core/tx_out/u_uart/u_core/tx_out_CMUX_Delay  (
    .I(N427_pack_5),
    .O(N427)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y56" ))
  \u_uart/u_core/tx_out_rstpot_SW0  (
    .IA(N492),
    .IB(N493),
    .O(N427_pack_5),
    .SEL(\u_uart/u_core/bitcnt [0])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y56" ),
    .INIT ( 64'hFFA0FFA0FFC0FFC0 ))
  \u_uart/u_core/tx_out_rstpot_SW0_F  (
    .ADR4(1'b1),
    .ADR2(\u_uart/u_core/bitcnt [1]),
    .ADR5(\u_uart/u_core/bitcnt [2]),
    .ADR0(\u_uart/u_core/sh [7]),
    .ADR1(\u_uart/u_core/sh [3]),
    .ADR3(\u_uart/u_core/bitcnt [3]),
    .O(N492)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y56" ),
    .INIT ( 64'hAAAAFAF000000A00 ))
  \u_uart/u_core/tx_out_rstpot_SW0_G  (
    .ADR1(1'b1),
    .ADR5(\u_uart/u_core/sh [0]),
    .ADR4(\u_uart/u_core/bitcnt [2]),
    .ADR0(\u_uart/u_core/bitcnt [1]),
    .ADR2(\u_uart/u_core/bitcnt [3]),
    .ADR3(\u_uart/u_core/sh [4]),
    .O(N493)
  );
  X_FF #(
    .LOC ( "SLICE_X16Y56" ),
    .INIT ( 1'b1 ))
  \u_uart/u_core/tx_out  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/u_core/tx_out/CLK ),
    .I(\u_uart/u_core/tx_out_rstpot_5892 ),
    .O(\u_uart/u_core/tx_out_8248 ),
    .SET(\u_uart/rst_n_100_inv ),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y56" ),
    .INIT ( 64'hF5F5F505C5C5F505 ))
  \u_uart/u_core/tx_out_rstpot  (
    .ADR2(\u_uart/u_core/tx_busy_7870 ),
    .ADR4(\u_uart/u_core/GND_8_o_GND_8_o_equal_4_o ),
    .ADR5(N427),
    .ADR3(\u_uart/u_core/tx_out_8248 ),
    .ADR1(\u_uart/u_core/Mmux_tx_out_tx_start_MUX_249_o15_0 ),
    .ADR0(\u_uart/tx_start_7935 ),
    .O(\u_uart/u_core/tx_out_rstpot_5892 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y60" ),
    .INIT ( 64'hFEFDFEFFFFFFFFFF ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT68_SW1  (
    .ADR3(\u_uart/idx [3]),
    .ADR4(\u_uart/idx [1]),
    .ADR0(\u_uart/idx [2]),
    .ADR5(\u_uart/code [2]),
    .ADR2(\u_uart/idx [4]),
    .ADR1(\u_uart/idx [5]),
    .O(N223)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y5" ),
    .INIT ( 64'hF0F099F00F0F990F ))
  \u_fifo_a2b/pop1_SW35  (
    .ADR5(\u_fifo_a2b/rptr [6]),
    .ADR2(\u_fifo_a2b/rptr [5]),
    .ADR0(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<5>_0 ),
    .ADR1(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<6>_0 ),
    .ADR3(a2b_rd_en),
    .ADR4(\u_fifo_a2b/rd_empty12 ),
    .O(N298)
  );
  X_FF #(
    .LOC ( "SLICE_X17Y5" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rptr_gray_r_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rptr_gray_r_5/CLK ),
    .I(\u_fifo_a2b/rptr_n[11]_GND_4_o_xor_25_OUT<5> ),
    .O(\u_fifo_a2b/rptr_gray [5]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y5" ),
    .INIT ( 64'h13313333B33B3333 ))
  \u_fifo_a2b/Mxor_rptr_n[11]_GND_4_o_xor_25_OUT_5_xo<0>1  (
    .ADR2(\u_fifo_a2b/rptr [0]),
    .ADR3(\u_fifo_a2b/cptr_r[0] ),
    .ADR4(\u_fifo_a2b/rd_empty121_7283 ),
    .ADR1(N297),
    .ADR0(\u_fifo_a2b/rd_empty124_7285 ),
    .ADR5(N298),
    .O(\u_fifo_a2b/rptr_n[11]_GND_4_o_xor_25_OUT<5> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y5" ),
    .INIT ( 64'h99F09999990F9999 ))
  \u_fifo_a2b/pop1_SW33  (
    .ADR0(\u_fifo_a2b/rptr [4]),
    .ADR1(\u_fifo_a2b/rptr [5]),
    .ADR5(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<4>_0 ),
    .ADR2(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<5>_0 ),
    .ADR4(a2b_rd_en),
    .ADR3(\u_fifo_a2b/rd_empty12 ),
    .O(N295)
  );
  X_FF #(
    .LOC ( "SLICE_X17Y5" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rptr_gray_r_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rptr_gray_r_4/CLK ),
    .I(\u_fifo_a2b/rptr_n[11]_GND_4_o_xor_25_OUT<4> ),
    .O(\u_fifo_a2b/rptr_gray [4]),
    .RST(\u_fifo_a2b/rrst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y5" ),
    .INIT ( 64'h1555D55545557555 ))
  \u_fifo_a2b/Mxor_rptr_n[11]_GND_4_o_xor_25_OUT_4_xo<0>1  (
    .ADR5(\u_fifo_a2b/rptr [0]),
    .ADR1(\u_fifo_a2b/cptr_r[0] ),
    .ADR3(\u_fifo_a2b/rd_empty121_7283 ),
    .ADR0(N294),
    .ADR2(\u_fifo_a2b/rd_empty124_7285 ),
    .ADR4(N295),
    .O(\u_fifo_a2b/rptr_n[11]_GND_4_o_xor_25_OUT<4> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y7" ),
    .INIT ( 64'hFA5050FAAF0505AF ))
  \u_fifo_a2b/pop1_SW40  (
    .ADR1(1'b1),
    .ADR2(\u_fifo_a2b/rptr [8]),
    .ADR5(\u_fifo_a2b/rptr [9]),
    .ADR4(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<8>_0 ),
    .ADR3(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<9>_0 ),
    .ADR0(a2b_rd_en),
    .O(N306)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y7" ),
    .INIT ( 64'hF5A0A0F55F0A0A5F ))
  \u_fifo_a2b/pop1_SW42  (
    .ADR1(1'b1),
    .ADR3(\u_fifo_a2b/rptr [10]),
    .ADR4(\u_fifo_a2b/rptr [9]),
    .ADR5(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<9>_0 ),
    .ADR2(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<10>_0 ),
    .ADR0(a2b_rd_en),
    .O(N309)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y23" ),
    .INIT ( 64'hF000F00000F000F0 ))
  \u_fifo_b2a/rd_empty125_SW5  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(\u_fifo_b2a/rptr [0]),
    .ADR5(\u_fifo_b2a/Mxor_cptr_r<0>_xo<0>1_7509 ),
    .ADR2(\u_fifo_b2a/rd_empty1211 ),
    .O(N275)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y23" ),
    .INIT ( 64'hF1F31133F3F33333 ))
  \u_tx_a/Mmux_state[1]_GND_5_o_wide_mux_25_OUT13  (
    .ADR1(\u_tx_a/state_FSM_FFd1_7378 ),
    .ADR2(\u_tx_a/state_FSM_FFd2_7379 ),
    .ADR4(\u_tx_a/Mmux_state[1]_GND_5_o_wide_mux_25_OUT11_7640 ),
    .ADR0(\u_fifo_b2a/rd_empty121_7418 ),
    .ADR3(\u_fifo_b2a/rd_empty124_7572 ),
    .ADR5(N275),
    .O(\u_tx_a/state[1]_GND_5_o_wide_mux_25_OUT<0> )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y33" ),
    .INIT ( 1'b0 ))
  \u_rx_a/crs_prev  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_rx_a/crs_prev/CLK ),
    .I(\NlwBufferSignal_u_rx_a/crs_prev/IN ),
    .O(\u_rx_a/crs_prev_7412 ),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_BUF   \u_rx_a/state_FSM_FFd2/u_rx_a/state_FSM_FFd2_DMUX_Delay  (
    .I(\u_rx_a/m_tlast_5978 ),
    .O(\u_rx_a/m_tlast_0 )
  );
  X_BUF   \u_rx_a/state_FSM_FFd2/u_rx_a/state_FSM_FFd2_BMUX_Delay  (
    .I(\u_rx_a/_n0167_inv ),
    .O(\u_rx_a/_n0167_inv_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y34" ),
    .INIT ( 64'h0000AAA00000AAA0 ))
  \u_rx_a/_n0171_inv1  (
    .ADR1(1'b1),
    .ADR0(\u_rx_a/state_FSM_FFd1_7367 ),
    .ADR4(\u_rx_a/state_FSM_FFd2_7366 ),
    .ADR2(\u_rx_a/crs_prev_7412 ),
    .ADR3(\u_rx_a/crs_r_7413 ),
    .ADR5(1'b1),
    .O(\u_rx_a/_n0171_inv )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X17Y34" ),
    .INIT ( 32'h00000008 ))
  \u_rx_a/Mmux_state[1]_GND_3_o_Mux_41_o11  (
    .ADR1(\u_rx_a/hold_v_7921 ),
    .ADR0(\u_rx_a/state_FSM_FFd1_7367 ),
    .ADR4(\u_rx_a/state_FSM_FFd2_7366 ),
    .ADR2(\u_rx_a/crs_prev_7412 ),
    .ADR3(\u_rx_a/crs_r_7413 ),
    .O(\u_rx_a/state[1]_GND_3_o_Mux_41_o )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y34" ),
    .INIT ( 1'b0 ))
  \u_rx_a/m_tlast  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_rx_a/m_tlast/CLK ),
    .I(\u_rx_a/state[1]_GND_3_o_Mux_41_o ),
    .O(\u_rx_a/m_tlast_5978 ),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X17Y34" ),
    .INIT ( 1'b0 ))
  \u_rx_a/state_FSM_FFd2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_rx_a/state_FSM_FFd2/CLK ),
    .I(\u_rx_a/state_FSM_FFd2-In ),
    .O(\u_rx_a/state_FSM_FFd2_7366 ),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y34" ),
    .INIT ( 64'h00C4000000C40000 ))
  \u_rx_a/state_FSM_FFd2-In1  (
    .ADR4(\u_rx_a/crs_r_7413 ),
    .ADR1(\u_rx_a/rxd_r [0]),
    .ADR3(\u_rx_a/rxd_r [1]),
    .ADR2(\u_rx_a/state_FSM_FFd2_7366 ),
    .ADR0(\u_rx_a/state_FSM_FFd1_7367 ),
    .ADR5(1'b1),
    .O(\u_rx_a/state_FSM_FFd2-In )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X17Y34" ),
    .INIT ( 32'h4F0F0F0F ))
  \u_rx_a/_n0167_inv1  (
    .ADR4(\u_rx_a/crs_r_7413 ),
    .ADR1(\u_rx_a/rxd_r [0]),
    .ADR3(\u_rx_a/rxd_r [1]),
    .ADR2(\u_rx_a/state_FSM_FFd2_7366 ),
    .ADR0(\u_rx_a/state_FSM_FFd1_7367 ),
    .O(\u_rx_a/_n0167_inv )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y34" ),
    .INIT ( 1'b0 ))
  \u_rx_a/state_FSM_FFd1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_rx_a/state_FSM_FFd1/CLK ),
    .I(\u_rx_a/state_FSM_FFd1-In ),
    .O(\u_rx_a/state_FSM_FFd1_7367 ),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y34" ),
    .INIT ( 64'hFF80FF00AA80AA00 ))
  \u_rx_a/state_FSM_FFd1-In1  (
    .ADR0(\u_rx_a/crs_r_7413 ),
    .ADR5(\u_rx_a/crs_prev_7412 ),
    .ADR1(\u_rx_a/state_FSM_FFd2_7366 ),
    .ADR3(\u_rx_a/state_FSM_FFd1_7367 ),
    .ADR2(\u_rx_a/rxd_r [1]),
    .ADR4(\u_rx_a/rxd_r [0]),
    .O(\u_rx_a/state_FSM_FFd1-In )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y38" ),
    .INIT ( 1'b0 ))
  \u_rx_a/hold_i_3  (
    .CE(\u_rx_a/_n0178_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/hold_i_3/CLK ),
    .I(\NlwBufferSignal_u_rx_a/hold_i_3/IN ),
    .O(\u_rx_a/hold_i [3]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X17Y38" ),
    .INIT ( 1'b0 ))
  \u_rx_a/hold_i_2  (
    .CE(\u_rx_a/_n0178_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/hold_i_2/CLK ),
    .I(\NlwBufferSignal_u_rx_a/hold_i_2/IN ),
    .O(\u_rx_a/hold_i [2]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X17Y38" ),
    .INIT ( 1'b0 ))
  \u_rx_a/hold_i_1  (
    .CE(\u_rx_a/_n0178_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/hold_i_1/CLK ),
    .I(\NlwBufferSignal_u_rx_a/hold_i_1/IN ),
    .O(\u_rx_a/hold_i [1]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X17Y38" ),
    .INIT ( 1'b0 ))
  \u_rx_a/hold_i_0  (
    .CE(\u_rx_a/_n0178_inv ),
    .CLK(\NlwBufferSignal_u_rx_a/hold_i_0/CLK ),
    .I(\NlwBufferSignal_u_rx_a/hold_i_0/IN ),
    .O(\u_rx_a/hold_i [0]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y41" ),
    .INIT ( 64'h7FFFFFFFFFFFFFFF ))
  \u_rx_a/_n0213_inv2  (
    .ADR4(\u_rx_a/bcnt [2]),
    .ADR5(\u_rx_a/bcnt [3]),
    .ADR3(\u_rx_a/bcnt [1]),
    .ADR2(\u_rx_a/bcnt [15]),
    .ADR0(\u_rx_a/bcnt [14]),
    .ADR1(\u_rx_a/bcnt [13]),
    .O(\u_rx_a/_n0213_inv2_8508 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y41" ),
    .INIT ( 64'h7FFFFFFFFFFFFFFF ))
  \u_rx_a/_n0213_inv1  (
    .ADR1(\u_rx_a/bcnt [8]),
    .ADR3(\u_rx_a/bcnt [9]),
    .ADR5(\u_rx_a/bcnt [7]),
    .ADR4(\u_rx_a/bcnt [6]),
    .ADR2(\u_rx_a/bcnt [5]),
    .ADR0(\u_rx_a/bcnt [4]),
    .O(\u_rx_a/_n0213_inv1_8507 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y41" ),
    .INIT ( 64'hFFDFFFFFFFFFFFFF ))
  \u_rx_a/_n0213_inv3  (
    .ADR0(\u_rx_a/bcnt [0]),
    .ADR5(\u_rx_a/bcnt [10]),
    .ADR4(\u_rx_a/bcnt [12]),
    .ADR2(\u_rx_a/bcnt [11]),
    .ADR3(\u_rx_a/_n0213_inv1_8507 ),
    .ADR1(\u_rx_a/_n0213_inv2_8508 ),
    .O(\u_rx_a/_n0213_inv3_8506 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y41" ),
    .INIT ( 64'h0404370404040404 ))
  \u_rx_a/_n0213_inv5  (
    .ADR1(\u_rx_a/state_FSM_FFd2_7366 ),
    .ADR0(\u_rx_a/state_FSM_FFd1_7367 ),
    .ADR2(\u_rx_a/_n0160 ),
    .ADR5(\u_rx_a/_n0213_inv4_7369 ),
    .ADR4(\u_rx_a/crs_r_crs_prev_AND_2_o ),
    .ADR3(\u_rx_a/_n0213_inv3_8506 ),
    .O(\u_rx_a/_n0213_inv )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y51" ),
    .INIT ( 64'h7953FFFFFFFFF9F3 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT39_SW2  (
    .ADR5(\u_uart/code [1]),
    .ADR4(\u_uart/code<0>_0 ),
    .ADR1(\u_uart/idx [1]),
    .ADR0(\u_uart/idx [0]),
    .ADR3(\u_uart/idx [2]),
    .ADR2(\u_uart/idx [3]),
    .O(N433)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y51" ),
    .INIT ( 64'h0000000030033003 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT39  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR1(\u_uart/code [2]),
    .ADR3(\u_uart/idx [5]),
    .ADR2(\u_uart/idx [4]),
    .ADR5(N433),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT39_7746 )
  );
  X_BUF   \u_uart/Sh147312/u_uart/Sh147312_BMUX_Delay  (
    .I(\u_uart/Sh1472821_pack_6 ),
    .O(\u_uart/Sh1472821 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y53" ),
    .INIT ( 64'h0005050005050000 ))
  \u_uart/Sh1473121  (
    .ADR1(1'b1),
    .ADR3(\u_uart/idx [1]),
    .ADR5(\u_uart/idx [0]),
    .ADR4(\u_uart/idx [2]),
    .ADR2(\u_uart/idx [4]),
    .ADR0(\u_uart/idx [3]),
    .O(\u_uart/Sh147312 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y53" ),
    .INIT ( 64'hFF0000FFFF0000FF ))
  \u_uart/Msub_GND_7_o_GND_7_o_sub_38_OUT<5:0>_xor<1>11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\u_uart/idx [0]),
    .ADR4(\u_uart/idx [1]),
    .ADR5(1'b1),
    .O(\u_uart/GND_7_o_GND_7_o_sub_38_OUT<1>1 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X17Y53" ),
    .INIT ( 32'h80010101 ))
  \u_uart/Sh14728211  (
    .ADR1(\u_uart/idx [2]),
    .ADR0(\u_uart/idx [4]),
    .ADR2(\u_uart/idx [3]),
    .ADR3(\u_uart/idx [0]),
    .ADR4(\u_uart/idx [1]),
    .O(\u_uart/Sh1472821_pack_6 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y53" ),
    .INIT ( 64'hFAFEAAAAEEEEAAAA ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT43  (
    .ADR4(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT12_7535 ),
    .ADR1(\u_uart/Sh147312 ),
    .ADR3(\u_uart/GND_7_o_GND_7_o_sub_38_OUT<1>1 ),
    .ADR5(\u_uart/GND_7_o_GND_7_o_sub_38_OUT<5>1 ),
    .ADR2(\u_uart/Sh1472821 ),
    .ADR0(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT41_0 ),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT42_7953 )
  );
  X_BUF   \u_uart/mstate_FSM_FFd2/u_uart/mstate_FSM_FFd2_BMUX_Delay  (
    .I(\u_uart/GND_7_o_tx_busy_MUX_9398_o_pack_7 ),
    .O(\u_uart/GND_7_o_tx_busy_MUX_9398_o )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y56" ),
    .INIT ( 1'b0 ))
  \u_uart/mstate_FSM_FFd2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/mstate_FSM_FFd2/CLK ),
    .I(\u_uart/mstate_FSM_FFd2-In ),
    .O(\u_uart/mstate_FSM_FFd2_7956 ),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y56" ),
    .INIT ( 64'h7777777737043737 ))
  \u_uart/mstate_FSM_FFd2-In1  (
    .ADR1(\u_uart/mstate_FSM_FFd1_7957 ),
    .ADR4(\u_uart/cq_empty ),
    .ADR3(\u_uart/hb_pend_8289 ),
    .ADR5(\u_uart/mstate_FSM_FFd2_7956 ),
    .ADR0(\u_uart/u_core/tx_busy_7870 ),
    .ADR2(\u_uart/idx[7]_code[2]_equal_60_o ),
    .O(\u_uart/mstate_FSM_FFd2-In )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y56" ),
    .INIT ( 1'b0 ))
  \u_uart/mstate_FSM_FFd1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/mstate_FSM_FFd1/CLK ),
    .I(\u_uart/mstate_FSM_FFd1-In ),
    .O(\u_uart/mstate_FSM_FFd1_7957 ),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y56" ),
    .INIT ( 64'hFCFC0404FCFC0404 ))
  \u_uart/mstate_FSM_FFd1-In1  (
    .ADR3(1'b1),
    .ADR1(\u_uart/mstate_FSM_FFd2_7956 ),
    .ADR2(\u_uart/u_core/tx_busy_7870 ),
    .ADR4(\u_uart/mstate_FSM_FFd1_7957 ),
    .ADR0(\u_uart/tx_start_7935 ),
    .ADR5(1'b1),
    .O(\u_uart/mstate_FSM_FFd1-In )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X17Y56" ),
    .INIT ( 32'h00000404 ))
  \u_uart/GND_7_o_tx_busy_MUX_9398_o1  (
    .ADR3(1'b1),
    .ADR1(\u_uart/mstate_FSM_FFd2_7956 ),
    .ADR2(\u_uart/u_core/tx_busy_7870 ),
    .ADR4(\u_uart/mstate_FSM_FFd1_7957 ),
    .ADR0(\u_uart/tx_start_7935 ),
    .O(\u_uart/GND_7_o_tx_busy_MUX_9398_o_pack_7 )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y56" ),
    .INIT ( 1'b0 ))
  \u_uart/tx_start  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/tx_start/CLK ),
    .I(\NlwBufferSignal_u_uart/tx_start/IN ),
    .O(\u_uart/tx_start_7935 ),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y56" ),
    .INIT ( 64'hFF55FF55FF55FF55 ))
  \u_uart/mstate[2]_idx[7]_select_72_OUT<4>_SW0  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(1'b1),
    .ADR0(\u_uart/mstate_FSM_FFd1_7957 ),
    .ADR3(\u_uart/mstate_FSM_FFd2_7956 ),
    .O(N7)
  );
  X_FF #(
    .LOC ( "SLICE_X17Y57" ),
    .INIT ( 1'b1 ))
  \u_uart/u_core/sh_7  (
    .CE(\u_uart/u_core/_n0061_inv_0 ),
    .CLK(\NlwBufferSignal_u_uart/u_core/sh_7/CLK ),
    .I(\NlwBufferSignal_u_uart/u_core/sh_7/IN ),
    .O(\u_uart/u_core/sh [7]),
    .SET(\u_uart/rst_n_100_inv ),
    .RST(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X17Y57" ),
    .INIT ( 1'b1 ))
  \u_uart/u_core/sh_6  (
    .CE(\u_uart/u_core/_n0061_inv_0 ),
    .CLK(\NlwBufferSignal_u_uart/u_core/sh_6/CLK ),
    .I(\NlwBufferSignal_u_uart/u_core/sh_6/IN ),
    .O(\u_uart/u_core/sh [6]),
    .SET(\u_uart/rst_n_100_inv ),
    .RST(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X17Y57" ),
    .INIT ( 1'b1 ))
  \u_uart/u_core/sh_5  (
    .CE(\u_uart/u_core/_n0061_inv_0 ),
    .CLK(\NlwBufferSignal_u_uart/u_core/sh_5/CLK ),
    .I(\NlwBufferSignal_u_uart/u_core/sh_5/IN ),
    .O(\u_uart/u_core/sh [5]),
    .SET(\u_uart/rst_n_100_inv ),
    .RST(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X17Y57" ),
    .INIT ( 1'b1 ))
  \u_uart/u_core/sh_4  (
    .CE(\u_uart/u_core/_n0061_inv_0 ),
    .CLK(\NlwBufferSignal_u_uart/u_core/sh_4/CLK ),
    .I(\NlwBufferSignal_u_uart/u_core/sh_4/IN ),
    .O(\u_uart/u_core/sh [4]),
    .SET(\u_uart/rst_n_100_inv ),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y59" ),
    .INIT ( 64'hCF0F00003FC00030 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT517  (
    .ADR0(1'b1),
    .ADR1(\u_uart/idx [1]),
    .ADR2(\u_uart/idx [0]),
    .ADR3(\u_uart/idx [2]),
    .ADR5(\u_uart/idx [4]),
    .ADR4(\u_uart/idx [3]),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT516_8514 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y59" ),
    .INIT ( 64'h0050000000000000 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT518  (
    .ADR1(1'b1),
    .ADR2(\u_uart/code [1]),
    .ADR4(\u_uart/code<0>_0 ),
    .ADR3(\u_uart/code [2]),
    .ADR0(\u_uart/idx [5]),
    .ADR5(\u_uart/idx [4]),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT517_8513 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y59" ),
    .INIT ( 64'h000055330000FFFF ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT522_SW0  (
    .ADR2(1'b1),
    .ADR5(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT12_7535 ),
    .ADR1(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT516_8514 ),
    .ADR0(\u_uart/Sh147312 ),
    .ADR3(\u_uart/GND_7_o_GND_7_o_sub_38_OUT<5>1 ),
    .ADR4(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT518_8512 ),
    .O(N425)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y59" ),
    .INIT ( 64'h00C00D0000C00C00 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT519  (
    .ADR0(\u_uart/idx [5]),
    .ADR4(\u_uart/idx [0]),
    .ADR2(\u_uart/idx [2]),
    .ADR3(\u_uart/idx [3]),
    .ADR5(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT14 ),
    .ADR1(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT517_8513 ),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT518_8512 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y4" ),
    .INIT ( 64'hB8F0AAAAF0F0AAAA ))
  \u_fifo_a2b/Mmux_rptr_n91  (
    .ADR0(\u_fifo_a2b/rptr [6]),
    .ADR2(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<6>_0 ),
    .ADR4(a2b_rd_en),
    .ADR3(\u_fifo_a2b/rd_empty121_7283 ),
    .ADR1(\u_fifo_a2b/rd_empty1241 ),
    .ADR5(N280),
    .O(\u_fifo_a2b/rptr_n [6])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y5" ),
    .INIT ( 64'hEAAAFFFF2AAA0000 ))
  \u_fifo_a2b/Mmux_rptr_n101  (
    .ADR5(\u_fifo_a2b/rptr [7]),
    .ADR0(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<7>_0 ),
    .ADR4(a2b_rd_en),
    .ADR3(\u_fifo_a2b/rd_empty121_7283 ),
    .ADR1(\u_fifo_a2b/rd_empty1241 ),
    .ADR2(N280),
    .O(\u_fifo_a2b/rptr_n [7])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y5" ),
    .INIT ( 64'hF00FCCCCF00F3333 ))
  \u_fifo_a2b/pop1_SW32  (
    .ADR0(1'b1),
    .ADR5(\u_fifo_a2b/rptr [4]),
    .ADR1(\u_fifo_a2b/rptr [5]),
    .ADR3(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<4>_0 ),
    .ADR2(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<5>_0 ),
    .ADR4(a2b_rd_en),
    .O(N294)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y6" ),
    .INIT ( 64'hD8F0CCCCF0F0CCCC ))
  \u_fifo_a2b/Mmux_rptr_n81  (
    .ADR1(\u_fifo_a2b/rptr [5]),
    .ADR2(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<5>_0 ),
    .ADR4(a2b_rd_en),
    .ADR3(\u_fifo_a2b/rd_empty121_7283 ),
    .ADR0(\u_fifo_a2b/rd_empty1241 ),
    .ADR5(N280),
    .O(\u_fifo_a2b/rptr_n [5])
  );
  X_BUF   \u_tx_a/state[1]_GND_5_o_wide_mux_25_OUT<1>/u_tx_a/state[1]_GND_5_o_wide_mux_25_OUT<1>_CMUX_Delay  (
    .I(\u_tx_a/state[1]_GND_5_o_wide_mux_25_OUT<1> ),
    .O(\u_tx_a/state[1]_GND_5_o_wide_mux_25_OUT<1>_0 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X18Y10" ))
  \u_tx_a/Mmux_state[1]_GND_5_o_wide_mux_25_OUT22  (
    .IA(N474),
    .IB(N475),
    .O(\u_tx_a/state[1]_GND_5_o_wide_mux_25_OUT<1> ),
    .SEL(\u_tx_a/bcnt_FSM_FFd1_7641 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y10" ),
    .INIT ( 64'hB0F0B03080C08000 ))
  \u_tx_a/Mmux_state[1]_GND_5_o_wide_mux_25_OUT22_F  (
    .ADR2(\u_tx_a/state_FSM_FFd2_7379 ),
    .ADR1(\u_tx_a/state_FSM_FFd1_7378 ),
    .ADR3(\u_tx_a/bcnt_FSM_FFd2_7642 ),
    .ADR4(b2a_rd_data[1]),
    .ADR0(\u_tx_a/cur [3]),
    .ADR5(\u_tx_a/pcnt[5]_GND_5_o_equal_7_o ),
    .O(N474)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y10" ),
    .INIT ( 64'hAF00A000CF00C000 ))
  \u_tx_a/Mmux_state[1]_GND_5_o_wide_mux_25_OUT22_G  (
    .ADR3(\u_tx_a/state_FSM_FFd2_7379 ),
    .ADR2(\u_tx_a/state_FSM_FFd1_7378 ),
    .ADR5(\u_tx_a/bcnt_FSM_FFd2_7642 ),
    .ADR1(\u_tx_a/cur<7>_0 ),
    .ADR0(\u_tx_a/cur [5]),
    .ADR4(\u_tx_a/pcnt[5]_GND_5_o_equal_7_o ),
    .O(N475)
  );
  X_BUF   \u_tx_a/cur<5>/u_tx_a/cur<5>_BMUX_Delay  (
    .I(\u_tx_a/cur [7]),
    .O(\u_tx_a/cur<7>_0 )
  );
  X_BUF   \u_tx_a/cur<5>/u_tx_a/cur<5>_AMUX_Delay  (
    .I(\u_tx_a/cur<6>_pack_2 ),
    .O(\u_tx_a/cur [6])
  );
  X_FF #(
    .LOC ( "SLICE_X18Y11" ),
    .INIT ( 1'b0 ))
  \u_tx_a/cur_5  (
    .CE(b2a_rd_en),
    .CLK(\NlwBufferSignal_u_tx_a/cur_5/CLK ),
    .I(\NlwBufferSignal_u_tx_a/cur_5/IN ),
    .O(\u_tx_a/cur [5]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y11" ),
    .INIT ( 64'hCCCCCCCCFFFF0000 ))
  \u_tx_a/Mmux_state[1]_GND_5_o_wide_mux_25_OUT11  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR5(\u_tx_a/bcnt_FSM_FFd2_7642 ),
    .ADR4(\u_tx_a/cur [6]),
    .ADR1(\u_tx_a/cur [4]),
    .O(\u_tx_a/Mmux_state[1]_GND_5_o_wide_mux_25_OUT1 )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y11" ),
    .INIT ( 1'b0 ))
  \u_tx_a/cur_4  (
    .CE(b2a_rd_en),
    .CLK(\NlwBufferSignal_u_tx_a/cur_4/CLK ),
    .I(\NlwBufferSignal_u_tx_a/cur_4/IN ),
    .O(\u_tx_a/cur [4]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y11" ),
    .INIT ( 64'hFFFFE2FF00FFE2FF ))
  \u_tx_a/Mmux_state[1]_GND_5_o_wide_mux_25_OUT12  (
    .ADR4(\u_tx_a/bcnt_FSM_FFd1_7641 ),
    .ADR1(\u_tx_a/bcnt_FSM_FFd2_7642 ),
    .ADR0(b2a_rd_data[0]),
    .ADR2(\u_tx_a/cur [2]),
    .ADR5(\u_tx_a/Mmux_state[1]_GND_5_o_wide_mux_25_OUT1 ),
    .ADR3(\u_tx_a/state_FSM_FFd1_7378 ),
    .O(\u_tx_a/Mmux_state[1]_GND_5_o_wide_mux_25_OUT11_7640 )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y11" ),
    .INIT ( 1'b0 ))
  \u_tx_a/cur_3  (
    .CE(b2a_rd_en),
    .CLK(\NlwBufferSignal_u_tx_a/cur_3/CLK ),
    .I(\NlwBufferSignal_u_tx_a/cur_3/IN ),
    .O(\u_tx_a/cur [3]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y11" ),
    .INIT ( 32'hF0F0F0F0 ))
  \b2a_rd_data<7>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(b2a_rd_data[7]),
    .O(\b2a_rd_data<7>_rt_6193 )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y11" ),
    .INIT ( 1'b0 ))
  \u_tx_a/cur_7  (
    .CE(b2a_rd_en),
    .CLK(\NlwBufferSignal_u_tx_a/cur_7/CLK ),
    .I(\b2a_rd_data<7>_rt_6193 ),
    .O(\u_tx_a/cur [7]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X18Y11" ),
    .INIT ( 1'b0 ))
  \u_tx_a/cur_2  (
    .CE(b2a_rd_en),
    .CLK(\NlwBufferSignal_u_tx_a/cur_2/CLK ),
    .I(\NlwBufferSignal_u_tx_a/cur_2/IN ),
    .O(\u_tx_a/cur [2]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y11" ),
    .INIT ( 32'hF0F0F0F0 ))
  \b2a_rd_data<6>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(b2a_rd_data[6]),
    .O(\b2a_rd_data<6>_rt_6198 )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y11" ),
    .INIT ( 1'b0 ))
  \u_tx_a/cur_6  (
    .CE(b2a_rd_en),
    .CLK(\NlwBufferSignal_u_tx_a/cur_6/CLK ),
    .I(\b2a_rd_data<6>_rt_6198 ),
    .O(\u_tx_a/cur<6>_pack_2 ),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_BUF   \u_rx_a/dcnt<1>/u_rx_a/dcnt<1>_CMUX_Delay  (
    .I(\u_rx_a/dcnt<0>_pack_1 ),
    .O(\u_rx_a/dcnt [0])
  );
  X_FF #(
    .LOC ( "SLICE_X18Y34" ),
    .INIT ( 1'b0 ))
  \u_rx_a/dcnt_1  (
    .CE(\u_rx_a/_n0167_inv_0 ),
    .CLK(\NlwBufferSignal_u_rx_a/dcnt_1/CLK ),
    .I(\u_rx_a/state[1]_dcnt[1]_wide_mux_43_OUT<1> ),
    .O(\u_rx_a/dcnt [1]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y34" ),
    .INIT ( 64'h5400A8005400A800 ))
  \u_rx_a/Mmux_state[1]_dcnt[1]_wide_mux_43_OUT21  (
    .ADR1(\u_rx_a/crs_r_7413 ),
    .ADR2(\u_rx_a/crs_prev_7412 ),
    .ADR3(\u_rx_a/state_FSM_FFd1_7367 ),
    .ADR4(\u_rx_a/dcnt [1]),
    .ADR0(\u_rx_a/dcnt [0]),
    .ADR5(1'b1),
    .O(\u_rx_a/state[1]_dcnt[1]_wide_mux_43_OUT<1> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y34" ),
    .INIT ( 32'h54005400 ))
  \u_rx_a/Mmux_state[1]_dcnt[1]_wide_mux_43_OUT11  (
    .ADR1(\u_rx_a/crs_r_7413 ),
    .ADR2(\u_rx_a/crs_prev_7412 ),
    .ADR3(\u_rx_a/state_FSM_FFd1_7367 ),
    .ADR4(1'b1),
    .ADR0(\u_rx_a/dcnt [0]),
    .O(\u_rx_a/state[1]_dcnt[1]_wide_mux_43_OUT<0> )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y34" ),
    .INIT ( 1'b0 ))
  \u_rx_a/dcnt_0  (
    .CE(\u_rx_a/_n0167_inv_0 ),
    .CLK(\NlwBufferSignal_u_rx_a/dcnt_0/CLK ),
    .I(\u_rx_a/state[1]_dcnt[1]_wide_mux_43_OUT<0> ),
    .O(\u_rx_a/dcnt<0>_pack_1 ),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y50" ),
    .INIT ( 64'hFFFFFFF3FFFFFFF3 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT48_SW0_SW1_SW0  (
    .ADR0(1'b1),
    .ADR5(1'b1),
    .ADR2(\u_uart/code [1]),
    .ADR4(\u_uart/code<0>_0 ),
    .ADR3(\u_uart/code [2]),
    .ADR1(\u_uart/idx [4]),
    .O(N383)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y50" ),
    .INIT ( 64'h3003300200330033 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT48_SW0_SW1  (
    .ADR0(\u_uart/idx [5]),
    .ADR2(\u_uart/idx [1]),
    .ADR1(\u_uart/idx [0]),
    .ADR5(\u_uart/idx [2]),
    .ADR3(\u_uart/idx [3]),
    .ADR4(N383),
    .O(N78)
  );
  X_BUF   \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT317/u_uart/Mmux_code[2]_GND_7_o_select_48_OUT317_CMUX_Delay  (
    .I(N361),
    .O(N361_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X18Y51" ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT313_SW0_SW0  (
    .IA(N504),
    .IB(1'b1),
    .O(N361),
    .SEL(\u_uart/idx [4])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y51" ),
    .INIT ( 64'hFFFFFFFFCFAFDF5F ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT313_SW0_SW0_F  (
    .ADR4(\u_uart/idx [3]),
    .ADR0(\u_uart/idx [0]),
    .ADR3(\u_uart/idx [1]),
    .ADR5(\u_uart/idx [5]),
    .ADR1(\u_uart/idx [2]),
    .ADR2(\u_uart/code [2]),
    .O(N504)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y51" ),
    .INIT ( 64'hFFFFFFFFFFFFFFFF ))
  \SevenSegmentEnable_0_OBUF_1_23.C6LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\NLW_SevenSegmentEnable_0_OBUF_1_23.C6LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y51" ),
    .INIT ( 64'h364155FF770036BE ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT317  (
    .ADR0(\u_uart/idx [3]),
    .ADR3(\u_uart/idx [2]),
    .ADR4(\u_uart/idx [0]),
    .ADR5(\u_uart/idx [1]),
    .ADR1(\u_uart/idx [5]),
    .ADR2(\u_uart/idx [4]),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT317_8384 )
  );
  X_BUF   \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT1612/u_uart/Mmux_code[2]_GND_7_o_select_48_OUT1612_DMUX_Delay  (
    .I(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT43_6244 ),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT43_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y53" ),
    .INIT ( 64'h0000114400001144 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT16121  (
    .ADR2(1'b1),
    .ADR0(\u_uart/idx [5]),
    .ADR4(\u_uart/idx [4]),
    .ADR3(\u_uart/idx [3]),
    .ADR1(\u_uart/idx [2]),
    .ADR5(1'b1),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT1612 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y53" ),
    .INIT ( 32'h00405151 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT44  (
    .ADR2(\u_uart/idx [1]),
    .ADR0(\u_uart/idx [5]),
    .ADR4(\u_uart/idx [4]),
    .ADR3(\u_uart/idx [3]),
    .ADR1(\u_uart/idx [2]),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT43_6244 )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y54" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_rst_a/sync_q_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_rst_a/sync_q_2/CLK ),
    .I(\NlwBufferSignal_u_rst_a/sync_q_2/IN ),
    .O(\u_rst_a/sync_q [2]),
    .RST(\por_cnt<7>_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X18Y54" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_rst_a/sync_q_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_rst_a/sync_q_1/CLK ),
    .I(\NlwBufferSignal_u_rst_a/sync_q_1/IN ),
    .O(\u_rst_a/sync_q [1]),
    .RST(\por_cnt<7>_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X18Y54" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_rst_a/sync_q_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_rst_a/sync_q_0/CLK ),
    .I(1'b1),
    .O(\u_rst_a/sync_q [0]),
    .RST(\por_cnt<7>_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y54" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \u_rx_a/rst_n_inv1_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(1'b1),
    .ADR4(1'b1),
    .ADR3(\u_rst_a/sync_q [2]),
    .O(\u_engine/rst_n_inv )
  );
  X_BUF   \u_uart/u_core/bitcnt<3>/u_uart/u_core/bitcnt<3>_BMUX_Delay  (
    .I(\u_uart/u_core/bitcnt<2>_pack_9 ),
    .O(\u_uart/u_core/bitcnt [2])
  );
  X_BUF   \u_uart/u_core/bitcnt<3>/u_uart/u_core/bitcnt<3>_AMUX_Delay  (
    .I(\u_uart/u_core/bitcnt<0>_pack_7 ),
    .O(\u_uart/u_core/bitcnt [0])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y55" ),
    .INIT ( 64'hFC743030FCFC3030 ))
  \u_uart/u_core/_n0069_inv  (
    .ADR2(\u_uart/tx_start_7935 ),
    .ADR5(\u_uart/u_core/bitcnt [3]),
    .ADR0(\u_uart/u_core/bitcnt [0]),
    .ADR1(\u_uart/u_core/tx_busy_7870 ),
    .ADR3(N21),
    .ADR4(\u_uart/u_core/GND_8_o_GND_8_o_equal_4_o ),
    .O(\u_uart/u_core/_n0069_inv_8523 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y55" ),
    .INIT ( 64'hF000000000000000 ))
  \u_uart/u_core/GND_8_o_GND_8_o_equal_4_o<12>3  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(\u_uart/u_core/baudcnt [1]),
    .ADR2(\u_uart/u_core/baudcnt [0]),
    .ADR4(\u_uart/u_core/GND_8_o_GND_8_o_equal_4_o<12>1_8307 ),
    .ADR3(\u_uart/u_core/GND_8_o_GND_8_o_equal_4_o_1 [12]),
    .O(\u_uart/u_core/GND_8_o_GND_8_o_equal_4_o )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y55" ),
    .INIT ( 1'b0 ))
  \u_uart/u_core/bitcnt_3  (
    .CE(\u_uart/u_core/_n0069_inv_8523 ),
    .CLK(\NlwBufferSignal_u_uart/u_core/bitcnt_3/CLK ),
    .I(\u_uart/u_core/bitcnt[3]_bitcnt[3]_mux_13_OUT<3> ),
    .O(\u_uart/u_core/bitcnt [3]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y55" ),
    .INIT ( 64'h78F0000078F00000 ))
  \u_uart/u_core/Mmux_bitcnt[3]_bitcnt[3]_mux_13_OUT41  (
    .ADR4(\u_uart/u_core/tx_busy_7870 ),
    .ADR3(\u_uart/u_core/bitcnt [0]),
    .ADR1(\u_uart/u_core/bitcnt [1]),
    .ADR2(\u_uart/u_core/bitcnt [3]),
    .ADR0(\u_uart/u_core/bitcnt [2]),
    .ADR5(1'b1),
    .O(\u_uart/u_core/bitcnt[3]_bitcnt[3]_mux_13_OUT<3> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y55" ),
    .INIT ( 32'h66AA0000 ))
  \u_uart/u_core/Mmux_bitcnt[3]_bitcnt[3]_mux_13_OUT31  (
    .ADR4(\u_uart/u_core/tx_busy_7870 ),
    .ADR3(\u_uart/u_core/bitcnt [0]),
    .ADR1(\u_uart/u_core/bitcnt [1]),
    .ADR2(1'b1),
    .ADR0(\u_uart/u_core/bitcnt [2]),
    .O(\u_uart/u_core/bitcnt[3]_bitcnt[3]_mux_13_OUT<2> )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y55" ),
    .INIT ( 1'b0 ))
  \u_uart/u_core/bitcnt_2  (
    .CE(\u_uart/u_core/_n0069_inv_8523 ),
    .CLK(\NlwBufferSignal_u_uart/u_core/bitcnt_2/CLK ),
    .I(\u_uart/u_core/bitcnt[3]_bitcnt[3]_mux_13_OUT<2> ),
    .O(\u_uart/u_core/bitcnt<2>_pack_9 ),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X18Y55" ),
    .INIT ( 1'b0 ))
  \u_uart/u_core/bitcnt_1  (
    .CE(\u_uart/u_core/_n0069_inv_8523 ),
    .CLK(\NlwBufferSignal_u_uart/u_core/bitcnt_1/CLK ),
    .I(\u_uart/u_core/bitcnt[3]_bitcnt[3]_mux_13_OUT<1> ),
    .O(\u_uart/u_core/bitcnt [1]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y55" ),
    .INIT ( 64'h4444888844448888 ))
  \u_uart/u_core/Mmux_bitcnt[3]_bitcnt[3]_mux_13_OUT21  (
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR1(\u_uart/u_core/tx_busy_7870 ),
    .ADR4(\u_uart/u_core/bitcnt [1]),
    .ADR0(\u_uart/u_core/bitcnt [0]),
    .ADR5(1'b1),
    .O(\u_uart/u_core/bitcnt[3]_bitcnt[3]_mux_13_OUT<1> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y55" ),
    .INIT ( 32'h44444444 ))
  \u_uart/u_core/Mmux_bitcnt[3]_bitcnt[3]_mux_13_OUT11  (
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR1(\u_uart/u_core/tx_busy_7870 ),
    .ADR3(1'b1),
    .ADR0(\u_uart/u_core/bitcnt [0]),
    .O(\u_uart/u_core/bitcnt[3]_bitcnt[3]_mux_13_OUT<0> )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y55" ),
    .INIT ( 1'b0 ))
  \u_uart/u_core/bitcnt_0  (
    .CE(\u_uart/u_core/_n0069_inv_8523 ),
    .CLK(\NlwBufferSignal_u_uart/u_core/bitcnt_0/CLK ),
    .I(\u_uart/u_core/bitcnt[3]_bitcnt[3]_mux_13_OUT<0> ),
    .O(\u_uart/u_core/bitcnt<0>_pack_7 ),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_BUF   \u_uart/u_core/Mmux_tx_out_tx_start_MUX_249_o15/u_uart/u_core/Mmux_tx_out_tx_start_MUX_249_o15_CMUX_Delay  (
    .I(\u_uart/u_core/Mmux_tx_out_tx_start_MUX_249_o15 ),
    .O(\u_uart/u_core/Mmux_tx_out_tx_start_MUX_249_o15_0 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X18Y56" ))
  \u_uart/u_core/Mmux_tx_out_tx_start_MUX_249_o16  (
    .IA(N490),
    .IB(N491),
    .O(\u_uart/u_core/Mmux_tx_out_tx_start_MUX_249_o15 ),
    .SEL(\u_uart/u_core/bitcnt [0])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y56" ),
    .INIT ( 64'h3333300033223322 ))
  \u_uart/u_core/Mmux_tx_out_tx_start_MUX_249_o16_F  (
    .ADR1(\u_uart/u_core/bitcnt [1]),
    .ADR5(\u_uart/u_core/bitcnt [2]),
    .ADR3(\u_uart/u_core/bitcnt [3]),
    .ADR0(\u_uart/u_core/sh [1]),
    .ADR2(\u_uart/u_core/sh [0]),
    .ADR4(\u_uart/u_core/sh [5]),
    .O(N490)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y56" ),
    .INIT ( 64'h0000AAF00000FFCC ))
  \u_uart/u_core/Mmux_tx_out_tx_start_MUX_249_o16_G  (
    .ADR4(\u_uart/u_core/bitcnt [1]),
    .ADR5(\u_uart/u_core/bitcnt [2]),
    .ADR3(\u_uart/u_core/bitcnt [3]),
    .ADR1(\u_uart/u_core/sh [2]),
    .ADR0(\u_uart/u_core/sh [0]),
    .ADR2(\u_uart/u_core/sh [6]),
    .O(N491)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y5" ),
    .INIT ( 64'hCAAAAAAACCCCCCCC ))
  \u_fifo_a2b/Mmux_rptr_n41  (
    .ADR1(\u_fifo_a2b/rptr [1]),
    .ADR0(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<1>_0 ),
    .ADR5(a2b_rd_en),
    .ADR3(\u_fifo_a2b/rd_empty121_7283 ),
    .ADR4(\u_fifo_a2b/rd_empty1241 ),
    .ADR2(N280),
    .O(\u_fifo_a2b/rptr_n [1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y5" ),
    .INIT ( 64'hF0F0AA550F0FAA55 ))
  \u_fifo_a2b/pop1_SW34  (
    .ADR1(1'b1),
    .ADR0(\u_fifo_a2b/rptr [5]),
    .ADR3(\u_fifo_a2b/rptr [6]),
    .ADR2(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<5>_0 ),
    .ADR5(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<6>_0 ),
    .ADR4(a2b_rd_en),
    .O(N297)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y6" ),
    .INIT ( 64'hF0D8D8D8D8D8D8D8 ))
  \u_fifo_a2b/Mmux_rptr_n71  (
    .ADR2(\u_fifo_a2b/rptr [4]),
    .ADR1(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<4>_0 ),
    .ADR0(a2b_rd_en),
    .ADR3(\u_fifo_a2b/rd_empty121_7283 ),
    .ADR4(\u_fifo_a2b/rd_empty1241 ),
    .ADR5(N280),
    .O(\u_fifo_a2b/rptr_n [4])
  );
  X_FF #(
    .LOC ( "SLICE_X19Y8" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rg_s1_11  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rg_s1_11/CLK ),
    .I(\NlwBufferSignal_u_fifo_a2b/rg_s1_11/IN ),
    .O(\u_fifo_a2b/rg_s1 [11]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X19Y8" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rg_s1_10  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rg_s1_10/CLK ),
    .I(\NlwBufferSignal_u_fifo_a2b/rg_s1_10/IN ),
    .O(\u_fifo_a2b/rg_s1 [10]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X19Y8" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rg_s1_9  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rg_s1_9/CLK ),
    .I(\NlwBufferSignal_u_fifo_a2b/rg_s1_9/IN ),
    .O(\u_fifo_a2b/rg_s1 [9]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X19Y8" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rg_s1_8  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rg_s1_8/CLK ),
    .I(\NlwBufferSignal_u_fifo_a2b/rg_s1_8/IN ),
    .O(\u_fifo_a2b/rg_s1 [8]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X19Y12" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cptr_gray_7  (
    .CE(\u_fifo_a2b/wr_ok1_cepot ),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cptr_gray_7/CLK ),
    .I(\u_fifo_a2b/cptr_gray_7_dpot1_6361 ),
    .O(\u_fifo_a2b/cptr_gray [7]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y12" ),
    .INIT ( 64'hF7FB0408FFFF0000 ))
  \u_fifo_a2b/cptr_gray_7_dpot1  (
    .ADR5(\u_rx_a/m_tvalid_7480 ),
    .ADR2(\u_fifo_a2b/drop_7962 ),
    .ADR1(\u_rx_a/m_tlast_0 ),
    .ADR4(\u_fifo_a2b/cptr_gray [7]),
    .ADR0(\u_fifo_a2b/wptr_n<8>_0 ),
    .ADR3(\u_fifo_a2b/wptr_n<7>_0 ),
    .O(\u_fifo_a2b/cptr_gray_7_dpot1_6361 )
  );
  X_FF #(
    .LOC ( "SLICE_X19Y12" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cptr_gray_6  (
    .CE(\u_fifo_a2b/wr_ok1_cepot ),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cptr_gray_6/CLK ),
    .I(\u_fifo_a2b/cptr_gray_6_dpot1_6371 ),
    .O(\u_fifo_a2b/cptr_gray [6]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y12" ),
    .INIT ( 64'hD0F2F2D0F0F0F0F0 ))
  \u_fifo_a2b/cptr_gray_6_dpot1  (
    .ADR0(\u_rx_a/m_tvalid_7480 ),
    .ADR1(\u_fifo_a2b/drop_7962 ),
    .ADR5(\u_rx_a/m_tlast_0 ),
    .ADR2(\u_fifo_a2b/cptr_gray [6]),
    .ADR3(\u_fifo_a2b/wptr_n<7>_0 ),
    .ADR4(\u_fifo_a2b/wptr_n<6>_0 ),
    .O(\u_fifo_a2b/cptr_gray_6_dpot1_6371 )
  );
  X_FF #(
    .LOC ( "SLICE_X19Y12" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cptr_gray_5  (
    .CE(\u_fifo_a2b/wr_ok1_cepot ),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cptr_gray_5/CLK ),
    .I(\u_fifo_a2b/cptr_gray_5_dpot1_6344 ),
    .O(\u_fifo_a2b/cptr_gray [5]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y12" ),
    .INIT ( 64'hFF7F0040FFBF0080 ))
  \u_fifo_a2b/cptr_gray_5_dpot1  (
    .ADR2(\u_rx_a/m_tvalid_7480 ),
    .ADR3(\u_fifo_a2b/drop_7962 ),
    .ADR1(\u_rx_a/m_tlast_0 ),
    .ADR4(\u_fifo_a2b/cptr_gray [5]),
    .ADR0(\u_fifo_a2b/wptr_n<6>_0 ),
    .ADR5(\u_fifo_a2b/wptr_n<5>_0 ),
    .O(\u_fifo_a2b/cptr_gray_5_dpot1_6344 )
  );
  X_FF #(
    .LOC ( "SLICE_X19Y12" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cptr_gray_4  (
    .CE(\u_fifo_a2b/wr_ok1_cepot ),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cptr_gray_4/CLK ),
    .I(\u_fifo_a2b/cptr_gray_4_dpot1_6352 ),
    .O(\u_fifo_a2b/cptr_gray [4]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y12" ),
    .INIT ( 64'hBFFFEFFF10004000 ))
  \u_fifo_a2b/cptr_gray_4_dpot1  (
    .ADR2(\u_rx_a/m_tvalid_7480 ),
    .ADR0(\u_fifo_a2b/drop_7962 ),
    .ADR3(\u_rx_a/m_tlast_0 ),
    .ADR5(\u_fifo_a2b/cptr_gray [4]),
    .ADR4(\u_fifo_a2b/wptr_n<5>_0 ),
    .ADR1(\u_fifo_a2b/wptr_n<4>_0 ),
    .O(\u_fifo_a2b/cptr_gray_4_dpot1_6352 )
  );
  X_FF #(
    .LOC ( "SLICE_X19Y13" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cptr_gray_3  (
    .CE(\u_fifo_a2b/wr_ok1_cepot ),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cptr_gray_3/CLK ),
    .I(\u_fifo_a2b/cptr_gray_3_dpot1_6396 ),
    .O(\u_fifo_a2b/cptr_gray [3]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y13" ),
    .INIT ( 64'hF6FFFFFF06000000 ))
  \u_fifo_a2b/cptr_gray_3_dpot1  (
    .ADR4(\u_rx_a/m_tvalid_7480 ),
    .ADR2(\u_fifo_a2b/drop_7962 ),
    .ADR3(\u_rx_a/m_tlast_0 ),
    .ADR5(\u_fifo_a2b/cptr_gray [3]),
    .ADR0(\u_fifo_a2b/wptr_n<4>_0 ),
    .ADR1(\u_fifo_a2b/wptr_n<3>_0 ),
    .O(\u_fifo_a2b/cptr_gray_3_dpot1_6396 )
  );
  X_FF #(
    .LOC ( "SLICE_X19Y13" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cptr_gray_2  (
    .CE(\u_fifo_a2b/wr_ok1_cepot ),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cptr_gray_2/CLK ),
    .I(\u_fifo_a2b/cptr_gray_2_dpot1_6406 ),
    .O(\u_fifo_a2b/cptr_gray [2]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y13" ),
    .INIT ( 64'hF7FB0408FFFF0000 ))
  \u_fifo_a2b/cptr_gray_2_dpot1  (
    .ADR5(\u_rx_a/m_tvalid_7480 ),
    .ADR2(\u_fifo_a2b/drop_7962 ),
    .ADR1(\u_rx_a/m_tlast_0 ),
    .ADR4(\u_fifo_a2b/cptr_gray [2]),
    .ADR3(\u_fifo_a2b/wptr_n<3>_0 ),
    .ADR0(\u_fifo_a2b/wptr_n<2>_0 ),
    .O(\u_fifo_a2b/cptr_gray_2_dpot1_6406 )
  );
  X_FF #(
    .LOC ( "SLICE_X19Y13" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cptr_gray_1  (
    .CE(\u_fifo_a2b/wr_ok1_cepot ),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cptr_gray_1/CLK ),
    .I(\u_fifo_a2b/cptr_gray_1_dpot1_6379 ),
    .O(\u_fifo_a2b/cptr_gray [1]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y13" ),
    .INIT ( 64'hBEFF1400FFFF0000 ))
  \u_fifo_a2b/cptr_gray_1_dpot1  (
    .ADR3(\u_rx_a/m_tvalid_7480 ),
    .ADR0(\u_fifo_a2b/drop_7962 ),
    .ADR5(\u_rx_a/m_tlast_0 ),
    .ADR4(\u_fifo_a2b/cptr_gray [1]),
    .ADR2(\u_fifo_a2b/wptr_n<2>_0 ),
    .ADR1(\u_fifo_a2b/wptr_n<1>_0 ),
    .O(\u_fifo_a2b/cptr_gray_1_dpot1_6379 )
  );
  X_FF #(
    .LOC ( "SLICE_X19Y13" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cptr_gray_0  (
    .CE(\u_fifo_a2b/wr_ok1_cepot ),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cptr_gray_0/CLK ),
    .I(\u_fifo_a2b/cptr_gray_0_dpot1_6387 ),
    .O(\u_fifo_a2b/cptr_gray [0]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y13" ),
    .INIT ( 64'hFFFF7DFF00002800 ))
  \u_fifo_a2b/cptr_gray_0_dpot1  (
    .ADR3(\u_rx_a/m_tvalid_7480 ),
    .ADR4(\u_fifo_a2b/drop_7962 ),
    .ADR0(\u_rx_a/m_tlast_0 ),
    .ADR5(\u_fifo_a2b/cptr_gray [0]),
    .ADR2(\u_fifo_a2b/wptr_n<1>_0 ),
    .ADR1(\u_fifo_a2b/wptr_n<0>_0 ),
    .O(\u_fifo_a2b/cptr_gray_0_dpot1_6387 )
  );
  X_FF #(
    .LOC ( "SLICE_X19Y14" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cptr_gray_11  (
    .CE(\u_fifo_a2b/wr_ok1_cepot ),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cptr_gray_11/CLK ),
    .I(\u_fifo_a2b/cptr_gray_11_dpot1_6435 ),
    .O(\u_fifo_a2b/cptr_gray [11]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y14" ),
    .INIT ( 64'hFFFFFF5F0000A000 ))
  \u_fifo_a2b/cptr_gray_11_dpot1  (
    .ADR1(1'b1),
    .ADR2(\u_rx_a/m_tlast_0 ),
    .ADR4(\u_fifo_a2b/drop_7962 ),
    .ADR5(\u_fifo_a2b/cptr_gray [11]),
    .ADR0(\u_rx_a/m_tvalid_7480 ),
    .ADR3(\u_fifo_a2b/wptr_n<11>_0 ),
    .O(\u_fifo_a2b/cptr_gray_11_dpot1_6435 )
  );
  X_FF #(
    .LOC ( "SLICE_X19Y14" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cptr_gray_10  (
    .CE(\u_fifo_a2b/wr_ok1_cepot ),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cptr_gray_10/CLK ),
    .I(\u_fifo_a2b/cptr_gray_10_dpot1_6410 ),
    .O(\u_fifo_a2b/cptr_gray [10]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y14" ),
    .INIT ( 64'hFF00FF007B48FF00 ))
  \u_fifo_a2b/cptr_gray_10_dpot1  (
    .ADR1(\u_rx_a/m_tlast_0 ),
    .ADR5(\u_fifo_a2b/drop_7962 ),
    .ADR4(\u_rx_a/m_tvalid_7480 ),
    .ADR3(\u_fifo_a2b/cptr_gray [10]),
    .ADR2(\u_fifo_a2b/wptr_n<10>_0 ),
    .ADR0(\u_fifo_a2b/wptr_n<11>_0 ),
    .O(\u_fifo_a2b/cptr_gray_10_dpot1_6410 )
  );
  X_FF #(
    .LOC ( "SLICE_X19Y14" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cptr_gray_9  (
    .CE(\u_fifo_a2b/wr_ok1_cepot ),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cptr_gray_9/CLK ),
    .I(\u_fifo_a2b/cptr_gray_9_dpot1_6418 ),
    .O(\u_fifo_a2b/cptr_gray [9]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y14" ),
    .INIT ( 64'hDEFF1200FFFF0000 ))
  \u_fifo_a2b/cptr_gray_9_dpot1  (
    .ADR5(\u_rx_a/m_tlast_0 ),
    .ADR1(\u_fifo_a2b/drop_7962 ),
    .ADR3(\u_rx_a/m_tvalid_7480 ),
    .ADR4(\u_fifo_a2b/cptr_gray [9]),
    .ADR0(\u_fifo_a2b/wptr_n<10>_0 ),
    .ADR2(\u_fifo_a2b/wptr_n<9>_0 ),
    .O(\u_fifo_a2b/cptr_gray_9_dpot1_6418 )
  );
  X_FF #(
    .LOC ( "SLICE_X19Y14" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cptr_gray_8  (
    .CE(\u_fifo_a2b/wr_ok1_cepot ),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cptr_gray_8/CLK ),
    .I(\u_fifo_a2b/cptr_gray_8_dpot1_6426 ),
    .O(\u_fifo_a2b/cptr_gray [8]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y14" ),
    .INIT ( 64'hF7FB0408FFFF0000 ))
  \u_fifo_a2b/cptr_gray_8_dpot1  (
    .ADR5(\u_rx_a/m_tlast_0 ),
    .ADR2(\u_fifo_a2b/drop_7962 ),
    .ADR1(\u_rx_a/m_tvalid_7480 ),
    .ADR4(\u_fifo_a2b/cptr_gray [8]),
    .ADR3(\u_fifo_a2b/wptr_n<8>_0 ),
    .ADR0(\u_fifo_a2b/wptr_n<9>_0 ),
    .O(\u_fifo_a2b/cptr_gray_8_dpot1_6426 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y50" ),
    .INIT ( 64'hFF55555F5F5555F5 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT37_SW1  (
    .ADR1(1'b1),
    .ADR0(\u_uart/code<0>_0 ),
    .ADR2(\u_uart/idx [1]),
    .ADR4(\u_uart/idx [0]),
    .ADR5(\u_uart/idx [2]),
    .ADR3(\u_uart/idx [3]),
    .O(N208)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y50" ),
    .INIT ( 64'hF0050000A0AF0000 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT37_SW0  (
    .ADR1(1'b1),
    .ADR4(\u_uart/code<0>_0 ),
    .ADR2(\u_uart/idx [1]),
    .ADR5(\u_uart/idx [0]),
    .ADR0(\u_uart/idx [2]),
    .ADR3(\u_uart/idx [3]),
    .O(N207)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y50" ),
    .INIT ( 64'h01010A0000000000 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT37  (
    .ADR5(\u_uart/code [1]),
    .ADR2(\u_uart/code [2]),
    .ADR4(\u_uart/idx [5]),
    .ADR0(\u_uart/idx [4]),
    .ADR1(N208),
    .ADR3(N207),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT37_7732 )
  );
  X_FF #(
    .LOC ( "SLICE_X19Y51" ),
    .INIT ( 1'b0 ))
  \u_uart/tx_data_3  (
    .CE(\u_uart/GND_7_o_tx_busy_MUX_9398_o ),
    .CLK(\NlwBufferSignal_u_uart/tx_data_3/CLK ),
    .I(\u_uart/code[2]_GND_7_o_select_48_OUT<3> ),
    .O(\u_uart/tx_data [3]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y51" ),
    .INIT ( 64'hFFFFFF50FFFF5450 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT415  (
    .ADR0(\u_uart/idx [0]),
    .ADR3(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT13_7513 ),
    .ADR1(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT43_0 ),
    .ADR5(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT414_8386 ),
    .ADR2(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT42_7953 ),
    .ADR4(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT411_8527 ),
    .O(\u_uart/code[2]_GND_7_o_select_48_OUT<3> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y51" ),
    .INIT ( 64'hFFF1FFFDFFF0FFFF ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT412  (
    .ADR1(\u_uart/idx [1]),
    .ADR5(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT29_7515 ),
    .ADR4(N77_0),
    .ADR2(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT410_0 ),
    .ADR0(N78),
    .ADR3(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT45 ),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT411_8527 )
  );
  X_FF #(
    .LOC ( "SLICE_X19Y51" ),
    .INIT ( 1'b0 ))
  \u_uart/tx_data_2  (
    .CE(\u_uart/GND_7_o_tx_busy_MUX_9398_o ),
    .CLK(\NlwBufferSignal_u_uart/tx_data_2/CLK ),
    .I(\u_uart/code[2]_GND_7_o_select_48_OUT<2> ),
    .O(\u_uart/tx_data [2]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y51" ),
    .INIT ( 64'hFFFFFFFFEFEEAAAA ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT318  (
    .ADR4(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT13_7513 ),
    .ADR2(\u_uart/GND_7_o_GND_7_o_sub_36_OUT<4>1 ),
    .ADR1(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT315_8383 ),
    .ADR3(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT317_8384 ),
    .ADR0(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT33_0 ),
    .ADR5(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT313_8526 ),
    .O(\u_uart/code[2]_GND_7_o_select_48_OUT<2> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y51" ),
    .INIT ( 64'hFFFF3B0AFFFF3BFF ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT313  (
    .ADR2(\u_uart/idx [4]),
    .ADR3(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT14 ),
    .ADR5(N361_0),
    .ADR1(N362_0),
    .ADR0(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT39_7746 ),
    .ADR4(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT37_7732 ),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT313_8526 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y52" ),
    .INIT ( 64'hFEFD5BF7FBF7CFDF ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT46_SW2  (
    .ADR4(\u_uart/idx [5]),
    .ADR0(\u_uart/idx [1]),
    .ADR3(\u_uart/idx [0]),
    .ADR2(\u_uart/idx [4]),
    .ADR5(\u_uart/idx [2]),
    .ADR1(\u_uart/idx [3]),
    .O(N450)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y52" ),
    .INIT ( 64'h0000005500000000 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT46  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR5(\u_uart/code [1]),
    .ADR4(\u_uart/code [2]),
    .ADR3(\u_uart/code<0>_0 ),
    .ADR0(N450),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT45 )
  );
  X_BUF   \u_uart/u_core/tx_busy/u_uart/u_core/tx_busy_DMUX_Delay  (
    .I(N113),
    .O(N113_0)
  );
  X_BUF   \u_uart/u_core/tx_busy/u_uart/u_core/tx_busy_CMUX_Delay  (
    .I(\u_uart/u_core/_n0061_inv ),
    .O(\u_uart/u_core/_n0061_inv_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y55" ),
    .INIT ( 64'hCFFFFFFFCFFFFFFF ))
  \u_uart/mstate[2]_idx[7]_select_72_OUT<3>_SW0  (
    .ADR0(1'b1),
    .ADR2(\u_uart/idx [1]),
    .ADR3(\u_uart/idx [0]),
    .ADR1(\u_uart/u_core/tx_busy_7870 ),
    .ADR4(\u_uart/idx [2]),
    .ADR5(1'b1),
    .O(N5)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X19Y55" ),
    .INIT ( 32'hCFFFCFFF ))
  \u_uart/mstate[2]_idx[7]_select_72_OUT<2>_SW0_SW0  (
    .ADR0(1'b1),
    .ADR2(\u_uart/idx [1]),
    .ADR3(\u_uart/idx [0]),
    .ADR1(\u_uart/u_core/tx_busy_7870 ),
    .ADR4(1'b1),
    .O(N113)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y55" ),
    .INIT ( 64'hFFFFF0F0FFFFF0F0 ))
  \u_uart/u_core/_n0060_inv1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\u_uart/tx_start_7935 ),
    .ADR4(\u_uart/u_core/tx_busy_7870 ),
    .ADR5(1'b1),
    .O(\u_uart/u_core/_n0060_inv )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X19Y55" ),
    .INIT ( 32'h0000F0F0 ))
  \u_uart/u_core/_n0061_inv1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\u_uart/tx_start_7935 ),
    .ADR4(\u_uart/u_core/tx_busy_7870 ),
    .O(\u_uart/u_core/_n0061_inv )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y55" ),
    .INIT ( 64'hFFFFFFFFF0F0F0F0 ))
  \u_uart/u_core/_n0069_inv_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\u_uart/u_core/bitcnt [2]),
    .ADR5(\u_uart/u_core/bitcnt [1]),
    .O(N21)
  );
  X_FF #(
    .LOC ( "SLICE_X19Y55" ),
    .INIT ( 1'b0 ))
  \u_uart/u_core/tx_busy  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_uart/u_core/tx_busy/CLK ),
    .I(\u_uart/u_core/tx_busy_rstpot_6512 ),
    .O(\u_uart/u_core/tx_busy_7870 ),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y55" ),
    .INIT ( 64'hFFFF7FFFCCCC4CCC ))
  \u_uart/u_core/tx_busy_rstpot  (
    .ADR0(\u_uart/u_core/bitcnt [0]),
    .ADR2(\u_uart/u_core/bitcnt [3]),
    .ADR4(N21),
    .ADR1(\u_uart/u_core/tx_busy_7870 ),
    .ADR3(\u_uart/u_core/GND_8_o_GND_8_o_equal_4_o ),
    .ADR5(\u_uart/tx_start_7935 ),
    .O(\u_uart/u_core/tx_busy_rstpot_6512 )
  );
  X_FF #(
    .LOC ( "SLICE_X19Y56" ),
    .INIT ( 1'b1 ))
  \u_uart/u_core/sh_3  (
    .CE(\u_uart/u_core/_n0061_inv_0 ),
    .CLK(\NlwBufferSignal_u_uart/u_core/sh_3/CLK ),
    .I(\NlwBufferSignal_u_uart/u_core/sh_3/IN ),
    .O(\u_uart/u_core/sh [3]),
    .SET(\u_uart/rst_n_100_inv ),
    .RST(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X19Y56" ),
    .INIT ( 1'b1 ))
  \u_uart/u_core/sh_2  (
    .CE(\u_uart/u_core/_n0061_inv_0 ),
    .CLK(\NlwBufferSignal_u_uart/u_core/sh_2/CLK ),
    .I(\NlwBufferSignal_u_uart/u_core/sh_2/IN ),
    .O(\u_uart/u_core/sh [2]),
    .SET(\u_uart/rst_n_100_inv ),
    .RST(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X19Y56" ),
    .INIT ( 1'b1 ))
  \u_uart/u_core/sh_1  (
    .CE(\u_uart/u_core/_n0061_inv_0 ),
    .CLK(\NlwBufferSignal_u_uart/u_core/sh_1/CLK ),
    .I(\NlwBufferSignal_u_uart/u_core/sh_1/IN ),
    .O(\u_uart/u_core/sh [1]),
    .SET(\u_uart/rst_n_100_inv ),
    .RST(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X19Y56" ),
    .INIT ( 1'b1 ))
  \u_uart/u_core/sh_0  (
    .CE(\u_uart/u_core/_n0061_inv_0 ),
    .CLK(\NlwBufferSignal_u_uart/u_core/sh_0/CLK ),
    .I(1'b0),
    .O(\u_uart/u_core/sh [0]),
    .SET(\u_uart/rst_n_100_inv ),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y5" ),
    .INIT ( 64'h5AA55AA5A55AA55A ))
  \u_fifo_a2b/Mxor_rptr_w<4>_xo<0>1_SW1  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR5(\u_fifo_a2b/rg_s2<1>_0 ),
    .ADR2(\u_fifo_a2b/rg_s2<2>_0 ),
    .ADR3(\u_fifo_a2b/rg_s2<3>_0 ),
    .ADR0(\u_fifo_a2b/wptr [1]),
    .O(N71)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y5" ),
    .INIT ( 64'h6996966969969669 ))
  \u_fifo_a2b/Mxor_rptr_w<4>_xo<0>1_SW0  (
    .ADR5(1'b1),
    .ADR4(\u_fifo_a2b/rg_s2<0>_0 ),
    .ADR1(\u_fifo_a2b/rg_s2<1>_0 ),
    .ADR2(\u_fifo_a2b/rg_s2<2>_0 ),
    .ADR3(\u_fifo_a2b/rg_s2<3>_0 ),
    .ADR0(\u_fifo_a2b/rg_s2 [4]),
    .O(N69)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y5" ),
    .INIT ( 64'hFBBB0888BBBB8888 ))
  \u_fifo_a2b/Mmux_rptr_n111  (
    .ADR4(\u_fifo_a2b/rptr [8]),
    .ADR0(\u_fifo_a2b/rptr[11]_GND_4_o_add_23_OUT<8>_0 ),
    .ADR1(a2b_rd_en),
    .ADR5(\u_fifo_a2b/rd_empty121_7283 ),
    .ADR3(\u_fifo_a2b/rd_empty1241 ),
    .ADR2(N280),
    .O(\u_fifo_a2b/rptr_n [8])
  );
  X_FF #(
    .LOC ( "SLICE_X20Y8" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rg_s2_11  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rg_s2_11/CLK ),
    .I(\NlwBufferSignal_u_fifo_a2b/rg_s2_11/IN ),
    .O(\u_fifo_a2b/rg_s2 [11]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X20Y8" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rg_s2_10  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rg_s2_10/CLK ),
    .I(\NlwBufferSignal_u_fifo_a2b/rg_s2_10/IN ),
    .O(\u_fifo_a2b/rg_s2 [10]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X20Y8" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rg_s2_9  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rg_s2_9/CLK ),
    .I(\NlwBufferSignal_u_fifo_a2b/rg_s2_9/IN ),
    .O(\u_fifo_a2b/rg_s2 [9]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X20Y8" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rg_s2_8  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rg_s2_8/CLK ),
    .I(\NlwBufferSignal_u_fifo_a2b/rg_s2_8/IN ),
    .O(\u_fifo_a2b/rg_s2 [8]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_BUF   \u_fifo_a2b/wr_valid_wr_ok_AND_4_o/u_fifo_a2b/wr_valid_wr_ok_AND_4_o_DMUX_Delay  (
    .I(\u_fifo_a2b/drop_pack_1 ),
    .O(\u_fifo_a2b/drop_7962 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y10" ),
    .INIT ( 64'h0055000000550000 ))
  \u_fifo_a2b/wr_valid_wr_ok_AND_4_o1  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR0(\u_fifo_a2b/drop_7962 ),
    .ADR4(\u_rx_a/m_tvalid_7480 ),
    .ADR3(\u_fifo_a2b/used<11>_0 ),
    .ADR5(1'b1),
    .O(\u_fifo_a2b/wr_valid_wr_ok_AND_4_o )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y10" ),
    .INIT ( 32'h0F0AAAAA ))
  \u_fifo_a2b/drop_rstpot  (
    .ADR1(1'b1),
    .ADR2(\u_rx_a/m_tlast_0 ),
    .ADR0(\u_fifo_a2b/drop_7962 ),
    .ADR4(\u_rx_a/m_tvalid_7480 ),
    .ADR3(\u_fifo_a2b/used<11>_0 ),
    .O(\u_fifo_a2b/drop_rstpot_6574 )
  );
  X_FF #(
    .LOC ( "SLICE_X20Y10" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/drop  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/drop/CLK ),
    .I(\u_fifo_a2b/drop_rstpot_6574 ),
    .O(\u_fifo_a2b/drop_pack_1 ),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X20Y11" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/wptr_7  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_fifo_a2b/wptr_7/CLK ),
    .I(\u_fifo_a2b/wptr_7_dpot_6584 ),
    .O(\u_fifo_a2b/wptr [7]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y11" ),
    .INIT ( 64'hF3F3F3AAC0C0C0AA ))
  \u_fifo_a2b/wptr_7_dpot  (
    .ADR2(\u_fifo_a2b/cptr [7]),
    .ADR3(\u_fifo_a2b/drop_7962 ),
    .ADR1(\u_rx_a/m_tlast_0 ),
    .ADR5(\u_fifo_a2b/wptr [7]),
    .ADR0(\u_fifo_a2b/wptr_n<7>_0 ),
    .ADR4(\u_fifo_a2b/used<11>_0 ),
    .O(\u_fifo_a2b/wptr_7_dpot_6584 )
  );
  X_FF #(
    .LOC ( "SLICE_X20Y11" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/wptr_6  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_fifo_a2b/wptr_6/CLK ),
    .I(\u_fifo_a2b/wptr_6_dpot_6594 ),
    .O(\u_fifo_a2b/wptr [6]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y11" ),
    .INIT ( 64'hCCCCD8D8FF00FA50 ))
  \u_fifo_a2b/wptr_6_dpot  (
    .ADR1(\u_fifo_a2b/cptr [6]),
    .ADR0(\u_fifo_a2b/drop_7962 ),
    .ADR5(\u_rx_a/m_tlast_0 ),
    .ADR3(\u_fifo_a2b/wptr [6]),
    .ADR2(\u_fifo_a2b/wptr_n<6>_0 ),
    .ADR4(\u_fifo_a2b/used<11>_0 ),
    .O(\u_fifo_a2b/wptr_6_dpot_6594 )
  );
  X_FF #(
    .LOC ( "SLICE_X20Y11" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/wptr_5  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_fifo_a2b/wptr_5/CLK ),
    .I(\u_fifo_a2b/wptr_5_dpot_6602 ),
    .O(\u_fifo_a2b/wptr [5]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y11" ),
    .INIT ( 64'hF5F5A0A0F5CCA0CC ))
  \u_fifo_a2b/wptr_5_dpot  (
    .ADR2(\u_fifo_a2b/cptr [5]),
    .ADR5(\u_fifo_a2b/drop_7962 ),
    .ADR0(\u_rx_a/m_tlast_0 ),
    .ADR4(\u_fifo_a2b/wptr [5]),
    .ADR1(\u_fifo_a2b/wptr_n<5>_0 ),
    .ADR3(\u_fifo_a2b/used<11>_0 ),
    .O(\u_fifo_a2b/wptr_5_dpot_6602 )
  );
  X_FF #(
    .LOC ( "SLICE_X20Y11" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/wptr_4  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_fifo_a2b/wptr_4/CLK ),
    .I(\u_fifo_a2b/wptr_4_dpot_6610 ),
    .O(\u_fifo_a2b/wptr [4]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y11" ),
    .INIT ( 64'hAFAFAFCCA0A0A0CC ))
  \u_fifo_a2b/wptr_4_dpot  (
    .ADR0(\u_fifo_a2b/cptr [4]),
    .ADR3(\u_fifo_a2b/drop_7962 ),
    .ADR2(\u_rx_a/m_tlast_0 ),
    .ADR5(\u_fifo_a2b/wptr [4]),
    .ADR1(\u_fifo_a2b/wptr_n<4>_0 ),
    .ADR4(\u_fifo_a2b/used<11>_0 ),
    .O(\u_fifo_a2b/wptr_4_dpot_6610 )
  );
  X_FF #(
    .LOC ( "SLICE_X20Y12" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cptr_7  (
    .CE(\u_fifo_a2b/wr_ok1_cepot ),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cptr_7/CLK ),
    .I(\u_fifo_a2b/cptr_7_dpot1_6619 ),
    .O(\u_fifo_a2b/cptr [7]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y12" ),
    .INIT ( 64'hFFBB0088FFFF0000 ))
  \u_fifo_a2b/cptr_7_dpot1  (
    .ADR2(1'b1),
    .ADR5(\u_rx_a/m_tlast_0 ),
    .ADR3(\u_fifo_a2b/drop_7962 ),
    .ADR4(\u_fifo_a2b/cptr [7]),
    .ADR1(\u_rx_a/m_tvalid_7480 ),
    .ADR0(\u_fifo_a2b/wptr_n<7>_0 ),
    .O(\u_fifo_a2b/cptr_7_dpot1_6619 )
  );
  X_FF #(
    .LOC ( "SLICE_X20Y12" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cptr_6  (
    .CE(\u_fifo_a2b/wr_ok1_cepot ),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cptr_6/CLK ),
    .I(\u_fifo_a2b/cptr_6_dpot1_6628 ),
    .O(\u_fifo_a2b/cptr [6]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y12" ),
    .INIT ( 64'hFFF500A0FFFF0000 ))
  \u_fifo_a2b/cptr_6_dpot1  (
    .ADR1(1'b1),
    .ADR0(\u_rx_a/m_tlast_0 ),
    .ADR3(\u_fifo_a2b/drop_7962 ),
    .ADR4(\u_fifo_a2b/cptr [6]),
    .ADR5(\u_rx_a/m_tvalid_7480 ),
    .ADR2(\u_fifo_a2b/wptr_n<6>_0 ),
    .O(\u_fifo_a2b/cptr_6_dpot1_6628 )
  );
  X_FF #(
    .LOC ( "SLICE_X20Y12" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cptr_5  (
    .CE(\u_fifo_a2b/wr_ok1_cepot ),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cptr_5/CLK ),
    .I(\u_fifo_a2b/cptr_5_dpot1_6635 ),
    .O(\u_fifo_a2b/cptr [5]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y12" ),
    .INIT ( 64'hFFFFAFFF0000A000 ))
  \u_fifo_a2b/cptr_5_dpot1  (
    .ADR1(1'b1),
    .ADR3(\u_rx_a/m_tlast_0 ),
    .ADR4(\u_fifo_a2b/drop_7962 ),
    .ADR5(\u_fifo_a2b/cptr [5]),
    .ADR2(\u_rx_a/m_tvalid_7480 ),
    .ADR0(\u_fifo_a2b/wptr_n<5>_0 ),
    .O(\u_fifo_a2b/cptr_5_dpot1_6635 )
  );
  X_FF #(
    .LOC ( "SLICE_X20Y12" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cptr_4  (
    .CE(\u_fifo_a2b/wr_ok1_cepot ),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cptr_4/CLK ),
    .I(\u_fifo_a2b/cptr_4_dpot1_6642 ),
    .O(\u_fifo_a2b/cptr [4]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y12" ),
    .INIT ( 64'hEFFFEFFF20002000 ))
  \u_fifo_a2b/cptr_4_dpot1  (
    .ADR4(1'b1),
    .ADR3(\u_rx_a/m_tlast_0 ),
    .ADR1(\u_fifo_a2b/drop_7962 ),
    .ADR5(\u_fifo_a2b/cptr [4]),
    .ADR2(\u_rx_a/m_tvalid_7480 ),
    .ADR0(\u_fifo_a2b/wptr_n<4>_0 ),
    .O(\u_fifo_a2b/cptr_4_dpot1_6642 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y13" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \u_fifo_a2b/wr_ok1_cepot_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .ADR4(\u_fifo_a2b/used<11>_0 ),
    .O(\u_fifo_a2b/wr_ok1_cepot )
  );
  X_FF #(
    .LOC ( "SLICE_X20Y14" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/wptr_11  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_fifo_a2b/wptr_11/CLK ),
    .I(\u_fifo_a2b/wptr_11_dpot_6652 ),
    .O(\u_fifo_a2b/wptr [11]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y14" ),
    .INIT ( 64'hFFFACCCA333A000A ))
  \u_fifo_a2b/wptr_11_dpot  (
    .ADR5(\u_fifo_a2b/cptr [11]),
    .ADR2(\u_fifo_a2b/drop_7962 ),
    .ADR1(\u_rx_a/m_tlast_0 ),
    .ADR4(\u_fifo_a2b/wptr [11]),
    .ADR0(\u_fifo_a2b/wptr_n<11>_0 ),
    .ADR3(\u_fifo_a2b/used<11>_0 ),
    .O(\u_fifo_a2b/wptr_11_dpot_6652 )
  );
  X_FF #(
    .LOC ( "SLICE_X20Y14" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/wptr_10  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_fifo_a2b/wptr_10/CLK ),
    .I(\u_fifo_a2b/wptr_10_dpot_6662 ),
    .O(\u_fifo_a2b/wptr [10]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y14" ),
    .INIT ( 64'hFEFEFE020202FE02 ))
  \u_fifo_a2b/wptr_10_dpot  (
    .ADR5(\u_fifo_a2b/cptr [10]),
    .ADR1(\u_fifo_a2b/drop_7962 ),
    .ADR4(\u_rx_a/m_tlast_0 ),
    .ADR3(\u_fifo_a2b/wptr [10]),
    .ADR0(\u_fifo_a2b/wptr_n<10>_0 ),
    .ADR2(\u_fifo_a2b/used<11>_0 ),
    .O(\u_fifo_a2b/wptr_10_dpot_6662 )
  );
  X_FF #(
    .LOC ( "SLICE_X20Y14" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/wptr_9  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_fifo_a2b/wptr_9/CLK ),
    .I(\u_fifo_a2b/wptr_9_dpot_6670 ),
    .O(\u_fifo_a2b/wptr [9]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y14" ),
    .INIT ( 64'hF0FFF000E2EEE222 ))
  \u_fifo_a2b/wptr_9_dpot  (
    .ADR2(\u_fifo_a2b/cptr [9]),
    .ADR5(\u_fifo_a2b/drop_7962 ),
    .ADR3(\u_rx_a/m_tlast_0 ),
    .ADR4(\u_fifo_a2b/wptr [9]),
    .ADR0(\u_fifo_a2b/wptr_n<9>_0 ),
    .ADR1(\u_fifo_a2b/used<11>_0 ),
    .O(\u_fifo_a2b/wptr_9_dpot_6670 )
  );
  X_FF #(
    .LOC ( "SLICE_X20Y14" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/wptr_8  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_fifo_a2b/wptr_8/CLK ),
    .I(\u_fifo_a2b/wptr_8_dpot_6678 ),
    .O(\u_fifo_a2b/wptr [8]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y14" ),
    .INIT ( 64'hFEFE02FEFE020202 ))
  \u_fifo_a2b/wptr_8_dpot  (
    .ADR4(\u_fifo_a2b/cptr [8]),
    .ADR2(\u_fifo_a2b/drop_7962 ),
    .ADR3(\u_rx_a/m_tlast_0 ),
    .ADR5(\u_fifo_a2b/wptr [8]),
    .ADR0(\u_fifo_a2b/wptr_n<8>_0 ),
    .ADR1(\u_fifo_a2b/used<11>_0 ),
    .O(\u_fifo_a2b/wptr_8_dpot_6678 )
  );
  X_FF #(
    .LOC ( "SLICE_X20Y15" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cptr_11  (
    .CE(\u_fifo_a2b/wr_ok1_cepot ),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cptr_11/CLK ),
    .I(\u_fifo_a2b/cptr_11_dpot1_6687 ),
    .O(\u_fifo_a2b/cptr [11]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y15" ),
    .INIT ( 64'hFFBBFFFF00880000 ))
  \u_fifo_a2b/cptr_11_dpot1  (
    .ADR2(1'b1),
    .ADR1(\u_rx_a/m_tlast_0 ),
    .ADR3(\u_fifo_a2b/drop_7962 ),
    .ADR5(\u_fifo_a2b/cptr [11]),
    .ADR4(\u_rx_a/m_tvalid_7480 ),
    .ADR0(\u_fifo_a2b/wptr_n<11>_0 ),
    .O(\u_fifo_a2b/cptr_11_dpot1_6687 )
  );
  X_FF #(
    .LOC ( "SLICE_X20Y15" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cptr_10  (
    .CE(\u_fifo_a2b/wr_ok1_cepot ),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cptr_10/CLK ),
    .I(\u_fifo_a2b/cptr_10_dpot1_6696 ),
    .O(\u_fifo_a2b/cptr [10]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y15" ),
    .INIT ( 64'hAAFAAAAAAA0AAAAA ))
  \u_fifo_a2b/cptr_10_dpot1  (
    .ADR1(1'b1),
    .ADR2(\u_rx_a/m_tlast_0 ),
    .ADR3(\u_fifo_a2b/drop_7962 ),
    .ADR0(\u_fifo_a2b/cptr [10]),
    .ADR4(\u_rx_a/m_tvalid_7480 ),
    .ADR5(\u_fifo_a2b/wptr_n<10>_0 ),
    .O(\u_fifo_a2b/cptr_10_dpot1_6696 )
  );
  X_FF #(
    .LOC ( "SLICE_X20Y15" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cptr_9  (
    .CE(\u_fifo_a2b/wr_ok1_cepot ),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cptr_9/CLK ),
    .I(\u_fifo_a2b/cptr_9_dpot1_6703 ),
    .O(\u_fifo_a2b/cptr [9]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y15" ),
    .INIT ( 64'hAAAAE2AAAAAAE2AA ))
  \u_fifo_a2b/cptr_9_dpot1  (
    .ADR5(1'b1),
    .ADR1(\u_rx_a/m_tlast_0 ),
    .ADR4(\u_fifo_a2b/drop_7962 ),
    .ADR0(\u_fifo_a2b/cptr [9]),
    .ADR3(\u_rx_a/m_tvalid_7480 ),
    .ADR2(\u_fifo_a2b/wptr_n<9>_0 ),
    .O(\u_fifo_a2b/cptr_9_dpot1_6703 )
  );
  X_FF #(
    .LOC ( "SLICE_X20Y15" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cptr_8  (
    .CE(\u_fifo_a2b/wr_ok1_cepot ),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cptr_8/CLK ),
    .I(\u_fifo_a2b/cptr_8_dpot1_6710 ),
    .O(\u_fifo_a2b/cptr [8]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y15" ),
    .INIT ( 64'hFFFF0000DDFF8800 ))
  \u_fifo_a2b/cptr_8_dpot1  (
    .ADR2(1'b1),
    .ADR0(\u_rx_a/m_tlast_0 ),
    .ADR5(\u_fifo_a2b/drop_7962 ),
    .ADR4(\u_fifo_a2b/cptr [8]),
    .ADR3(\u_rx_a/m_tvalid_7480 ),
    .ADR1(\u_fifo_a2b/wptr_n<8>_0 ),
    .O(\u_fifo_a2b/cptr_8_dpot1_6710 )
  );
  X_BUF   \u_tx_a/bcnt_FSM_FFd2/u_tx_a/bcnt_FSM_FFd2_DMUX_Delay  (
    .I(\u_tx_a/bcnt_FSM_FFd1_pack_2 ),
    .O(\u_tx_a/bcnt_FSM_FFd1_7641 )
  );
  X_FF #(
    .LOC ( "SLICE_X20Y24" ),
    .INIT ( 1'b0 ))
  \u_tx_a/bcnt_FSM_FFd2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_tx_a/bcnt_FSM_FFd2/CLK ),
    .I(\u_tx_a/bcnt_FSM_FFd2-In ),
    .O(\u_tx_a/bcnt_FSM_FFd2_7642 ),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y24" ),
    .INIT ( 64'h773F4400773F4400 ))
  \u_tx_a/bcnt_FSM_FFd2-In1  (
    .ADR1(\u_tx_a/state_FSM_FFd2_7379 ),
    .ADR3(\u_tx_a/state_FSM_FFd1_7378 ),
    .ADR2(\u_tx_a/pcnt[5]_GND_5_o_equal_7_o ),
    .ADR4(\u_tx_a/bcnt_FSM_FFd2_7642 ),
    .ADR0(\u_tx_a/bcnt_FSM_FFd1_7641 ),
    .ADR5(1'b1),
    .O(\u_tx_a/bcnt_FSM_FFd2-In )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y24" ),
    .INIT ( 32'hEE2A222A ))
  \u_tx_a/bcnt_FSM_FFd1-In1  (
    .ADR1(\u_tx_a/state_FSM_FFd2_7379 ),
    .ADR3(\u_tx_a/state_FSM_FFd1_7378 ),
    .ADR2(\u_tx_a/pcnt[5]_GND_5_o_equal_7_o ),
    .ADR4(\u_tx_a/bcnt_FSM_FFd2_7642 ),
    .ADR0(\u_tx_a/bcnt_FSM_FFd1_7641 ),
    .O(\u_tx_a/bcnt_FSM_FFd1-In )
  );
  X_FF #(
    .LOC ( "SLICE_X20Y24" ),
    .INIT ( 1'b0 ))
  \u_tx_a/bcnt_FSM_FFd1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_tx_a/bcnt_FSM_FFd1/CLK ),
    .I(\u_tx_a/bcnt_FSM_FFd1-In ),
    .O(\u_tx_a/bcnt_FSM_FFd1_pack_2 ),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y24" ),
    .INIT ( 64'h2000000000000000 ))
  \u_tx_a/pcnt[5]_GND_5_o_equal_7_o<5>2  (
    .ADR4(\u_tx_a/pcnt [3]),
    .ADR2(\u_tx_a/pcnt [2]),
    .ADR1(\u_tx_a/pcnt [5]),
    .ADR5(\u_tx_a/pcnt [1]),
    .ADR3(\u_tx_a/pcnt [0]),
    .ADR0(\u_tx_a/pcnt [4]),
    .O(\u_tx_a/pcnt[5]_GND_5_o_equal_7_o )
  );
  X_BUF   \u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT12/u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT12_DMUX_Delay  (
    .I(N277),
    .O(N277_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y25" ),
    .INIT ( 64'hFFFFB931FFFFB931 ))
  \u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT12  (
    .ADR1(\u_tx_a/state_FSM_FFd1_7378 ),
    .ADR0(\u_tx_a/state_FSM_FFd2_7379 ),
    .ADR3(\u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT1 ),
    .ADR2(\u_tx_a/pcnt[5]_GND_5_o_equal_7_o ),
    .ADR4(\u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT132 ),
    .ADR5(1'b1),
    .O(\u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT12_7981 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y25" ),
    .INIT ( 32'hEEEEEEEE ))
  \u_fifo_b2a/rd_empty125_SW6  (
    .ADR1(\u_tx_a/state_FSM_FFd1_7378 ),
    .ADR0(\u_tx_a/state_FSM_FFd2_7379 ),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(N277)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y25" ),
    .INIT ( 64'h0505000000000000 ))
  \u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT1321  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR5(\u_tx_a/pcnt [5]),
    .ADR0(\u_tx_a/pcnt [4]),
    .ADR2(\u_tx_a/state_FSM_FFd2_7379 ),
    .ADR4(\u_tx_a/Madd_pcnt[5]_GND_5_o_add_21_OUT_cy<3> ),
    .O(\u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT132 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y25" ),
    .INIT ( 64'hFEF4FEF4AEA40E04 ))
  \u_fifo_b2a/rd_empty125_SW1  (
    .ADR2(\u_tx_a/state_FSM_FFd1_7378 ),
    .ADR0(\u_tx_a/state_FSM_FFd2_7379 ),
    .ADR4(\u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT1 ),
    .ADR3(\u_tx_a/pcnt[5]_GND_5_o_equal_7_o ),
    .ADR1(\u_fifo_b2a/rd_empty122_7439 ),
    .ADR5(\u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT132 ),
    .O(N53)
  );
  X_BUF   \N90/N90_CMUX_Delay  (
    .I(N91),
    .O(N91_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X20Y26" ))
  \u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_SW2  (
    .IA(N462),
    .IB(N463),
    .O(N91),
    .SEL(\u_fifo_b2a/cptr_r[0] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y26" ),
    .INIT ( 64'h155595FF95FF95FF ))
  \u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_SW2_F  (
    .ADR0(\u_tx_a/pcnt [2]),
    .ADR1(\u_tx_a/pcnt [1]),
    .ADR2(\u_tx_a/pcnt [0]),
    .ADR5(\u_fifo_b2a/rptr [0]),
    .ADR4(N52),
    .ADR3(\u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT11 ),
    .O(N462)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y26" ),
    .INIT ( 64'hD00FDDFF00FFDDFF ))
  \u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_SW2_G  (
    .ADR3(\u_tx_a/pcnt [2]),
    .ADR5(\u_tx_a/pcnt [1]),
    .ADR2(\u_tx_a/pcnt [0]),
    .ADR1(\u_fifo_b2a/rptr [0]),
    .ADR0(N52),
    .ADR4(\u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT11 ),
    .O(N463)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y26" ),
    .INIT ( 64'h007700FF8877FFFF ))
  \u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_SW1  (
    .ADR2(1'b1),
    .ADR3(\u_tx_a/pcnt [2]),
    .ADR0(\u_tx_a/pcnt [1]),
    .ADR1(\u_tx_a/pcnt [0]),
    .ADR5(N52),
    .ADR4(\u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT11 ),
    .O(N90)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y26" ),
    .INIT ( 64'hF4F0040020002000 ))
  \u_fifo_b2a/rd_empty125_SW0  (
    .ADR0(\u_tx_a/pcnt [5]),
    .ADR1(\u_tx_a/pcnt [4]),
    .ADR2(\u_tx_a/state_FSM_FFd1_7378 ),
    .ADR5(\u_tx_a/state_FSM_FFd2_7379 ),
    .ADR4(\u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT1 ),
    .ADR3(\u_tx_a/Madd_pcnt[5]_GND_5_o_add_21_OUT_cy<3> ),
    .O(N52)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y27" ),
    .INIT ( 64'hCFCCF000CFCCF000 ))
  \u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_SW5_SW0  (
    .ADR0(1'b1),
    .ADR5(1'b1),
    .ADR4(\u_tx_a/pcnt [1]),
    .ADR2(\u_tx_a/pcnt [0]),
    .ADR1(N52),
    .ADR3(\u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT11 ),
    .O(N238)
  );
  X_FF #(
    .LOC ( "SLICE_X20Y27" ),
    .INIT ( 1'b0 ))
  \u_tx_a/pcnt_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_tx_a/pcnt_3/CLK ),
    .I(\u_tx_a/state[1]_pcnt[5]_wide_mux_27_OUT<3> ),
    .O(\u_tx_a/pcnt [3]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y27" ),
    .INIT ( 64'hFF7F8080FF000000 ))
  \u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT41  (
    .ADR5(\u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT11 ),
    .ADR1(\u_tx_a/pcnt [0]),
    .ADR0(\u_tx_a/pcnt [1]),
    .ADR4(\u_tx_a/pcnt [3]),
    .ADR2(\u_tx_a/pcnt [2]),
    .ADR3(\u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_8530 ),
    .O(\u_tx_a/state[1]_pcnt[5]_wide_mux_27_OUT<3> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y27" ),
    .INIT ( 64'hFF84FF007B00FF00 ))
  \u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21  (
    .ADR0(\u_fifo_b2a/rptr [0]),
    .ADR3(N52),
    .ADR2(\u_fifo_b2a/cptr_r[0] ),
    .ADR4(\u_fifo_b2a/rd_empty12 ),
    .ADR5(N53),
    .ADR1(\u_fifo_b2a/rd_empty124_7572 ),
    .O(\u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_8530 )
  );
  X_FF #(
    .LOC ( "SLICE_X20Y27" ),
    .INIT ( 1'b0 ))
  \u_tx_a/pcnt_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_tx_a/pcnt_2/CLK ),
    .I(\u_tx_a/state[1]_pcnt[5]_wide_mux_27_OUT<2> ),
    .O(\u_tx_a/pcnt [2]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y27" ),
    .INIT ( 64'hC0F3555555555555 ))
  \u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT31  (
    .ADR4(\u_fifo_b2a/rd_empty12 ),
    .ADR5(\u_fifo_b2a/rd_empty124_7572 ),
    .ADR0(N90),
    .ADR1(N53),
    .ADR2(N92_0),
    .ADR3(N91_0),
    .O(\u_tx_a/state[1]_pcnt[5]_wide_mux_27_OUT<2> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y42" ),
    .INIT ( 64'hC000000000000000 ))
  \u_uart/u_core/GND_8_o_GND_8_o_equal_4_o<12>2  (
    .ADR0(1'b1),
    .ADR3(\u_uart/u_core/baudcnt [4]),
    .ADR4(\u_uart/u_core/baudcnt [2]),
    .ADR5(\u_uart/u_core/baudcnt [12]),
    .ADR2(\u_uart/u_core/baudcnt [10]),
    .ADR1(\u_uart/u_core/baudcnt [6]),
    .O(\u_uart/u_core/GND_8_o_GND_8_o_equal_4_o<12>1_8307 )
  );
  X_FF #(
    .LOC ( "SLICE_X20Y42" ),
    .INIT ( 1'b0 ))
  \u_uart/u_core/baudcnt_12  (
    .CE(\u_uart/u_core/_n0060_inv ),
    .CLK(\NlwBufferSignal_u_uart/u_core/baudcnt_12/CLK ),
    .I(\u_uart/u_core/baudcnt[12]_baudcnt[12]_mux_14_OUT<12> ),
    .O(\u_uart/u_core/baudcnt [12]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y42" ),
    .INIT ( 64'h7000F000F000F000 ))
  \u_uart/u_core/Mmux_baudcnt[12]_baudcnt[12]_mux_14_OUT41  (
    .ADR2(\u_uart/u_core/tx_busy_7870 ),
    .ADR3(\u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<12>_0 ),
    .ADR0(\u_uart/u_core/baudcnt [1]),
    .ADR1(\u_uart/u_core/baudcnt [0]),
    .ADR5(\u_uart/u_core/GND_8_o_GND_8_o_equal_4_o<12>1_8307 ),
    .ADR4(\u_uart/u_core/GND_8_o_GND_8_o_equal_4_o_1 [12]),
    .O(\u_uart/u_core/baudcnt[12]_baudcnt[12]_mux_14_OUT<12> )
  );
  X_FF #(
    .LOC ( "SLICE_X20Y42" ),
    .INIT ( 1'b0 ))
  \u_uart/u_core/baudcnt_11  (
    .CE(\u_uart/u_core/_n0060_inv ),
    .CLK(\NlwBufferSignal_u_uart/u_core/baudcnt_11/CLK ),
    .I(\u_uart/u_core/baudcnt[12]_baudcnt[12]_mux_14_OUT<11> ),
    .O(\u_uart/u_core/baudcnt [11]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y42" ),
    .INIT ( 64'h7F000000FF000000 ))
  \u_uart/u_core/Mmux_baudcnt[12]_baudcnt[12]_mux_14_OUT31  (
    .ADR3(\u_uart/u_core/tx_busy_7870 ),
    .ADR4(\u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<11>_0 ),
    .ADR2(\u_uart/u_core/baudcnt [1]),
    .ADR1(\u_uart/u_core/baudcnt [0]),
    .ADR0(\u_uart/u_core/GND_8_o_GND_8_o_equal_4_o<12>1_8307 ),
    .ADR5(\u_uart/u_core/GND_8_o_GND_8_o_equal_4_o_1 [12]),
    .O(\u_uart/u_core/baudcnt[12]_baudcnt[12]_mux_14_OUT<11> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y5" ),
    .INIT ( 64'h00FFFF00FF0000FF ))
  \u_fifo_a2b/Mxor_rptr_w<4>_xo<0>1_SW2  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(\u_fifo_a2b/rg_s2<2>_0 ),
    .ADR4(\u_fifo_a2b/rg_s2<3>_0 ),
    .ADR3(\u_fifo_a2b/wptr [2]),
    .O(N73)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y6" ),
    .INIT ( 64'h0FF00FF00FF00FF0 ))
  \u_fifo_a2b/Mxor_rptr_w<4>_xo<0>1_SW3  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .ADR2(\u_fifo_a2b/wptr [3]),
    .ADR3(\u_fifo_a2b/rg_s2<3>_0 ),
    .O(N75)
  );
  X_FF #(
    .LOC ( "SLICE_X21Y16" ),
    .INIT ( 1'b0 ))
  \u_tx_a/cur_last  (
    .CE(b2a_rd_en),
    .CLK(\NlwBufferSignal_u_tx_a/cur_last/CLK ),
    .I(\NlwBufferSignal_u_tx_a/cur_last/IN ),
    .O(\u_tx_a/cur_last_7804 ),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y23" ),
    .INIT ( 64'hCCCC0CCCCCCC0CCC ))
  \u_fifo_b2a/rd_empty125_SW2  (
    .ADR0(1'b1),
    .ADR5(1'b1),
    .ADR1(\u_tx_a/state_FSM_FFd2_7379 ),
    .ADR4(\u_tx_a/bcnt_FSM_FFd2_7642 ),
    .ADR3(\u_tx_a/cur_last_7804 ),
    .ADR2(\u_tx_a/bcnt_FSM_FFd1_7641 ),
    .O(N270)
  );
  X_BUF   \u_tx_a/state_FSM_FFd2/u_tx_a/state_FSM_FFd2_DMUX_Delay  (
    .I(N273_pack_10),
    .O(N273)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y24" ),
    .INIT ( 64'hBEBEBEBEBEBEBEBE ))
  \u_fifo_b2a/rd_empty125_SW3  (
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR0(\u_tx_a/state_FSM_FFd2_7379 ),
    .ADR1(\u_fifo_b2a/rptr [0]),
    .ADR2(\u_fifo_b2a/cptr_r[0] ),
    .ADR5(1'b1),
    .O(N271)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X21Y24" ),
    .INIT ( 32'hC3C3C3C3 ))
  \u_fifo_b2a/rd_empty125_SW4  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR1(\u_fifo_b2a/rptr [0]),
    .ADR2(\u_fifo_b2a/cptr_r[0] ),
    .O(N273_pack_10)
  );
  X_FF #(
    .LOC ( "SLICE_X21Y24" ),
    .INIT ( 1'b0 ))
  \u_tx_a/state_FSM_FFd2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_tx_a/state_FSM_FFd2/CLK ),
    .I(\u_tx_a/state_FSM_FFd2-In ),
    .O(\u_tx_a/state_FSM_FFd2_7379 ),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y24" ),
    .INIT ( 64'hAAFFAAFFAA3FAAFF ))
  \u_tx_a/state_FSM_FFd2-In1  (
    .ADR3(\u_tx_a/state_FSM_FFd1_7378 ),
    .ADR0(N270),
    .ADR2(\u_fifo_b2a/rd_empty121_7418 ),
    .ADR4(\u_fifo_b2a/rd_empty12 ),
    .ADR1(\u_fifo_b2a/rd_empty124_7572 ),
    .ADR5(N271),
    .O(\u_tx_a/state_FSM_FFd2-In )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y24" ),
    .INIT ( 64'hFF13FF33FF33FF33 ))
  \u_tx_a/state[1]_GND_5_o_Mux_24_o1  (
    .ADR1(\u_tx_a/state_FSM_FFd1_7378 ),
    .ADR3(\u_tx_a/state_FSM_FFd2_7379 ),
    .ADR0(\u_fifo_b2a/rd_empty121_7418 ),
    .ADR4(\u_fifo_b2a/rd_empty12 ),
    .ADR5(\u_fifo_b2a/rd_empty124_7572 ),
    .ADR2(N273),
    .O(\u_tx_a/state[1]_GND_5_o_Mux_24_o )
  );
  X_FF #(
    .LOC ( "SLICE_X21Y24" ),
    .INIT ( 1'b0 ))
  \u_tx_a/state_FSM_FFd1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_tx_a/state_FSM_FFd1/CLK ),
    .I(\u_tx_a/state_FSM_FFd1-In ),
    .O(\u_tx_a/state_FSM_FFd1_7378 ),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y24" ),
    .INIT ( 64'hFFFFDFDFFF000000 ))
  \u_tx_a/state_FSM_FFd1-In1  (
    .ADR0(\u_tx_a/Madd_pcnt[5]_GND_5_o_add_21_OUT_cy<3> ),
    .ADR1(\u_tx_a/pcnt [4]),
    .ADR4(\u_tx_a/state_FSM_FFd2_7379 ),
    .ADR5(\u_tx_a/state_FSM_FFd1_7378 ),
    .ADR2(\u_tx_a/pcnt [5]),
    .ADR3(\u_tx_a/pcnt[5]_GND_5_o_equal_7_o ),
    .O(\u_tx_a/state_FSM_FFd1-In )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y25" ),
    .INIT ( 64'hFFFFFFFF55FF55FF ))
  \u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_SW0  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR0(\u_tx_a/cur_last_7804 ),
    .ADR3(\u_tx_a/bcnt_FSM_FFd1_7641 ),
    .ADR5(\u_tx_a/bcnt_FSM_FFd2_7642 ),
    .O(\u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT1 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y25" ),
    .INIT ( 64'hF03400347C007C00 ))
  \u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_SW4_SW0  (
    .ADR3(\u_tx_a/state_FSM_FFd2_7379 ),
    .ADR5(\u_tx_a/state_FSM_FFd1_7378 ),
    .ADR1(\u_tx_a/Madd_pcnt[5]_GND_5_o_add_21_OUT_cy<3> ),
    .ADR0(\u_tx_a/pcnt [5]),
    .ADR2(\u_tx_a/pcnt [4]),
    .ADR4(\u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT1 ),
    .O(N234)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y25" ),
    .INIT ( 64'hFCFEAA00CFEFAA00 ))
  \u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_SW5_SW2  (
    .ADR4(\u_tx_a/pcnt [1]),
    .ADR3(\u_tx_a/pcnt [0]),
    .ADR2(\u_fifo_b2a/rptr [0]),
    .ADR1(N52),
    .ADR5(\u_fifo_b2a/cptr_r[0] ),
    .ADR0(\u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT11 ),
    .O(N240)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y26" ),
    .INIT ( 64'hFCCCB8C8B8C8FCCC ))
  \u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_SW4_SW2  (
    .ADR1(\u_tx_a/pcnt [4]),
    .ADR5(\u_fifo_b2a/rptr [0]),
    .ADR3(\u_tx_a/Madd_pcnt[5]_GND_5_o_add_21_OUT_cy<3> ),
    .ADR0(N52),
    .ADR4(\u_fifo_b2a/cptr_r[0] ),
    .ADR2(\u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT11 ),
    .O(N236)
  );
  X_FF #(
    .LOC ( "SLICE_X21Y26" ),
    .INIT ( 1'b0 ))
  \u_tx_a/pcnt_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_tx_a/pcnt_5/CLK ),
    .I(\u_tx_a/state[1]_pcnt[5]_wide_mux_27_OUT<5> ),
    .O(\u_tx_a/pcnt [5]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y26" ),
    .INIT ( 64'hF535555505355555 ))
  \u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT61  (
    .ADR4(\u_fifo_b2a/rd_empty12 ),
    .ADR2(\u_fifo_b2a/rd_empty124_7572 ),
    .ADR0(N98),
    .ADR3(N53),
    .ADR5(N100_0),
    .ADR1(N99_0),
    .O(\u_tx_a/state[1]_pcnt[5]_wide_mux_27_OUT<5> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y26" ),
    .INIT ( 64'hC44C3333F77FF77F ))
  \u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_SW4_SW1  (
    .ADR1(\u_tx_a/pcnt [4]),
    .ADR2(\u_fifo_b2a/rptr [0]),
    .ADR4(\u_tx_a/Madd_pcnt[5]_GND_5_o_add_21_OUT_cy<3> ),
    .ADR0(N52),
    .ADR3(\u_fifo_b2a/cptr_r[0] ),
    .ADR5(\u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT11 ),
    .O(N235)
  );
  X_FF #(
    .LOC ( "SLICE_X21Y26" ),
    .INIT ( 1'b0 ))
  \u_tx_a/pcnt_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_tx_a/pcnt_4/CLK ),
    .I(\u_tx_a/state[1]_pcnt[5]_wide_mux_27_OUT<4> ),
    .O(\u_tx_a/pcnt [4]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y26" ),
    .INIT ( 64'hD580F7A2FF00FF00 ))
  \u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT51  (
    .ADR3(N234),
    .ADR0(\u_fifo_b2a/rd_empty12 ),
    .ADR1(N53),
    .ADR5(\u_fifo_b2a/rd_empty124_7572 ),
    .ADR2(N236),
    .ADR4(N235),
    .O(\u_tx_a/state[1]_pcnt[5]_wide_mux_27_OUT<4> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y27" ),
    .INIT ( 64'h99FF195F195F99FF ))
  \u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_SW5_SW1  (
    .ADR0(\u_tx_a/pcnt [1]),
    .ADR1(\u_tx_a/pcnt [0]),
    .ADR4(\u_fifo_b2a/rptr [0]),
    .ADR2(N52),
    .ADR5(\u_fifo_b2a/cptr_r[0] ),
    .ADR3(\u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT11 ),
    .O(N239)
  );
  X_FF #(
    .LOC ( "SLICE_X21Y27" ),
    .INIT ( 1'b0 ))
  \u_tx_a/pcnt_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_tx_a/pcnt_1/CLK ),
    .I(\u_tx_a/state[1]_pcnt[5]_wide_mux_27_OUT<1> ),
    .O(\u_tx_a/pcnt [1]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y27" ),
    .INIT ( 64'hE222AAAAE2EEAAAA ))
  \u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT22  (
    .ADR4(\u_fifo_b2a/rd_empty12 ),
    .ADR3(N53),
    .ADR1(\u_fifo_b2a/rd_empty124_7572 ),
    .ADR0(N238),
    .ADR2(N240),
    .ADR5(N239),
    .O(\u_tx_a/state[1]_pcnt[5]_wide_mux_27_OUT<1> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y27" ),
    .INIT ( 64'hFEEFEEEEEEEEEEEE ))
  \u_fifo_b2a/rd_empty125_SW7  (
    .ADR0(\u_tx_a/state_FSM_FFd1_7378 ),
    .ADR1(\u_tx_a/state_FSM_FFd2_7379 ),
    .ADR3(\u_fifo_b2a/rptr [0]),
    .ADR2(\u_fifo_b2a/cptr_r[0] ),
    .ADR5(\u_fifo_b2a/rd_empty121_7418 ),
    .ADR4(\u_fifo_b2a/rd_empty12 ),
    .O(N278)
  );
  X_FF #(
    .LOC ( "SLICE_X21Y27" ),
    .INIT ( 1'b0 ))
  \u_tx_a/pcnt_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_tx_a/pcnt_0/CLK ),
    .I(\u_tx_a/state[1]_pcnt[5]_wide_mux_27_OUT<0> ),
    .O(\u_tx_a/pcnt [0]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y27" ),
    .INIT ( 64'hF0AAFFFFF3BBF3BB ))
  \u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT13  (
    .ADR1(N277_0),
    .ADR0(\u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT11 ),
    .ADR2(\u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT12_7981 ),
    .ADR3(\u_tx_a/pcnt [0]),
    .ADR5(\u_fifo_b2a/rd_empty124_7572 ),
    .ADR4(N278),
    .O(\u_tx_a/state[1]_pcnt[5]_wide_mux_27_OUT<0> )
  );
  X_FF #(
    .LOC ( "SLICE_X21Y41" ),
    .INIT ( 1'b0 ))
  \u_uart/u_core/baudcnt_6  (
    .CE(\u_uart/u_core/_n0060_inv ),
    .CLK(\NlwBufferSignal_u_uart/u_core/baudcnt_6/CLK ),
    .I(\u_uart/u_core/baudcnt[12]_baudcnt[12]_mux_14_OUT<6> ),
    .O(\u_uart/u_core/baudcnt [6]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y41" ),
    .INIT ( 64'h70F00000F0F00000 ))
  \u_uart/u_core/Mmux_baudcnt[12]_baudcnt[12]_mux_14_OUT101  (
    .ADR2(\u_uart/u_core/tx_busy_7870 ),
    .ADR4(\u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<6>_0 ),
    .ADR5(\u_uart/u_core/baudcnt [1]),
    .ADR3(\u_uart/u_core/baudcnt [0]),
    .ADR1(\u_uart/u_core/GND_8_o_GND_8_o_equal_4_o<12>1_8307 ),
    .ADR0(\u_uart/u_core/GND_8_o_GND_8_o_equal_4_o_1 [12]),
    .O(\u_uart/u_core/baudcnt[12]_baudcnt[12]_mux_14_OUT<6> )
  );
  X_FF #(
    .LOC ( "SLICE_X21Y41" ),
    .INIT ( 1'b0 ))
  \u_uart/u_core/baudcnt_5  (
    .CE(\u_uart/u_core/_n0060_inv ),
    .CLK(\NlwBufferSignal_u_uart/u_core/baudcnt_5/CLK ),
    .I(\u_uart/u_core/baudcnt[12]_baudcnt[12]_mux_14_OUT<5> ),
    .O(\u_uart/u_core/baudcnt [5]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y41" ),
    .INIT ( 64'h40C0C0C0C0C0C0C0 ))
  \u_uart/u_core/Mmux_baudcnt[12]_baudcnt[12]_mux_14_OUT91  (
    .ADR1(\u_uart/u_core/tx_busy_7870 ),
    .ADR2(\u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<5>_0 ),
    .ADR5(\u_uart/u_core/baudcnt [1]),
    .ADR3(\u_uart/u_core/baudcnt [0]),
    .ADR0(\u_uart/u_core/GND_8_o_GND_8_o_equal_4_o<12>1_8307 ),
    .ADR4(\u_uart/u_core/GND_8_o_GND_8_o_equal_4_o_1 [12]),
    .O(\u_uart/u_core/baudcnt[12]_baudcnt[12]_mux_14_OUT<5> )
  );
  X_FF #(
    .LOC ( "SLICE_X21Y41" ),
    .INIT ( 1'b0 ))
  \u_uart/u_core/baudcnt_4  (
    .CE(\u_uart/u_core/_n0060_inv ),
    .CLK(\NlwBufferSignal_u_uart/u_core/baudcnt_4/CLK ),
    .I(\u_uart/u_core/baudcnt[12]_baudcnt[12]_mux_14_OUT<4> ),
    .O(\u_uart/u_core/baudcnt [4]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y41" ),
    .INIT ( 64'h20A0A0A0A0A0A0A0 ))
  \u_uart/u_core/Mmux_baudcnt[12]_baudcnt[12]_mux_14_OUT81  (
    .ADR0(\u_uart/u_core/tx_busy_7870 ),
    .ADR2(\u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<4>_0 ),
    .ADR1(\u_uart/u_core/baudcnt [1]),
    .ADR5(\u_uart/u_core/baudcnt [0]),
    .ADR3(\u_uart/u_core/GND_8_o_GND_8_o_equal_4_o<12>1_8307 ),
    .ADR4(\u_uart/u_core/GND_8_o_GND_8_o_equal_4_o_1 [12]),
    .O(\u_uart/u_core/baudcnt[12]_baudcnt[12]_mux_14_OUT<4> )
  );
  X_FF #(
    .LOC ( "SLICE_X21Y41" ),
    .INIT ( 1'b0 ))
  \u_uart/u_core/baudcnt_3  (
    .CE(\u_uart/u_core/_n0060_inv ),
    .CLK(\NlwBufferSignal_u_uart/u_core/baudcnt_3/CLK ),
    .I(\u_uart/u_core/baudcnt[12]_baudcnt[12]_mux_14_OUT<3> ),
    .O(\u_uart/u_core/baudcnt [3]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y41" ),
    .INIT ( 64'h2AAAAAAA00000000 ))
  \u_uart/u_core/Mmux_baudcnt[12]_baudcnt[12]_mux_14_OUT71  (
    .ADR5(\u_uart/u_core/tx_busy_7870 ),
    .ADR0(\u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<3>_0 ),
    .ADR2(\u_uart/u_core/baudcnt [1]),
    .ADR4(\u_uart/u_core/baudcnt [0]),
    .ADR1(\u_uart/u_core/GND_8_o_GND_8_o_equal_4_o<12>1_8307 ),
    .ADR3(\u_uart/u_core/GND_8_o_GND_8_o_equal_4_o_1 [12]),
    .O(\u_uart/u_core/baudcnt[12]_baudcnt[12]_mux_14_OUT<3> )
  );
  X_FF #(
    .LOC ( "SLICE_X22Y12" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/wptr_3  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_fifo_a2b/wptr_3/CLK ),
    .I(\u_fifo_a2b/wptr_3_dpot_7006 ),
    .O(\u_fifo_a2b/wptr [3]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y12" ),
    .INIT ( 64'hDDDDDDF0888888F0 ))
  \u_fifo_a2b/wptr_3_dpot  (
    .ADR1(\u_fifo_a2b/cptr [3]),
    .ADR4(\u_fifo_a2b/drop_7962 ),
    .ADR0(\u_rx_a/m_tlast_0 ),
    .ADR5(\u_fifo_a2b/wptr [3]),
    .ADR2(\u_fifo_a2b/wptr_n<3>_0 ),
    .ADR3(\u_fifo_a2b/used<11>_0 ),
    .O(\u_fifo_a2b/wptr_3_dpot_7006 )
  );
  X_FF #(
    .LOC ( "SLICE_X22Y12" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/wptr_2  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_fifo_a2b/wptr_2/CLK ),
    .I(\u_fifo_a2b/wptr_2_dpot_7016 ),
    .O(\u_fifo_a2b/wptr [2]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y12" ),
    .INIT ( 64'hAAACAAACFFFC000C ))
  \u_fifo_a2b/wptr_2_dpot  (
    .ADR0(\u_fifo_a2b/cptr [2]),
    .ADR2(\u_fifo_a2b/drop_7962 ),
    .ADR5(\u_rx_a/m_tlast_0 ),
    .ADR4(\u_fifo_a2b/wptr [2]),
    .ADR1(\u_fifo_a2b/wptr_n<2>_0 ),
    .ADR3(\u_fifo_a2b/used<11>_0 ),
    .O(\u_fifo_a2b/wptr_2_dpot_7016 )
  );
  X_FF #(
    .LOC ( "SLICE_X22Y12" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/wptr_1  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_fifo_a2b/wptr_1/CLK ),
    .I(\u_fifo_a2b/wptr_1_dpot_7024 ),
    .O(\u_fifo_a2b/wptr [1]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y12" ),
    .INIT ( 64'hAFAFA0A0AFCCA0CC ))
  \u_fifo_a2b/wptr_1_dpot  (
    .ADR0(\u_fifo_a2b/cptr [1]),
    .ADR3(\u_fifo_a2b/drop_7962 ),
    .ADR2(\u_rx_a/m_tlast_0 ),
    .ADR4(\u_fifo_a2b/wptr [1]),
    .ADR1(\u_fifo_a2b/wptr_n<1>_0 ),
    .ADR5(\u_fifo_a2b/used<11>_0 ),
    .O(\u_fifo_a2b/wptr_1_dpot_7024 )
  );
  X_FF #(
    .LOC ( "SLICE_X22Y12" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/wptr_0  (
    .CE(\u_rx_a/m_tvalid_7480 ),
    .CLK(\NlwBufferSignal_u_fifo_a2b/wptr_0/CLK ),
    .I(\u_fifo_a2b/wptr_0_dpot_7032 ),
    .O(\u_fifo_a2b/wptr [0]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y12" ),
    .INIT ( 64'hAFAFBF8CA0A0B380 ))
  \u_fifo_a2b/wptr_0_dpot  (
    .ADR0(\u_fifo_a2b/cptr [0]),
    .ADR1(\u_fifo_a2b/drop_7962 ),
    .ADR3(\u_fifo_a2b/wptr_n<0>_0 ),
    .ADR5(\u_fifo_a2b/wptr [0]),
    .ADR2(\u_rx_a/m_tlast_0 ),
    .ADR4(\u_fifo_a2b/used<11>_0 ),
    .O(\u_fifo_a2b/wptr_0_dpot_7032 )
  );
  X_BUF   \N100/N100_CMUX_Delay  (
    .I(N100),
    .O(N100_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X22Y25" ))
  \u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_SW8  (
    .IA(N468),
    .IB(N469),
    .O(N100),
    .SEL(\u_fifo_b2a/cptr_r[0] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y25" ),
    .INIT ( 64'hFFFF80804CFF8080 ))
  \u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_SW8_F  (
    .ADR4(\u_tx_a/pcnt [5]),
    .ADR2(\u_tx_a/pcnt [4]),
    .ADR3(\u_fifo_b2a/rptr [0]),
    .ADR0(\u_tx_a/Madd_pcnt[5]_GND_5_o_add_21_OUT_cy<3> ),
    .ADR5(N52),
    .ADR1(\u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT11 ),
    .O(N468)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y25" ),
    .INIT ( 64'hFFFF8800F4FC8800 ))
  \u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_SW8_G  (
    .ADR4(\u_tx_a/pcnt [5]),
    .ADR0(\u_tx_a/pcnt [4]),
    .ADR2(\u_fifo_b2a/rptr [0]),
    .ADR3(\u_tx_a/Madd_pcnt[5]_GND_5_o_add_21_OUT_cy<3> ),
    .ADR5(N52),
    .ADR1(\u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT11 ),
    .O(N469)
  );
  X_BUF   \N99/N99_CMUX_Delay  (
    .I(N99),
    .O(N99_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X22Y26" ))
  \u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_SW7  (
    .IA(N466),
    .IB(N467),
    .O(N99),
    .SEL(\u_fifo_b2a/cptr_r[0] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y26" ),
    .INIT ( 64'h0D7705FFDD7755FF ))
  \u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_SW7_F  (
    .ADR3(\u_tx_a/pcnt [5]),
    .ADR4(\u_tx_a/pcnt [4]),
    .ADR2(\u_fifo_b2a/rptr [0]),
    .ADR1(\u_tx_a/Madd_pcnt[5]_GND_5_o_add_21_OUT_cy<3> ),
    .ADR5(N52),
    .ADR0(\u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT11 ),
    .O(N466)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y26" ),
    .INIT ( 64'hA2F300F355FFFFFF ))
  \u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_SW7_G  (
    .ADR5(\u_tx_a/pcnt [5]),
    .ADR0(\u_tx_a/pcnt [4]),
    .ADR2(\u_fifo_b2a/rptr [0]),
    .ADR4(\u_tx_a/Madd_pcnt[5]_GND_5_o_add_21_OUT_cy<3> ),
    .ADR1(N52),
    .ADR3(\u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT11 ),
    .O(N467)
  );
  X_BUF   \u_tx_a/Madd_pcnt[5]_GND_5_o_add_21_OUT_cy<3>/u_tx_a/Madd_pcnt[5]_GND_5_o_add_21_OUT_cy<3>_CMUX_Delay  (
    .I(N92),
    .O(N92_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X22Y27" ))
  \u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_SW3  (
    .IA(N464),
    .IB(N465),
    .O(N92),
    .SEL(\u_fifo_b2a/cptr_r[0] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y27" ),
    .INIT ( 64'hEE6EAA0AAAAAAA0A ))
  \u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_SW3_F  (
    .ADR0(\u_tx_a/pcnt [2]),
    .ADR1(\u_tx_a/pcnt [1]),
    .ADR5(\u_tx_a/pcnt [0]),
    .ADR2(\u_fifo_b2a/rptr [0]),
    .ADR3(N52),
    .ADR4(\u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT11 ),
    .O(N464)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y27" ),
    .INIT ( 64'hFF88F288FF00FA00 ))
  \u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_SW3_G  (
    .ADR3(\u_tx_a/pcnt [2]),
    .ADR5(\u_tx_a/pcnt [1]),
    .ADR1(\u_tx_a/pcnt [0]),
    .ADR4(\u_fifo_b2a/rptr [0]),
    .ADR2(N52),
    .ADR0(\u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT11 ),
    .O(N465)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y27" ),
    .INIT ( 64'hA0000000A0000000 ))
  \u_tx_a/Madd_pcnt[5]_GND_5_o_add_21_OUT_cy<3>11  (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR3(\u_tx_a/pcnt [3]),
    .ADR4(\u_tx_a/pcnt [2]),
    .ADR0(\u_tx_a/pcnt [1]),
    .ADR2(\u_tx_a/pcnt [0]),
    .O(\u_tx_a/Madd_pcnt[5]_GND_5_o_add_21_OUT_cy<3> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y27" ),
    .INIT ( 64'h45455555A2A2AAAA ))
  \u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT111  (
    .ADR3(1'b1),
    .ADR2(\u_tx_a/pcnt [5]),
    .ADR1(\u_tx_a/pcnt [4]),
    .ADR5(\u_tx_a/state_FSM_FFd1_7378 ),
    .ADR0(\u_tx_a/state_FSM_FFd2_7379 ),
    .ADR4(\u_tx_a/Madd_pcnt[5]_GND_5_o_add_21_OUT_cy<3> ),
    .O(\u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT11 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y51" ),
    .INIT ( 64'h114C1A00000C5000 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT414  (
    .ADR0(\u_uart/idx [5]),
    .ADR3(\u_uart/idx [2]),
    .ADR2(\u_uart/idx [4]),
    .ADR5(\u_uart/idx [0]),
    .ADR1(\u_uart/idx [1]),
    .ADR4(\u_uart/idx [3]),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT414_8386 )
  );
  X_FF #(
    .LOC ( "SLICE_X23Y5" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rg_s1_7  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rg_s1_7/CLK ),
    .I(\NlwBufferSignal_u_fifo_a2b/rg_s1_7/IN ),
    .O(\u_fifo_a2b/rg_s1 [7]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X23Y5" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rg_s1_6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rg_s1_6/CLK ),
    .I(\NlwBufferSignal_u_fifo_a2b/rg_s1_6/IN ),
    .O(\u_fifo_a2b/rg_s1 [6]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X23Y5" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rg_s1_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rg_s1_5/CLK ),
    .I(\NlwBufferSignal_u_fifo_a2b/rg_s1_5/IN ),
    .O(\u_fifo_a2b/rg_s1 [5]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X23Y5" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rg_s1_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rg_s1_4/CLK ),
    .I(\NlwBufferSignal_u_fifo_a2b/rg_s1_4/IN ),
    .O(\u_fifo_a2b/rg_s1 [4]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X23Y6" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rg_s2_7  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rg_s2_7/CLK ),
    .I(\NlwBufferSignal_u_fifo_a2b/rg_s2_7/IN ),
    .O(\u_fifo_a2b/rg_s2 [7]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X23Y6" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rg_s2_6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rg_s2_6/CLK ),
    .I(\NlwBufferSignal_u_fifo_a2b/rg_s2_6/IN ),
    .O(\u_fifo_a2b/rg_s2 [6]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X23Y6" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rg_s2_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rg_s2_5/CLK ),
    .I(\NlwBufferSignal_u_fifo_a2b/rg_s2_5/IN ),
    .O(\u_fifo_a2b/rg_s2 [5]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X23Y6" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/rg_s2_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_fifo_a2b/rg_s2_4/CLK ),
    .I(\NlwBufferSignal_u_fifo_a2b/rg_s2_4/IN ),
    .O(\u_fifo_a2b/rg_s2 [4]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X23Y8" ),
    .INIT ( 64'h6699996666999966 ))
  \u_fifo_a2b/Mxor_rptr_w<8>_xo<0>1  (
    .ADR5(1'b1),
    .ADR2(1'b1),
    .ADR3(\u_fifo_a2b/rg_s2 [8]),
    .ADR4(\u_fifo_a2b/rg_s2 [9]),
    .ADR1(\u_fifo_a2b/rg_s2 [10]),
    .ADR0(\u_fifo_a2b/rg_s2 [11]),
    .O(\u_fifo_a2b/rptr_w[8] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X23Y8" ),
    .INIT ( 64'h6996966996696996 ))
  \u_fifo_a2b/Mxor_rptr_w<6>_xo<0>1  (
    .ADR4(\u_fifo_a2b/rg_s2 [8]),
    .ADR3(\u_fifo_a2b/rg_s2 [9]),
    .ADR0(\u_fifo_a2b/rg_s2 [10]),
    .ADR5(\u_fifo_a2b/rg_s2 [6]),
    .ADR1(\u_fifo_a2b/rg_s2 [11]),
    .ADR2(\u_fifo_a2b/rg_s2 [7]),
    .O(\u_fifo_a2b/rptr_w[6] )
  );
  X_FF #(
    .LOC ( "SLICE_X23Y12" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cptr_3  (
    .CE(\u_fifo_a2b/wr_ok1_cepot ),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cptr_3/CLK ),
    .I(\u_fifo_a2b/cptr_3_dpot1_7139 ),
    .O(\u_fifo_a2b/cptr [3]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X23Y12" ),
    .INIT ( 64'hFCFFFFFF30000000 ))
  \u_fifo_a2b/cptr_3_dpot1  (
    .ADR0(1'b1),
    .ADR3(\u_rx_a/m_tlast_0 ),
    .ADR1(\u_fifo_a2b/drop_7962 ),
    .ADR5(\u_fifo_a2b/cptr [3]),
    .ADR4(\u_rx_a/m_tvalid_7480 ),
    .ADR2(\u_fifo_a2b/wptr_n<3>_0 ),
    .O(\u_fifo_a2b/cptr_3_dpot1_7139 )
  );
  X_FF #(
    .LOC ( "SLICE_X23Y12" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cptr_2  (
    .CE(\u_fifo_a2b/wr_ok1_cepot ),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cptr_2/CLK ),
    .I(\u_fifo_a2b/cptr_2_dpot1_7148 ),
    .O(\u_fifo_a2b/cptr [2]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X23Y12" ),
    .INIT ( 64'hF0FAF0F0F050F0F0 ))
  \u_fifo_a2b/cptr_2_dpot1  (
    .ADR1(1'b1),
    .ADR0(\u_rx_a/m_tlast_0 ),
    .ADR3(\u_fifo_a2b/drop_7962 ),
    .ADR2(\u_fifo_a2b/cptr [2]),
    .ADR4(\u_rx_a/m_tvalid_7480 ),
    .ADR5(\u_fifo_a2b/wptr_n<2>_0 ),
    .O(\u_fifo_a2b/cptr_2_dpot1_7148 )
  );
  X_FF #(
    .LOC ( "SLICE_X23Y12" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cptr_1  (
    .CE(\u_fifo_a2b/wr_ok1_cepot ),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cptr_1/CLK ),
    .I(\u_fifo_a2b/cptr_1_dpot1_7155 ),
    .O(\u_fifo_a2b/cptr [1]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X23Y12" ),
    .INIT ( 64'hF5F0F0F0A0F0F0F0 ))
  \u_fifo_a2b/cptr_1_dpot1  (
    .ADR1(1'b1),
    .ADR4(\u_rx_a/m_tlast_0 ),
    .ADR0(\u_fifo_a2b/drop_7962 ),
    .ADR2(\u_fifo_a2b/cptr [1]),
    .ADR3(\u_rx_a/m_tvalid_7480 ),
    .ADR5(\u_fifo_a2b/wptr_n<1>_0 ),
    .O(\u_fifo_a2b/cptr_1_dpot1_7155 )
  );
  X_FF #(
    .LOC ( "SLICE_X23Y12" ),
    .INIT ( 1'b0 ))
  \u_fifo_a2b/cptr_0  (
    .CE(\u_fifo_a2b/wr_ok1_cepot ),
    .CLK(\NlwBufferSignal_u_fifo_a2b/cptr_0/CLK ),
    .I(\u_fifo_a2b/cptr_0_dpot1_7162 ),
    .O(\u_fifo_a2b/cptr [0]),
    .RST(\u_engine/rst_n_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X23Y12" ),
    .INIT ( 64'hFFFFBBFF44000000 ))
  \u_fifo_a2b/cptr_0_dpot1  (
    .ADR2(1'b1),
    .ADR1(\u_rx_a/m_tlast_0 ),
    .ADR0(\u_fifo_a2b/drop_7962 ),
    .ADR5(\u_fifo_a2b/cptr [0]),
    .ADR3(\u_rx_a/m_tvalid_7480 ),
    .ADR4(\u_fifo_a2b/wptr_n<0>_0 ),
    .O(\u_fifo_a2b/cptr_0_dpot1_7162 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X23Y26" ),
    .INIT ( 64'h080F77FF080F77FF ))
  \u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT21_SW6  (
    .ADR5(1'b1),
    .ADR4(\u_tx_a/pcnt [5]),
    .ADR0(\u_tx_a/pcnt [4]),
    .ADR1(\u_tx_a/Madd_pcnt[5]_GND_5_o_add_21_OUT_cy<3> ),
    .ADR2(N52),
    .ADR3(\u_tx_a/Mmux_state[1]_pcnt[5]_wide_mux_27_OUT11 ),
    .O(N98)
  );
  X_FF #(
    .LOC ( "SLICE_X23Y41" ),
    .INIT ( 1'b0 ))
  \u_uart/u_core/baudcnt_2  (
    .CE(\u_uart/u_core/_n0060_inv ),
    .CLK(\NlwBufferSignal_u_uart/u_core/baudcnt_2/CLK ),
    .I(\u_uart/u_core/baudcnt[12]_baudcnt[12]_mux_14_OUT<2> ),
    .O(\u_uart/u_core/baudcnt [2]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X23Y41" ),
    .INIT ( 64'h7000F000F000F000 ))
  \u_uart/u_core/Mmux_baudcnt[12]_baudcnt[12]_mux_14_OUT61  (
    .ADR3(\u_uart/u_core/tx_busy_7870 ),
    .ADR2(\u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<2>_0 ),
    .ADR0(\u_uart/u_core/baudcnt [1]),
    .ADR5(\u_uart/u_core/baudcnt [0]),
    .ADR4(\u_uart/u_core/GND_8_o_GND_8_o_equal_4_o<12>1_8307 ),
    .ADR1(\u_uart/u_core/GND_8_o_GND_8_o_equal_4_o_1 [12]),
    .O(\u_uart/u_core/baudcnt[12]_baudcnt[12]_mux_14_OUT<2> )
  );
  X_FF #(
    .LOC ( "SLICE_X23Y41" ),
    .INIT ( 1'b0 ))
  \u_uart/u_core/baudcnt_1  (
    .CE(\u_uart/u_core/_n0060_inv ),
    .CLK(\NlwBufferSignal_u_uart/u_core/baudcnt_1/CLK ),
    .I(\u_uart/u_core/baudcnt[12]_baudcnt[12]_mux_14_OUT<1> ),
    .O(\u_uart/u_core/baudcnt [1]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X23Y41" ),
    .INIT ( 64'h4CCCCCCC00000000 ))
  \u_uart/u_core/Mmux_baudcnt[12]_baudcnt[12]_mux_14_OUT51  (
    .ADR1(\u_uart/u_core/tx_busy_7870 ),
    .ADR5(\u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<1>_0 ),
    .ADR0(\u_uart/u_core/baudcnt [0]),
    .ADR2(\u_uart/u_core/baudcnt [1]),
    .ADR4(\u_uart/u_core/GND_8_o_GND_8_o_equal_4_o<12>1_8307 ),
    .ADR3(\u_uart/u_core/GND_8_o_GND_8_o_equal_4_o_1 [12]),
    .O(\u_uart/u_core/baudcnt[12]_baudcnt[12]_mux_14_OUT<1> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X23Y41" ),
    .INIT ( 64'h0000000000000001 ))
  \u_uart/u_core/GND_8_o_GND_8_o_equal_4_o<12>1  (
    .ADR2(\u_uart/u_core/baudcnt [5]),
    .ADR3(\u_uart/u_core/baudcnt [3]),
    .ADR4(\u_uart/u_core/baudcnt [7]),
    .ADR1(\u_uart/u_core/baudcnt [8]),
    .ADR0(\u_uart/u_core/baudcnt [9]),
    .ADR5(\u_uart/u_core/baudcnt [11]),
    .O(\u_uart/u_core/GND_8_o_GND_8_o_equal_4_o_1 [12])
  );
  X_FF #(
    .LOC ( "SLICE_X23Y41" ),
    .INIT ( 1'b0 ))
  \u_uart/u_core/baudcnt_0  (
    .CE(\u_uart/u_core/_n0060_inv ),
    .CLK(\NlwBufferSignal_u_uart/u_core/baudcnt_0/CLK ),
    .I(\u_uart/u_core/baudcnt[12]_baudcnt[12]_mux_14_OUT<0> ),
    .O(\u_uart/u_core/baudcnt [0]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X23Y41" ),
    .INIT ( 64'h0888888888888888 ))
  \u_uart/u_core/Mmux_baudcnt[12]_baudcnt[12]_mux_14_OUT14  (
    .ADR0(\u_uart/u_core/tx_busy_7870 ),
    .ADR1(\u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<0>_0 ),
    .ADR5(\u_uart/u_core/baudcnt [1]),
    .ADR2(\u_uart/u_core/baudcnt [0]),
    .ADR3(\u_uart/u_core/GND_8_o_GND_8_o_equal_4_o<12>1_8307 ),
    .ADR4(\u_uart/u_core/GND_8_o_GND_8_o_equal_4_o_1 [12]),
    .O(\u_uart/u_core/baudcnt[12]_baudcnt[12]_mux_14_OUT<0> )
  );
  X_FF #(
    .LOC ( "SLICE_X23Y42" ),
    .INIT ( 1'b0 ))
  \u_uart/u_core/baudcnt_10  (
    .CE(\u_uart/u_core/_n0060_inv ),
    .CLK(\NlwBufferSignal_u_uart/u_core/baudcnt_10/CLK ),
    .I(\u_uart/u_core/baudcnt[12]_baudcnt[12]_mux_14_OUT<10> ),
    .O(\u_uart/u_core/baudcnt [10]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X23Y42" ),
    .INIT ( 64'h4CCC0000CCCC0000 ))
  \u_uart/u_core/Mmux_baudcnt[12]_baudcnt[12]_mux_14_OUT21  (
    .ADR4(\u_uart/u_core/tx_busy_7870 ),
    .ADR1(\u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<10>_0 ),
    .ADR0(\u_uart/u_core/baudcnt [1]),
    .ADR2(\u_uart/u_core/baudcnt [0]),
    .ADR5(\u_uart/u_core/GND_8_o_GND_8_o_equal_4_o<12>1_8307 ),
    .ADR3(\u_uart/u_core/GND_8_o_GND_8_o_equal_4_o_1 [12]),
    .O(\u_uart/u_core/baudcnt[12]_baudcnt[12]_mux_14_OUT<10> )
  );
  X_FF #(
    .LOC ( "SLICE_X23Y42" ),
    .INIT ( 1'b0 ))
  \u_uart/u_core/baudcnt_9  (
    .CE(\u_uart/u_core/_n0060_inv ),
    .CLK(\NlwBufferSignal_u_uart/u_core/baudcnt_9/CLK ),
    .I(\u_uart/u_core/baudcnt[12]_baudcnt[12]_mux_14_OUT<9> ),
    .O(\u_uart/u_core/baudcnt [9]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X23Y42" ),
    .INIT ( 64'h0888888888888888 ))
  \u_uart/u_core/Mmux_baudcnt[12]_baudcnt[12]_mux_14_OUT131  (
    .ADR1(\u_uart/u_core/tx_busy_7870 ),
    .ADR0(\u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<9>_0 ),
    .ADR4(\u_uart/u_core/baudcnt [1]),
    .ADR2(\u_uart/u_core/baudcnt [0]),
    .ADR5(\u_uart/u_core/GND_8_o_GND_8_o_equal_4_o<12>1_8307 ),
    .ADR3(\u_uart/u_core/GND_8_o_GND_8_o_equal_4_o_1 [12]),
    .O(\u_uart/u_core/baudcnt[12]_baudcnt[12]_mux_14_OUT<9> )
  );
  X_FF #(
    .LOC ( "SLICE_X23Y42" ),
    .INIT ( 1'b0 ))
  \u_uart/u_core/baudcnt_8  (
    .CE(\u_uart/u_core/_n0060_inv ),
    .CLK(\NlwBufferSignal_u_uart/u_core/baudcnt_8/CLK ),
    .I(\u_uart/u_core/baudcnt[12]_baudcnt[12]_mux_14_OUT<8> ),
    .O(\u_uart/u_core/baudcnt [8]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X23Y42" ),
    .INIT ( 64'h0888888888888888 ))
  \u_uart/u_core/Mmux_baudcnt[12]_baudcnt[12]_mux_14_OUT121  (
    .ADR0(\u_uart/u_core/tx_busy_7870 ),
    .ADR1(\u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<8>_0 ),
    .ADR3(\u_uart/u_core/baudcnt [1]),
    .ADR5(\u_uart/u_core/baudcnt [0]),
    .ADR2(\u_uart/u_core/GND_8_o_GND_8_o_equal_4_o<12>1_8307 ),
    .ADR4(\u_uart/u_core/GND_8_o_GND_8_o_equal_4_o_1 [12]),
    .O(\u_uart/u_core/baudcnt[12]_baudcnt[12]_mux_14_OUT<8> )
  );
  X_FF #(
    .LOC ( "SLICE_X23Y42" ),
    .INIT ( 1'b0 ))
  \u_uart/u_core/baudcnt_7  (
    .CE(\u_uart/u_core/_n0060_inv ),
    .CLK(\NlwBufferSignal_u_uart/u_core/baudcnt_7/CLK ),
    .I(\u_uart/u_core/baudcnt[12]_baudcnt[12]_mux_14_OUT<7> ),
    .O(\u_uart/u_core/baudcnt [7]),
    .RST(\u_uart/rst_n_100_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X23Y42" ),
    .INIT ( 64'h0888888888888888 ))
  \u_uart/u_core/Mmux_baudcnt[12]_baudcnt[12]_mux_14_OUT111  (
    .ADR0(\u_uart/u_core/tx_busy_7870 ),
    .ADR1(\u_uart/u_core/baudcnt[12]_GND_8_o_add_9_OUT<7>_0 ),
    .ADR3(\u_uart/u_core/baudcnt [1]),
    .ADR5(\u_uart/u_core/baudcnt [0]),
    .ADR2(\u_uart/u_core/GND_8_o_GND_8_o_equal_4_o<12>1_8307 ),
    .ADR4(\u_uart/u_core/GND_8_o_GND_8_o_equal_4_o_1 [12]),
    .O(\u_uart/u_core/baudcnt[12]_baudcnt[12]_mux_14_OUT<7> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X23Y51" ),
    .INIT ( 64'h000001600140A000 ))
  \u_uart/Mmux_code[2]_GND_7_o_select_48_OUT315  (
    .ADR4(\u_uart/idx [5]),
    .ADR2(\u_uart/idx [2]),
    .ADR3(\u_uart/idx [3]),
    .ADR5(\u_uart/idx [4]),
    .ADR1(\u_uart/idx [0]),
    .ADR0(\u_uart/idx [1]),
    .O(\u_uart/Mmux_code[2]_GND_7_o_select_48_OUT315_8383 )
  );
  X_FF #(
    .LOC ( "SLICE_X23Y54" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_rst_100/sync_q_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_rst_100/sync_q_2/CLK ),
    .I(\NlwBufferSignal_u_rst_100/sync_q_2/IN ),
    .O(\u_rst_100/sync_q [2]),
    .RST(\por_cnt<7>_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X23Y54" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_rst_100/sync_q_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_rst_100/sync_q_1/CLK ),
    .I(\NlwBufferSignal_u_rst_100/sync_q_1/IN ),
    .O(\u_rst_100/sync_q [1]),
    .RST(\por_cnt<7>_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X23Y54" ),
    .INIT ( 64'h3333333333333333 ))
  \por_cnt<7>_inv1_INV_0  (
    .ADR0(1'b1),
    .ADR5(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR1(por_cnt[7]),
    .O(\por_cnt<7>_inv )
  );
  X_FF #(
    .LOC ( "SLICE_X23Y54" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \u_rst_100/sync_q_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u_rst_100/sync_q_0/CLK ),
    .I(1'b1),
    .O(\u_rst_100/sync_q [0]),
    .RST(\por_cnt<7>_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X23Y54" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \u_uart/rst_n_100_inv1_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(1'b1),
    .ADR4(1'b1),
    .ADR3(\u_rst_100/sync_q [2]),
    .O(\u_uart/rst_n_100_inv )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Mram_mem/ADDRA<10>  (
    .I(\u_fifo_a2b/wptr [7]),
    .O(\NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRA [10])
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Mram_mem/ADDRA<11>  (
    .I(\u_fifo_a2b/wptr [8]),
    .O(\NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRA [11])
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Mram_mem/ADDRA<12>  (
    .I(\u_fifo_a2b/wptr [9]),
    .O(\NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRA [12])
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Mram_mem/ADDRA<13>  (
    .I(\u_fifo_a2b/wptr [10]),
    .O(\NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRA [13])
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Mram_mem/ADDRA<3>  (
    .I(\u_fifo_a2b/wptr [0]),
    .O(\NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRA [3])
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Mram_mem/ADDRA<4>  (
    .I(\u_fifo_a2b/wptr [1]),
    .O(\NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRA [4])
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Mram_mem/ADDRA<5>  (
    .I(\u_fifo_a2b/wptr [2]),
    .O(\NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRA [5])
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Mram_mem/ADDRA<6>  (
    .I(\u_fifo_a2b/wptr [3]),
    .O(\NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRA [6])
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Mram_mem/ADDRA<7>  (
    .I(\u_fifo_a2b/wptr [4]),
    .O(\NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRA [7])
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Mram_mem/ADDRA<8>  (
    .I(\u_fifo_a2b/wptr [5]),
    .O(\NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRA [8])
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Mram_mem/ADDRA<9>  (
    .I(\u_fifo_a2b/wptr [6]),
    .O(\NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRA [9])
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Mram_mem/ADDRB<10>  (
    .I(\u_fifo_a2b/rptr_n [7]),
    .O(\NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRB [10])
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Mram_mem/ADDRB<11>  (
    .I(\u_fifo_a2b/rptr_n [8]),
    .O(\NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRB [11])
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Mram_mem/ADDRB<12>  (
    .I(\u_fifo_a2b/rptr_n [9]),
    .O(\NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRB [12])
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Mram_mem/ADDRB<13>  (
    .I(\u_fifo_a2b/rptr_n [10]),
    .O(\NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRB [13])
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Mram_mem/ADDRB<3>  (
    .I(\u_fifo_a2b/rptr_n [0]),
    .O(\NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRB [3])
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Mram_mem/ADDRB<4>  (
    .I(\u_fifo_a2b/rptr_n [1]),
    .O(\NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRB [4])
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Mram_mem/ADDRB<5>  (
    .I(\u_fifo_a2b/rptr_n [2]),
    .O(\NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRB [5])
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Mram_mem/ADDRB<6>  (
    .I(\u_fifo_a2b/rptr_n [3]),
    .O(\NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRB [6])
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Mram_mem/ADDRB<7>  (
    .I(\u_fifo_a2b/rptr_n [4]),
    .O(\NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRB [7])
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Mram_mem/ADDRB<8>  (
    .I(\u_fifo_a2b/rptr_n [5]),
    .O(\NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRB [8])
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Mram_mem/ADDRB<9>  (
    .I(\u_fifo_a2b/rptr_n [6]),
    .O(\NlwBufferSignal_u_fifo_a2b/Mram_mem/ADDRB [9])
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Mram_mem/CLKA  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/Mram_mem/CLKA )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Mram_mem/CLKB  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/Mram_mem/CLKB )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Mram_mem/DIA<0>  (
    .I(\u_rx_a/m_tdata [0]),
    .O(\NlwBufferSignal_u_fifo_a2b/Mram_mem/DIA [0])
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Mram_mem/DIA<1>  (
    .I(\u_rx_a/m_tdata [1]),
    .O(\NlwBufferSignal_u_fifo_a2b/Mram_mem/DIA [1])
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Mram_mem/DIA<2>  (
    .I(\u_rx_a/m_tdata [2]),
    .O(\NlwBufferSignal_u_fifo_a2b/Mram_mem/DIA [2])
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Mram_mem/DIA<3>  (
    .I(\u_rx_a/m_tdata [3]),
    .O(\NlwBufferSignal_u_fifo_a2b/Mram_mem/DIA [3])
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Mram_mem/DIA<4>  (
    .I(\u_rx_a/m_tdata [4]),
    .O(\NlwBufferSignal_u_fifo_a2b/Mram_mem/DIA [4])
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Mram_mem/DIA<5>  (
    .I(\u_rx_a/m_tdata [5]),
    .O(\NlwBufferSignal_u_fifo_a2b/Mram_mem/DIA [5])
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Mram_mem/DIA<6>  (
    .I(\u_rx_a/m_tdata [6]),
    .O(\NlwBufferSignal_u_fifo_a2b/Mram_mem/DIA [6])
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Mram_mem/DIA<7>  (
    .I(\u_rx_a/m_tdata [7]),
    .O(\NlwBufferSignal_u_fifo_a2b/Mram_mem/DIA [7])
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Mram_mem/DIPA<0>  (
    .I(\u_rx_a/m_tlast_0 ),
    .O(\NlwBufferSignal_u_fifo_a2b/Mram_mem/DIPA [0])
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Mram_mem/WEA<0>  (
    .I(\u_fifo_a2b/wr_valid_wr_ok_AND_4_o ),
    .O(\NlwBufferSignal_u_fifo_a2b/Mram_mem/WEA [0])
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Mram_mem/WEA<1>  (
    .I(\u_fifo_a2b/wr_valid_wr_ok_AND_4_o ),
    .O(\NlwBufferSignal_u_fifo_a2b/Mram_mem/WEA [1])
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Mram_mem/WEA<2>  (
    .I(\u_fifo_a2b/wr_valid_wr_ok_AND_4_o ),
    .O(\NlwBufferSignal_u_fifo_a2b/Mram_mem/WEA [2])
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Mram_mem/WEA<3>  (
    .I(\u_fifo_a2b/wr_valid_wr_ok_AND_4_o ),
    .O(\NlwBufferSignal_u_fifo_a2b/Mram_mem/WEA [3])
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Mram_mem/ADDRA<10>  (
    .I(\u_fifo_b2a/wptr [7]),
    .O(\NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRA [10])
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Mram_mem/ADDRA<11>  (
    .I(\u_fifo_b2a/wptr [8]),
    .O(\NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRA [11])
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Mram_mem/ADDRA<12>  (
    .I(\u_fifo_b2a/wptr [9]),
    .O(\NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRA [12])
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Mram_mem/ADDRA<13>  (
    .I(\u_fifo_b2a/wptr [10]),
    .O(\NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRA [13])
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Mram_mem/ADDRA<3>  (
    .I(\u_fifo_b2a/wptr [0]),
    .O(\NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRA [3])
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Mram_mem/ADDRA<4>  (
    .I(\u_fifo_b2a/wptr [1]),
    .O(\NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRA [4])
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Mram_mem/ADDRA<5>  (
    .I(\u_fifo_b2a/wptr [2]),
    .O(\NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRA [5])
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Mram_mem/ADDRA<6>  (
    .I(\u_fifo_b2a/wptr [3]),
    .O(\NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRA [6])
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Mram_mem/ADDRA<7>  (
    .I(\u_fifo_b2a/wptr [4]),
    .O(\NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRA [7])
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Mram_mem/ADDRA<8>  (
    .I(\u_fifo_b2a/wptr [5]),
    .O(\NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRA [8])
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Mram_mem/ADDRA<9>  (
    .I(\u_fifo_b2a/wptr [6]),
    .O(\NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRA [9])
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Mram_mem/ADDRB<10>  (
    .I(\u_fifo_b2a/rptr_n [7]),
    .O(\NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRB [10])
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Mram_mem/ADDRB<11>  (
    .I(\u_fifo_b2a/rptr_n [8]),
    .O(\NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRB [11])
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Mram_mem/ADDRB<12>  (
    .I(\u_fifo_b2a/rptr_n [9]),
    .O(\NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRB [12])
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Mram_mem/ADDRB<13>  (
    .I(\u_fifo_b2a/rptr_n [10]),
    .O(\NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRB [13])
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Mram_mem/ADDRB<3>  (
    .I(\u_fifo_b2a/rptr_n [0]),
    .O(\NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRB [3])
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Mram_mem/ADDRB<4>  (
    .I(\u_fifo_b2a/rptr_n [1]),
    .O(\NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRB [4])
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Mram_mem/ADDRB<5>  (
    .I(\u_fifo_b2a/rptr_n [2]),
    .O(\NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRB [5])
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Mram_mem/ADDRB<6>  (
    .I(\u_fifo_b2a/rptr_n [3]),
    .O(\NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRB [6])
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Mram_mem/ADDRB<7>  (
    .I(\u_fifo_b2a/rptr_n [4]),
    .O(\NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRB [7])
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Mram_mem/ADDRB<8>  (
    .I(\u_fifo_b2a/rptr_n [5]),
    .O(\NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRB [8])
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Mram_mem/ADDRB<9>  (
    .I(\u_fifo_b2a/rptr_n [6]),
    .O(\NlwBufferSignal_u_fifo_b2a/Mram_mem/ADDRB [9])
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Mram_mem/CLKA  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/Mram_mem/CLKA )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Mram_mem/CLKB  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/Mram_mem/CLKB )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Mram_mem/DIA<0>  (
    .I(\u_rx_b/m_tdata [0]),
    .O(\NlwBufferSignal_u_fifo_b2a/Mram_mem/DIA [0])
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Mram_mem/DIA<1>  (
    .I(\u_rx_b/m_tdata [1]),
    .O(\NlwBufferSignal_u_fifo_b2a/Mram_mem/DIA [1])
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Mram_mem/DIA<2>  (
    .I(\u_rx_b/m_tdata [2]),
    .O(\NlwBufferSignal_u_fifo_b2a/Mram_mem/DIA [2])
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Mram_mem/DIA<3>  (
    .I(\u_rx_b/m_tdata [3]),
    .O(\NlwBufferSignal_u_fifo_b2a/Mram_mem/DIA [3])
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Mram_mem/DIA<4>  (
    .I(\u_rx_b/m_tdata [4]),
    .O(\NlwBufferSignal_u_fifo_b2a/Mram_mem/DIA [4])
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Mram_mem/DIA<5>  (
    .I(\u_rx_b/m_tdata [5]),
    .O(\NlwBufferSignal_u_fifo_b2a/Mram_mem/DIA [5])
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Mram_mem/DIA<6>  (
    .I(\u_rx_b/m_tdata [6]),
    .O(\NlwBufferSignal_u_fifo_b2a/Mram_mem/DIA [6])
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Mram_mem/DIA<7>  (
    .I(\u_rx_b/m_tdata [7]),
    .O(\NlwBufferSignal_u_fifo_b2a/Mram_mem/DIA [7])
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Mram_mem/DIPA<0>  (
    .I(\u_rx_b/m_tlast_0 ),
    .O(\NlwBufferSignal_u_fifo_b2a/Mram_mem/DIPA [0])
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Mram_mem/WEA<0>  (
    .I(\u_fifo_b2a/wr_valid_wr_ok_AND_4_o ),
    .O(\NlwBufferSignal_u_fifo_b2a/Mram_mem/WEA [0])
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Mram_mem/WEA<1>  (
    .I(\u_fifo_b2a/wr_valid_wr_ok_AND_4_o ),
    .O(\NlwBufferSignal_u_fifo_b2a/Mram_mem/WEA [1])
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Mram_mem/WEA<2>  (
    .I(\u_fifo_b2a/wr_valid_wr_ok_AND_4_o ),
    .O(\NlwBufferSignal_u_fifo_b2a/Mram_mem/WEA [2])
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Mram_mem/WEA<3>  (
    .I(\u_fifo_b2a/wr_valid_wr_ok_AND_4_o ),
    .O(\NlwBufferSignal_u_fifo_b2a/Mram_mem/WEA [3])
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Msub_used_cy<3>/DI<0>  (
    .I(\u_fifo_b2a/wptr [0]),
    .O(\NlwBufferSignal_u_fifo_b2a/Msub_used_cy<3>/DI<0> )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Msub_used_cy<3>/DI<1>  (
    .I(\u_fifo_b2a/wptr [1]),
    .O(\NlwBufferSignal_u_fifo_b2a/Msub_used_cy<3>/DI<1> )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Msub_used_cy<3>/DI<2>  (
    .I(\u_fifo_b2a/wptr [2]),
    .O(\NlwBufferSignal_u_fifo_b2a/Msub_used_cy<3>/DI<2> )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Msub_used_cy<3>/DI<3>  (
    .I(\u_fifo_b2a/wptr [3]),
    .O(\NlwBufferSignal_u_fifo_b2a/Msub_used_cy<3>/DI<3> )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Msub_used_cy<7>/DI<0>  (
    .I(\u_fifo_b2a/wptr [4]),
    .O(\NlwBufferSignal_u_fifo_b2a/Msub_used_cy<7>/DI<0> )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Msub_used_cy<7>/DI<1>  (
    .I(\u_fifo_b2a/wptr [5]),
    .O(\NlwBufferSignal_u_fifo_b2a/Msub_used_cy<7>/DI<1> )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Msub_used_cy<7>/DI<2>  (
    .I(\u_fifo_b2a/wptr [6]),
    .O(\NlwBufferSignal_u_fifo_b2a/Msub_used_cy<7>/DI<2> )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Msub_used_cy<7>/DI<3>  (
    .I(\u_fifo_b2a/wptr [7]),
    .O(\NlwBufferSignal_u_fifo_b2a/Msub_used_cy<7>/DI<3> )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Msub_used_xor<11>/DI<0>  (
    .I(\u_fifo_b2a/wptr [8]),
    .O(\NlwBufferSignal_u_fifo_b2a/Msub_used_xor<11>/DI<0> )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Msub_used_xor<11>/DI<1>  (
    .I(\u_fifo_b2a/wptr [9]),
    .O(\NlwBufferSignal_u_fifo_b2a/Msub_used_xor<11>/DI<1> )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/Msub_used_xor<11>/DI<2>  (
    .I(\u_fifo_b2a/wptr [10]),
    .O(\NlwBufferSignal_u_fifo_b2a/Msub_used_xor<11>/DI<2> )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/bcnt_3/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/bcnt_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/bcnt_2/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/bcnt_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/bcnt_1/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/bcnt_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/bcnt_0/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/bcnt_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/bcnt_7/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/bcnt_7/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/bcnt_6/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/bcnt_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/bcnt_5/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/bcnt_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/bcnt_4/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/bcnt_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/bcnt_11/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/bcnt_11/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/bcnt_10/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/bcnt_10/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/bcnt_9/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/bcnt_9/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/bcnt_8/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/bcnt_8/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/bcnt_15/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/bcnt_15/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/bcnt_14/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/bcnt_14/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/bcnt_13/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/bcnt_13/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/bcnt_12/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/bcnt_12/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rptr_3/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rptr_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rptr_2/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rptr_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rptr_1/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rptr_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rptr_0/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rptr_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rptr_7/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rptr_7/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rptr_6/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rptr_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rptr_5/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rptr_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rptr_4/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rptr_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rptr_11/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rptr_11/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rptr_10/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rptr_10/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rptr_9/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rptr_9/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rptr_8/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rptr_8/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/trigger_signature/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/trigger_signature/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Msub_used_cy<3>/DI<0>  (
    .I(\u_fifo_a2b/wptr [0]),
    .O(\NlwBufferSignal_u_fifo_a2b/Msub_used_cy<3>/DI<0> )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Msub_used_cy<3>/DI<1>  (
    .I(\u_fifo_a2b/wptr [1]),
    .O(\NlwBufferSignal_u_fifo_a2b/Msub_used_cy<3>/DI<1> )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Msub_used_cy<3>/DI<2>  (
    .I(\u_fifo_a2b/wptr [2]),
    .O(\NlwBufferSignal_u_fifo_a2b/Msub_used_cy<3>/DI<2> )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Msub_used_cy<3>/DI<3>  (
    .I(\u_fifo_a2b/wptr [3]),
    .O(\NlwBufferSignal_u_fifo_a2b/Msub_used_cy<3>/DI<3> )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Msub_used_cy<7>/DI<0>  (
    .I(\u_fifo_a2b/wptr [4]),
    .O(\NlwBufferSignal_u_fifo_a2b/Msub_used_cy<7>/DI<0> )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Msub_used_cy<7>/DI<1>  (
    .I(\u_fifo_a2b/wptr [5]),
    .O(\NlwBufferSignal_u_fifo_a2b/Msub_used_cy<7>/DI<1> )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Msub_used_cy<7>/DI<2>  (
    .I(\u_fifo_a2b/wptr [6]),
    .O(\NlwBufferSignal_u_fifo_a2b/Msub_used_cy<7>/DI<2> )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Msub_used_cy<7>/DI<3>  (
    .I(\u_fifo_a2b/wptr [7]),
    .O(\NlwBufferSignal_u_fifo_a2b/Msub_used_cy<7>/DI<3> )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Msub_used_xor<11>/DI<0>  (
    .I(\u_fifo_a2b/wptr [8]),
    .O(\NlwBufferSignal_u_fifo_a2b/Msub_used_xor<11>/DI<0> )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Msub_used_xor<11>/DI<1>  (
    .I(\u_fifo_a2b/wptr [9]),
    .O(\NlwBufferSignal_u_fifo_a2b/Msub_used_xor<11>/DI<1> )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/Msub_used_xor<11>/DI<2>  (
    .I(\u_fifo_a2b/wptr [10]),
    .O(\NlwBufferSignal_u_fifo_a2b/Msub_used_xor<11>/DI<2> )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rptr_3/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rptr_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rptr_2/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rptr_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rptr_1/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rptr_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rptr_0/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rptr_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rptr_7/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rptr_7/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rptr_6/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rptr_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rptr_5/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rptr_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rptr_4/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rptr_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rptr_11/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rptr_11/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rptr_10/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rptr_10/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rptr_9/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rptr_9/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rptr_8/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rptr_8/CLK )
  );
  X_BUF   \NlwBufferBlock_por_cnt_3/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_por_cnt_3/CLK )
  );
  X_BUF   \NlwBufferBlock_por_cnt_2/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_por_cnt_2/CLK )
  );
  X_BUF   \NlwBufferBlock_por_cnt_1/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_por_cnt_1/CLK )
  );
  X_BUF   \NlwBufferBlock_por_cnt_0/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_por_cnt_0/CLK )
  );
  X_BUF   \NlwBufferBlock_por_cnt_7/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_por_cnt_7/CLK )
  );
  X_BUF   \NlwBufferBlock_por_cnt_6/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_por_cnt_6/CLK )
  );
  X_BUF   \NlwBufferBlock_por_cnt_5/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_por_cnt_5/CLK )
  );
  X_BUF   \NlwBufferBlock_por_cnt_4/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_por_cnt_4/CLK )
  );
  X_BUF   \NlwBufferBlock_phy_a_tx_en_OBUF/I  (
    .I(\u_tx_a/txen_r_8234 ),
    .O(\NlwBufferSignal_phy_a_tx_en_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_phy_b_tx_en_OBUF/I  (
    .I(\u_tx_b/txen_r_8235 ),
    .O(\NlwBufferSignal_phy_b_tx_en_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_phy_a_txd_0_OBUF/I  (
    .I(\u_tx_a/txd_r [0]),
    .O(\NlwBufferSignal_phy_a_txd_0_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_phy_a_txd_1_OBUF/I  (
    .I(\u_tx_a/txd_r [1]),
    .O(\NlwBufferSignal_phy_a_txd_1_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_phy_b_txd_0_OBUF/I  (
    .I(\u_tx_b/txd_r [0]),
    .O(\NlwBufferSignal_phy_b_txd_0_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_phy_b_txd_1_OBUF/I  (
    .I(\u_tx_b/txd_r [1]),
    .O(\NlwBufferSignal_phy_b_txd_1_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_uart_txd_OBUF/I  (
    .I(\u_uart/u_core/tx_out_8248 ),
    .O(\NlwBufferSignal_uart_txd_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_u_tx_a/txen_r/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_tx_a/txen_r/CLK )
  );
  X_BUF   \NlwBufferBlock_u_tx_a/txen_r/IN  (
    .I(\u_tx_a/state[1]_GND_5_o_Mux_24_o ),
    .O(\NlwBufferSignal_u_tx_a/txen_r/IN )
  );
  X_BUF   \NlwBufferBlock_u_tx_b/txen_r/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_tx_b/txen_r/CLK )
  );
  X_BUF   \NlwBufferBlock_u_tx_b/txen_r/IN  (
    .I(\u_tx_b/state[1]_GND_5_o_Mux_24_o ),
    .O(\NlwBufferSignal_u_tx_b/txen_r/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/crs_r/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/crs_r/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/crs_r/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_b/crs_r/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/rxd_r_0/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/rxd_r_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/rxd_r_1/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/rxd_r_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_tx_a/txd_r_0/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_tx_a/txd_r_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_tx_a/txd_r_0/IN  (
    .I(\u_tx_a/state[1]_GND_5_o_wide_mux_25_OUT<0> ),
    .O(\NlwBufferSignal_u_tx_a/txd_r_0/IN )
  );
  X_BUF   \NlwBufferBlock_u_tx_a/txd_r_1/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_tx_a/txd_r_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_tx_a/txd_r_1/IN  (
    .I(\u_tx_a/state[1]_GND_5_o_wide_mux_25_OUT<1>_0 ),
    .O(\NlwBufferSignal_u_tx_a/txd_r_1/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/rxd_r_0/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_b/rxd_r_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/rxd_r_1/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_b/rxd_r_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_tx_b/txd_r_0/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_tx_b/txd_r_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_tx_b/txd_r_0/IN  (
    .I(\u_tx_b/state[1]_GND_5_o_wide_mux_25_OUT<0>_0 ),
    .O(\NlwBufferSignal_u_tx_b/txd_r_0/IN )
  );
  X_BUF   \NlwBufferBlock_u_tx_b/txd_r_1/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_tx_b/txd_r_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_tx_b/txd_r_1/IN  (
    .I(\u_tx_b/state[1]_GND_5_o_wide_mux_25_OUT<1>_0 ),
    .O(\NlwBufferSignal_u_tx_b/txd_r_1/IN )
  );
  X_BUF   \NlwBufferBlock_phy_a_ref_clk_BUFGP/BUFG/IN  (
    .I(\phy_a_ref_clk_BUFGP/IBUFG_0 ),
    .O(\NlwBufferSignal_phy_a_ref_clk_BUFGP/BUFG/IN )
  );
  X_BUF   \NlwBufferBlock_clk_100_BUFGP/BUFG/IN  (
    .I(\clk_100_BUFGP/IBUFG_0 ),
    .O(\NlwBufferSignal_clk_100_BUFGP/BUFG/IN )
  );
  X_BUF   \NlwBufferBlock_phy_b_ref_clk_BUFGP/BUFG/IN  (
    .I(\phy_b_ref_clk_BUFGP/IBUFG_0 ),
    .O(\NlwBufferSignal_phy_b_ref_clk_BUFGP/BUFG/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/syn_cnt_6/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/syn_cnt_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/syn_cnt_5/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/syn_cnt_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/syn_cnt_4/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/syn_cnt_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/syn_cnt_3/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/syn_cnt_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_cnt_3/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_cnt_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_cnt_2/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_cnt_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_cnt_1/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_cnt_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_cnt_0/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_cnt_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_cnt_7/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_cnt_7/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_cnt_6/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_cnt_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_cnt_5/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_cnt_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_cnt_4/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_cnt_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_cnt_15/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_cnt_15/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_cnt_14/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_cnt_14/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_cnt_13/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_cnt_13/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_cnt_12/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_cnt_12/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_cnt_18/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_cnt_18/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_cnt_17/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_cnt_17/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_cnt_16/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_cnt_16/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_cnt_11/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_cnt_11/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_cnt_10/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_cnt_10/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_cnt_9/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_cnt_9/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_cnt_8/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_cnt_8/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/syn_cnt_2/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/syn_cnt_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/syn_cnt_1/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/syn_cnt_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/syn_cnt_0/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/syn_cnt_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/hold_d_7/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_b/hold_d_7/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/hold_d_7/IN  (
    .I(\u_rx_b/rxd_r [1]),
    .O(\NlwBufferSignal_u_rx_b/hold_d_7/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/hold_d_6/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_b/hold_d_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/hold_d_6/IN  (
    .I(\u_rx_b/rxd_r [0]),
    .O(\NlwBufferSignal_u_rx_b/hold_d_6/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/hold_d_5/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_b/hold_d_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/hold_d_5/IN  (
    .I(\u_rx_b/shreg [7]),
    .O(\NlwBufferSignal_u_rx_b/hold_d_5/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/hold_d_4/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_b/hold_d_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/hold_d_4/IN  (
    .I(\u_rx_b/shreg [6]),
    .O(\NlwBufferSignal_u_rx_b/hold_d_4/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/shreg_7/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_b/shreg_7/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/shreg_7/IN  (
    .I(\u_rx_b/rxd_r [1]),
    .O(\NlwBufferSignal_u_rx_b/shreg_7/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/shreg_6/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_b/shreg_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/shreg_6/IN  (
    .I(\u_rx_b/rxd_r [0]),
    .O(\NlwBufferSignal_u_rx_b/shreg_6/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/hold_v/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_b/hold_v/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/hold_d_3/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_b/hold_d_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/hold_d_3/IN  (
    .I(\u_rx_b/shreg [5]),
    .O(\NlwBufferSignal_u_rx_b/hold_d_3/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/hold_d_2/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_b/hold_d_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/hold_d_2/IN  (
    .I(\u_rx_b/shreg [4]),
    .O(\NlwBufferSignal_u_rx_b/hold_d_2/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/hold_d_1/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_b/hold_d_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/hold_d_1/IN  (
    .I(\u_rx_b/shreg [3]),
    .O(\NlwBufferSignal_u_rx_b/hold_d_1/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/hold_d_0/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_b/hold_d_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/hold_d_0/IN  (
    .I(\u_rx_b/shreg [2]),
    .O(\NlwBufferSignal_u_rx_b/hold_d_0/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/m_tlast/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_b/m_tlast/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s2_7/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s2_7/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s2_7/IN  (
    .I(\u_fifo_b2a/rg_s1 [7]),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s2_7/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s2_6/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s2_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s2_6/IN  (
    .I(\u_fifo_b2a/rg_s1 [6]),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s2_6/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s2_5/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s2_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s2_5/IN  (
    .I(\u_fifo_b2a/rg_s1 [5]),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s2_5/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s2_4/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s2_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s2_4/IN  (
    .I(\u_fifo_b2a/rg_s1 [4]),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s2_4/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s1_7/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s1_7/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s1_7/IN  (
    .I(\u_fifo_b2a/rptr_gray [7]),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s1_7/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s1_6/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s1_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s1_6/IN  (
    .I(\u_fifo_b2a/rptr_gray [6]),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s1_6/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s1_5/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s1_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s1_5/IN  (
    .I(\u_fifo_b2a/rptr_gray [5]),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s1_5/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s1_4/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s1_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s1_4/IN  (
    .I(\u_fifo_b2a/rptr_gray [4]),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s1_4/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s2_11/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s2_11/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s2_11/IN  (
    .I(\u_fifo_b2a/rg_s1 [11]),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s2_11/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s2_10/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s2_10/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s2_10/IN  (
    .I(\u_fifo_b2a/rg_s1 [10]),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s2_10/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s2_9/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s2_9/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s2_9/IN  (
    .I(\u_fifo_b2a/rg_s1 [9]),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s2_9/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s2_8/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s2_8/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s2_8/IN  (
    .I(\u_fifo_b2a/rg_s1 [8]),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s2_8/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_21/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_21/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_22/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_22/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_19/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_19/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_20/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_20/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_18/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_18/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_27/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_27/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_16/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_16/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_17/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_17/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/state_FSM_FFd2/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_b/state_FSM_FFd2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/state_FSM_FFd1/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_b/state_FSM_FFd1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/crs_prev/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_b/crs_prev/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/crs_prev/IN  (
    .I(\u_rx_b/crs_r_7842 ),
    .O(\NlwBufferSignal_u_rx_b/crs_prev/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/m_tvalid/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_b/m_tvalid/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/shreg_5/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_b/shreg_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/shreg_5/IN  (
    .I(\u_rx_b/shreg [7]),
    .O(\NlwBufferSignal_u_rx_b/shreg_5/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/shreg_4/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_b/shreg_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/shreg_4/IN  (
    .I(\u_rx_b/shreg [6]),
    .O(\NlwBufferSignal_u_rx_b/shreg_4/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/shreg_3/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_b/shreg_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/shreg_3/IN  (
    .I(\u_rx_b/shreg [5]),
    .O(\NlwBufferSignal_u_rx_b/shreg_3/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/shreg_2/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_b/shreg_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/shreg_2/IN  (
    .I(\u_rx_b/shreg [4]),
    .O(\NlwBufferSignal_u_rx_b/shreg_2/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_37/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_37/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_38/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_38/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_36/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_36/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_45/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_45/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_34/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_34/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_35/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_35/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_32/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_32/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_33/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_33/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/hb_cnt_6/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/hb_cnt_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/hb_cnt_5/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/hb_cnt_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/hb_cnt_4/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/hb_cnt_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/hb_cnt_3/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/hb_cnt_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/hb_cnt_14/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/hb_cnt_14/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/hb_cnt_13/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/hb_cnt_13/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/hb_cnt_12/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/hb_cnt_12/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/hb_cnt_11/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/hb_cnt_11/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/hb_cnt_27/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/hb_cnt_27/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/hb_cnt_22/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/hb_cnt_22/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/hb_cnt_21/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/hb_cnt_21/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/hb_cnt_20/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/hb_cnt_20/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/hb_cnt_19/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/hb_cnt_19/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/hb_cnt_26/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/hb_cnt_26/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/hb_cnt_25/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/hb_cnt_25/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/hb_cnt_24/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/hb_cnt_24/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/hb_cnt_23/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/hb_cnt_23/CLK )
  );
  X_BUF   \NlwBufferBlock_u_tx_b/state_FSM_FFd2/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_tx_b/state_FSM_FFd2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_tx_b/state_FSM_FFd1/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_tx_b/state_FSM_FFd1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/dcnt_1/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_b/dcnt_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/dcnt_0/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_b/dcnt_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cptr_7/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cptr_7/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cptr_6/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cptr_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cptr_5/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cptr_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cptr_4/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cptr_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cptr_11/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cptr_11/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cptr_10/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cptr_10/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cptr_9/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cptr_9/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cptr_8/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cptr_8/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s1_3/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s1_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s1_3/IN  (
    .I(\u_fifo_b2a/cptr_gray [3]),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s1_3/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s1_2/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s1_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s1_2/IN  (
    .I(\u_fifo_b2a/cptr_gray [2]),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s1_2/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s1_1/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s1_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s1_1/IN  (
    .I(\u_fifo_b2a/cptr_gray [1]),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s1_1/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s1_0/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s1_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s1_0/IN  (
    .I(\u_fifo_b2a/cptr_gray [0]),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s1_0/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_30/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_30/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_31/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_31/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_28/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_28/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_29/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_29/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_25/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_25/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_26/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_26/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_23/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_23/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_24/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_24/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_3/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_2/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_2/IN  (
    .I(\u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<2> ),
    .O(\NlwBufferSignal_u_engine/win_2/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_1/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_0/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_0/IN  (
    .I(\u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<0> ),
    .O(\NlwBufferSignal_u_engine/win_0/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/proto_3/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/proto_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/proto_3/IN  (
    .I(\u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<3> ),
    .O(\NlwBufferSignal_u_engine/proto_3/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/proto_2/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/proto_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/proto_2/IN  (
    .I(\u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<2> ),
    .O(\NlwBufferSignal_u_engine/proto_2/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/proto_1/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/proto_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/proto_1/IN  (
    .I(\u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<1> ),
    .O(\NlwBufferSignal_u_engine/proto_1/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/proto_0/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/proto_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/syn_cnt_7/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/syn_cnt_7/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/hb_cnt_10/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/hb_cnt_10/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/hb_cnt_9/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/hb_cnt_9/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/hb_cnt_8/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/hb_cnt_8/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/hb_cnt_7/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/hb_cnt_7/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/hb_cnt_2/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/hb_cnt_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/hb_cnt_1/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/hb_cnt_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/hb_cnt_0/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/hb_cnt_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/hb_cnt_18/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/hb_cnt_18/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/hb_cnt_17/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/hb_cnt_17/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/hb_cnt_16/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/hb_cnt_16/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/hb_cnt_15/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/hb_cnt_15/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/tx_data_6/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/tx_data_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u_tx_b/pcnt_5/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_tx_b/pcnt_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u_tx_b/pcnt_4/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_tx_b/pcnt_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_tx_b/pcnt_3/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_tx_b/pcnt_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_tx_b/pcnt_2/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_tx_b/pcnt_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/m_tdata_7/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_b/m_tdata_7/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/m_tdata_7/IN  (
    .I(\u_rx_b/hold_d [7]),
    .O(\NlwBufferSignal_u_rx_b/m_tdata_7/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/m_tdata_6/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_b/m_tdata_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/m_tdata_6/IN  (
    .I(\u_rx_b/hold_d [6]),
    .O(\NlwBufferSignal_u_rx_b/m_tdata_6/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/m_tdata_5/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_b/m_tdata_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/m_tdata_5/IN  (
    .I(\u_rx_b/hold_d [5]),
    .O(\NlwBufferSignal_u_rx_b/m_tdata_5/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/m_tdata_4/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_b/m_tdata_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/m_tdata_4/IN  (
    .I(\u_rx_b/hold_d [4]),
    .O(\NlwBufferSignal_u_rx_b/m_tdata_4/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/m_tdata_3/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_b/m_tdata_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/m_tdata_3/IN  (
    .I(\u_rx_b/hold_d [3]),
    .O(\NlwBufferSignal_u_rx_b/m_tdata_3/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/m_tdata_2/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_b/m_tdata_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/m_tdata_2/IN  (
    .I(\u_rx_b/hold_d [2]),
    .O(\NlwBufferSignal_u_rx_b/m_tdata_2/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/m_tdata_1/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_b/m_tdata_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/m_tdata_1/IN  (
    .I(\u_rx_b/hold_d [1]),
    .O(\NlwBufferSignal_u_rx_b/m_tdata_1/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/m_tdata_0/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_b/m_tdata_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_b/m_tdata_0/IN  (
    .I(\u_rx_b/hold_d [0]),
    .O(\NlwBufferSignal_u_rx_b/m_tdata_0/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/wptr_7/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/wptr_7/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/wptr_6/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/wptr_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/wptr_5/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/wptr_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/wptr_4/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/wptr_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/wptr_11/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/wptr_11/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/wptr_10/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/wptr_10/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/wptr_9/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/wptr_9/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/wptr_8/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/wptr_8/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s2_3/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s2_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s2_3/IN  (
    .I(\u_fifo_b2a/rg_s1 [3]),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s2_3/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s2_2/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s2_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s2_2/IN  (
    .I(\u_fifo_b2a/rg_s1 [2]),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s2_2/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s2_1/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s2_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s2_1/IN  (
    .I(\u_fifo_b2a/rg_s1 [1]),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s2_1/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s2_0/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s2_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s2_0/IN  (
    .I(\u_fifo_b2a/rg_s1 [0]),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s2_0/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s2_3/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s2_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s2_3/IN  (
    .I(\u_fifo_b2a/cg_s1 [3]),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s2_3/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s2_2/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s2_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s2_2/IN  (
    .I(\u_fifo_b2a/cg_s1 [2]),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s2_2/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s2_1/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s2_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s2_1/IN  (
    .I(\u_fifo_b2a/cg_s1 [1]),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s2_1/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s2_0/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s2_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s2_0/IN  (
    .I(\u_fifo_b2a/cg_s1 [0]),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s2_0/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_14/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_14/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_15/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_15/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_12/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_12/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_13/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_13/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_10/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_10/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_11/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_11/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_8/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_8/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_9/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_9/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_46/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_46/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_47/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_47/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_43/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_43/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_44/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_44/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_41/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_41/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_42/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_42/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_39/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_39/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_40/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_40/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/sig_done/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/sig_done/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_7/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_7/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_7/IN  (
    .I(\u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<7>_0 ),
    .O(\NlwBufferSignal_u_engine/win_7/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_6/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_6/IN  (
    .I(\u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<6>_0 ),
    .O(\NlwBufferSignal_u_engine/win_6/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_5/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_5/IN  (
    .I(\u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<5> ),
    .O(\NlwBufferSignal_u_engine/win_5/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/win_4/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/win_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/proto_7/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/proto_7/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/proto_7/IN  (
    .I(\u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<7>_0 ),
    .O(\NlwBufferSignal_u_engine/proto_7/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/proto_6/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/proto_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/proto_6/IN  (
    .I(\u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<6>_0 ),
    .O(\NlwBufferSignal_u_engine/proto_6/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/proto_5/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/proto_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/proto_5/IN  (
    .I(\u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<5> ),
    .O(\NlwBufferSignal_u_engine/proto_5/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/proto_4/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/proto_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/proto_4/IN  (
    .I(\u_engine/s_tindex[15]_GND_6_o_mux_50_OUT<4> ),
    .O(\NlwBufferSignal_u_engine/proto_4/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/trigger_syn_flood/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/trigger_syn_flood/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/syn_flood_active/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/syn_flood_active/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/tgl_a_3/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_uart/tgl_a_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/tgl_a_2/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_uart/tgl_a_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/tgl_a_1/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_uart/tgl_a_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/tgl_a_0/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_uart/tgl_a_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/t1_3/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/t1_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/t1_3/IN  (
    .I(\u_uart/tgl_a [3]),
    .O(\NlwBufferSignal_u_uart/t1_3/IN )
  );
  X_BUF   \NlwBufferBlock_u_uart/t2_3/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/t2_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/t1_2/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/t1_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/t1_2/IN  (
    .I(\u_uart/tgl_a [2]),
    .O(\NlwBufferSignal_u_uart/t1_2/IN )
  );
  X_BUF   \NlwBufferBlock_u_uart/t2_2/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/t2_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/t1_1/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/t1_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/t1_1/IN  (
    .I(\u_uart/tgl_a [1]),
    .O(\NlwBufferSignal_u_uart/t1_1/IN )
  );
  X_BUF   \NlwBufferBlock_u_uart/t2_1/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/t2_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/t1_0/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/t1_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/t1_0/IN  (
    .I(\u_uart/tgl_a [0]),
    .O(\NlwBufferSignal_u_uart/t1_0/IN )
  );
  X_BUF   \NlwBufferBlock_u_uart/t2_0/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/t2_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_tx_b/bcnt_FSM_FFd2/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_tx_b/bcnt_FSM_FFd2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_tx_b/bcnt_FSM_FFd1/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_tx_b/bcnt_FSM_FFd1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_tx_b/cur_last/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_tx_b/cur_last/CLK )
  );
  X_BUF   \NlwBufferBlock_u_tx_b/cur_last/IN  (
    .I(a2b_rd_data[8]),
    .O(\NlwBufferSignal_u_tx_b/cur_last/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rptr_gray_r_5/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rptr_gray_r_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rptr_gray_r_4/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rptr_gray_r_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s1_11/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s1_11/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s1_11/IN  (
    .I(\u_fifo_b2a/rptr_gray [11]),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s1_11/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s1_10/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s1_10/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s1_10/IN  (
    .I(\u_fifo_b2a/rptr_gray [10]),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s1_10/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s1_9/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s1_9/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s1_9/IN  (
    .I(\u_fifo_b2a/rptr_gray [9]),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s1_9/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s1_8/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s1_8/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s1_8/IN  (
    .I(\u_fifo_b2a/rptr_gray [8]),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s1_8/IN )
  );
  X_BUF   \NlwBufferBlock_u_tx_b/pcnt_1/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_tx_b/pcnt_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_tx_b/pcnt_0/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_tx_b/pcnt_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/wptr_3/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/wptr_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/wptr_2/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/wptr_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/wptr_1/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/wptr_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/wptr_0/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/wptr_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cptr_gray_3/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cptr_gray_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cptr_gray_2/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cptr_gray_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cptr_gray_1/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cptr_gray_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cptr_gray_0/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cptr_gray_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s1_3/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s1_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s1_3/IN  (
    .I(\u_fifo_b2a/rptr_gray [3]),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s1_3/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s1_2/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s1_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s1_2/IN  (
    .I(\u_fifo_b2a/rptr_gray [2]),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s1_2/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s1_1/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s1_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s1_1/IN  (
    .I(\u_fifo_b2a/rptr_gray [1]),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s1_1/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s1_0/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s1_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rg_s1_0/IN  (
    .I(\u_fifo_b2a/rptr_gray [0]),
    .O(\NlwBufferSignal_u_fifo_b2a/rg_s1_0/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/port_done/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/port_done/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/trigger_port_scan/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/trigger_port_scan/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cptr_3/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cptr_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cptr_2/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cptr_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cptr_1/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cptr_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cptr_0/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cptr_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cptr_gray_9/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cptr_gray_9/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cptr_gray_8/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cptr_gray_8/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cptr_gray_7/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cptr_gray_7/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cptr_gray_6/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cptr_gray_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cptr_gray_5/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cptr_gray_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cptr_gray_4/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cptr_gray_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s2_7/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s2_7/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s2_7/IN  (
    .I(\u_fifo_b2a/cg_s1 [7]),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s2_7/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s2_6/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s2_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s2_6/IN  (
    .I(\u_fifo_b2a/cg_s1 [6]),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s2_6/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s2_5/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s2_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s2_5/IN  (
    .I(\u_fifo_b2a/cg_s1 [5]),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s2_5/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s2_4/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s2_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s2_4/IN  (
    .I(\u_fifo_b2a/cg_s1 [4]),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s2_4/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rptr_gray_r_7/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rptr_gray_r_7/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rptr_gray_r_6/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rptr_gray_r_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/idx_dport_lo_6/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/idx_dport_lo_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/idx_dport_lo_5/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/idx_dport_lo_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/idx_dport_lo_4/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/idx_dport_lo_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/idx_dport_lo_3/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/idx_dport_lo_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/idx_dport_lo_3/IN  (
    .I(\u_engine/ihl [1]),
    .O(\NlwBufferSignal_u_engine/idx_dport_lo_3/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/idx_dport_lo_2/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/idx_dport_lo_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/idx_dport_lo_2/IN  (
    .I(\u_engine/ihl [0]),
    .O(\NlwBufferSignal_u_engine/idx_dport_lo_2/IN )
  );
  X_BUF   \NlwBufferBlock_u_uart/t3_3/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/t3_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/t3_3/IN  (
    .I(\u_uart/t2<3>_0 ),
    .O(\NlwBufferSignal_u_uart/t3_3/IN )
  );
  X_BUF   \NlwBufferBlock_u_uart/t3_2/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/t3_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/t3_2/IN  (
    .I(\u_uart/t2<2>_0 ),
    .O(\NlwBufferSignal_u_uart/t3_2/IN )
  );
  X_BUF   \NlwBufferBlock_u_uart/t3_1/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/t3_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/t3_1/IN  (
    .I(\u_uart/t2<1>_0 ),
    .O(\NlwBufferSignal_u_uart/t3_1/IN )
  );
  X_BUF   \NlwBufferBlock_u_uart/t3_0/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/t3_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/t3_0/IN  (
    .I(\u_uart/t2<0>_0 ),
    .O(\NlwBufferSignal_u_uart/t3_0/IN )
  );
  X_BUF   \NlwBufferBlock_u_uart/tx_data_1/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/tx_data_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/tx_data_0/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/tx_data_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cg_s2_3/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cg_s2_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cg_s2_3/IN  (
    .I(\u_fifo_a2b/cg_s1 [3]),
    .O(\NlwBufferSignal_u_fifo_a2b/cg_s2_3/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cg_s2_2/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cg_s2_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cg_s2_2/IN  (
    .I(\u_fifo_a2b/cg_s1 [2]),
    .O(\NlwBufferSignal_u_fifo_a2b/cg_s2_2/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cg_s2_1/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cg_s2_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cg_s2_1/IN  (
    .I(\u_fifo_a2b/cg_s1 [1]),
    .O(\NlwBufferSignal_u_fifo_a2b/cg_s2_1/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cg_s2_0/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cg_s2_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cg_s2_0/IN  (
    .I(\u_fifo_a2b/cg_s1 [0]),
    .O(\NlwBufferSignal_u_fifo_a2b/cg_s2_0/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cg_s1_3/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cg_s1_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cg_s1_3/IN  (
    .I(\u_fifo_a2b/cptr_gray [3]),
    .O(\NlwBufferSignal_u_fifo_a2b/cg_s1_3/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cg_s1_2/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cg_s1_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cg_s1_2/IN  (
    .I(\u_fifo_a2b/cptr_gray [2]),
    .O(\NlwBufferSignal_u_fifo_a2b/cg_s1_2/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cg_s1_1/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cg_s1_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cg_s1_1/IN  (
    .I(\u_fifo_a2b/cptr_gray [1]),
    .O(\NlwBufferSignal_u_fifo_a2b/cg_s1_1/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cg_s1_0/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cg_s1_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cg_s1_0/IN  (
    .I(\u_fifo_a2b/cptr_gray [0]),
    .O(\NlwBufferSignal_u_fifo_a2b/cg_s1_0/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/drop/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/drop/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cptr_gray_11/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cptr_gray_11/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cptr_gray_10/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cptr_gray_10/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s1_7/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s1_7/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s1_7/IN  (
    .I(\u_fifo_b2a/cptr_gray [7]),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s1_7/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s1_6/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s1_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s1_6/IN  (
    .I(\u_fifo_b2a/cptr_gray [6]),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s1_6/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s1_5/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s1_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s1_5/IN  (
    .I(\u_fifo_b2a/cptr_gray [5]),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s1_5/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s1_4/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s1_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s1_4/IN  (
    .I(\u_fifo_b2a/cptr_gray [4]),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s1_4/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/dport_hi_7/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/dport_hi_7/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/dport_hi_7/IN  (
    .I(\u_rx_a/m_tdata [7]),
    .O(\NlwBufferSignal_u_engine/dport_hi_7/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/dport_hi_6/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/dport_hi_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/dport_hi_6/IN  (
    .I(\u_rx_a/m_tdata [6]),
    .O(\NlwBufferSignal_u_engine/dport_hi_6/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/dport_hi_5/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/dport_hi_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/dport_hi_5/IN  (
    .I(\u_rx_a/m_tdata [5]),
    .O(\NlwBufferSignal_u_engine/dport_hi_5/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/dport_hi_4/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/dport_hi_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/dport_hi_4/IN  (
    .I(\u_rx_a/m_tdata [4]),
    .O(\NlwBufferSignal_u_engine/dport_hi_4/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/dport_hi_3/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/dport_hi_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/dport_hi_3/IN  (
    .I(\u_rx_a/m_tdata [3]),
    .O(\NlwBufferSignal_u_engine/dport_hi_3/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/dport_hi_2/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/dport_hi_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/dport_hi_2/IN  (
    .I(\u_rx_a/m_tdata [2]),
    .O(\NlwBufferSignal_u_engine/dport_hi_2/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/dport_hi_1/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/dport_hi_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/dport_hi_1/IN  (
    .I(\u_rx_a/m_tdata [1]),
    .O(\NlwBufferSignal_u_engine/dport_hi_1/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/dport_hi_0/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/dport_hi_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/dport_hi_0/IN  (
    .I(\u_rx_a/m_tdata [0]),
    .O(\NlwBufferSignal_u_engine/dport_hi_0/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/ihl_3/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/ihl_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/ihl_3/IN  (
    .I(\u_rx_a/m_tdata [3]),
    .O(\NlwBufferSignal_u_engine/ihl_3/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/ihl_2/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/ihl_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/ihl_2/IN  (
    .I(\u_rx_a/m_tdata [2]),
    .O(\NlwBufferSignal_u_engine/ihl_2/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/ihl_1/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/ihl_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/ihl_1/IN  (
    .I(\u_rx_a/m_tdata [1]),
    .O(\NlwBufferSignal_u_engine/ihl_1/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/ihl_0/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/ihl_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/ihl_0/IN  (
    .I(\u_rx_a/m_tdata [0]),
    .O(\NlwBufferSignal_u_engine/ihl_0/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/idx_flags_6/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/idx_flags_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/idx_flags_5/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/idx_flags_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/idx_flags_4/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/idx_flags_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/idx_flags_3/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/idx_flags_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/cq_r_2/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/cq_r_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/cq_r_3/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/cq_r_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/cq_r_1/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/cq_r_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/cq_r_0/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/cq_r_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rptr_gray_r_3/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rptr_gray_r_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rptr_gray_r_2/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rptr_gray_r_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rptr_gray_r_1/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rptr_gray_r_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rptr_gray_r_0/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rptr_gray_r_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s2_11/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s2_11/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s2_11/IN  (
    .I(\u_fifo_b2a/cg_s1 [11]),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s2_11/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s2_10/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s2_10/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s2_10/IN  (
    .I(\u_fifo_b2a/cg_s1 [10]),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s2_10/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s2_9/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s2_9/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s2_9/IN  (
    .I(\u_fifo_b2a/cg_s1 [9]),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s2_9/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s2_8/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s2_8/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s2_8/IN  (
    .I(\u_fifo_b2a/cg_s1 [8]),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s2_8/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/len_gt/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/len_gt/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/frag_ok/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/frag_ok/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/ihl_ok/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/ihl_ok/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/is_ipv4/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/is_ipv4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/et_hi_ok/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/et_hi_ok/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tindex_7/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/m_tindex_7/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tindex_7/IN  (
    .I(\u_rx_a/hold_i [7]),
    .O(\NlwBufferSignal_u_rx_a/m_tindex_7/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tindex_6/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/m_tindex_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tindex_6/IN  (
    .I(\u_rx_a/hold_i [6]),
    .O(\NlwBufferSignal_u_rx_a/m_tindex_6/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tindex_5/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/m_tindex_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tindex_5/IN  (
    .I(\u_rx_a/hold_i [5]),
    .O(\NlwBufferSignal_u_rx_a/m_tindex_5/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tindex_4/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/m_tindex_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tindex_4/IN  (
    .I(\u_rx_a/hold_i [4]),
    .O(\NlwBufferSignal_u_rx_a/m_tindex_4/IN )
  );
  X_BUF   \NlwBufferBlock_u_uart/Mram_cq1/SP/RADR2  (
    .I(\u_uart/cq_w [0]),
    .O(\NlwBufferSignal_u_uart/Mram_cq1/SP/RADR2 )
  );
  X_BUF   \NlwBufferBlock_u_uart/Mram_cq1/SP/RADR3  (
    .I(\u_uart/cq_w [1]),
    .O(\NlwBufferSignal_u_uart/Mram_cq1/SP/RADR3 )
  );
  X_BUF   \NlwBufferBlock_u_uart/Mram_cq1/SP/RADR4  (
    .I(\u_uart/cq_w [2]),
    .O(\NlwBufferSignal_u_uart/Mram_cq1/SP/RADR4 )
  );
  X_BUF   \NlwBufferBlock_u_uart/Mram_cq1/SP/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/Mram_cq1/SP/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/Mram_cq1/SP/IN  (
    .I(\u_uart/pick_code [0]),
    .O(\NlwBufferSignal_u_uart/Mram_cq1/SP/IN )
  );
  X_BUF   \NlwBufferBlock_u_uart/Mram_cq1/SP/WADR2  (
    .I(\u_uart/cq_w [0]),
    .O(\NlwBufferSignal_u_uart/Mram_cq1/SP/WADR2 )
  );
  X_BUF   \NlwBufferBlock_u_uart/Mram_cq1/SP/WADR3  (
    .I(\u_uart/cq_w [1]),
    .O(\NlwBufferSignal_u_uart/Mram_cq1/SP/WADR3 )
  );
  X_BUF   \NlwBufferBlock_u_uart/Mram_cq1/SP/WADR4  (
    .I(\u_uart/cq_w [2]),
    .O(\NlwBufferSignal_u_uart/Mram_cq1/SP/WADR4 )
  );
  X_BUF   \NlwBufferBlock_u_uart/Mram_cq1/SP/WE  (
    .I(\u_uart/push_7903 ),
    .O(\NlwBufferSignal_u_uart/Mram_cq1/SP/WE )
  );
  X_BUF   \NlwBufferBlock_u_uart/Mram_cq2/SP/RADR2  (
    .I(\u_uart/cq_w [0]),
    .O(\NlwBufferSignal_u_uart/Mram_cq2/SP/RADR2 )
  );
  X_BUF   \NlwBufferBlock_u_uart/Mram_cq2/SP/RADR3  (
    .I(\u_uart/cq_w [1]),
    .O(\NlwBufferSignal_u_uart/Mram_cq2/SP/RADR3 )
  );
  X_BUF   \NlwBufferBlock_u_uart/Mram_cq2/SP/RADR4  (
    .I(\u_uart/cq_w [2]),
    .O(\NlwBufferSignal_u_uart/Mram_cq2/SP/RADR4 )
  );
  X_BUF   \NlwBufferBlock_u_uart/Mram_cq2/SP/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/Mram_cq2/SP/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/Mram_cq2/SP/IN  (
    .I(\u_uart/pick_code [1]),
    .O(\NlwBufferSignal_u_uart/Mram_cq2/SP/IN )
  );
  X_BUF   \NlwBufferBlock_u_uart/Mram_cq2/SP/WADR2  (
    .I(\u_uart/cq_w [0]),
    .O(\NlwBufferSignal_u_uart/Mram_cq2/SP/WADR2 )
  );
  X_BUF   \NlwBufferBlock_u_uart/Mram_cq2/SP/WADR3  (
    .I(\u_uart/cq_w [1]),
    .O(\NlwBufferSignal_u_uart/Mram_cq2/SP/WADR3 )
  );
  X_BUF   \NlwBufferBlock_u_uart/Mram_cq2/SP/WADR4  (
    .I(\u_uart/cq_w [2]),
    .O(\NlwBufferSignal_u_uart/Mram_cq2/SP/WADR4 )
  );
  X_BUF   \NlwBufferBlock_u_uart/Mram_cq2/SP/WE  (
    .I(\u_uart/push_7903 ),
    .O(\NlwBufferSignal_u_uart/Mram_cq2/SP/WE )
  );
  X_BUF   \NlwBufferBlock_u_uart/Mram_cq1/DP/RADR2  (
    .I(\u_uart/cq_r [0]),
    .O(\NlwBufferSignal_u_uart/Mram_cq1/DP/RADR2 )
  );
  X_BUF   \NlwBufferBlock_u_uart/Mram_cq1/DP/RADR3  (
    .I(\u_uart/cq_r [1]),
    .O(\NlwBufferSignal_u_uart/Mram_cq1/DP/RADR3 )
  );
  X_BUF   \NlwBufferBlock_u_uart/Mram_cq1/DP/RADR4  (
    .I(\u_uart/cq_r [2]),
    .O(\NlwBufferSignal_u_uart/Mram_cq1/DP/RADR4 )
  );
  X_BUF   \NlwBufferBlock_u_uart/Mram_cq1/DP/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/Mram_cq1/DP/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/Mram_cq1/DP/IN  (
    .I(\u_uart/pick_code [0]),
    .O(\NlwBufferSignal_u_uart/Mram_cq1/DP/IN )
  );
  X_BUF   \NlwBufferBlock_u_uart/Mram_cq1/DP/WADR2  (
    .I(\u_uart/cq_w [0]),
    .O(\NlwBufferSignal_u_uart/Mram_cq1/DP/WADR2 )
  );
  X_BUF   \NlwBufferBlock_u_uart/Mram_cq1/DP/WADR3  (
    .I(\u_uart/cq_w [1]),
    .O(\NlwBufferSignal_u_uart/Mram_cq1/DP/WADR3 )
  );
  X_BUF   \NlwBufferBlock_u_uart/Mram_cq1/DP/WADR4  (
    .I(\u_uart/cq_w [2]),
    .O(\NlwBufferSignal_u_uart/Mram_cq1/DP/WADR4 )
  );
  X_BUF   \NlwBufferBlock_u_uart/Mram_cq1/DP/WE  (
    .I(\u_uart/push_7903 ),
    .O(\NlwBufferSignal_u_uart/Mram_cq1/DP/WE )
  );
  X_BUF   \NlwBufferBlock_u_uart/Mram_cq2/DP/RADR2  (
    .I(\u_uart/cq_r [0]),
    .O(\NlwBufferSignal_u_uart/Mram_cq2/DP/RADR2 )
  );
  X_BUF   \NlwBufferBlock_u_uart/Mram_cq2/DP/RADR3  (
    .I(\u_uart/cq_r [1]),
    .O(\NlwBufferSignal_u_uart/Mram_cq2/DP/RADR3 )
  );
  X_BUF   \NlwBufferBlock_u_uart/Mram_cq2/DP/RADR4  (
    .I(\u_uart/cq_r [2]),
    .O(\NlwBufferSignal_u_uart/Mram_cq2/DP/RADR4 )
  );
  X_BUF   \NlwBufferBlock_u_uart/Mram_cq2/DP/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/Mram_cq2/DP/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/Mram_cq2/DP/IN  (
    .I(\u_uart/pick_code [1]),
    .O(\NlwBufferSignal_u_uart/Mram_cq2/DP/IN )
  );
  X_BUF   \NlwBufferBlock_u_uart/Mram_cq2/DP/WADR2  (
    .I(\u_uart/cq_w [0]),
    .O(\NlwBufferSignal_u_uart/Mram_cq2/DP/WADR2 )
  );
  X_BUF   \NlwBufferBlock_u_uart/Mram_cq2/DP/WADR3  (
    .I(\u_uart/cq_w [1]),
    .O(\NlwBufferSignal_u_uart/Mram_cq2/DP/WADR3 )
  );
  X_BUF   \NlwBufferBlock_u_uart/Mram_cq2/DP/WADR4  (
    .I(\u_uart/cq_w [2]),
    .O(\NlwBufferSignal_u_uart/Mram_cq2/DP/WADR4 )
  );
  X_BUF   \NlwBufferBlock_u_uart/Mram_cq2/DP/WE  (
    .I(\u_uart/push_7903 ),
    .O(\NlwBufferSignal_u_uart/Mram_cq2/DP/WE )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cg_s2_11/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cg_s2_11/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cg_s2_11/IN  (
    .I(\u_fifo_a2b/cg_s1 [11]),
    .O(\NlwBufferSignal_u_fifo_a2b/cg_s2_11/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cg_s2_10/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cg_s2_10/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cg_s2_10/IN  (
    .I(\u_fifo_a2b/cg_s1 [10]),
    .O(\NlwBufferSignal_u_fifo_a2b/cg_s2_10/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cg_s2_9/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cg_s2_9/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cg_s2_9/IN  (
    .I(\u_fifo_a2b/cg_s1 [9]),
    .O(\NlwBufferSignal_u_fifo_a2b/cg_s2_9/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cg_s2_8/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cg_s2_8/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cg_s2_8/IN  (
    .I(\u_fifo_a2b/cg_s1 [8]),
    .O(\NlwBufferSignal_u_fifo_a2b/cg_s2_8/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s1_11/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s1_11/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s1_11/IN  (
    .I(\u_fifo_b2a/cptr_gray [11]),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s1_11/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s1_10/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s1_10/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s1_10/IN  (
    .I(\u_fifo_b2a/cptr_gray [10]),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s1_10/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s1_9/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s1_9/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s1_9/IN  (
    .I(\u_fifo_b2a/cptr_gray [9]),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s1_9/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s1_8/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s1_8/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/cg_s1_8/IN  (
    .I(\u_fifo_b2a/cptr_gray [8]),
    .O(\NlwBufferSignal_u_fifo_b2a/cg_s1_8/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rptr_gray_r_11/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rptr_gray_r_11/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rptr_gray_r_10/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rptr_gray_r_10/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rptr_gray_r_9/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rptr_gray_r_9/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rptr_gray_r_8/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rptr_gray_r_8/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tdata_3/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/m_tdata_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tdata_3/IN  (
    .I(\u_rx_a/hold_d [3]),
    .O(\NlwBufferSignal_u_rx_a/m_tdata_3/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tdata_2/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/m_tdata_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tdata_2/IN  (
    .I(\u_rx_a/hold_d [2]),
    .O(\NlwBufferSignal_u_rx_a/m_tdata_2/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tdata_1/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/m_tdata_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tdata_1/IN  (
    .I(\u_rx_a/hold_d [1]),
    .O(\NlwBufferSignal_u_rx_a/m_tdata_1/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tdata_0/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/m_tdata_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tdata_0/IN  (
    .I(\u_rx_a/hold_d [0]),
    .O(\NlwBufferSignal_u_rx_a/m_tdata_0/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/frag_hi_3/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/frag_hi_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/frag_hi_3/IN  (
    .I(\u_rx_a/m_tdata [3]),
    .O(\NlwBufferSignal_u_engine/frag_hi_3/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/frag_hi_4/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/frag_hi_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/frag_hi_2/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/frag_hi_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/frag_hi_2/IN  (
    .I(\u_rx_a/m_tdata [2]),
    .O(\NlwBufferSignal_u_engine/frag_hi_2/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/frag_hi_1/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/frag_hi_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/frag_hi_1/IN  (
    .I(\u_rx_a/m_tdata [1]),
    .O(\NlwBufferSignal_u_engine/frag_hi_1/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/frag_hi_0/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/frag_hi_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/frag_hi_0/IN  (
    .I(\u_rx_a/m_tdata [0]),
    .O(\NlwBufferSignal_u_engine/frag_hi_0/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/ver_ok/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/ver_ok/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/icmp_done/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/icmp_done/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/trigger_icmp/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/trigger_icmp/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tindex_11/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/m_tindex_11/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tindex_11/IN  (
    .I(\u_rx_a/hold_i [11]),
    .O(\NlwBufferSignal_u_rx_a/m_tindex_11/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tindex_10/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/m_tindex_10/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tindex_10/IN  (
    .I(\u_rx_a/hold_i [10]),
    .O(\NlwBufferSignal_u_rx_a/m_tindex_10/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tindex_9/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/m_tindex_9/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tindex_9/IN  (
    .I(\u_rx_a/hold_i [9]),
    .O(\NlwBufferSignal_u_rx_a/m_tindex_9/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tindex_8/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/m_tindex_8/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tindex_8/IN  (
    .I(\u_rx_a/hold_i [8]),
    .O(\NlwBufferSignal_u_rx_a/m_tindex_8/IN )
  );
  X_BUF   \NlwBufferBlock_u_tx_b/cur_7/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_tx_b/cur_7/CLK )
  );
  X_BUF   \NlwBufferBlock_u_tx_b/cur_7/IN  (
    .I(a2b_rd_data[7]),
    .O(\NlwBufferSignal_u_tx_b/cur_7/IN )
  );
  X_BUF   \NlwBufferBlock_u_tx_b/cur_6/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_tx_b/cur_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u_tx_b/cur_6/IN  (
    .I(a2b_rd_data[6]),
    .O(\NlwBufferSignal_u_tx_b/cur_6/IN )
  );
  X_BUF   \NlwBufferBlock_u_tx_b/cur_5/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_tx_b/cur_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u_tx_b/cur_5/IN  (
    .I(a2b_rd_data[5]),
    .O(\NlwBufferSignal_u_tx_b/cur_5/IN )
  );
  X_BUF   \NlwBufferBlock_u_tx_b/cur_4/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_tx_b/cur_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_tx_b/cur_4/IN  (
    .I(a2b_rd_data[4]),
    .O(\NlwBufferSignal_u_tx_b/cur_4/IN )
  );
  X_BUF   \NlwBufferBlock_u_tx_b/cur_3/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_tx_b/cur_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_tx_b/cur_3/IN  (
    .I(a2b_rd_data[3]),
    .O(\NlwBufferSignal_u_tx_b/cur_3/IN )
  );
  X_BUF   \NlwBufferBlock_u_tx_b/cur_2/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_tx_b/cur_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_tx_b/cur_2/IN  (
    .I(a2b_rd_data[2]),
    .O(\NlwBufferSignal_u_tx_b/cur_2/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rptr_gray_r_11/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rptr_gray_r_11/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rptr_gray_r_10/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rptr_gray_r_10/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cg_s2_7/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cg_s2_7/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cg_s2_7/IN  (
    .I(\u_fifo_a2b/cg_s1 [7]),
    .O(\NlwBufferSignal_u_fifo_a2b/cg_s2_7/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cg_s1_7/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cg_s1_7/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cg_s2_6/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cg_s2_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cg_s2_6/IN  (
    .I(\u_fifo_a2b/cg_s1 [6]),
    .O(\NlwBufferSignal_u_fifo_a2b/cg_s2_6/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cg_s1_6/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cg_s1_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cg_s2_5/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cg_s2_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cg_s2_5/IN  (
    .I(\u_fifo_a2b/cg_s1 [5]),
    .O(\NlwBufferSignal_u_fifo_a2b/cg_s2_5/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cg_s1_5/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cg_s1_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cg_s2_4/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cg_s2_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cg_s2_4/IN  (
    .I(\u_fifo_a2b/cg_s1 [4]),
    .O(\NlwBufferSignal_u_fifo_a2b/cg_s2_4/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cg_s1_4/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cg_s1_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cg_s1_11/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cg_s1_11/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cg_s1_11/IN  (
    .I(\u_fifo_a2b/cptr_gray [11]),
    .O(\NlwBufferSignal_u_fifo_a2b/cg_s1_11/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cg_s1_10/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cg_s1_10/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cg_s1_10/IN  (
    .I(\u_fifo_a2b/cptr_gray [10]),
    .O(\NlwBufferSignal_u_fifo_a2b/cg_s1_10/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cg_s1_9/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cg_s1_9/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cg_s1_9/IN  (
    .I(\u_fifo_a2b/cptr_gray [9]),
    .O(\NlwBufferSignal_u_fifo_a2b/cg_s1_9/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cg_s1_8/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cg_s1_8/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cg_s1_8/IN  (
    .I(\u_fifo_a2b/cptr_gray [8]),
    .O(\NlwBufferSignal_u_fifo_a2b/cg_s1_8/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rptr_gray_r_3/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rptr_gray_r_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_b2a/rptr_gray_r_2/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_b2a/rptr_gray_r_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/shreg_5/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/shreg_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/shreg_5/IN  (
    .I(\u_rx_a/shreg [7]),
    .O(\NlwBufferSignal_u_rx_a/shreg_5/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/shreg_4/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/shreg_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/shreg_4/IN  (
    .I(\u_rx_a/shreg [6]),
    .O(\NlwBufferSignal_u_rx_a/shreg_4/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/shreg_3/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/shreg_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/shreg_3/IN  (
    .I(\u_rx_a/shreg [5]),
    .O(\NlwBufferSignal_u_rx_a/shreg_3/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/shreg_2/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/shreg_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/shreg_2/IN  (
    .I(\u_rx_a/shreg [4]),
    .O(\NlwBufferSignal_u_rx_a/shreg_2/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/len_hi_3/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/len_hi_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/len_hi_3/IN  (
    .I(\u_rx_a/m_tdata [3]),
    .O(\NlwBufferSignal_u_engine/len_hi_3/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/len_hi_2/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/len_hi_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/len_hi_2/IN  (
    .I(\u_rx_a/m_tdata [2]),
    .O(\NlwBufferSignal_u_engine/len_hi_2/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/len_hi_1/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/len_hi_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/len_hi_1/IN  (
    .I(\u_rx_a/m_tdata [1]),
    .O(\NlwBufferSignal_u_engine/len_hi_1/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/len_hi_0/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/len_hi_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/len_hi_0/IN  (
    .I(\u_rx_a/m_tdata [0]),
    .O(\NlwBufferSignal_u_engine/len_hi_0/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_d_7/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/hold_d_7/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_d_7/IN  (
    .I(\u_rx_a/rxd_r [1]),
    .O(\NlwBufferSignal_u_rx_a/hold_d_7/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_d_6/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/hold_d_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_d_6/IN  (
    .I(\u_rx_a/rxd_r [0]),
    .O(\NlwBufferSignal_u_rx_a/hold_d_6/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_d_5/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/hold_d_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_d_5/IN  (
    .I(\u_rx_a/shreg [7]),
    .O(\NlwBufferSignal_u_rx_a/hold_d_5/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_d_4/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/hold_d_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_d_4/IN  (
    .I(\u_rx_a/shreg [6]),
    .O(\NlwBufferSignal_u_rx_a/hold_d_4/IN )
  );
  X_BUF   \NlwBufferBlock_u_uart/code_2/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/code_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/code_1/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/code_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/code_0/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/code_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/req_3/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/req_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/idx_7/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/idx_7/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/idx_6/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/idx_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/idx_5/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/idx_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/idx_4/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/idx_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/idx_4/IN  (
    .I(\u_uart/mstate[2]_idx[7]_select_72_OUT<4>_7731 ),
    .O(\NlwBufferSignal_u_uart/idx_4/IN )
  );
  X_BUF   \NlwBufferBlock_u_uart/tx_data_5/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/tx_data_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/tx_data_4/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/tx_data_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rg_s1_3/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rg_s1_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rg_s1_3/IN  (
    .I(\u_fifo_a2b/rptr_gray [3]),
    .O(\NlwBufferSignal_u_fifo_a2b/rg_s1_3/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rg_s2_3/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rg_s2_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rg_s1_2/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rg_s1_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rg_s1_2/IN  (
    .I(\u_fifo_a2b/rptr_gray [2]),
    .O(\NlwBufferSignal_u_fifo_a2b/rg_s1_2/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rg_s2_2/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rg_s2_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rg_s1_1/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rg_s1_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rg_s1_1/IN  (
    .I(\u_fifo_a2b/rptr_gray [1]),
    .O(\NlwBufferSignal_u_fifo_a2b/rg_s1_1/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rg_s2_1/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rg_s2_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rg_s1_0/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rg_s1_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rg_s1_0/IN  (
    .I(\u_fifo_a2b/rptr_gray [0]),
    .O(\NlwBufferSignal_u_fifo_a2b/rg_s1_0/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rg_s2_0/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rg_s2_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rptr_gray_r_1/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rptr_gray_r_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rptr_gray_r_0/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rptr_gray_r_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_d_3/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/hold_d_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_d_3/IN  (
    .I(\u_rx_a/shreg [5]),
    .O(\NlwBufferSignal_u_rx_a/hold_d_3/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_d_2/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/hold_d_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_d_2/IN  (
    .I(\u_rx_a/shreg [4]),
    .O(\NlwBufferSignal_u_rx_a/hold_d_2/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_d_1/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/hold_d_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_d_1/IN  (
    .I(\u_rx_a/shreg [3]),
    .O(\NlwBufferSignal_u_rx_a/hold_d_1/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_d_0/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/hold_d_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_d_0/IN  (
    .I(\u_rx_a/shreg [2]),
    .O(\NlwBufferSignal_u_rx_a/hold_d_0/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/len_hi_7/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/len_hi_7/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/len_hi_7/IN  (
    .I(\u_rx_a/m_tdata [7]),
    .O(\NlwBufferSignal_u_engine/len_hi_7/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/len_hi_6/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/len_hi_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/len_hi_6/IN  (
    .I(\u_rx_a/m_tdata [6]),
    .O(\NlwBufferSignal_u_engine/len_hi_6/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/len_hi_5/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/len_hi_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/len_hi_5/IN  (
    .I(\u_rx_a/m_tdata [5]),
    .O(\NlwBufferSignal_u_engine/len_hi_5/IN )
  );
  X_BUF   \NlwBufferBlock_u_engine/len_hi_4/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_engine/len_hi_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_engine/len_hi_4/IN  (
    .I(\u_rx_a/m_tdata [4]),
    .O(\NlwBufferSignal_u_engine/len_hi_4/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tdata_7/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/m_tdata_7/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tdata_7/IN  (
    .I(\u_rx_a/hold_d [7]),
    .O(\NlwBufferSignal_u_rx_a/m_tdata_7/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tdata_6/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/m_tdata_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tdata_6/IN  (
    .I(\u_rx_a/hold_d [6]),
    .O(\NlwBufferSignal_u_rx_a/m_tdata_6/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tdata_5/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/m_tdata_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tdata_5/IN  (
    .I(\u_rx_a/hold_d [5]),
    .O(\NlwBufferSignal_u_rx_a/m_tdata_5/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tdata_4/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/m_tdata_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tdata_4/IN  (
    .I(\u_rx_a/hold_d [4]),
    .O(\NlwBufferSignal_u_rx_a/m_tdata_4/IN )
  );
  X_BUF   \NlwBufferBlock_u_rst_b/sync_q_2/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rst_b/sync_q_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rst_b/sync_q_2/IN  (
    .I(\u_rst_b/sync_q [1]),
    .O(\NlwBufferSignal_u_rst_b/sync_q_2/IN )
  );
  X_BUF   \NlwBufferBlock_u_rst_b/sync_q_1/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rst_b/sync_q_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rst_b/sync_q_1/IN  (
    .I(\u_rst_b/sync_q [0]),
    .O(\NlwBufferSignal_u_rst_b/sync_q_1/IN )
  );
  X_BUF   \NlwBufferBlock_u_rst_b/sync_q_0/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rst_b/sync_q_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_i_7/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/hold_i_7/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_i_7/IN  (
    .I(\u_rx_a/bcnt [7]),
    .O(\NlwBufferSignal_u_rx_a/hold_i_7/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_i_6/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/hold_i_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_i_6/IN  (
    .I(\u_rx_a/bcnt [6]),
    .O(\NlwBufferSignal_u_rx_a/hold_i_6/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_i_5/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/hold_i_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_i_5/IN  (
    .I(\u_rx_a/bcnt [5]),
    .O(\NlwBufferSignal_u_rx_a/hold_i_5/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_i_4/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/hold_i_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_i_4/IN  (
    .I(\u_rx_a/bcnt [4]),
    .O(\NlwBufferSignal_u_rx_a/hold_i_4/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_i_11/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/hold_i_11/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_i_11/IN  (
    .I(\u_rx_a/bcnt [11]),
    .O(\NlwBufferSignal_u_rx_a/hold_i_11/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_i_10/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/hold_i_10/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_i_10/IN  (
    .I(\u_rx_a/bcnt [10]),
    .O(\NlwBufferSignal_u_rx_a/hold_i_10/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_i_9/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/hold_i_9/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_i_9/IN  (
    .I(\u_rx_a/bcnt [9]),
    .O(\NlwBufferSignal_u_rx_a/hold_i_9/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_i_8/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/hold_i_8/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_i_8/IN  (
    .I(\u_rx_a/bcnt [8]),
    .O(\NlwBufferSignal_u_rx_a/hold_i_8/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_i_15/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/hold_i_15/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_i_15/IN  (
    .I(\u_rx_a/bcnt [15]),
    .O(\NlwBufferSignal_u_rx_a/hold_i_15/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_i_14/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/hold_i_14/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_i_14/IN  (
    .I(\u_rx_a/bcnt [14]),
    .O(\NlwBufferSignal_u_rx_a/hold_i_14/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_i_13/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/hold_i_13/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_i_13/IN  (
    .I(\u_rx_a/bcnt [13]),
    .O(\NlwBufferSignal_u_rx_a/hold_i_13/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_i_12/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/hold_i_12/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_i_12/IN  (
    .I(\u_rx_a/bcnt [12]),
    .O(\NlwBufferSignal_u_rx_a/hold_i_12/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tindex_15/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/m_tindex_15/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tindex_15/IN  (
    .I(\u_rx_a/hold_i [15]),
    .O(\NlwBufferSignal_u_rx_a/m_tindex_15/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tindex_14/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/m_tindex_14/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tindex_14/IN  (
    .I(\u_rx_a/hold_i [14]),
    .O(\NlwBufferSignal_u_rx_a/m_tindex_14/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tindex_13/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/m_tindex_13/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tindex_13/IN  (
    .I(\u_rx_a/hold_i [13]),
    .O(\NlwBufferSignal_u_rx_a/m_tindex_13/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tindex_12/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/m_tindex_12/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tindex_12/IN  (
    .I(\u_rx_a/hold_i [12]),
    .O(\NlwBufferSignal_u_rx_a/m_tindex_12/IN )
  );
  X_BUF   \NlwBufferBlock_u_uart/cq_w_1/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/cq_w_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/cq_w_2/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/cq_w_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/cq_w_3/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/cq_w_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/cq_w_0/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/cq_w_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/req_2/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/req_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/req_1/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/req_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/req_0/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/req_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/idx_3/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/idx_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/idx_2/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/idx_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/idx_0/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/idx_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/idx_1/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/idx_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/idx_1/IN  (
    .I(\u_uart/mstate[2]_idx[7]_select_72_OUT<1>_7730 ),
    .O(\NlwBufferSignal_u_uart/idx_1/IN )
  );
  X_BUF   \NlwBufferBlock_u_uart/idx_4_1/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/idx_4_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/idx_1_1/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/idx_1_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/hb_pend/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/hb_pend/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rptr_gray_r_7/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rptr_gray_r_7/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rptr_gray_r_6/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rptr_gray_r_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rptr_gray_r_9/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rptr_gray_r_9/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rptr_gray_r_8/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rptr_gray_r_8/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/shreg_7/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/shreg_7/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/shreg_7/IN  (
    .I(\u_rx_a/rxd_r [1]),
    .O(\NlwBufferSignal_u_rx_a/shreg_7/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/shreg_6/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/shreg_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/shreg_6/IN  (
    .I(\u_rx_a/rxd_r [0]),
    .O(\NlwBufferSignal_u_rx_a/shreg_6/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tvalid/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/m_tvalid/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_v/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/hold_v/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tindex_3/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/m_tindex_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tindex_3/IN  (
    .I(\u_rx_a/hold_i [3]),
    .O(\NlwBufferSignal_u_rx_a/m_tindex_3/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tindex_2/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/m_tindex_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tindex_2/IN  (
    .I(\u_rx_a/hold_i [2]),
    .O(\NlwBufferSignal_u_rx_a/m_tindex_2/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tindex_1/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/m_tindex_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tindex_1/IN  (
    .I(\u_rx_a/hold_i [1]),
    .O(\NlwBufferSignal_u_rx_a/m_tindex_1/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tindex_0/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/m_tindex_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tindex_0/IN  (
    .I(\u_rx_a/hold_i [0]),
    .O(\NlwBufferSignal_u_rx_a/m_tindex_0/IN )
  );
  X_BUF   \NlwBufferBlock_u_uart/u_core/tx_out/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/u_core/tx_out/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rptr_gray_r_5/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rptr_gray_r_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rptr_gray_r_4/CLK  (
    .I(phy_b_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rptr_gray_r_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/crs_prev/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/crs_prev/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/crs_prev/IN  (
    .I(\u_rx_a/crs_r_7413 ),
    .O(\NlwBufferSignal_u_rx_a/crs_prev/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/m_tlast/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/m_tlast/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/state_FSM_FFd2/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/state_FSM_FFd2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/state_FSM_FFd1/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/state_FSM_FFd1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_i_3/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/hold_i_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_i_3/IN  (
    .I(\u_rx_a/bcnt [3]),
    .O(\NlwBufferSignal_u_rx_a/hold_i_3/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_i_2/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/hold_i_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_i_2/IN  (
    .I(\u_rx_a/bcnt [2]),
    .O(\NlwBufferSignal_u_rx_a/hold_i_2/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_i_1/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/hold_i_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_i_1/IN  (
    .I(\u_rx_a/bcnt [1]),
    .O(\NlwBufferSignal_u_rx_a/hold_i_1/IN )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_i_0/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/hold_i_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/hold_i_0/IN  (
    .I(\u_rx_a/bcnt [0]),
    .O(\NlwBufferSignal_u_rx_a/hold_i_0/IN )
  );
  X_BUF   \NlwBufferBlock_u_uart/mstate_FSM_FFd2/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/mstate_FSM_FFd2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/mstate_FSM_FFd1/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/mstate_FSM_FFd1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/tx_start/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/tx_start/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/tx_start/IN  (
    .I(\u_uart/GND_7_o_tx_busy_MUX_9398_o ),
    .O(\NlwBufferSignal_u_uart/tx_start/IN )
  );
  X_BUF   \NlwBufferBlock_u_uart/u_core/sh_7/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/u_core/sh_7/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/u_core/sh_7/IN  (
    .I(\u_uart/tx_data [6]),
    .O(\NlwBufferSignal_u_uart/u_core/sh_7/IN )
  );
  X_BUF   \NlwBufferBlock_u_uart/u_core/sh_6/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/u_core/sh_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/u_core/sh_6/IN  (
    .I(\u_uart/tx_data [5]),
    .O(\NlwBufferSignal_u_uart/u_core/sh_6/IN )
  );
  X_BUF   \NlwBufferBlock_u_uart/u_core/sh_5/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/u_core/sh_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/u_core/sh_5/IN  (
    .I(\u_uart/tx_data [4]),
    .O(\NlwBufferSignal_u_uart/u_core/sh_5/IN )
  );
  X_BUF   \NlwBufferBlock_u_uart/u_core/sh_4/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/u_core/sh_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/u_core/sh_4/IN  (
    .I(\u_uart/tx_data [3]),
    .O(\NlwBufferSignal_u_uart/u_core/sh_4/IN )
  );
  X_BUF   \NlwBufferBlock_u_tx_a/cur_5/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_tx_a/cur_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u_tx_a/cur_5/IN  (
    .I(b2a_rd_data[5]),
    .O(\NlwBufferSignal_u_tx_a/cur_5/IN )
  );
  X_BUF   \NlwBufferBlock_u_tx_a/cur_4/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_tx_a/cur_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_tx_a/cur_4/IN  (
    .I(b2a_rd_data[4]),
    .O(\NlwBufferSignal_u_tx_a/cur_4/IN )
  );
  X_BUF   \NlwBufferBlock_u_tx_a/cur_3/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_tx_a/cur_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_tx_a/cur_3/IN  (
    .I(b2a_rd_data[3]),
    .O(\NlwBufferSignal_u_tx_a/cur_3/IN )
  );
  X_BUF   \NlwBufferBlock_u_tx_a/cur_7/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_tx_a/cur_7/CLK )
  );
  X_BUF   \NlwBufferBlock_u_tx_a/cur_2/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_tx_a/cur_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_tx_a/cur_2/IN  (
    .I(b2a_rd_data[2]),
    .O(\NlwBufferSignal_u_tx_a/cur_2/IN )
  );
  X_BUF   \NlwBufferBlock_u_tx_a/cur_6/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_tx_a/cur_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/dcnt_1/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/dcnt_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rx_a/dcnt_0/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rx_a/dcnt_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rst_a/sync_q_2/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rst_a/sync_q_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rst_a/sync_q_2/IN  (
    .I(\u_rst_a/sync_q [1]),
    .O(\NlwBufferSignal_u_rst_a/sync_q_2/IN )
  );
  X_BUF   \NlwBufferBlock_u_rst_a/sync_q_1/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rst_a/sync_q_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rst_a/sync_q_1/IN  (
    .I(\u_rst_a/sync_q [0]),
    .O(\NlwBufferSignal_u_rst_a/sync_q_1/IN )
  );
  X_BUF   \NlwBufferBlock_u_rst_a/sync_q_0/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_rst_a/sync_q_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/u_core/bitcnt_3/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/u_core/bitcnt_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/u_core/bitcnt_2/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/u_core/bitcnt_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/u_core/bitcnt_1/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/u_core/bitcnt_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/u_core/bitcnt_0/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/u_core/bitcnt_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rg_s1_11/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rg_s1_11/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rg_s1_11/IN  (
    .I(\u_fifo_a2b/rptr_gray [11]),
    .O(\NlwBufferSignal_u_fifo_a2b/rg_s1_11/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rg_s1_10/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rg_s1_10/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rg_s1_10/IN  (
    .I(\u_fifo_a2b/rptr_gray [10]),
    .O(\NlwBufferSignal_u_fifo_a2b/rg_s1_10/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rg_s1_9/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rg_s1_9/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rg_s1_9/IN  (
    .I(\u_fifo_a2b/rptr_gray [9]),
    .O(\NlwBufferSignal_u_fifo_a2b/rg_s1_9/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rg_s1_8/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rg_s1_8/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rg_s1_8/IN  (
    .I(\u_fifo_a2b/rptr_gray [8]),
    .O(\NlwBufferSignal_u_fifo_a2b/rg_s1_8/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cptr_gray_7/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cptr_gray_7/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cptr_gray_6/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cptr_gray_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cptr_gray_5/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cptr_gray_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cptr_gray_4/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cptr_gray_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cptr_gray_3/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cptr_gray_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cptr_gray_2/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cptr_gray_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cptr_gray_1/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cptr_gray_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cptr_gray_0/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cptr_gray_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cptr_gray_11/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cptr_gray_11/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cptr_gray_10/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cptr_gray_10/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cptr_gray_9/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cptr_gray_9/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cptr_gray_8/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cptr_gray_8/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/tx_data_3/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/tx_data_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/tx_data_2/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/tx_data_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/u_core/tx_busy/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/u_core/tx_busy/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/u_core/sh_3/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/u_core/sh_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/u_core/sh_3/IN  (
    .I(\u_uart/tx_data [2]),
    .O(\NlwBufferSignal_u_uart/u_core/sh_3/IN )
  );
  X_BUF   \NlwBufferBlock_u_uart/u_core/sh_2/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/u_core/sh_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/u_core/sh_2/IN  (
    .I(\u_uart/tx_data [1]),
    .O(\NlwBufferSignal_u_uart/u_core/sh_2/IN )
  );
  X_BUF   \NlwBufferBlock_u_uart/u_core/sh_1/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/u_core/sh_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/u_core/sh_1/IN  (
    .I(\u_uart/tx_data [0]),
    .O(\NlwBufferSignal_u_uart/u_core/sh_1/IN )
  );
  X_BUF   \NlwBufferBlock_u_uart/u_core/sh_0/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/u_core/sh_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rg_s2_11/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rg_s2_11/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rg_s2_11/IN  (
    .I(\u_fifo_a2b/rg_s1 [11]),
    .O(\NlwBufferSignal_u_fifo_a2b/rg_s2_11/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rg_s2_10/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rg_s2_10/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rg_s2_10/IN  (
    .I(\u_fifo_a2b/rg_s1 [10]),
    .O(\NlwBufferSignal_u_fifo_a2b/rg_s2_10/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rg_s2_9/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rg_s2_9/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rg_s2_9/IN  (
    .I(\u_fifo_a2b/rg_s1 [9]),
    .O(\NlwBufferSignal_u_fifo_a2b/rg_s2_9/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rg_s2_8/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rg_s2_8/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rg_s2_8/IN  (
    .I(\u_fifo_a2b/rg_s1 [8]),
    .O(\NlwBufferSignal_u_fifo_a2b/rg_s2_8/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/drop/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/drop/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/wptr_7/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/wptr_7/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/wptr_6/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/wptr_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/wptr_5/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/wptr_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/wptr_4/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/wptr_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cptr_7/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cptr_7/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cptr_6/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cptr_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cptr_5/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cptr_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cptr_4/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cptr_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/wptr_11/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/wptr_11/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/wptr_10/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/wptr_10/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/wptr_9/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/wptr_9/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/wptr_8/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/wptr_8/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cptr_11/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cptr_11/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cptr_10/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cptr_10/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cptr_9/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cptr_9/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cptr_8/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cptr_8/CLK )
  );
  X_BUF   \NlwBufferBlock_u_tx_a/bcnt_FSM_FFd2/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_tx_a/bcnt_FSM_FFd2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_tx_a/bcnt_FSM_FFd1/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_tx_a/bcnt_FSM_FFd1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_tx_a/pcnt_3/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_tx_a/pcnt_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_tx_a/pcnt_2/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_tx_a/pcnt_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/u_core/baudcnt_12/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/u_core/baudcnt_12/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/u_core/baudcnt_11/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/u_core/baudcnt_11/CLK )
  );
  X_BUF   \NlwBufferBlock_u_tx_a/cur_last/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_tx_a/cur_last/CLK )
  );
  X_BUF   \NlwBufferBlock_u_tx_a/cur_last/IN  (
    .I(b2a_rd_data[8]),
    .O(\NlwBufferSignal_u_tx_a/cur_last/IN )
  );
  X_BUF   \NlwBufferBlock_u_tx_a/state_FSM_FFd2/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_tx_a/state_FSM_FFd2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_tx_a/state_FSM_FFd1/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_tx_a/state_FSM_FFd1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_tx_a/pcnt_5/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_tx_a/pcnt_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u_tx_a/pcnt_4/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_tx_a/pcnt_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_tx_a/pcnt_1/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_tx_a/pcnt_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_tx_a/pcnt_0/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_tx_a/pcnt_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/u_core/baudcnt_6/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/u_core/baudcnt_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/u_core/baudcnt_5/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/u_core/baudcnt_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/u_core/baudcnt_4/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/u_core/baudcnt_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/u_core/baudcnt_3/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/u_core/baudcnt_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/wptr_3/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/wptr_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/wptr_2/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/wptr_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/wptr_1/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/wptr_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/wptr_0/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/wptr_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rg_s1_7/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rg_s1_7/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rg_s1_7/IN  (
    .I(\u_fifo_a2b/rptr_gray [7]),
    .O(\NlwBufferSignal_u_fifo_a2b/rg_s1_7/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rg_s1_6/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rg_s1_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rg_s1_6/IN  (
    .I(\u_fifo_a2b/rptr_gray [6]),
    .O(\NlwBufferSignal_u_fifo_a2b/rg_s1_6/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rg_s1_5/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rg_s1_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rg_s1_5/IN  (
    .I(\u_fifo_a2b/rptr_gray [5]),
    .O(\NlwBufferSignal_u_fifo_a2b/rg_s1_5/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rg_s1_4/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rg_s1_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rg_s1_4/IN  (
    .I(\u_fifo_a2b/rptr_gray [4]),
    .O(\NlwBufferSignal_u_fifo_a2b/rg_s1_4/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rg_s2_7/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rg_s2_7/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rg_s2_7/IN  (
    .I(\u_fifo_a2b/rg_s1 [7]),
    .O(\NlwBufferSignal_u_fifo_a2b/rg_s2_7/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rg_s2_6/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rg_s2_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rg_s2_6/IN  (
    .I(\u_fifo_a2b/rg_s1 [6]),
    .O(\NlwBufferSignal_u_fifo_a2b/rg_s2_6/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rg_s2_5/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rg_s2_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rg_s2_5/IN  (
    .I(\u_fifo_a2b/rg_s1 [5]),
    .O(\NlwBufferSignal_u_fifo_a2b/rg_s2_5/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rg_s2_4/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/rg_s2_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/rg_s2_4/IN  (
    .I(\u_fifo_a2b/rg_s1 [4]),
    .O(\NlwBufferSignal_u_fifo_a2b/rg_s2_4/IN )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cptr_3/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cptr_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cptr_2/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cptr_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cptr_1/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cptr_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_fifo_a2b/cptr_0/CLK  (
    .I(phy_a_ref_clk_BUFGP),
    .O(\NlwBufferSignal_u_fifo_a2b/cptr_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/u_core/baudcnt_2/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/u_core/baudcnt_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/u_core/baudcnt_1/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/u_core/baudcnt_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/u_core/baudcnt_0/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/u_core/baudcnt_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/u_core/baudcnt_10/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/u_core/baudcnt_10/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/u_core/baudcnt_9/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/u_core/baudcnt_9/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/u_core/baudcnt_8/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/u_core/baudcnt_8/CLK )
  );
  X_BUF   \NlwBufferBlock_u_uart/u_core/baudcnt_7/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_uart/u_core/baudcnt_7/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rst_100/sync_q_2/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_rst_100/sync_q_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rst_100/sync_q_2/IN  (
    .I(\u_rst_100/sync_q [1]),
    .O(\NlwBufferSignal_u_rst_100/sync_q_2/IN )
  );
  X_BUF   \NlwBufferBlock_u_rst_100/sync_q_1/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_rst_100/sync_q_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u_rst_100/sync_q_1/IN  (
    .I(\u_rst_100/sync_q [0]),
    .O(\NlwBufferSignal_u_rst_100/sync_q_1/IN )
  );
  X_BUF   \NlwBufferBlock_u_rst_100/sync_q_0/CLK  (
    .I(clk_100_BUFGP),
    .O(\NlwBufferSignal_u_rst_100/sync_q_0/CLK )
  );
  X_ZERO   NlwBlock_nids_top_GND (
    .O(GND)
  );
  X_ONE   NlwBlock_nids_top_VCC (
    .O(VCC)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

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

endmodule

`endif

