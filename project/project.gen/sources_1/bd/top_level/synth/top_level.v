//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Wed Jun 10 01:49:12 2026
//Host        : wolf-super-server running 64-bit Ubuntu 20.04.6 LTS
//Command     : generate_target top_level.bd
//Design      : top_level
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module adc_bank_imp_1SLD8RV
   (S_AXI_CTL_araddr,
    S_AXI_CTL_arprot,
    S_AXI_CTL_arready,
    S_AXI_CTL_arvalid,
    S_AXI_CTL_awaddr,
    S_AXI_CTL_awprot,
    S_AXI_CTL_awready,
    S_AXI_CTL_awvalid,
    S_AXI_CTL_bready,
    S_AXI_CTL_bresp,
    S_AXI_CTL_bvalid,
    S_AXI_CTL_rdata,
    S_AXI_CTL_rready,
    S_AXI_CTL_rresp,
    S_AXI_CTL_rvalid,
    S_AXI_CTL_wdata,
    S_AXI_CTL_wready,
    S_AXI_CTL_wstrb,
    S_AXI_CTL_wvalid,
    UCI_ADC_CSN,
    UCI_ADC_MISO,
    UCI_ADC_MOSI,
    UCI_ADC_SCK,
    clk,
    resetn);
  input [7:0]S_AXI_CTL_araddr;
  input [2:0]S_AXI_CTL_arprot;
  output S_AXI_CTL_arready;
  input S_AXI_CTL_arvalid;
  input [7:0]S_AXI_CTL_awaddr;
  input [2:0]S_AXI_CTL_awprot;
  output S_AXI_CTL_awready;
  input S_AXI_CTL_awvalid;
  input S_AXI_CTL_bready;
  output [1:0]S_AXI_CTL_bresp;
  output S_AXI_CTL_bvalid;
  output [31:0]S_AXI_CTL_rdata;
  input S_AXI_CTL_rready;
  output [1:0]S_AXI_CTL_rresp;
  output S_AXI_CTL_rvalid;
  input [31:0]S_AXI_CTL_wdata;
  output S_AXI_CTL_wready;
  input [3:0]S_AXI_CTL_wstrb;
  input S_AXI_CTL_wvalid;
  output [2:0]UCI_ADC_CSN;
  input UCI_ADC_MISO;
  output UCI_ADC_MOSI;
  output UCI_ADC_SCK;
  input clk;
  input resetn;

  wire [7:0]S_AXI_CTL_araddr;
  wire [2:0]S_AXI_CTL_arprot;
  wire S_AXI_CTL_arready;
  wire S_AXI_CTL_arvalid;
  wire [7:0]S_AXI_CTL_awaddr;
  wire [2:0]S_AXI_CTL_awprot;
  wire S_AXI_CTL_awready;
  wire S_AXI_CTL_awvalid;
  wire S_AXI_CTL_bready;
  wire [1:0]S_AXI_CTL_bresp;
  wire S_AXI_CTL_bvalid;
  wire [31:0]S_AXI_CTL_rdata;
  wire S_AXI_CTL_rready;
  wire [1:0]S_AXI_CTL_rresp;
  wire S_AXI_CTL_rvalid;
  wire [31:0]S_AXI_CTL_wdata;
  wire S_AXI_CTL_wready;
  wire [3:0]S_AXI_CTL_wstrb;
  wire S_AXI_CTL_wvalid;
  wire [2:0]UCI_ADC_CSN;
  wire UCI_ADC_MISO;
  wire UCI_ADC_MOSI;
  wire UCI_ADC_SCK;
  wire clk;
  wire [383:0]ltc1867l_adc_values;
  wire resetn;

  top_level_axi_adc_bank_0_0 axi_adc_bank
       (.S_AXI_ARADDR(S_AXI_CTL_araddr),
        .S_AXI_ARPROT(S_AXI_CTL_arprot),
        .S_AXI_ARREADY(S_AXI_CTL_arready),
        .S_AXI_ARVALID(S_AXI_CTL_arvalid),
        .S_AXI_AWADDR(S_AXI_CTL_awaddr),
        .S_AXI_AWPROT(S_AXI_CTL_awprot),
        .S_AXI_AWREADY(S_AXI_CTL_awready),
        .S_AXI_AWVALID(S_AXI_CTL_awvalid),
        .S_AXI_BREADY(S_AXI_CTL_bready),
        .S_AXI_BRESP(S_AXI_CTL_bresp),
        .S_AXI_BVALID(S_AXI_CTL_bvalid),
        .S_AXI_RDATA(S_AXI_CTL_rdata),
        .S_AXI_RREADY(S_AXI_CTL_rready),
        .S_AXI_RRESP(S_AXI_CTL_rresp),
        .S_AXI_RVALID(S_AXI_CTL_rvalid),
        .S_AXI_WDATA(S_AXI_CTL_wdata),
        .S_AXI_WREADY(S_AXI_CTL_wready),
        .S_AXI_WSTRB(S_AXI_CTL_wstrb),
        .S_AXI_WVALID(S_AXI_CTL_wvalid),
        .adc(ltc1867l_adc_values),
        .clk(clk),
        .resetn(resetn));
  top_level_ltc1867l_0_0 ltc1867l
       (.adc_values(ltc1867l_adc_values),
        .clk(clk),
        .resetn(resetn),
        .slave_select(UCI_ADC_CSN),
        .spi_miso(UCI_ADC_MISO),
        .spi_mosi(UCI_ADC_MOSI),
        .spi_sclk(UCI_ADC_SCK));
endmodule

module chip_power_imp_1UD5E88
   (CHIP_RESET_N,
    CHIP_VDD,
    CHIP_VDDA,
    CHIP_VDDIO,
    CHIP_VDDLVDS,
    LVL_TRSL_OE_N,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    clk,
    resetn);
  output CHIP_RESET_N;
  output CHIP_VDD;
  output CHIP_VDDA;
  output CHIP_VDDIO;
  output CHIP_VDDLVDS;
  output LVL_TRSL_OE_N;
  input [7:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [7:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  input clk;
  input resetn;

  wire CHIP_RESET_N;
  wire CHIP_VDD;
  wire CHIP_VDDA;
  wire CHIP_VDDIO;
  wire CHIP_VDDLVDS;
  wire LVL_TRSL_OE_N;
  wire [7:0]S_AXI_araddr;
  wire [2:0]S_AXI_arprot;
  wire S_AXI_arready;
  wire S_AXI_arvalid;
  wire [7:0]S_AXI_awaddr;
  wire [2:0]S_AXI_awprot;
  wire S_AXI_awready;
  wire S_AXI_awvalid;
  wire S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire S_AXI_rready;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire [31:0]S_AXI_wdata;
  wire S_AXI_wready;
  wire [3:0]S_AXI_wstrb;
  wire S_AXI_wvalid;
  wire clk;
  wire resetn;

  top_level_indy_power_ctl_0_0 indy_power_ctl
       (.S_AXI_ARADDR(S_AXI_araddr),
        .S_AXI_ARPROT(S_AXI_arprot),
        .S_AXI_ARREADY(S_AXI_arready),
        .S_AXI_ARVALID(S_AXI_arvalid),
        .S_AXI_AWADDR(S_AXI_awaddr),
        .S_AXI_AWPROT(S_AXI_awprot),
        .S_AXI_AWREADY(S_AXI_awready),
        .S_AXI_AWVALID(S_AXI_awvalid),
        .S_AXI_BREADY(S_AXI_bready),
        .S_AXI_BRESP(S_AXI_bresp),
        .S_AXI_BVALID(S_AXI_bvalid),
        .S_AXI_RDATA(S_AXI_rdata),
        .S_AXI_RREADY(S_AXI_rready),
        .S_AXI_RRESP(S_AXI_rresp),
        .S_AXI_RVALID(S_AXI_rvalid),
        .S_AXI_WDATA(S_AXI_wdata),
        .S_AXI_WREADY(S_AXI_wready),
        .S_AXI_WSTRB(S_AXI_wstrb),
        .S_AXI_WVALID(S_AXI_wvalid),
        .chip_reset_n(CHIP_RESET_N),
        .chip_vdd(CHIP_VDD),
        .chip_vdda(CHIP_VDDA),
        .chip_vddio(CHIP_VDDIO),
        .chip_vddlvds(CHIP_VDDLVDS),
        .clk(clk),
        .lvl_trsl_oe_n(LVL_TRSL_OE_N),
        .resetn(resetn));
endmodule

module clk_192_imp_10A48RI
   (clk192,
    init_clk_clk_n,
    init_clk_clk_p,
    resetn_192,
    sys_resetn);
  output clk192;
  input init_clk_clk_n;
  input init_clk_clk_p;
  output resetn_192;
  input sys_resetn;

  wire clk192;
  wire init_clk_clk_n;
  wire init_clk_clk_p;
  wire resetn_192;
  wire sys_resetn;

  top_level_clk_wiz_0_0 clock_gen_192
       (.clk192(clk192),
        .clk_in1_n(init_clk_clk_n),
        .clk_in1_p(init_clk_clk_p));
  top_level_xpm_cdc_gen_0_0 xpm_cdc_gen_0
       (.dest_arst(resetn_192),
        .dest_clk(clk192),
        .src_arst(sys_resetn));
endmodule

module cmac_imp_3VLRKT
   (M_AXI0_araddr,
    M_AXI0_arburst,
    M_AXI0_arcache,
    M_AXI0_arid,
    M_AXI0_arlen,
    M_AXI0_arlock,
    M_AXI0_arprot,
    M_AXI0_arqos,
    M_AXI0_arready,
    M_AXI0_arvalid,
    M_AXI0_awaddr,
    M_AXI0_awburst,
    M_AXI0_awcache,
    M_AXI0_awid,
    M_AXI0_awlen,
    M_AXI0_awlock,
    M_AXI0_awprot,
    M_AXI0_awqos,
    M_AXI0_awready,
    M_AXI0_awsize,
    M_AXI0_awvalid,
    M_AXI0_bready,
    M_AXI0_bresp,
    M_AXI0_bvalid,
    M_AXI0_rdata,
    M_AXI0_rlast,
    M_AXI0_rready,
    M_AXI0_rresp,
    M_AXI0_rvalid,
    M_AXI0_wdata,
    M_AXI0_wlast,
    M_AXI0_wready,
    M_AXI0_wstrb,
    M_AXI0_wvalid,
    M_AXI1_araddr,
    M_AXI1_arburst,
    M_AXI1_arcache,
    M_AXI1_arid,
    M_AXI1_arlen,
    M_AXI1_arlock,
    M_AXI1_arprot,
    M_AXI1_arqos,
    M_AXI1_arready,
    M_AXI1_arvalid,
    M_AXI1_awaddr,
    M_AXI1_awburst,
    M_AXI1_awcache,
    M_AXI1_awid,
    M_AXI1_awlen,
    M_AXI1_awlock,
    M_AXI1_awprot,
    M_AXI1_awqos,
    M_AXI1_awready,
    M_AXI1_awsize,
    M_AXI1_awvalid,
    M_AXI1_bready,
    M_AXI1_bresp,
    M_AXI1_bvalid,
    M_AXI1_rdata,
    M_AXI1_rlast,
    M_AXI1_rready,
    M_AXI1_rresp,
    M_AXI1_rvalid,
    M_AXI1_wdata,
    M_AXI1_wlast,
    M_AXI1_wready,
    M_AXI1_wstrb,
    M_AXI1_wvalid,
    cmac0_clk,
    cmac1_clk,
    qsfp0_clk_clk_n,
    qsfp0_clk_clk_p,
    qsfp0_gt_grx_n,
    qsfp0_gt_grx_p,
    qsfp0_gt_gtx_n,
    qsfp0_gt_gtx_p,
    qsfp0_up,
    qsfp1_clk_clk_n,
    qsfp1_clk_clk_p,
    qsfp1_gt_grx_n,
    qsfp1_gt_grx_p,
    qsfp1_gt_gtx_n,
    qsfp1_gt_gtx_p,
    qsfp1_up,
    sys_clk,
    sys_resetn_in,
    tx0_in_tdata,
    tx0_in_tkeep,
    tx0_in_tlast,
    tx0_in_tready,
    tx0_in_tvalid,
    tx1_in_tdata,
    tx1_in_tkeep,
    tx1_in_tlast,
    tx1_in_tready,
    tx1_in_tvalid);
  output [63:0]M_AXI0_araddr;
  output [1:0]M_AXI0_arburst;
  output [3:0]M_AXI0_arcache;
  output [3:0]M_AXI0_arid;
  output [7:0]M_AXI0_arlen;
  output M_AXI0_arlock;
  output [2:0]M_AXI0_arprot;
  output [3:0]M_AXI0_arqos;
  input M_AXI0_arready;
  output M_AXI0_arvalid;
  output [63:0]M_AXI0_awaddr;
  output [1:0]M_AXI0_awburst;
  output [3:0]M_AXI0_awcache;
  output [3:0]M_AXI0_awid;
  output [7:0]M_AXI0_awlen;
  output M_AXI0_awlock;
  output [2:0]M_AXI0_awprot;
  output [3:0]M_AXI0_awqos;
  input M_AXI0_awready;
  output [2:0]M_AXI0_awsize;
  output M_AXI0_awvalid;
  output M_AXI0_bready;
  input [1:0]M_AXI0_bresp;
  input M_AXI0_bvalid;
  input [511:0]M_AXI0_rdata;
  input M_AXI0_rlast;
  output M_AXI0_rready;
  input [1:0]M_AXI0_rresp;
  input M_AXI0_rvalid;
  output [511:0]M_AXI0_wdata;
  output M_AXI0_wlast;
  input M_AXI0_wready;
  output [63:0]M_AXI0_wstrb;
  output M_AXI0_wvalid;
  output [63:0]M_AXI1_araddr;
  output [1:0]M_AXI1_arburst;
  output [3:0]M_AXI1_arcache;
  output [3:0]M_AXI1_arid;
  output [7:0]M_AXI1_arlen;
  output M_AXI1_arlock;
  output [2:0]M_AXI1_arprot;
  output [3:0]M_AXI1_arqos;
  input M_AXI1_arready;
  output M_AXI1_arvalid;
  output [63:0]M_AXI1_awaddr;
  output [1:0]M_AXI1_awburst;
  output [3:0]M_AXI1_awcache;
  output [3:0]M_AXI1_awid;
  output [7:0]M_AXI1_awlen;
  output M_AXI1_awlock;
  output [2:0]M_AXI1_awprot;
  output [3:0]M_AXI1_awqos;
  input M_AXI1_awready;
  output [2:0]M_AXI1_awsize;
  output M_AXI1_awvalid;
  output M_AXI1_bready;
  input [1:0]M_AXI1_bresp;
  input M_AXI1_bvalid;
  input [511:0]M_AXI1_rdata;
  input M_AXI1_rlast;
  output M_AXI1_rready;
  input [1:0]M_AXI1_rresp;
  input M_AXI1_rvalid;
  output [511:0]M_AXI1_wdata;
  output M_AXI1_wlast;
  input M_AXI1_wready;
  output [63:0]M_AXI1_wstrb;
  output M_AXI1_wvalid;
  output cmac0_clk;
  output cmac1_clk;
  input qsfp0_clk_clk_n;
  input qsfp0_clk_clk_p;
  input [3:0]qsfp0_gt_grx_n;
  input [3:0]qsfp0_gt_grx_p;
  output [3:0]qsfp0_gt_gtx_n;
  output [3:0]qsfp0_gt_gtx_p;
  output [0:0]qsfp0_up;
  input qsfp1_clk_clk_n;
  input qsfp1_clk_clk_p;
  input [3:0]qsfp1_gt_grx_n;
  input [3:0]qsfp1_gt_grx_p;
  output [3:0]qsfp1_gt_gtx_n;
  output [3:0]qsfp1_gt_gtx_p;
  output [0:0]qsfp1_up;
  input sys_clk;
  input sys_resetn_in;
  input [511:0]tx0_in_tdata;
  input [63:0]tx0_in_tkeep;
  input tx0_in_tlast;
  output tx0_in_tready;
  input tx0_in_tvalid;
  input [511:0]tx1_in_tdata;
  input [63:0]tx1_in_tkeep;
  input tx1_in_tlast;
  output tx1_in_tready;
  input tx1_in_tvalid;

  wire [63:0]M_AXI0_araddr;
  wire [1:0]M_AXI0_arburst;
  wire [3:0]M_AXI0_arcache;
  wire [3:0]M_AXI0_arid;
  wire [7:0]M_AXI0_arlen;
  wire M_AXI0_arlock;
  wire [2:0]M_AXI0_arprot;
  wire [3:0]M_AXI0_arqos;
  wire M_AXI0_arready;
  wire M_AXI0_arvalid;
  wire [63:0]M_AXI0_awaddr;
  wire [1:0]M_AXI0_awburst;
  wire [3:0]M_AXI0_awcache;
  wire [3:0]M_AXI0_awid;
  wire [7:0]M_AXI0_awlen;
  wire M_AXI0_awlock;
  wire [2:0]M_AXI0_awprot;
  wire [3:0]M_AXI0_awqos;
  wire M_AXI0_awready;
  wire [2:0]M_AXI0_awsize;
  wire M_AXI0_awvalid;
  wire M_AXI0_bready;
  wire [1:0]M_AXI0_bresp;
  wire M_AXI0_bvalid;
  wire [511:0]M_AXI0_rdata;
  wire M_AXI0_rlast;
  wire M_AXI0_rready;
  wire [1:0]M_AXI0_rresp;
  wire M_AXI0_rvalid;
  wire [511:0]M_AXI0_wdata;
  wire M_AXI0_wlast;
  wire M_AXI0_wready;
  wire [63:0]M_AXI0_wstrb;
  wire M_AXI0_wvalid;
  wire [63:0]M_AXI1_araddr;
  wire [1:0]M_AXI1_arburst;
  wire [3:0]M_AXI1_arcache;
  wire [3:0]M_AXI1_arid;
  wire [7:0]M_AXI1_arlen;
  wire M_AXI1_arlock;
  wire [2:0]M_AXI1_arprot;
  wire [3:0]M_AXI1_arqos;
  wire M_AXI1_arready;
  wire M_AXI1_arvalid;
  wire [63:0]M_AXI1_awaddr;
  wire [1:0]M_AXI1_awburst;
  wire [3:0]M_AXI1_awcache;
  wire [3:0]M_AXI1_awid;
  wire [7:0]M_AXI1_awlen;
  wire M_AXI1_awlock;
  wire [2:0]M_AXI1_awprot;
  wire [3:0]M_AXI1_awqos;
  wire M_AXI1_awready;
  wire [2:0]M_AXI1_awsize;
  wire M_AXI1_awvalid;
  wire M_AXI1_bready;
  wire [1:0]M_AXI1_bresp;
  wire M_AXI1_bvalid;
  wire [511:0]M_AXI1_rdata;
  wire M_AXI1_rlast;
  wire M_AXI1_rready;
  wire [1:0]M_AXI1_rresp;
  wire M_AXI1_rvalid;
  wire [511:0]M_AXI1_wdata;
  wire M_AXI1_wlast;
  wire M_AXI1_wready;
  wire [63:0]M_AXI1_wstrb;
  wire M_AXI1_wvalid;
  wire cmac0_clk;
  wire cmac1_clk;
  wire [511:0]eth_rx_out_1_TDATA;
  wire [63:0]eth_rx_out_1_TKEEP;
  wire eth_rx_out_1_TLAST;
  wire eth_rx_out_1_TREADY;
  wire eth_rx_out_1_TVALID;
  wire [511:0]eth_rx_out_TDATA;
  wire [63:0]eth_rx_out_TKEEP;
  wire eth_rx_out_TLAST;
  wire eth_rx_out_TREADY;
  wire eth_rx_out_TVALID;
  wire qsfp0_clk_clk_n;
  wire qsfp0_clk_clk_p;
  wire [3:0]qsfp0_gt_grx_n;
  wire [3:0]qsfp0_gt_grx_p;
  wire [3:0]qsfp0_gt_gtx_n;
  wire [3:0]qsfp0_gt_gtx_p;
  wire [0:0]qsfp0_up;
  wire qsfp1_clk_clk_n;
  wire qsfp1_clk_clk_p;
  wire [3:0]qsfp1_gt_grx_n;
  wire [3:0]qsfp1_gt_grx_p;
  wire [3:0]qsfp1_gt_gtx_n;
  wire [3:0]qsfp1_gt_gtx_p;
  wire [0:0]qsfp1_up;
  wire sys_clk;
  wire sys_resetn_in;
  wire [511:0]tx0_in_tdata;
  wire [63:0]tx0_in_tkeep;
  wire tx0_in_tlast;
  wire tx0_in_tready;
  wire tx0_in_tvalid;
  wire [511:0]tx1_in_tdata;
  wire [63:0]tx1_in_tkeep;
  wire tx1_in_tlast;
  wire tx1_in_tready;
  wire tx1_in_tvalid;

  eth0_imp_1MKJ5V7 eth0
       (.cmac_clk(cmac0_clk),
        .gt_ref_clk_clk_n(qsfp0_clk_clk_n),
        .gt_ref_clk_clk_p(qsfp0_clk_clk_p),
        .gt_serial_port_grx_n(qsfp0_gt_grx_n),
        .gt_serial_port_grx_p(qsfp0_gt_grx_p),
        .gt_serial_port_gtx_n(qsfp0_gt_gtx_n),
        .gt_serial_port_gtx_p(qsfp0_gt_gtx_p),
        .rx_aligned(qsfp0_up),
        .rx_out_tdata(eth_rx_out_TDATA),
        .rx_out_tkeep(eth_rx_out_TKEEP),
        .rx_out_tlast(eth_rx_out_TLAST),
        .rx_out_tready(eth_rx_out_TREADY),
        .rx_out_tvalid(eth_rx_out_TVALID),
        .sys_clk(sys_clk),
        .sys_resetn_in(sys_resetn_in),
        .tx_in_tdata(tx0_in_tdata),
        .tx_in_tkeep(tx0_in_tkeep),
        .tx_in_tlast(tx0_in_tlast),
        .tx_in_tready(tx0_in_tready),
        .tx_in_tvalid(tx0_in_tvalid));
  eth_1_imp_NFBWHR eth_1
       (.cmac_clk(cmac1_clk),
        .gt_ref_clk_clk_n(qsfp1_clk_clk_n),
        .gt_ref_clk_clk_p(qsfp1_clk_clk_p),
        .gt_serial_port_grx_n(qsfp1_gt_grx_n),
        .gt_serial_port_grx_p(qsfp1_gt_grx_p),
        .gt_serial_port_gtx_n(qsfp1_gt_gtx_n),
        .gt_serial_port_gtx_p(qsfp1_gt_gtx_p),
        .rx_aligned(qsfp1_up),
        .rx_out_tdata(eth_rx_out_1_TDATA),
        .rx_out_tkeep(eth_rx_out_1_TKEEP),
        .rx_out_tlast(eth_rx_out_1_TLAST),
        .rx_out_tready(eth_rx_out_1_TREADY),
        .rx_out_tvalid(eth_rx_out_1_TVALID),
        .sys_clk(sys_clk),
        .sys_resetn_in(sys_resetn_in),
        .tx_in_tdata(tx1_in_tdata),
        .tx_in_tkeep(tx1_in_tkeep),
        .tx_in_tlast(tx1_in_tlast),
        .tx_in_tready(tx1_in_tready),
        .tx_in_tvalid(tx1_in_tvalid));
  top_level_rdmx_recv_0_0 rdmx_recv_0
       (.AXIS_RDMX_TDATA(eth_rx_out_TDATA),
        .AXIS_RDMX_TKEEP(eth_rx_out_TKEEP),
        .AXIS_RDMX_TLAST(eth_rx_out_TLAST),
        .AXIS_RDMX_TREADY(eth_rx_out_TREADY),
        .AXIS_RDMX_TVALID(eth_rx_out_TVALID),
        .M_AXI_ARADDR(M_AXI0_araddr),
        .M_AXI_ARBURST(M_AXI0_arburst),
        .M_AXI_ARCACHE(M_AXI0_arcache),
        .M_AXI_ARID(M_AXI0_arid),
        .M_AXI_ARLEN(M_AXI0_arlen),
        .M_AXI_ARLOCK(M_AXI0_arlock),
        .M_AXI_ARPROT(M_AXI0_arprot),
        .M_AXI_ARQOS(M_AXI0_arqos),
        .M_AXI_ARREADY(M_AXI0_arready),
        .M_AXI_ARVALID(M_AXI0_arvalid),
        .M_AXI_AWADDR(M_AXI0_awaddr),
        .M_AXI_AWBURST(M_AXI0_awburst),
        .M_AXI_AWCACHE(M_AXI0_awcache),
        .M_AXI_AWID(M_AXI0_awid),
        .M_AXI_AWLEN(M_AXI0_awlen),
        .M_AXI_AWLOCK(M_AXI0_awlock),
        .M_AXI_AWPROT(M_AXI0_awprot),
        .M_AXI_AWQOS(M_AXI0_awqos),
        .M_AXI_AWREADY(M_AXI0_awready),
        .M_AXI_AWSIZE(M_AXI0_awsize),
        .M_AXI_AWVALID(M_AXI0_awvalid),
        .M_AXI_BREADY(M_AXI0_bready),
        .M_AXI_BRESP(M_AXI0_bresp),
        .M_AXI_BVALID(M_AXI0_bvalid),
        .M_AXI_RDATA(M_AXI0_rdata),
        .M_AXI_RLAST(M_AXI0_rlast),
        .M_AXI_RREADY(M_AXI0_rready),
        .M_AXI_RRESP(M_AXI0_rresp),
        .M_AXI_RVALID(M_AXI0_rvalid),
        .M_AXI_WDATA(M_AXI0_wdata),
        .M_AXI_WLAST(M_AXI0_wlast),
        .M_AXI_WREADY(M_AXI0_wready),
        .M_AXI_WSTRB(M_AXI0_wstrb),
        .M_AXI_WVALID(M_AXI0_wvalid),
        .clk(sys_clk),
        .resetn(sys_resetn_in));
  top_level_rdmx_recv_0_1 rdmx_recv_1
       (.AXIS_RDMX_TDATA(eth_rx_out_1_TDATA),
        .AXIS_RDMX_TKEEP(eth_rx_out_1_TKEEP),
        .AXIS_RDMX_TLAST(eth_rx_out_1_TLAST),
        .AXIS_RDMX_TREADY(eth_rx_out_1_TREADY),
        .AXIS_RDMX_TVALID(eth_rx_out_1_TVALID),
        .M_AXI_ARADDR(M_AXI1_araddr),
        .M_AXI_ARBURST(M_AXI1_arburst),
        .M_AXI_ARCACHE(M_AXI1_arcache),
        .M_AXI_ARID(M_AXI1_arid),
        .M_AXI_ARLEN(M_AXI1_arlen),
        .M_AXI_ARLOCK(M_AXI1_arlock),
        .M_AXI_ARPROT(M_AXI1_arprot),
        .M_AXI_ARQOS(M_AXI1_arqos),
        .M_AXI_ARREADY(M_AXI1_arready),
        .M_AXI_ARVALID(M_AXI1_arvalid),
        .M_AXI_AWADDR(M_AXI1_awaddr),
        .M_AXI_AWBURST(M_AXI1_awburst),
        .M_AXI_AWCACHE(M_AXI1_awcache),
        .M_AXI_AWID(M_AXI1_awid),
        .M_AXI_AWLEN(M_AXI1_awlen),
        .M_AXI_AWLOCK(M_AXI1_awlock),
        .M_AXI_AWPROT(M_AXI1_awprot),
        .M_AXI_AWQOS(M_AXI1_awqos),
        .M_AXI_AWREADY(M_AXI1_awready),
        .M_AXI_AWSIZE(M_AXI1_awsize),
        .M_AXI_AWVALID(M_AXI1_awvalid),
        .M_AXI_BREADY(M_AXI1_bready),
        .M_AXI_BRESP(M_AXI1_bresp),
        .M_AXI_BVALID(M_AXI1_bvalid),
        .M_AXI_RDATA(M_AXI1_rdata),
        .M_AXI_RLAST(M_AXI1_rlast),
        .M_AXI_RREADY(M_AXI1_rready),
        .M_AXI_RRESP(M_AXI1_rresp),
        .M_AXI_RVALID(M_AXI1_rvalid),
        .M_AXI_WDATA(M_AXI1_wdata),
        .M_AXI_WLAST(M_AXI1_wlast),
        .M_AXI_WREADY(M_AXI1_wready),
        .M_AXI_WSTRB(M_AXI1_wstrb),
        .M_AXI_WVALID(M_AXI1_wvalid),
        .clk(sys_clk),
        .resetn(sys_resetn_in));
endmodule

module eth0_imp_1MKJ5V7
   (cmac_clk,
    gt_ref_clk_clk_n,
    gt_ref_clk_clk_p,
    gt_serial_port_grx_n,
    gt_serial_port_grx_p,
    gt_serial_port_gtx_n,
    gt_serial_port_gtx_p,
    rx_aligned,
    rx_out_tdata,
    rx_out_tkeep,
    rx_out_tlast,
    rx_out_tready,
    rx_out_tvalid,
    sys_clk,
    sys_resetn_in,
    tx_in_tdata,
    tx_in_tkeep,
    tx_in_tlast,
    tx_in_tready,
    tx_in_tvalid);
  output cmac_clk;
  input gt_ref_clk_clk_n;
  input gt_ref_clk_clk_p;
  input [3:0]gt_serial_port_grx_n;
  input [3:0]gt_serial_port_grx_p;
  output [3:0]gt_serial_port_gtx_n;
  output [3:0]gt_serial_port_gtx_p;
  output [0:0]rx_aligned;
  output [511:0]rx_out_tdata;
  output [63:0]rx_out_tkeep;
  output rx_out_tlast;
  input rx_out_tready;
  output rx_out_tvalid;
  input sys_clk;
  input sys_resetn_in;
  input [511:0]tx_in_tdata;
  input [63:0]tx_in_tkeep;
  input tx_in_tlast;
  output tx_in_tready;
  input tx_in_tvalid;

  wire [511:0]axis_register_slice_M_AXIS_TDATA;
  wire [63:0]axis_register_slice_M_AXIS_TKEEP;
  wire axis_register_slice_M_AXIS_TLAST;
  wire axis_register_slice_M_AXIS_TREADY;
  wire axis_register_slice_M_AXIS_TVALID;
  wire cmac_clk;
  wire cmac_control_ctl_rx_ctl_enable;
  wire cmac_control_ctl_tx_ctl_enable;
  wire cmac_control_ctl_tx_ctl_tx_send_rfi;
  wire [19:0]cmac_control_gt_trans_debug_gt_txdiffctrl;
  wire [19:0]cmac_control_gt_trans_debug_gt_txprecursor;
  wire cmac_control_reset_rx_datapath;
  wire cmac_control_rs_fec_ctl_rx_rsfec_enable;
  wire cmac_control_rs_fec_ctl_rx_rsfec_enable_correction;
  wire cmac_control_rs_fec_ctl_rx_rsfec_enable_indication;
  wire cmac_control_rs_fec_ctl_tx_rsfec_enable;
  wire cmac_control_rx_resetn_out;
  wire [511:0]cmac_usplus_axis_rx_TDATA;
  wire [63:0]cmac_usplus_axis_rx_TKEEP;
  wire cmac_usplus_axis_rx_TLAST;
  wire cmac_usplus_axis_rx_TUSER;
  wire cmac_usplus_axis_rx_TVALID;
  wire cmac_usplus_stat_rx_stat_rx_aligned;
  wire gt_ref_clk_clk_n;
  wire gt_ref_clk_clk_p;
  wire [3:0]gt_serial_port_grx_n;
  wire [3:0]gt_serial_port_grx_p;
  wire [3:0]gt_serial_port_gtx_n;
  wire [3:0]gt_serial_port_gtx_p;
  wire \^rx_aligned ;
  wire [511:0]rx_out_tdata;
  wire [63:0]rx_out_tkeep;
  wire rx_out_tlast;
  wire rx_out_tready;
  wire rx_out_tvalid;
  wire sys_clk;
  wire sys_resetn_in;
  wire [511:0]tx_in_tdata;
  wire [63:0]tx_in_tkeep;
  wire tx_in_tlast;
  wire tx_in_tready;
  wire tx_in_tvalid;

  assign rx_aligned[0] = \^rx_aligned ;
  top_level_axis_register_slice_1 axis_register_slice
       (.aclk(cmac_clk),
        .aresetn(cmac_control_rx_resetn_out),
        .m_axis_tdata(axis_register_slice_M_AXIS_TDATA),
        .m_axis_tkeep(axis_register_slice_M_AXIS_TKEEP),
        .m_axis_tlast(axis_register_slice_M_AXIS_TLAST),
        .m_axis_tready(axis_register_slice_M_AXIS_TREADY),
        .m_axis_tvalid(axis_register_slice_M_AXIS_TVALID),
        .s_axis_tdata(tx_in_tdata),
        .s_axis_tkeep(tx_in_tkeep),
        .s_axis_tlast(tx_in_tlast),
        .s_axis_tready(tx_in_tready),
        .s_axis_tvalid(tx_in_tvalid));
  top_level_cmac_control_0_0 cmac_control
       (.ctl_rx_enable(cmac_control_ctl_rx_ctl_enable),
        .ctl_rx_rsfec_enable(cmac_control_rs_fec_ctl_rx_rsfec_enable),
        .ctl_rx_rsfec_enable_correction(cmac_control_rs_fec_ctl_rx_rsfec_enable_correction),
        .ctl_rx_rsfec_enable_indication(cmac_control_rs_fec_ctl_rx_rsfec_enable_indication),
        .ctl_tx_enable(cmac_control_ctl_tx_ctl_enable),
        .ctl_tx_rsfec_enable(cmac_control_rs_fec_ctl_tx_rsfec_enable),
        .ctl_tx_send_rfi(cmac_control_ctl_tx_ctl_tx_send_rfi),
        .gt_txdiffctrl(cmac_control_gt_trans_debug_gt_txdiffctrl),
        .gt_txprecursor(cmac_control_gt_trans_debug_gt_txprecursor),
        .reset_rx_datapath(cmac_control_reset_rx_datapath),
        .rx_clk(cmac_clk),
        .rx_resetn_out(cmac_control_rx_resetn_out),
        .stat_rx_aligned(cmac_usplus_stat_rx_stat_rx_aligned),
        .sync_rx_aligned(\^rx_aligned ),
        .sys_resetn_in(sys_resetn_in));
  top_level_cmac_usplus_0_0 cmac_usplus
       (.common0_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .common0_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .common0_drpen(1'b0),
        .common0_drpwe(1'b0),
        .core_drp_reset(1'b0),
        .core_rx_reset(1'b0),
        .core_tx_reset(1'b0),
        .ctl_rsfec_ieee_error_indication_mode(1'b0),
        .ctl_rx_enable(cmac_control_ctl_rx_ctl_enable),
        .ctl_rx_force_resync(1'b0),
        .ctl_rx_rsfec_enable(cmac_control_rs_fec_ctl_rx_rsfec_enable),
        .ctl_rx_rsfec_enable_correction(cmac_control_rs_fec_ctl_rx_rsfec_enable_correction),
        .ctl_rx_rsfec_enable_indication(cmac_control_rs_fec_ctl_rx_rsfec_enable_indication),
        .ctl_rx_test_pattern(1'b0),
        .ctl_tx_enable(cmac_control_ctl_tx_ctl_enable),
        .ctl_tx_rsfec_enable(cmac_control_rs_fec_ctl_tx_rsfec_enable),
        .ctl_tx_send_idle(1'b0),
        .ctl_tx_send_lfi(1'b0),
        .ctl_tx_send_rfi(cmac_control_ctl_tx_ctl_tx_send_rfi),
        .ctl_tx_test_pattern(1'b0),
        .drp_addr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_clk(sys_clk),
        .drp_di({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_en(1'b0),
        .drp_we(1'b0),
        .gt0_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt0_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt0_drpen(1'b0),
        .gt0_drpwe(1'b0),
        .gt1_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt1_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt1_drpen(1'b0),
        .gt1_drpwe(1'b0),
        .gt2_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt2_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt2_drpen(1'b0),
        .gt2_drpwe(1'b0),
        .gt3_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt3_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt3_drpen(1'b0),
        .gt3_drpwe(1'b0),
        .gt_drpclk(sys_clk),
        .gt_eyescanreset({1'b0,1'b0,1'b0,1'b0}),
        .gt_eyescantrigger({1'b0,1'b0,1'b0,1'b0}),
        .gt_loopback_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_ref_clk_n(gt_ref_clk_clk_n),
        .gt_ref_clk_p(gt_ref_clk_clk_p),
        .gt_rxcdrhold({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxdfelpmreset({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxlpmen({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxn_in(gt_serial_port_grx_n),
        .gt_rxp_in(gt_serial_port_grx_p),
        .gt_rxpolarity({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxprbscntreset({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxprbssel({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_rxrate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_txdiffctrl(cmac_control_gt_trans_debug_gt_txdiffctrl),
        .gt_txinhibit({1'b0,1'b0,1'b0,1'b0}),
        .gt_txn_out(gt_serial_port_gtx_n),
        .gt_txp_out(gt_serial_port_gtx_p),
        .gt_txpippmen({1'b0,1'b0,1'b0,1'b0}),
        .gt_txpippmsel({1'b0,1'b0,1'b0,1'b0}),
        .gt_txpolarity({1'b0,1'b0,1'b0,1'b0}),
        .gt_txpostcursor({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_txprbsforceerr({1'b0,1'b0,1'b0,1'b0}),
        .gt_txprbssel({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_txprecursor(cmac_control_gt_trans_debug_gt_txprecursor),
        .gt_txusrclk2(cmac_clk),
        .gtwiz_reset_rx_datapath(cmac_control_reset_rx_datapath),
        .gtwiz_reset_tx_datapath(1'b0),
        .init_clk(sys_clk),
        .rx_axis_tdata(cmac_usplus_axis_rx_TDATA),
        .rx_axis_tkeep(cmac_usplus_axis_rx_TKEEP),
        .rx_axis_tlast(cmac_usplus_axis_rx_TLAST),
        .rx_axis_tuser(cmac_usplus_axis_rx_TUSER),
        .rx_axis_tvalid(cmac_usplus_axis_rx_TVALID),
        .rx_clk(cmac_clk),
        .stat_rx_aligned(cmac_usplus_stat_rx_stat_rx_aligned),
        .sys_reset(1'b0),
        .tx_axis_tdata(axis_register_slice_M_AXIS_TDATA),
        .tx_axis_tkeep(axis_register_slice_M_AXIS_TKEEP),
        .tx_axis_tlast(axis_register_slice_M_AXIS_TLAST),
        .tx_axis_tready(axis_register_slice_M_AXIS_TREADY),
        .tx_axis_tuser(1'b0),
        .tx_axis_tvalid(axis_register_slice_M_AXIS_TVALID),
        .tx_preamblein({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  rx_cdc_imp_1GJL7O0 rx_cdc
       (.M_AXIS_tdata(rx_out_tdata),
        .M_AXIS_tkeep(rx_out_tkeep),
        .M_AXIS_tlast(rx_out_tlast),
        .M_AXIS_tready(rx_out_tready),
        .M_AXIS_tvalid(rx_out_tvalid),
        .S_AXIS_tdata(cmac_usplus_axis_rx_TDATA),
        .S_AXIS_tkeep(cmac_usplus_axis_rx_TKEEP),
        .S_AXIS_tlast(cmac_usplus_axis_rx_TLAST),
        .S_AXIS_tuser(cmac_usplus_axis_rx_TUSER),
        .S_AXIS_tvalid(cmac_usplus_axis_rx_TVALID),
        .cmac_clk(cmac_clk),
        .cmac_resetn(cmac_control_rx_resetn_out),
        .sys_clk(sys_clk));
endmodule

module eth_1_imp_NFBWHR
   (cmac_clk,
    gt_ref_clk_clk_n,
    gt_ref_clk_clk_p,
    gt_serial_port_grx_n,
    gt_serial_port_grx_p,
    gt_serial_port_gtx_n,
    gt_serial_port_gtx_p,
    rx_aligned,
    rx_out_tdata,
    rx_out_tkeep,
    rx_out_tlast,
    rx_out_tready,
    rx_out_tvalid,
    sys_clk,
    sys_resetn_in,
    tx_in_tdata,
    tx_in_tkeep,
    tx_in_tlast,
    tx_in_tready,
    tx_in_tvalid);
  output cmac_clk;
  input gt_ref_clk_clk_n;
  input gt_ref_clk_clk_p;
  input [3:0]gt_serial_port_grx_n;
  input [3:0]gt_serial_port_grx_p;
  output [3:0]gt_serial_port_gtx_n;
  output [3:0]gt_serial_port_gtx_p;
  output [0:0]rx_aligned;
  output [511:0]rx_out_tdata;
  output [63:0]rx_out_tkeep;
  output rx_out_tlast;
  input rx_out_tready;
  output rx_out_tvalid;
  input sys_clk;
  input sys_resetn_in;
  input [511:0]tx_in_tdata;
  input [63:0]tx_in_tkeep;
  input tx_in_tlast;
  output tx_in_tready;
  input tx_in_tvalid;

  wire [511:0]axis_register_slice_0_M_AXIS_TDATA;
  wire [63:0]axis_register_slice_0_M_AXIS_TKEEP;
  wire axis_register_slice_0_M_AXIS_TLAST;
  wire axis_register_slice_0_M_AXIS_TREADY;
  wire axis_register_slice_0_M_AXIS_TVALID;
  wire cmac_clk;
  wire cmac_control_ctl_rx_ctl_enable;
  wire cmac_control_ctl_tx_ctl_enable;
  wire cmac_control_ctl_tx_ctl_tx_send_rfi;
  wire [19:0]cmac_control_gt_trans_debug_gt_txdiffctrl;
  wire [19:0]cmac_control_gt_trans_debug_gt_txprecursor;
  wire cmac_control_reset_rx_datapath;
  wire cmac_control_rs_fec_ctl_rx_rsfec_enable;
  wire cmac_control_rs_fec_ctl_rx_rsfec_enable_correction;
  wire cmac_control_rs_fec_ctl_rx_rsfec_enable_indication;
  wire cmac_control_rs_fec_ctl_tx_rsfec_enable;
  wire cmac_control_rx_resetn_out;
  wire [511:0]cmac_usplus_axis_rx_TDATA;
  wire [63:0]cmac_usplus_axis_rx_TKEEP;
  wire cmac_usplus_axis_rx_TLAST;
  wire cmac_usplus_axis_rx_TUSER;
  wire cmac_usplus_axis_rx_TVALID;
  wire cmac_usplus_stat_rx_stat_rx_aligned;
  wire gt_ref_clk_clk_n;
  wire gt_ref_clk_clk_p;
  wire [3:0]gt_serial_port_grx_n;
  wire [3:0]gt_serial_port_grx_p;
  wire [3:0]gt_serial_port_gtx_n;
  wire [3:0]gt_serial_port_gtx_p;
  wire \^rx_aligned ;
  wire [511:0]rx_out_tdata;
  wire [63:0]rx_out_tkeep;
  wire rx_out_tlast;
  wire rx_out_tready;
  wire rx_out_tvalid;
  wire sys_clk;
  wire sys_resetn_in;
  wire [511:0]tx_in_tdata;
  wire [63:0]tx_in_tkeep;
  wire tx_in_tlast;
  wire tx_in_tready;
  wire tx_in_tvalid;

  assign rx_aligned[0] = \^rx_aligned ;
  top_level_axis_register_slice_0_3 axis_register_slice
       (.aclk(cmac_clk),
        .aresetn(cmac_control_rx_resetn_out),
        .m_axis_tdata(axis_register_slice_0_M_AXIS_TDATA),
        .m_axis_tkeep(axis_register_slice_0_M_AXIS_TKEEP),
        .m_axis_tlast(axis_register_slice_0_M_AXIS_TLAST),
        .m_axis_tready(axis_register_slice_0_M_AXIS_TREADY),
        .m_axis_tvalid(axis_register_slice_0_M_AXIS_TVALID),
        .s_axis_tdata(tx_in_tdata),
        .s_axis_tkeep(tx_in_tkeep),
        .s_axis_tlast(tx_in_tlast),
        .s_axis_tready(tx_in_tready),
        .s_axis_tvalid(tx_in_tvalid));
  top_level_cmac_control_1 cmac_control
       (.ctl_rx_enable(cmac_control_ctl_rx_ctl_enable),
        .ctl_rx_rsfec_enable(cmac_control_rs_fec_ctl_rx_rsfec_enable),
        .ctl_rx_rsfec_enable_correction(cmac_control_rs_fec_ctl_rx_rsfec_enable_correction),
        .ctl_rx_rsfec_enable_indication(cmac_control_rs_fec_ctl_rx_rsfec_enable_indication),
        .ctl_tx_enable(cmac_control_ctl_tx_ctl_enable),
        .ctl_tx_rsfec_enable(cmac_control_rs_fec_ctl_tx_rsfec_enable),
        .ctl_tx_send_rfi(cmac_control_ctl_tx_ctl_tx_send_rfi),
        .gt_txdiffctrl(cmac_control_gt_trans_debug_gt_txdiffctrl),
        .gt_txprecursor(cmac_control_gt_trans_debug_gt_txprecursor),
        .reset_rx_datapath(cmac_control_reset_rx_datapath),
        .rx_clk(cmac_clk),
        .rx_resetn_out(cmac_control_rx_resetn_out),
        .stat_rx_aligned(cmac_usplus_stat_rx_stat_rx_aligned),
        .sync_rx_aligned(\^rx_aligned ),
        .sys_resetn_in(sys_resetn_in));
  top_level_cmac_usplus_1 cmac_usplus
       (.common0_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .common0_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .common0_drpen(1'b0),
        .common0_drpwe(1'b0),
        .core_drp_reset(1'b0),
        .core_rx_reset(1'b0),
        .core_tx_reset(1'b0),
        .ctl_rsfec_ieee_error_indication_mode(1'b0),
        .ctl_rx_enable(cmac_control_ctl_rx_ctl_enable),
        .ctl_rx_force_resync(1'b0),
        .ctl_rx_rsfec_enable(cmac_control_rs_fec_ctl_rx_rsfec_enable),
        .ctl_rx_rsfec_enable_correction(cmac_control_rs_fec_ctl_rx_rsfec_enable_correction),
        .ctl_rx_rsfec_enable_indication(cmac_control_rs_fec_ctl_rx_rsfec_enable_indication),
        .ctl_rx_test_pattern(1'b0),
        .ctl_tx_enable(cmac_control_ctl_tx_ctl_enable),
        .ctl_tx_rsfec_enable(cmac_control_rs_fec_ctl_tx_rsfec_enable),
        .ctl_tx_send_idle(1'b0),
        .ctl_tx_send_lfi(1'b0),
        .ctl_tx_send_rfi(cmac_control_ctl_tx_ctl_tx_send_rfi),
        .ctl_tx_test_pattern(1'b0),
        .drp_addr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_clk(sys_clk),
        .drp_di({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_en(1'b0),
        .drp_we(1'b0),
        .gt0_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt0_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt0_drpen(1'b0),
        .gt0_drpwe(1'b0),
        .gt1_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt1_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt1_drpen(1'b0),
        .gt1_drpwe(1'b0),
        .gt2_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt2_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt2_drpen(1'b0),
        .gt2_drpwe(1'b0),
        .gt3_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt3_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt3_drpen(1'b0),
        .gt3_drpwe(1'b0),
        .gt_drpclk(sys_clk),
        .gt_eyescanreset({1'b0,1'b0,1'b0,1'b0}),
        .gt_eyescantrigger({1'b0,1'b0,1'b0,1'b0}),
        .gt_loopback_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_ref_clk_n(gt_ref_clk_clk_n),
        .gt_ref_clk_p(gt_ref_clk_clk_p),
        .gt_rxcdrhold({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxdfelpmreset({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxlpmen({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxn_in(gt_serial_port_grx_n),
        .gt_rxp_in(gt_serial_port_grx_p),
        .gt_rxpolarity({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxprbscntreset({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxprbssel({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_rxrate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_txdiffctrl(cmac_control_gt_trans_debug_gt_txdiffctrl),
        .gt_txinhibit({1'b0,1'b0,1'b0,1'b0}),
        .gt_txn_out(gt_serial_port_gtx_n),
        .gt_txp_out(gt_serial_port_gtx_p),
        .gt_txpippmen({1'b0,1'b0,1'b0,1'b0}),
        .gt_txpippmsel({1'b0,1'b0,1'b0,1'b0}),
        .gt_txpolarity({1'b0,1'b0,1'b0,1'b0}),
        .gt_txpostcursor({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_txprbsforceerr({1'b0,1'b0,1'b0,1'b0}),
        .gt_txprbssel({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_txprecursor(cmac_control_gt_trans_debug_gt_txprecursor),
        .gt_txusrclk2(cmac_clk),
        .gtwiz_reset_rx_datapath(cmac_control_reset_rx_datapath),
        .gtwiz_reset_tx_datapath(1'b0),
        .init_clk(sys_clk),
        .rx_axis_tdata(cmac_usplus_axis_rx_TDATA),
        .rx_axis_tkeep(cmac_usplus_axis_rx_TKEEP),
        .rx_axis_tlast(cmac_usplus_axis_rx_TLAST),
        .rx_axis_tuser(cmac_usplus_axis_rx_TUSER),
        .rx_axis_tvalid(cmac_usplus_axis_rx_TVALID),
        .rx_clk(cmac_clk),
        .stat_rx_aligned(cmac_usplus_stat_rx_stat_rx_aligned),
        .sys_reset(1'b0),
        .tx_axis_tdata(axis_register_slice_0_M_AXIS_TDATA),
        .tx_axis_tkeep(axis_register_slice_0_M_AXIS_TKEEP),
        .tx_axis_tlast(axis_register_slice_0_M_AXIS_TLAST),
        .tx_axis_tready(axis_register_slice_0_M_AXIS_TREADY),
        .tx_axis_tuser(1'b0),
        .tx_axis_tvalid(axis_register_slice_0_M_AXIS_TVALID),
        .tx_preamblein({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  rx_cdc_imp_X4GI8J rx_cdc
       (.M_AXIS_tdata(rx_out_tdata),
        .M_AXIS_tkeep(rx_out_tkeep),
        .M_AXIS_tlast(rx_out_tlast),
        .M_AXIS_tready(rx_out_tready),
        .M_AXIS_tvalid(rx_out_tvalid),
        .S_AXIS_tdata(cmac_usplus_axis_rx_TDATA),
        .S_AXIS_tkeep(cmac_usplus_axis_rx_TKEEP),
        .S_AXIS_tlast(cmac_usplus_axis_rx_TLAST),
        .S_AXIS_tuser(cmac_usplus_axis_rx_TUSER),
        .S_AXIS_tvalid(cmac_usplus_axis_rx_TVALID),
        .cmac_clk(cmac_clk),
        .cmac_resetn(cmac_control_rx_resetn_out),
        .sys_clk(sys_clk));
endmodule

module frame_gen_imp_1DFNVFE
   (GPIO15_DIR,
    GPIO_BYTE_DIR,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    clk_192,
    pa_sync_in,
    resetn_192,
    rs0,
    rs256);
  output [0:0]GPIO15_DIR;
  output [0:0]GPIO_BYTE_DIR;
  input [7:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [7:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  input clk_192;
  input pa_sync_in;
  input resetn_192;
  output rs0;
  output rs256;

  wire [0:0]GPIO15_DIR;
  wire [0:0]GPIO_BYTE_DIR;
  wire [7:0]S_AXI_araddr;
  wire [2:0]S_AXI_arprot;
  wire S_AXI_arready;
  wire S_AXI_arvalid;
  wire [7:0]S_AXI_awaddr;
  wire [2:0]S_AXI_awprot;
  wire S_AXI_awready;
  wire S_AXI_awvalid;
  wire S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire S_AXI_rready;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire [31:0]S_AXI_wdata;
  wire S_AXI_wready;
  wire [3:0]S_AXI_wstrb;
  wire S_AXI_wvalid;
  wire clk_192;
  wire pa_sync_in;
  wire resetn_192;
  wire rs0;
  wire rs256;

  top_level_framegen_ctl_0_0 framegen_ctl
       (.S_AXI_ARADDR(S_AXI_araddr),
        .S_AXI_ARPROT(S_AXI_arprot),
        .S_AXI_ARREADY(S_AXI_arready),
        .S_AXI_ARVALID(S_AXI_arvalid),
        .S_AXI_AWADDR(S_AXI_awaddr),
        .S_AXI_AWPROT(S_AXI_awprot),
        .S_AXI_AWREADY(S_AXI_awready),
        .S_AXI_AWVALID(S_AXI_awvalid),
        .S_AXI_BREADY(S_AXI_bready),
        .S_AXI_BRESP(S_AXI_bresp),
        .S_AXI_BVALID(S_AXI_bvalid),
        .S_AXI_RDATA(S_AXI_rdata),
        .S_AXI_RREADY(S_AXI_rready),
        .S_AXI_RRESP(S_AXI_rresp),
        .S_AXI_RVALID(S_AXI_rvalid),
        .S_AXI_WDATA(S_AXI_wdata),
        .S_AXI_WREADY(S_AXI_wready),
        .S_AXI_WSTRB(S_AXI_wstrb),
        .S_AXI_WVALID(S_AXI_wvalid),
        .clk(clk_192),
        .pa_sync_raw(pa_sync_in),
        .resetn(resetn_192),
        .rs0(rs0),
        .rs256(rs256));
  assign GPIO_BYTE_DIR = 1'h0;
  assign GPIO15_DIR = 1'h1;
endmodule

module pcie_bridge_imp_1AINXYK
   (M_AXI_B_araddr,
    M_AXI_B_arburst,
    M_AXI_B_arcache,
    M_AXI_B_arid,
    M_AXI_B_arlen,
    M_AXI_B_arlock,
    M_AXI_B_arprot,
    M_AXI_B_arready,
    M_AXI_B_arsize,
    M_AXI_B_arvalid,
    M_AXI_B_awaddr,
    M_AXI_B_awburst,
    M_AXI_B_awcache,
    M_AXI_B_awid,
    M_AXI_B_awlen,
    M_AXI_B_awlock,
    M_AXI_B_awprot,
    M_AXI_B_awready,
    M_AXI_B_awsize,
    M_AXI_B_awvalid,
    M_AXI_B_bid,
    M_AXI_B_bready,
    M_AXI_B_bresp,
    M_AXI_B_bvalid,
    M_AXI_B_rdata,
    M_AXI_B_rid,
    M_AXI_B_rlast,
    M_AXI_B_rready,
    M_AXI_B_rresp,
    M_AXI_B_rvalid,
    M_AXI_B_wdata,
    M_AXI_B_wlast,
    M_AXI_B_wready,
    M_AXI_B_wstrb,
    M_AXI_B_wvalid,
    PCIE_REFCLK_clk_n,
    PCIE_REFCLK_clk_p,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arid,
    S01_AXI_arlen,
    S01_AXI_arlock,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arready,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awid,
    S01_AXI_awlen,
    S01_AXI_awlock,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awready,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid,
    pcie_mgt_rxn,
    pcie_mgt_rxp,
    pcie_mgt_txn,
    pcie_mgt_txp,
    sys_clk,
    sys_resetn);
  output [63:0]M_AXI_B_araddr;
  output [1:0]M_AXI_B_arburst;
  output [3:0]M_AXI_B_arcache;
  output [3:0]M_AXI_B_arid;
  output [7:0]M_AXI_B_arlen;
  output [0:0]M_AXI_B_arlock;
  output [2:0]M_AXI_B_arprot;
  input M_AXI_B_arready;
  output [2:0]M_AXI_B_arsize;
  output M_AXI_B_arvalid;
  output [63:0]M_AXI_B_awaddr;
  output [1:0]M_AXI_B_awburst;
  output [3:0]M_AXI_B_awcache;
  output [3:0]M_AXI_B_awid;
  output [7:0]M_AXI_B_awlen;
  output [0:0]M_AXI_B_awlock;
  output [2:0]M_AXI_B_awprot;
  input M_AXI_B_awready;
  output [2:0]M_AXI_B_awsize;
  output M_AXI_B_awvalid;
  input [3:0]M_AXI_B_bid;
  output M_AXI_B_bready;
  input [1:0]M_AXI_B_bresp;
  input M_AXI_B_bvalid;
  input [511:0]M_AXI_B_rdata;
  input [3:0]M_AXI_B_rid;
  input M_AXI_B_rlast;
  output M_AXI_B_rready;
  input [1:0]M_AXI_B_rresp;
  input M_AXI_B_rvalid;
  output [511:0]M_AXI_B_wdata;
  output M_AXI_B_wlast;
  input M_AXI_B_wready;
  output [63:0]M_AXI_B_wstrb;
  output M_AXI_B_wvalid;
  input [0:0]PCIE_REFCLK_clk_n;
  input [0:0]PCIE_REFCLK_clk_p;
  input [63:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [3:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [63:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [3:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [511:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [511:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [63:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input [63:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [3:0]S01_AXI_arid;
  input [7:0]S01_AXI_arlen;
  input S01_AXI_arlock;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arqos;
  output S01_AXI_arready;
  input [2:0]S01_AXI_arsize;
  input S01_AXI_arvalid;
  input [63:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [3:0]S01_AXI_awid;
  input [7:0]S01_AXI_awlen;
  input S01_AXI_awlock;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awqos;
  output S01_AXI_awready;
  input [2:0]S01_AXI_awsize;
  input S01_AXI_awvalid;
  input S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  output [511:0]S01_AXI_rdata;
  output S01_AXI_rlast;
  input S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;
  input [511:0]S01_AXI_wdata;
  input S01_AXI_wlast;
  output S01_AXI_wready;
  input [63:0]S01_AXI_wstrb;
  input S01_AXI_wvalid;
  input [15:0]pcie_mgt_rxn;
  input [15:0]pcie_mgt_rxp;
  output [15:0]pcie_mgt_txn;
  output [15:0]pcie_mgt_txp;
  output sys_clk;
  output sys_resetn;

  wire [63:0]M_AXI_B_araddr;
  wire [1:0]M_AXI_B_arburst;
  wire [3:0]M_AXI_B_arcache;
  wire [3:0]M_AXI_B_arid;
  wire [7:0]M_AXI_B_arlen;
  wire \^M_AXI_B_arlock ;
  wire [2:0]M_AXI_B_arprot;
  wire M_AXI_B_arready;
  wire [2:0]M_AXI_B_arsize;
  wire M_AXI_B_arvalid;
  wire [63:0]M_AXI_B_awaddr;
  wire [1:0]M_AXI_B_awburst;
  wire [3:0]M_AXI_B_awcache;
  wire [3:0]M_AXI_B_awid;
  wire [7:0]M_AXI_B_awlen;
  wire \^M_AXI_B_awlock ;
  wire [2:0]M_AXI_B_awprot;
  wire M_AXI_B_awready;
  wire [2:0]M_AXI_B_awsize;
  wire M_AXI_B_awvalid;
  wire [3:0]M_AXI_B_bid;
  wire M_AXI_B_bready;
  wire [1:0]M_AXI_B_bresp;
  wire M_AXI_B_bvalid;
  wire [511:0]M_AXI_B_rdata;
  wire [3:0]M_AXI_B_rid;
  wire M_AXI_B_rlast;
  wire M_AXI_B_rready;
  wire [1:0]M_AXI_B_rresp;
  wire M_AXI_B_rvalid;
  wire [511:0]M_AXI_B_wdata;
  wire M_AXI_B_wlast;
  wire M_AXI_B_wready;
  wire [63:0]M_AXI_B_wstrb;
  wire M_AXI_B_wvalid;
  wire [0:0]PCIE_REFCLK_clk_n;
  wire [0:0]PCIE_REFCLK_clk_p;
  wire [63:0]S00_AXI_araddr;
  wire [1:0]S00_AXI_arburst;
  wire [3:0]S00_AXI_arcache;
  wire [3:0]S00_AXI_arid;
  wire [7:0]S00_AXI_arlen;
  wire S00_AXI_arlock;
  wire [2:0]S00_AXI_arprot;
  wire [3:0]S00_AXI_arqos;
  wire S00_AXI_arready;
  wire [2:0]S00_AXI_arsize;
  wire S00_AXI_arvalid;
  wire [63:0]S00_AXI_awaddr;
  wire [1:0]S00_AXI_awburst;
  wire [3:0]S00_AXI_awcache;
  wire [3:0]S00_AXI_awid;
  wire [7:0]S00_AXI_awlen;
  wire S00_AXI_awlock;
  wire [2:0]S00_AXI_awprot;
  wire [3:0]S00_AXI_awqos;
  wire S00_AXI_awready;
  wire [2:0]S00_AXI_awsize;
  wire S00_AXI_awvalid;
  wire S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire S00_AXI_bvalid;
  wire [511:0]S00_AXI_rdata;
  wire S00_AXI_rlast;
  wire S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire S00_AXI_rvalid;
  wire [511:0]S00_AXI_wdata;
  wire S00_AXI_wlast;
  wire S00_AXI_wready;
  wire [63:0]S00_AXI_wstrb;
  wire S00_AXI_wvalid;
  wire [63:0]S01_AXI_araddr;
  wire [1:0]S01_AXI_arburst;
  wire [3:0]S01_AXI_arcache;
  wire [3:0]S01_AXI_arid;
  wire [7:0]S01_AXI_arlen;
  wire S01_AXI_arlock;
  wire [2:0]S01_AXI_arprot;
  wire [3:0]S01_AXI_arqos;
  wire S01_AXI_arready;
  wire [2:0]S01_AXI_arsize;
  wire S01_AXI_arvalid;
  wire [63:0]S01_AXI_awaddr;
  wire [1:0]S01_AXI_awburst;
  wire [3:0]S01_AXI_awcache;
  wire [3:0]S01_AXI_awid;
  wire [7:0]S01_AXI_awlen;
  wire S01_AXI_awlock;
  wire [2:0]S01_AXI_awprot;
  wire [3:0]S01_AXI_awqos;
  wire S01_AXI_awready;
  wire [2:0]S01_AXI_awsize;
  wire S01_AXI_awvalid;
  wire S01_AXI_bready;
  wire [1:0]S01_AXI_bresp;
  wire S01_AXI_bvalid;
  wire [511:0]S01_AXI_rdata;
  wire S01_AXI_rlast;
  wire S01_AXI_rready;
  wire [1:0]S01_AXI_rresp;
  wire S01_AXI_rvalid;
  wire [511:0]S01_AXI_wdata;
  wire S01_AXI_wlast;
  wire S01_AXI_wready;
  wire [63:0]S01_AXI_wstrb;
  wire S01_AXI_wvalid;
  wire [31:0]axi4_lite_plug_M_AXI_ARADDR;
  wire axi4_lite_plug_M_AXI_ARREADY;
  wire axi4_lite_plug_M_AXI_ARVALID;
  wire [31:0]axi4_lite_plug_M_AXI_AWADDR;
  wire axi4_lite_plug_M_AXI_AWREADY;
  wire axi4_lite_plug_M_AXI_AWVALID;
  wire axi4_lite_plug_M_AXI_BREADY;
  wire [1:0]axi4_lite_plug_M_AXI_BRESP;
  wire axi4_lite_plug_M_AXI_BVALID;
  wire [31:0]axi4_lite_plug_M_AXI_RDATA;
  wire axi4_lite_plug_M_AXI_RREADY;
  wire [1:0]axi4_lite_plug_M_AXI_RRESP;
  wire axi4_lite_plug_M_AXI_RVALID;
  wire [31:0]axi4_lite_plug_M_AXI_WDATA;
  wire axi4_lite_plug_M_AXI_WREADY;
  wire [3:0]axi4_lite_plug_M_AXI_WSTRB;
  wire axi4_lite_plug_M_AXI_WVALID;
  wire [0:0]clock_buffer_IBUF_DS_ODIV2;
  wire [0:0]clock_buffer_IBUF_OUT;
  wire [0:0]one_dout;
  wire [15:0]pcie_mgt_rxn;
  wire [15:0]pcie_mgt_rxp;
  wire [15:0]pcie_mgt_txn;
  wire [15:0]pcie_mgt_txp;
  wire [63:0]smartconnect_M00_AXI_ARADDR;
  wire [1:0]smartconnect_M00_AXI_ARBURST;
  wire [7:0]smartconnect_M00_AXI_ARLEN;
  wire smartconnect_M00_AXI_ARREADY;
  wire [2:0]smartconnect_M00_AXI_ARSIZE;
  wire smartconnect_M00_AXI_ARVALID;
  wire [63:0]smartconnect_M00_AXI_AWADDR;
  wire [1:0]smartconnect_M00_AXI_AWBURST;
  wire [7:0]smartconnect_M00_AXI_AWLEN;
  wire smartconnect_M00_AXI_AWREADY;
  wire [2:0]smartconnect_M00_AXI_AWSIZE;
  wire smartconnect_M00_AXI_AWVALID;
  wire smartconnect_M00_AXI_BREADY;
  wire [1:0]smartconnect_M00_AXI_BRESP;
  wire smartconnect_M00_AXI_BVALID;
  wire [511:0]smartconnect_M00_AXI_RDATA;
  wire smartconnect_M00_AXI_RLAST;
  wire smartconnect_M00_AXI_RREADY;
  wire [1:0]smartconnect_M00_AXI_RRESP;
  wire smartconnect_M00_AXI_RVALID;
  wire [511:0]smartconnect_M00_AXI_WDATA;
  wire smartconnect_M00_AXI_WLAST;
  wire smartconnect_M00_AXI_WREADY;
  wire [63:0]smartconnect_M00_AXI_WSTRB;
  wire smartconnect_M00_AXI_WVALID;
  wire sys_clk;
  wire sys_resetn;

  assign M_AXI_B_arlock[0] = \^M_AXI_B_arlock ;
  assign M_AXI_B_awlock[0] = \^M_AXI_B_awlock ;
  top_level_axi4_lite_plug_0_0 axi4_lite_plug
       (.M_AXI_ARADDR(axi4_lite_plug_M_AXI_ARADDR),
        .M_AXI_ARREADY(axi4_lite_plug_M_AXI_ARREADY),
        .M_AXI_ARVALID(axi4_lite_plug_M_AXI_ARVALID),
        .M_AXI_AWADDR(axi4_lite_plug_M_AXI_AWADDR),
        .M_AXI_AWREADY(axi4_lite_plug_M_AXI_AWREADY),
        .M_AXI_AWVALID(axi4_lite_plug_M_AXI_AWVALID),
        .M_AXI_BREADY(axi4_lite_plug_M_AXI_BREADY),
        .M_AXI_BRESP(axi4_lite_plug_M_AXI_BRESP),
        .M_AXI_BVALID(axi4_lite_plug_M_AXI_BVALID),
        .M_AXI_RDATA(axi4_lite_plug_M_AXI_RDATA),
        .M_AXI_RREADY(axi4_lite_plug_M_AXI_RREADY),
        .M_AXI_RRESP(axi4_lite_plug_M_AXI_RRESP),
        .M_AXI_RVALID(axi4_lite_plug_M_AXI_RVALID),
        .M_AXI_WDATA(axi4_lite_plug_M_AXI_WDATA),
        .M_AXI_WREADY(axi4_lite_plug_M_AXI_WREADY),
        .M_AXI_WSTRB(axi4_lite_plug_M_AXI_WSTRB),
        .M_AXI_WVALID(axi4_lite_plug_M_AXI_WVALID),
        .clk(sys_clk));
  top_level_util_ds_buf_0_0 clock_buffer
       (.IBUF_DS_N(PCIE_REFCLK_clk_n),
        .IBUF_DS_ODIV2(clock_buffer_IBUF_DS_ODIV2),
        .IBUF_DS_P(PCIE_REFCLK_clk_p),
        .IBUF_OUT(clock_buffer_IBUF_OUT));
  assign one_dout = 1'h1;
  top_level_xdma_0_0 pcie_bridge_0
       (.axi_aclk(sys_clk),
        .axi_aresetn(sys_resetn),
        .m_axib_araddr(M_AXI_B_araddr),
        .m_axib_arburst(M_AXI_B_arburst),
        .m_axib_arcache(M_AXI_B_arcache),
        .m_axib_arid(M_AXI_B_arid),
        .m_axib_arlen(M_AXI_B_arlen),
        .m_axib_arlock(\^M_AXI_B_arlock ),
        .m_axib_arprot(M_AXI_B_arprot),
        .m_axib_arready(M_AXI_B_arready),
        .m_axib_arsize(M_AXI_B_arsize),
        .m_axib_arvalid(M_AXI_B_arvalid),
        .m_axib_awaddr(M_AXI_B_awaddr),
        .m_axib_awburst(M_AXI_B_awburst),
        .m_axib_awcache(M_AXI_B_awcache),
        .m_axib_awid(M_AXI_B_awid),
        .m_axib_awlen(M_AXI_B_awlen),
        .m_axib_awlock(\^M_AXI_B_awlock ),
        .m_axib_awprot(M_AXI_B_awprot),
        .m_axib_awready(M_AXI_B_awready),
        .m_axib_awsize(M_AXI_B_awsize),
        .m_axib_awvalid(M_AXI_B_awvalid),
        .m_axib_bid(M_AXI_B_bid),
        .m_axib_bready(M_AXI_B_bready),
        .m_axib_bresp(M_AXI_B_bresp),
        .m_axib_bvalid(M_AXI_B_bvalid),
        .m_axib_rdata(M_AXI_B_rdata),
        .m_axib_rid(M_AXI_B_rid),
        .m_axib_rlast(M_AXI_B_rlast),
        .m_axib_rready(M_AXI_B_rready),
        .m_axib_rresp(M_AXI_B_rresp),
        .m_axib_rvalid(M_AXI_B_rvalid),
        .m_axib_wdata(M_AXI_B_wdata),
        .m_axib_wlast(M_AXI_B_wlast),
        .m_axib_wready(M_AXI_B_wready),
        .m_axib_wstrb(M_AXI_B_wstrb),
        .m_axib_wvalid(M_AXI_B_wvalid),
        .pci_exp_rxn(pcie_mgt_rxn),
        .pci_exp_rxp(pcie_mgt_rxp),
        .pci_exp_txn(pcie_mgt_txn),
        .pci_exp_txp(pcie_mgt_txp),
        .s_axib_araddr(smartconnect_M00_AXI_ARADDR),
        .s_axib_arburst(smartconnect_M00_AXI_ARBURST),
        .s_axib_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axib_arlen(smartconnect_M00_AXI_ARLEN),
        .s_axib_arready(smartconnect_M00_AXI_ARREADY),
        .s_axib_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axib_arsize(smartconnect_M00_AXI_ARSIZE),
        .s_axib_arvalid(smartconnect_M00_AXI_ARVALID),
        .s_axib_awaddr(smartconnect_M00_AXI_AWADDR),
        .s_axib_awburst(smartconnect_M00_AXI_AWBURST),
        .s_axib_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axib_awlen(smartconnect_M00_AXI_AWLEN),
        .s_axib_awready(smartconnect_M00_AXI_AWREADY),
        .s_axib_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axib_awsize(smartconnect_M00_AXI_AWSIZE),
        .s_axib_awvalid(smartconnect_M00_AXI_AWVALID),
        .s_axib_bready(smartconnect_M00_AXI_BREADY),
        .s_axib_bresp(smartconnect_M00_AXI_BRESP),
        .s_axib_bvalid(smartconnect_M00_AXI_BVALID),
        .s_axib_rdata(smartconnect_M00_AXI_RDATA),
        .s_axib_rlast(smartconnect_M00_AXI_RLAST),
        .s_axib_rready(smartconnect_M00_AXI_RREADY),
        .s_axib_rresp(smartconnect_M00_AXI_RRESP),
        .s_axib_rvalid(smartconnect_M00_AXI_RVALID),
        .s_axib_wdata(smartconnect_M00_AXI_WDATA),
        .s_axib_wlast(smartconnect_M00_AXI_WLAST),
        .s_axib_wready(smartconnect_M00_AXI_WREADY),
        .s_axib_wstrb(smartconnect_M00_AXI_WSTRB),
        .s_axib_wvalid(smartconnect_M00_AXI_WVALID),
        .s_axil_araddr(axi4_lite_plug_M_AXI_ARADDR),
        .s_axil_arprot({1'b0,1'b0,1'b0}),
        .s_axil_arready(axi4_lite_plug_M_AXI_ARREADY),
        .s_axil_arvalid(axi4_lite_plug_M_AXI_ARVALID),
        .s_axil_awaddr(axi4_lite_plug_M_AXI_AWADDR),
        .s_axil_awprot({1'b0,1'b0,1'b0}),
        .s_axil_awready(axi4_lite_plug_M_AXI_AWREADY),
        .s_axil_awvalid(axi4_lite_plug_M_AXI_AWVALID),
        .s_axil_bready(axi4_lite_plug_M_AXI_BREADY),
        .s_axil_bresp(axi4_lite_plug_M_AXI_BRESP),
        .s_axil_bvalid(axi4_lite_plug_M_AXI_BVALID),
        .s_axil_rdata(axi4_lite_plug_M_AXI_RDATA),
        .s_axil_rready(axi4_lite_plug_M_AXI_RREADY),
        .s_axil_rresp(axi4_lite_plug_M_AXI_RRESP),
        .s_axil_rvalid(axi4_lite_plug_M_AXI_RVALID),
        .s_axil_wdata(axi4_lite_plug_M_AXI_WDATA),
        .s_axil_wready(axi4_lite_plug_M_AXI_WREADY),
        .s_axil_wstrb(axi4_lite_plug_M_AXI_WSTRB),
        .s_axil_wvalid(axi4_lite_plug_M_AXI_WVALID),
        .sys_clk(clock_buffer_IBUF_DS_ODIV2),
        .sys_clk_gt(clock_buffer_IBUF_OUT),
        .sys_rst_n(one_dout),
        .usr_irq_req(1'b0));
  top_level_smartconnect_0_1 smartconnect
       (.M00_AXI_araddr(smartconnect_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_M00_AXI_ARBURST),
        .M00_AXI_arlen(smartconnect_M00_AXI_ARLEN),
        .M00_AXI_arready(smartconnect_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(smartconnect_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_M00_AXI_AWBURST),
        .M00_AXI_awlen(smartconnect_M00_AXI_AWLEN),
        .M00_AXI_awready(smartconnect_M00_AXI_AWREADY),
        .M00_AXI_awsize(smartconnect_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(smartconnect_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_M00_AXI_RDATA),
        .M00_AXI_rlast(smartconnect_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_M00_AXI_WLAST),
        .M00_AXI_wready(smartconnect_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_M00_AXI_WVALID),
        .S00_AXI_araddr(S00_AXI_araddr),
        .S00_AXI_arburst(S00_AXI_arburst),
        .S00_AXI_arcache(S00_AXI_arcache),
        .S00_AXI_arid(S00_AXI_arid),
        .S00_AXI_arlen(S00_AXI_arlen),
        .S00_AXI_arlock(S00_AXI_arlock),
        .S00_AXI_arprot(S00_AXI_arprot),
        .S00_AXI_arqos(S00_AXI_arqos),
        .S00_AXI_arready(S00_AXI_arready),
        .S00_AXI_arsize(S00_AXI_arsize),
        .S00_AXI_arvalid(S00_AXI_arvalid),
        .S00_AXI_awaddr(S00_AXI_awaddr),
        .S00_AXI_awburst(S00_AXI_awburst),
        .S00_AXI_awcache(S00_AXI_awcache),
        .S00_AXI_awid(S00_AXI_awid),
        .S00_AXI_awlen(S00_AXI_awlen),
        .S00_AXI_awlock(S00_AXI_awlock),
        .S00_AXI_awprot(S00_AXI_awprot),
        .S00_AXI_awqos(S00_AXI_awqos),
        .S00_AXI_awready(S00_AXI_awready),
        .S00_AXI_awsize(S00_AXI_awsize),
        .S00_AXI_awvalid(S00_AXI_awvalid),
        .S00_AXI_bready(S00_AXI_bready),
        .S00_AXI_bresp(S00_AXI_bresp),
        .S00_AXI_bvalid(S00_AXI_bvalid),
        .S00_AXI_rdata(S00_AXI_rdata),
        .S00_AXI_rlast(S00_AXI_rlast),
        .S00_AXI_rready(S00_AXI_rready),
        .S00_AXI_rresp(S00_AXI_rresp),
        .S00_AXI_rvalid(S00_AXI_rvalid),
        .S00_AXI_wdata(S00_AXI_wdata),
        .S00_AXI_wlast(S00_AXI_wlast),
        .S00_AXI_wready(S00_AXI_wready),
        .S00_AXI_wstrb(S00_AXI_wstrb),
        .S00_AXI_wvalid(S00_AXI_wvalid),
        .S01_AXI_araddr(S01_AXI_araddr),
        .S01_AXI_arburst(S01_AXI_arburst),
        .S01_AXI_arcache(S01_AXI_arcache),
        .S01_AXI_arid(S01_AXI_arid),
        .S01_AXI_arlen(S01_AXI_arlen),
        .S01_AXI_arlock(S01_AXI_arlock),
        .S01_AXI_arprot(S01_AXI_arprot),
        .S01_AXI_arqos(S01_AXI_arqos),
        .S01_AXI_arready(S01_AXI_arready),
        .S01_AXI_arsize(S01_AXI_arsize),
        .S01_AXI_arvalid(S01_AXI_arvalid),
        .S01_AXI_awaddr(S01_AXI_awaddr),
        .S01_AXI_awburst(S01_AXI_awburst),
        .S01_AXI_awcache(S01_AXI_awcache),
        .S01_AXI_awid(S01_AXI_awid),
        .S01_AXI_awlen(S01_AXI_awlen),
        .S01_AXI_awlock(S01_AXI_awlock),
        .S01_AXI_awprot(S01_AXI_awprot),
        .S01_AXI_awqos(S01_AXI_awqos),
        .S01_AXI_awready(S01_AXI_awready),
        .S01_AXI_awsize(S01_AXI_awsize),
        .S01_AXI_awvalid(S01_AXI_awvalid),
        .S01_AXI_bready(S01_AXI_bready),
        .S01_AXI_bresp(S01_AXI_bresp),
        .S01_AXI_bvalid(S01_AXI_bvalid),
        .S01_AXI_rdata(S01_AXI_rdata),
        .S01_AXI_rlast(S01_AXI_rlast),
        .S01_AXI_rready(S01_AXI_rready),
        .S01_AXI_rresp(S01_AXI_rresp),
        .S01_AXI_rvalid(S01_AXI_rvalid),
        .S01_AXI_wdata(S01_AXI_wdata),
        .S01_AXI_wlast(S01_AXI_wlast),
        .S01_AXI_wready(S01_AXI_wready),
        .S01_AXI_wstrb(S01_AXI_wstrb),
        .S01_AXI_wvalid(S01_AXI_wvalid),
        .aclk(sys_clk),
        .aresetn(sys_resetn));
endmodule

module rx_cdc_imp_1GJL7O0
   (M_AXIS_tdata,
    M_AXIS_tkeep,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tvalid,
    S_AXIS_tdata,
    S_AXIS_tkeep,
    S_AXIS_tlast,
    S_AXIS_tuser,
    S_AXIS_tvalid,
    cmac_clk,
    cmac_resetn,
    sys_clk);
  output [511:0]M_AXIS_tdata;
  output [63:0]M_AXIS_tkeep;
  output M_AXIS_tlast;
  input M_AXIS_tready;
  output M_AXIS_tvalid;
  input [511:0]S_AXIS_tdata;
  input [63:0]S_AXIS_tkeep;
  input S_AXIS_tlast;
  input [0:0]S_AXIS_tuser;
  input S_AXIS_tvalid;
  input cmac_clk;
  input cmac_resetn;
  input sys_clk;

  wire [511:0]M_AXIS_tdata;
  wire [63:0]M_AXIS_tkeep;
  wire M_AXIS_tlast;
  wire M_AXIS_tready;
  wire M_AXIS_tvalid;
  wire [511:0]S_AXIS_tdata;
  wire [63:0]S_AXIS_tkeep;
  wire S_AXIS_tlast;
  wire [0:0]S_AXIS_tuser;
  wire S_AXIS_tvalid;
  wire [511:0]axis_register_slice_0_M_AXIS_TDATA;
  wire [63:0]axis_register_slice_0_M_AXIS_TKEEP;
  wire axis_register_slice_0_M_AXIS_TLAST;
  wire [0:0]axis_register_slice_0_M_AXIS_TUSER;
  wire axis_register_slice_0_M_AXIS_TVALID;
  wire cmac_clk;
  wire cmac_resetn;
  wire sys_clk;

  top_level_axis_register_slice_0_0 axis_register_slice
       (.aclk(cmac_clk),
        .aresetn(cmac_resetn),
        .m_axis_tdata(axis_register_slice_0_M_AXIS_TDATA),
        .m_axis_tkeep(axis_register_slice_0_M_AXIS_TKEEP),
        .m_axis_tlast(axis_register_slice_0_M_AXIS_TLAST),
        .m_axis_tuser(axis_register_slice_0_M_AXIS_TUSER),
        .m_axis_tvalid(axis_register_slice_0_M_AXIS_TVALID),
        .s_axis_tdata(S_AXIS_tdata),
        .s_axis_tkeep(S_AXIS_tkeep),
        .s_axis_tlast(S_AXIS_tlast),
        .s_axis_tuser(S_AXIS_tuser),
        .s_axis_tvalid(S_AXIS_tvalid));
  top_level_axis_data_fifo_0_1 cdc_fifo
       (.m_axis_aclk(sys_clk),
        .m_axis_tdata(M_AXIS_tdata),
        .m_axis_tkeep(M_AXIS_tkeep),
        .m_axis_tlast(M_AXIS_tlast),
        .m_axis_tready(M_AXIS_tready),
        .m_axis_tvalid(M_AXIS_tvalid),
        .s_axis_aclk(cmac_clk),
        .s_axis_aresetn(cmac_resetn),
        .s_axis_tdata(axis_register_slice_0_M_AXIS_TDATA),
        .s_axis_tkeep(axis_register_slice_0_M_AXIS_TKEEP),
        .s_axis_tlast(axis_register_slice_0_M_AXIS_TLAST),
        .s_axis_tuser(axis_register_slice_0_M_AXIS_TUSER),
        .s_axis_tvalid(axis_register_slice_0_M_AXIS_TVALID));
endmodule

module rx_cdc_imp_X4GI8J
   (M_AXIS_tdata,
    M_AXIS_tkeep,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tvalid,
    S_AXIS_tdata,
    S_AXIS_tkeep,
    S_AXIS_tlast,
    S_AXIS_tuser,
    S_AXIS_tvalid,
    cmac_clk,
    cmac_resetn,
    sys_clk);
  output [511:0]M_AXIS_tdata;
  output [63:0]M_AXIS_tkeep;
  output M_AXIS_tlast;
  input M_AXIS_tready;
  output M_AXIS_tvalid;
  input [511:0]S_AXIS_tdata;
  input [63:0]S_AXIS_tkeep;
  input S_AXIS_tlast;
  input [0:0]S_AXIS_tuser;
  input S_AXIS_tvalid;
  input cmac_clk;
  input cmac_resetn;
  input sys_clk;

  wire [511:0]M_AXIS_tdata;
  wire [63:0]M_AXIS_tkeep;
  wire M_AXIS_tlast;
  wire M_AXIS_tready;
  wire M_AXIS_tvalid;
  wire [511:0]S_AXIS_tdata;
  wire [63:0]S_AXIS_tkeep;
  wire S_AXIS_tlast;
  wire [0:0]S_AXIS_tuser;
  wire S_AXIS_tvalid;
  wire [511:0]axis_register_slice_M_AXIS_TDATA;
  wire [63:0]axis_register_slice_M_AXIS_TKEEP;
  wire axis_register_slice_M_AXIS_TLAST;
  wire [0:0]axis_register_slice_M_AXIS_TUSER;
  wire axis_register_slice_M_AXIS_TVALID;
  wire cmac_clk;
  wire cmac_resetn;
  wire sys_clk;

  top_level_axis_register_slice_0_1 axis_register_slice
       (.aclk(cmac_clk),
        .aresetn(cmac_resetn),
        .m_axis_tdata(axis_register_slice_M_AXIS_TDATA),
        .m_axis_tkeep(axis_register_slice_M_AXIS_TKEEP),
        .m_axis_tlast(axis_register_slice_M_AXIS_TLAST),
        .m_axis_tuser(axis_register_slice_M_AXIS_TUSER),
        .m_axis_tvalid(axis_register_slice_M_AXIS_TVALID),
        .s_axis_tdata(S_AXIS_tdata),
        .s_axis_tkeep(S_AXIS_tkeep),
        .s_axis_tlast(S_AXIS_tlast),
        .s_axis_tuser(S_AXIS_tuser),
        .s_axis_tvalid(S_AXIS_tvalid));
  top_level_rx_cdc_0 rx_cdc
       (.m_axis_aclk(sys_clk),
        .m_axis_tdata(M_AXIS_tdata),
        .m_axis_tkeep(M_AXIS_tkeep),
        .m_axis_tlast(M_AXIS_tlast),
        .m_axis_tready(M_AXIS_tready),
        .m_axis_tvalid(M_AXIS_tvalid),
        .s_axis_aclk(cmac_clk),
        .s_axis_aresetn(cmac_resetn),
        .s_axis_tdata(axis_register_slice_M_AXIS_TDATA),
        .s_axis_tkeep(axis_register_slice_M_AXIS_TKEEP),
        .s_axis_tlast(axis_register_slice_M_AXIS_TLAST),
        .s_axis_tuser(axis_register_slice_M_AXIS_TUSER),
        .s_axis_tvalid(axis_register_slice_M_AXIS_TVALID));
endmodule

(* CORE_GENERATION_INFO = "top_level,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=top_level,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=97,numReposBlks=74,numNonXlnxBlks=0,numHierBlks=23,maxHierDepth=3,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=46,numPkgbdBlks=3,bdsource=USER,\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"da_axi4_cnt\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"=2,\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"da_bram_cntlr_cnt\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"=2,\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"da_axi4_cnt\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"=1,\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"da_axi4_cnt\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"=1,\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"da_axi4_cnt\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"=1,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "top_level.hwdef" *) 
module top_level
   (CHIP_HSI_CLK,
    CHIP_HSI_CMD,
    CHIP_HSI_DATA,
    CHIP_HSI_VALID,
    CHIP_PA_SYNC,
    CHIP_RESET_N,
    CHIP_SPI_CLK,
    CHIP_SPI_CSN,
    CHIP_SPI_MISO,
    CHIP_SPI_MOSI,
    CHIP_VDD,
    CHIP_VDDA,
    CHIP_VDDIO,
    CHIP_VDDLVDS,
    GPIO13,
    GPIO15,
    GPIO15_DIR,
    GPIO_BYTE_DIR,
    LVDS_BANKA_clk_n,
    LVDS_BANKA_clk_p,
    LVDS_BANKB_clk_n,
    LVDS_BANKB_clk_p,
    LVDS_BANKC_clk_n,
    LVDS_BANKC_clk_p,
    LVDS_CLK_clk_n,
    LVDS_CLK_clk_p,
    LVDS_DN,
    LVDS_DP,
    LVL_TRSL_OE_N,
    UCI_ADC_CSN,
    UCI_ADC_MISO,
    UCI_ADC_MOSI,
    UCI_ADC_SCK,
    init_clk_clk_n,
    init_clk_clk_p,
    pcie_mgt_rxn,
    pcie_mgt_rxp,
    pcie_mgt_txn,
    pcie_mgt_txp,
    pcie_refclk_clk_n,
    pcie_refclk_clk_p,
    qsfp0_clk_clk_n,
    qsfp0_clk_clk_p,
    qsfp0_gt_grx_n,
    qsfp0_gt_grx_p,
    qsfp0_gt_gtx_n,
    qsfp0_gt_gtx_p,
    qsfp0_up,
    qsfp1_clk_clk_n,
    qsfp1_clk_clk_p,
    qsfp1_gt_grx_n,
    qsfp1_gt_grx_p,
    qsfp1_gt_gtx_n,
    qsfp1_gt_gtx_p,
    qsfp1_up,
    qsfp_lp,
    qsfp_rst_l,
    rs0,
    rs256);
  output CHIP_HSI_CLK;
  output CHIP_HSI_CMD;
  output [31:0]CHIP_HSI_DATA;
  output CHIP_HSI_VALID;
  input CHIP_PA_SYNC;
  output CHIP_RESET_N;
  output CHIP_SPI_CLK;
  output CHIP_SPI_CSN;
  input CHIP_SPI_MISO;
  output CHIP_SPI_MOSI;
  output CHIP_VDD;
  output CHIP_VDDA;
  output CHIP_VDDIO;
  output CHIP_VDDLVDS;
  output [0:0]GPIO13;
  output [0:0]GPIO15;
  output [0:0]GPIO15_DIR;
  output [0:0]GPIO_BYTE_DIR;
  input LVDS_BANKA_clk_n;
  input LVDS_BANKA_clk_p;
  input LVDS_BANKB_clk_n;
  input LVDS_BANKB_clk_p;
  input LVDS_BANKC_clk_n;
  input LVDS_BANKC_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 LVDS_CLK CLK_N" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME LVDS_CLK, CAN_DEBUG false, FREQ_HZ 100000000" *) output [0:0]LVDS_CLK_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 LVDS_CLK CLK_P" *) output [0:0]LVDS_CLK_clk_p;
  input [63:0]LVDS_DN;
  input [63:0]LVDS_DP;
  output LVL_TRSL_OE_N;
  output [2:0]UCI_ADC_CSN;
  input UCI_ADC_MISO;
  output UCI_ADC_MOSI;
  output UCI_ADC_SCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 init_clk CLK_N" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME init_clk, CAN_DEBUG false, FREQ_HZ 200000000" *) input init_clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 init_clk CLK_P" *) input init_clk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt rxn" *) (* X_INTERFACE_MODE = "Master" *) input [15:0]pcie_mgt_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt rxp" *) input [15:0]pcie_mgt_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt txn" *) output [15:0]pcie_mgt_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt txp" *) output [15:0]pcie_mgt_txp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie_refclk CLK_N" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie_refclk, CAN_DEBUG false, FREQ_HZ 100000000" *) input [0:0]pcie_refclk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie_refclk CLK_P" *) input [0:0]pcie_refclk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp0_clk CLK_N" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp0_clk, CAN_DEBUG false, FREQ_HZ 322265625" *) input qsfp0_clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp0_clk CLK_P" *) input qsfp0_clk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_gt GRX_N" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp0_gt, CAN_DEBUG false" *) input [3:0]qsfp0_gt_grx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_gt GRX_P" *) input [3:0]qsfp0_gt_grx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_gt GTX_N" *) output [3:0]qsfp0_gt_gtx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_gt GTX_P" *) output [3:0]qsfp0_gt_gtx_p;
  output [0:0]qsfp0_up;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp1_clk CLK_N" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp1_clk, CAN_DEBUG false, FREQ_HZ 322265625" *) input qsfp1_clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp1_clk CLK_P" *) input qsfp1_clk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_gt GRX_N" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp1_gt, CAN_DEBUG false" *) input [3:0]qsfp1_gt_grx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_gt GRX_P" *) input [3:0]qsfp1_gt_grx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_gt GTX_N" *) output [3:0]qsfp1_gt_gtx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_gt GTX_P" *) output [3:0]qsfp1_gt_gtx_p;
  output [0:0]qsfp1_up;
  output [1:0]qsfp_lp;
  output [1:0]qsfp_rst_l;
  output rs0;
  output rs256;

  wire [7:0]AXI_CLOCK_CTL_1_ARADDR;
  wire [2:0]AXI_CLOCK_CTL_1_ARPROT;
  wire AXI_CLOCK_CTL_1_ARREADY;
  wire AXI_CLOCK_CTL_1_ARVALID;
  wire [7:0]AXI_CLOCK_CTL_1_AWADDR;
  wire [2:0]AXI_CLOCK_CTL_1_AWPROT;
  wire AXI_CLOCK_CTL_1_AWREADY;
  wire AXI_CLOCK_CTL_1_AWVALID;
  wire AXI_CLOCK_CTL_1_BREADY;
  wire [1:0]AXI_CLOCK_CTL_1_BRESP;
  wire AXI_CLOCK_CTL_1_BVALID;
  wire [31:0]AXI_CLOCK_CTL_1_RDATA;
  wire AXI_CLOCK_CTL_1_RREADY;
  wire [1:0]AXI_CLOCK_CTL_1_RRESP;
  wire AXI_CLOCK_CTL_1_RVALID;
  wire [31:0]AXI_CLOCK_CTL_1_WDATA;
  wire AXI_CLOCK_CTL_1_WREADY;
  wire [3:0]AXI_CLOCK_CTL_1_WSTRB;
  wire AXI_CLOCK_CTL_1_WVALID;
  wire CHIP_HSI_CLK;
  wire CHIP_HSI_CMD;
  wire [31:0]CHIP_HSI_DATA;
  wire CHIP_HSI_VALID;
  wire CHIP_PA_SYNC;
  wire CHIP_RESET_N;
  wire CHIP_SPI_CLK;
  wire CHIP_SPI_CSN;
  wire CHIP_SPI_MISO;
  wire CHIP_SPI_MOSI;
  wire CHIP_VDD;
  wire CHIP_VDDA;
  wire CHIP_VDDIO;
  wire CHIP_VDDLVDS;
  wire [0:0]GPIO15;
  wire [0:0]GPIO15_DIR;
  wire LVDS_BANKA_clk_n;
  wire LVDS_BANKA_clk_p;
  wire LVDS_BANKB_clk_n;
  wire LVDS_BANKB_clk_p;
  wire LVDS_BANKC_clk_n;
  wire LVDS_BANKC_clk_p;
  wire [0:0]LVDS_CLK_clk_n;
  wire [0:0]LVDS_CLK_clk_p;
  wire [63:0]LVDS_DN;
  wire [63:0]LVDS_DP;
  wire LVL_TRSL_OE_N;
  wire [7:0]S_AXI_1_ARADDR;
  wire [2:0]S_AXI_1_ARPROT;
  wire S_AXI_1_ARREADY;
  wire S_AXI_1_ARVALID;
  wire [7:0]S_AXI_1_AWADDR;
  wire [2:0]S_AXI_1_AWPROT;
  wire S_AXI_1_AWREADY;
  wire S_AXI_1_AWVALID;
  wire S_AXI_1_BREADY;
  wire [1:0]S_AXI_1_BRESP;
  wire S_AXI_1_BVALID;
  wire [31:0]S_AXI_1_RDATA;
  wire S_AXI_1_RREADY;
  wire [1:0]S_AXI_1_RRESP;
  wire S_AXI_1_RVALID;
  wire [31:0]S_AXI_1_WDATA;
  wire S_AXI_1_WREADY;
  wire [3:0]S_AXI_1_WSTRB;
  wire S_AXI_1_WVALID;
  wire [7:0]S_AXI_2_ARADDR;
  wire [2:0]S_AXI_2_ARPROT;
  wire S_AXI_2_ARREADY;
  wire S_AXI_2_ARVALID;
  wire [7:0]S_AXI_2_AWADDR;
  wire [2:0]S_AXI_2_AWPROT;
  wire S_AXI_2_AWREADY;
  wire S_AXI_2_AWVALID;
  wire S_AXI_2_BREADY;
  wire [1:0]S_AXI_2_BRESP;
  wire S_AXI_2_BVALID;
  wire [31:0]S_AXI_2_RDATA;
  wire S_AXI_2_RREADY;
  wire [1:0]S_AXI_2_RRESP;
  wire S_AXI_2_RVALID;
  wire [31:0]S_AXI_2_WDATA;
  wire S_AXI_2_WREADY;
  wire [3:0]S_AXI_2_WSTRB;
  wire S_AXI_2_WVALID;
  wire [7:0]S_AXI_CTL_1_ARADDR;
  wire [2:0]S_AXI_CTL_1_ARPROT;
  wire S_AXI_CTL_1_ARREADY;
  wire S_AXI_CTL_1_ARVALID;
  wire [7:0]S_AXI_CTL_1_AWADDR;
  wire [2:0]S_AXI_CTL_1_AWPROT;
  wire S_AXI_CTL_1_AWREADY;
  wire S_AXI_CTL_1_AWVALID;
  wire S_AXI_CTL_1_BREADY;
  wire [1:0]S_AXI_CTL_1_BRESP;
  wire S_AXI_CTL_1_BVALID;
  wire [31:0]S_AXI_CTL_1_RDATA;
  wire S_AXI_CTL_1_RREADY;
  wire [1:0]S_AXI_CTL_1_RRESP;
  wire S_AXI_CTL_1_RVALID;
  wire [31:0]S_AXI_CTL_1_WDATA;
  wire S_AXI_CTL_1_WREADY;
  wire [3:0]S_AXI_CTL_1_WSTRB;
  wire S_AXI_CTL_1_WVALID;
  wire [7:0]S_AXI_CTL_2_ARADDR;
  wire [2:0]S_AXI_CTL_2_ARPROT;
  wire S_AXI_CTL_2_ARREADY;
  wire S_AXI_CTL_2_ARVALID;
  wire [7:0]S_AXI_CTL_2_AWADDR;
  wire [2:0]S_AXI_CTL_2_AWPROT;
  wire S_AXI_CTL_2_AWREADY;
  wire S_AXI_CTL_2_AWVALID;
  wire S_AXI_CTL_2_BREADY;
  wire [1:0]S_AXI_CTL_2_BRESP;
  wire S_AXI_CTL_2_BVALID;
  wire [31:0]S_AXI_CTL_2_RDATA;
  wire S_AXI_CTL_2_RREADY;
  wire [1:0]S_AXI_CTL_2_RRESP;
  wire S_AXI_CTL_2_RVALID;
  wire [31:0]S_AXI_CTL_2_WDATA;
  wire S_AXI_CTL_2_WREADY;
  wire [3:0]S_AXI_CTL_2_WSTRB;
  wire S_AXI_CTL_2_WVALID;
  wire [7:0]S_AXI_SENSOR_EMU_1_ARADDR;
  wire [2:0]S_AXI_SENSOR_EMU_1_ARPROT;
  wire S_AXI_SENSOR_EMU_1_ARREADY;
  wire S_AXI_SENSOR_EMU_1_ARVALID;
  wire [7:0]S_AXI_SENSOR_EMU_1_AWADDR;
  wire [2:0]S_AXI_SENSOR_EMU_1_AWPROT;
  wire S_AXI_SENSOR_EMU_1_AWREADY;
  wire S_AXI_SENSOR_EMU_1_AWVALID;
  wire S_AXI_SENSOR_EMU_1_BREADY;
  wire [1:0]S_AXI_SENSOR_EMU_1_BRESP;
  wire S_AXI_SENSOR_EMU_1_BVALID;
  wire [31:0]S_AXI_SENSOR_EMU_1_RDATA;
  wire S_AXI_SENSOR_EMU_1_RREADY;
  wire [1:0]S_AXI_SENSOR_EMU_1_RRESP;
  wire S_AXI_SENSOR_EMU_1_RVALID;
  wire [31:0]S_AXI_SENSOR_EMU_1_WDATA;
  wire S_AXI_SENSOR_EMU_1_WREADY;
  wire [3:0]S_AXI_SENSOR_EMU_1_WSTRB;
  wire S_AXI_SENSOR_EMU_1_WVALID;
  wire [2:0]UCI_ADC_CSN;
  wire UCI_ADC_MISO;
  wire UCI_ADC_MOSI;
  wire UCI_ADC_SCK;
  wire [0:0]allow_writes_to_smem_dout1;
  wire [63:0]channel_0_M_AXI_ARADDR;
  wire [1:0]channel_0_M_AXI_ARBURST;
  wire [3:0]channel_0_M_AXI_ARCACHE;
  wire [3:0]channel_0_M_AXI_ARID;
  wire [7:0]channel_0_M_AXI_ARLEN;
  wire channel_0_M_AXI_ARLOCK;
  wire [2:0]channel_0_M_AXI_ARPROT;
  wire [3:0]channel_0_M_AXI_ARQOS;
  wire channel_0_M_AXI_ARREADY;
  wire channel_0_M_AXI_ARVALID;
  wire [63:0]channel_0_M_AXI_AWADDR;
  wire [1:0]channel_0_M_AXI_AWBURST;
  wire [3:0]channel_0_M_AXI_AWCACHE;
  wire [3:0]channel_0_M_AXI_AWID;
  wire [7:0]channel_0_M_AXI_AWLEN;
  wire channel_0_M_AXI_AWLOCK;
  wire [2:0]channel_0_M_AXI_AWPROT;
  wire [3:0]channel_0_M_AXI_AWQOS;
  wire channel_0_M_AXI_AWREADY;
  wire [2:0]channel_0_M_AXI_AWSIZE;
  wire channel_0_M_AXI_AWVALID;
  wire channel_0_M_AXI_BREADY;
  wire [1:0]channel_0_M_AXI_BRESP;
  wire channel_0_M_AXI_BVALID;
  wire [511:0]channel_0_M_AXI_RDATA;
  wire channel_0_M_AXI_RLAST;
  wire channel_0_M_AXI_RREADY;
  wire [1:0]channel_0_M_AXI_RRESP;
  wire channel_0_M_AXI_RVALID;
  wire [511:0]channel_0_M_AXI_WDATA;
  wire channel_0_M_AXI_WLAST;
  wire channel_0_M_AXI_WREADY;
  wire [63:0]channel_0_M_AXI_WSTRB;
  wire channel_0_M_AXI_WVALID;
  wire [63:0]channel_1_M_AXI_ARADDR;
  wire [1:0]channel_1_M_AXI_ARBURST;
  wire [3:0]channel_1_M_AXI_ARCACHE;
  wire [3:0]channel_1_M_AXI_ARID;
  wire [7:0]channel_1_M_AXI_ARLEN;
  wire channel_1_M_AXI_ARLOCK;
  wire [2:0]channel_1_M_AXI_ARPROT;
  wire [3:0]channel_1_M_AXI_ARQOS;
  wire channel_1_M_AXI_ARREADY;
  wire channel_1_M_AXI_ARVALID;
  wire [63:0]channel_1_M_AXI_AWADDR;
  wire [1:0]channel_1_M_AXI_AWBURST;
  wire [3:0]channel_1_M_AXI_AWCACHE;
  wire [3:0]channel_1_M_AXI_AWID;
  wire [7:0]channel_1_M_AXI_AWLEN;
  wire channel_1_M_AXI_AWLOCK;
  wire [2:0]channel_1_M_AXI_AWPROT;
  wire [3:0]channel_1_M_AXI_AWQOS;
  wire channel_1_M_AXI_AWREADY;
  wire [2:0]channel_1_M_AXI_AWSIZE;
  wire channel_1_M_AXI_AWVALID;
  wire channel_1_M_AXI_BREADY;
  wire [1:0]channel_1_M_AXI_BRESP;
  wire channel_1_M_AXI_BVALID;
  wire [511:0]channel_1_M_AXI_RDATA;
  wire channel_1_M_AXI_RLAST;
  wire channel_1_M_AXI_RREADY;
  wire [1:0]channel_1_M_AXI_RRESP;
  wire channel_1_M_AXI_RVALID;
  wire [511:0]channel_1_M_AXI_WDATA;
  wire channel_1_M_AXI_WLAST;
  wire channel_1_M_AXI_WREADY;
  wire [63:0]channel_1_M_AXI_WSTRB;
  wire channel_1_M_AXI_WVALID;
  wire clk_192_resetn_192;
  wire clk_wiz_clk192;
  wire cmac_cmac0_clk;
  wire cmac_cmac1_clk;
  wire [511:0]indy_lvds_0_axis_out_TDATA;
  wire indy_lvds_0_axis_out_TREADY;
  wire indy_lvds_0_axis_out_TVALID;
  wire indy_lvds_pa_sync_out;
  wire init_clk_clk_n;
  wire init_clk_clk_p;
  wire pcie_bridge_0_axi_aclk;
  wire pcie_bridge_0_axi_aresetn;
  wire [63:0]pcie_bridge_M_AXI_B_ARADDR;
  wire [1:0]pcie_bridge_M_AXI_B_ARBURST;
  wire [3:0]pcie_bridge_M_AXI_B_ARCACHE;
  wire [3:0]pcie_bridge_M_AXI_B_ARID;
  wire [7:0]pcie_bridge_M_AXI_B_ARLEN;
  wire [0:0]pcie_bridge_M_AXI_B_ARLOCK;
  wire [2:0]pcie_bridge_M_AXI_B_ARPROT;
  wire pcie_bridge_M_AXI_B_ARREADY;
  wire [2:0]pcie_bridge_M_AXI_B_ARSIZE;
  wire pcie_bridge_M_AXI_B_ARVALID;
  wire [63:0]pcie_bridge_M_AXI_B_AWADDR;
  wire [1:0]pcie_bridge_M_AXI_B_AWBURST;
  wire [3:0]pcie_bridge_M_AXI_B_AWCACHE;
  wire [3:0]pcie_bridge_M_AXI_B_AWID;
  wire [7:0]pcie_bridge_M_AXI_B_AWLEN;
  wire [0:0]pcie_bridge_M_AXI_B_AWLOCK;
  wire [2:0]pcie_bridge_M_AXI_B_AWPROT;
  wire pcie_bridge_M_AXI_B_AWREADY;
  wire [2:0]pcie_bridge_M_AXI_B_AWSIZE;
  wire pcie_bridge_M_AXI_B_AWVALID;
  wire [3:0]pcie_bridge_M_AXI_B_BID;
  wire pcie_bridge_M_AXI_B_BREADY;
  wire [1:0]pcie_bridge_M_AXI_B_BRESP;
  wire pcie_bridge_M_AXI_B_BVALID;
  wire [511:0]pcie_bridge_M_AXI_B_RDATA;
  wire [3:0]pcie_bridge_M_AXI_B_RID;
  wire pcie_bridge_M_AXI_B_RLAST;
  wire pcie_bridge_M_AXI_B_RREADY;
  wire [1:0]pcie_bridge_M_AXI_B_RRESP;
  wire pcie_bridge_M_AXI_B_RVALID;
  wire [511:0]pcie_bridge_M_AXI_B_WDATA;
  wire pcie_bridge_M_AXI_B_WLAST;
  wire pcie_bridge_M_AXI_B_WREADY;
  wire [63:0]pcie_bridge_M_AXI_B_WSTRB;
  wire pcie_bridge_M_AXI_B_WVALID;
  wire [15:0]pcie_mgt_rxn;
  wire [15:0]pcie_mgt_rxp;
  wire [15:0]pcie_mgt_txn;
  wire [15:0]pcie_mgt_txp;
  wire [0:0]pcie_refclk_clk_n;
  wire [0:0]pcie_refclk_clk_p;
  wire qsfp0_clk_clk_n;
  wire qsfp0_clk_clk_p;
  wire [3:0]qsfp0_gt_grx_n;
  wire [3:0]qsfp0_gt_grx_p;
  wire [3:0]qsfp0_gt_gtx_n;
  wire [3:0]qsfp0_gt_gtx_p;
  wire [0:0]qsfp0_up;
  wire qsfp1_clk_clk_n;
  wire qsfp1_clk_clk_p;
  wire [3:0]qsfp1_gt_grx_n;
  wire [3:0]qsfp1_gt_grx_p;
  wire [3:0]qsfp1_gt_gtx_n;
  wire [3:0]qsfp1_gt_gtx_p;
  wire [0:0]qsfp1_up;
  wire [1:0]qsfp_lp;
  wire [1:0]qsfp_rst_l;
  wire rs0;
  wire rs256;
  wire [7:0]smartconnect_M00_AXI_ARADDR;
  wire [2:0]smartconnect_M00_AXI_ARPROT;
  wire smartconnect_M00_AXI_ARREADY;
  wire smartconnect_M00_AXI_ARVALID;
  wire [7:0]smartconnect_M00_AXI_AWADDR;
  wire [2:0]smartconnect_M00_AXI_AWPROT;
  wire smartconnect_M00_AXI_AWREADY;
  wire smartconnect_M00_AXI_AWVALID;
  wire smartconnect_M00_AXI_BREADY;
  wire [1:0]smartconnect_M00_AXI_BRESP;
  wire smartconnect_M00_AXI_BVALID;
  wire [31:0]smartconnect_M00_AXI_RDATA;
  wire smartconnect_M00_AXI_RREADY;
  wire [1:0]smartconnect_M00_AXI_RRESP;
  wire smartconnect_M00_AXI_RVALID;
  wire [31:0]smartconnect_M00_AXI_WDATA;
  wire smartconnect_M00_AXI_WREADY;
  wire [3:0]smartconnect_M00_AXI_WSTRB;
  wire smartconnect_M00_AXI_WVALID;
  wire [7:0]smartconnect_M03_AXI_ARADDR;
  wire [2:0]smartconnect_M03_AXI_ARPROT;
  wire smartconnect_M03_AXI_ARREADY;
  wire smartconnect_M03_AXI_ARVALID;
  wire [7:0]smartconnect_M03_AXI_AWADDR;
  wire [2:0]smartconnect_M03_AXI_AWPROT;
  wire smartconnect_M03_AXI_AWREADY;
  wire smartconnect_M03_AXI_AWVALID;
  wire smartconnect_M03_AXI_BREADY;
  wire [1:0]smartconnect_M03_AXI_BRESP;
  wire smartconnect_M03_AXI_BVALID;
  wire [31:0]smartconnect_M03_AXI_RDATA;
  wire smartconnect_M03_AXI_RREADY;
  wire [1:0]smartconnect_M03_AXI_RRESP;
  wire smartconnect_M03_AXI_RVALID;
  wire [31:0]smartconnect_M03_AXI_WDATA;
  wire smartconnect_M03_AXI_WREADY;
  wire [3:0]smartconnect_M03_AXI_WSTRB;
  wire smartconnect_M03_AXI_WVALID;
  wire [63:0]smem_manager_S_AXI_RAM0_PCI_ARADDR;
  wire [1:0]smem_manager_S_AXI_RAM0_PCI_ARBURST;
  wire [3:0]smem_manager_S_AXI_RAM0_PCI_ARCACHE;
  wire [3:0]smem_manager_S_AXI_RAM0_PCI_ARID;
  wire [7:0]smem_manager_S_AXI_RAM0_PCI_ARLEN;
  wire smem_manager_S_AXI_RAM0_PCI_ARLOCK;
  wire [2:0]smem_manager_S_AXI_RAM0_PCI_ARPROT;
  wire [3:0]smem_manager_S_AXI_RAM0_PCI_ARQOS;
  wire smem_manager_S_AXI_RAM0_PCI_ARREADY;
  wire [2:0]smem_manager_S_AXI_RAM0_PCI_ARSIZE;
  wire smem_manager_S_AXI_RAM0_PCI_ARVALID;
  wire [63:0]smem_manager_S_AXI_RAM0_PCI_AWADDR;
  wire [1:0]smem_manager_S_AXI_RAM0_PCI_AWBURST;
  wire [3:0]smem_manager_S_AXI_RAM0_PCI_AWCACHE;
  wire [3:0]smem_manager_S_AXI_RAM0_PCI_AWID;
  wire [7:0]smem_manager_S_AXI_RAM0_PCI_AWLEN;
  wire smem_manager_S_AXI_RAM0_PCI_AWLOCK;
  wire [2:0]smem_manager_S_AXI_RAM0_PCI_AWPROT;
  wire [3:0]smem_manager_S_AXI_RAM0_PCI_AWQOS;
  wire smem_manager_S_AXI_RAM0_PCI_AWREADY;
  wire [2:0]smem_manager_S_AXI_RAM0_PCI_AWSIZE;
  wire smem_manager_S_AXI_RAM0_PCI_AWVALID;
  wire smem_manager_S_AXI_RAM0_PCI_BREADY;
  wire [1:0]smem_manager_S_AXI_RAM0_PCI_BRESP;
  wire smem_manager_S_AXI_RAM0_PCI_BVALID;
  wire [511:0]smem_manager_S_AXI_RAM0_PCI_RDATA;
  wire smem_manager_S_AXI_RAM0_PCI_RLAST;
  wire smem_manager_S_AXI_RAM0_PCI_RREADY;
  wire [1:0]smem_manager_S_AXI_RAM0_PCI_RRESP;
  wire smem_manager_S_AXI_RAM0_PCI_RVALID;
  wire [511:0]smem_manager_S_AXI_RAM0_PCI_WDATA;
  wire smem_manager_S_AXI_RAM0_PCI_WLAST;
  wire smem_manager_S_AXI_RAM0_PCI_WREADY;
  wire [63:0]smem_manager_S_AXI_RAM0_PCI_WSTRB;
  wire smem_manager_S_AXI_RAM0_PCI_WVALID;
  wire [63:0]smem_manager_S_AXI_RAM1_PCI_ARADDR;
  wire [1:0]smem_manager_S_AXI_RAM1_PCI_ARBURST;
  wire [3:0]smem_manager_S_AXI_RAM1_PCI_ARCACHE;
  wire [3:0]smem_manager_S_AXI_RAM1_PCI_ARID;
  wire [7:0]smem_manager_S_AXI_RAM1_PCI_ARLEN;
  wire smem_manager_S_AXI_RAM1_PCI_ARLOCK;
  wire [2:0]smem_manager_S_AXI_RAM1_PCI_ARPROT;
  wire [3:0]smem_manager_S_AXI_RAM1_PCI_ARQOS;
  wire smem_manager_S_AXI_RAM1_PCI_ARREADY;
  wire [2:0]smem_manager_S_AXI_RAM1_PCI_ARSIZE;
  wire smem_manager_S_AXI_RAM1_PCI_ARVALID;
  wire [63:0]smem_manager_S_AXI_RAM1_PCI_AWADDR;
  wire [1:0]smem_manager_S_AXI_RAM1_PCI_AWBURST;
  wire [3:0]smem_manager_S_AXI_RAM1_PCI_AWCACHE;
  wire [3:0]smem_manager_S_AXI_RAM1_PCI_AWID;
  wire [7:0]smem_manager_S_AXI_RAM1_PCI_AWLEN;
  wire smem_manager_S_AXI_RAM1_PCI_AWLOCK;
  wire [2:0]smem_manager_S_AXI_RAM1_PCI_AWPROT;
  wire [3:0]smem_manager_S_AXI_RAM1_PCI_AWQOS;
  wire smem_manager_S_AXI_RAM1_PCI_AWREADY;
  wire [2:0]smem_manager_S_AXI_RAM1_PCI_AWSIZE;
  wire smem_manager_S_AXI_RAM1_PCI_AWVALID;
  wire smem_manager_S_AXI_RAM1_PCI_BREADY;
  wire [1:0]smem_manager_S_AXI_RAM1_PCI_BRESP;
  wire smem_manager_S_AXI_RAM1_PCI_BVALID;
  wire [511:0]smem_manager_S_AXI_RAM1_PCI_RDATA;
  wire smem_manager_S_AXI_RAM1_PCI_RLAST;
  wire smem_manager_S_AXI_RAM1_PCI_RREADY;
  wire [1:0]smem_manager_S_AXI_RAM1_PCI_RRESP;
  wire smem_manager_S_AXI_RAM1_PCI_RVALID;
  wire [511:0]smem_manager_S_AXI_RAM1_PCI_WDATA;
  wire smem_manager_S_AXI_RAM1_PCI_WLAST;
  wire smem_manager_S_AXI_RAM1_PCI_WREADY;
  wire [63:0]smem_manager_S_AXI_RAM1_PCI_WSTRB;
  wire smem_manager_S_AXI_RAM1_PCI_WVALID;
  wire [511:0]tx0_in_1_TDATA;
  wire [63:0]tx0_in_1_TKEEP;
  wire tx0_in_1_TLAST;
  wire tx0_in_1_TREADY;
  wire tx0_in_1_TVALID;
  wire [511:0]tx1_in_1_TDATA;
  wire [63:0]tx1_in_1_TKEEP;
  wire tx1_in_1_TLAST;
  wire tx1_in_1_TREADY;
  wire tx1_in_1_TVALID;

  assign GPIO13[0] = GPIO15;
  assign GPIO_BYTE_DIR[0] = GPIO15;
  abm_and_smem_inst_0 abm_and_smem
       (.AXI_CLOCK_CTL_araddr(AXI_CLOCK_CTL_1_ARADDR),
        .AXI_CLOCK_CTL_arprot(AXI_CLOCK_CTL_1_ARPROT),
        .AXI_CLOCK_CTL_arready(AXI_CLOCK_CTL_1_ARREADY),
        .AXI_CLOCK_CTL_arvalid(AXI_CLOCK_CTL_1_ARVALID),
        .AXI_CLOCK_CTL_awaddr(AXI_CLOCK_CTL_1_AWADDR),
        .AXI_CLOCK_CTL_awprot(AXI_CLOCK_CTL_1_AWPROT),
        .AXI_CLOCK_CTL_awready(AXI_CLOCK_CTL_1_AWREADY),
        .AXI_CLOCK_CTL_awvalid(AXI_CLOCK_CTL_1_AWVALID),
        .AXI_CLOCK_CTL_bready(AXI_CLOCK_CTL_1_BREADY),
        .AXI_CLOCK_CTL_bresp(AXI_CLOCK_CTL_1_BRESP),
        .AXI_CLOCK_CTL_bvalid(AXI_CLOCK_CTL_1_BVALID),
        .AXI_CLOCK_CTL_rdata(AXI_CLOCK_CTL_1_RDATA),
        .AXI_CLOCK_CTL_rready(AXI_CLOCK_CTL_1_RREADY),
        .AXI_CLOCK_CTL_rresp(AXI_CLOCK_CTL_1_RRESP),
        .AXI_CLOCK_CTL_rvalid(AXI_CLOCK_CTL_1_RVALID),
        .AXI_CLOCK_CTL_wdata(AXI_CLOCK_CTL_1_WDATA),
        .AXI_CLOCK_CTL_wready(AXI_CLOCK_CTL_1_WREADY),
        .AXI_CLOCK_CTL_wstrb(AXI_CLOCK_CTL_1_WSTRB),
        .AXI_CLOCK_CTL_wvalid(AXI_CLOCK_CTL_1_WVALID),
        .S_AXI_CTL_araddr(S_AXI_CTL_1_ARADDR),
        .S_AXI_CTL_arprot(S_AXI_CTL_1_ARPROT),
        .S_AXI_CTL_arready(S_AXI_CTL_1_ARREADY),
        .S_AXI_CTL_arvalid(S_AXI_CTL_1_ARVALID),
        .S_AXI_CTL_awaddr(S_AXI_CTL_1_AWADDR),
        .S_AXI_CTL_awprot(S_AXI_CTL_1_AWPROT),
        .S_AXI_CTL_awready(S_AXI_CTL_1_AWREADY),
        .S_AXI_CTL_awvalid(S_AXI_CTL_1_AWVALID),
        .S_AXI_CTL_bready(S_AXI_CTL_1_BREADY),
        .S_AXI_CTL_bresp(S_AXI_CTL_1_BRESP),
        .S_AXI_CTL_bvalid(S_AXI_CTL_1_BVALID),
        .S_AXI_CTL_rdata(S_AXI_CTL_1_RDATA),
        .S_AXI_CTL_rready(S_AXI_CTL_1_RREADY),
        .S_AXI_CTL_rresp(S_AXI_CTL_1_RRESP),
        .S_AXI_CTL_rvalid(S_AXI_CTL_1_RVALID),
        .S_AXI_CTL_wdata(S_AXI_CTL_1_WDATA),
        .S_AXI_CTL_wready(S_AXI_CTL_1_WREADY),
        .S_AXI_CTL_wstrb(S_AXI_CTL_1_WSTRB),
        .S_AXI_CTL_wvalid(S_AXI_CTL_1_WVALID),
        .S_AXI_RAM0_ETH_araddr(channel_0_M_AXI_ARADDR),
        .S_AXI_RAM0_ETH_arburst(channel_0_M_AXI_ARBURST),
        .S_AXI_RAM0_ETH_arcache(channel_0_M_AXI_ARCACHE),
        .S_AXI_RAM0_ETH_arid(channel_0_M_AXI_ARID),
        .S_AXI_RAM0_ETH_arlen(channel_0_M_AXI_ARLEN),
        .S_AXI_RAM0_ETH_arlock(channel_0_M_AXI_ARLOCK),
        .S_AXI_RAM0_ETH_arprot(channel_0_M_AXI_ARPROT),
        .S_AXI_RAM0_ETH_arqos(channel_0_M_AXI_ARQOS),
        .S_AXI_RAM0_ETH_arready(channel_0_M_AXI_ARREADY),
        .S_AXI_RAM0_ETH_arvalid(channel_0_M_AXI_ARVALID),
        .S_AXI_RAM0_ETH_awaddr(channel_0_M_AXI_AWADDR),
        .S_AXI_RAM0_ETH_awburst(channel_0_M_AXI_AWBURST),
        .S_AXI_RAM0_ETH_awcache(channel_0_M_AXI_AWCACHE),
        .S_AXI_RAM0_ETH_awid(channel_0_M_AXI_AWID),
        .S_AXI_RAM0_ETH_awlen(channel_0_M_AXI_AWLEN),
        .S_AXI_RAM0_ETH_awlock(channel_0_M_AXI_AWLOCK),
        .S_AXI_RAM0_ETH_awprot(channel_0_M_AXI_AWPROT),
        .S_AXI_RAM0_ETH_awqos(channel_0_M_AXI_AWQOS),
        .S_AXI_RAM0_ETH_awready(channel_0_M_AXI_AWREADY),
        .S_AXI_RAM0_ETH_awsize(channel_0_M_AXI_AWSIZE),
        .S_AXI_RAM0_ETH_awvalid(channel_0_M_AXI_AWVALID),
        .S_AXI_RAM0_ETH_bready(channel_0_M_AXI_BREADY),
        .S_AXI_RAM0_ETH_bresp(channel_0_M_AXI_BRESP),
        .S_AXI_RAM0_ETH_bvalid(channel_0_M_AXI_BVALID),
        .S_AXI_RAM0_ETH_rdata(channel_0_M_AXI_RDATA),
        .S_AXI_RAM0_ETH_rlast(channel_0_M_AXI_RLAST),
        .S_AXI_RAM0_ETH_rready(channel_0_M_AXI_RREADY),
        .S_AXI_RAM0_ETH_rresp(channel_0_M_AXI_RRESP),
        .S_AXI_RAM0_ETH_rvalid(channel_0_M_AXI_RVALID),
        .S_AXI_RAM0_ETH_wdata(channel_0_M_AXI_WDATA),
        .S_AXI_RAM0_ETH_wlast(channel_0_M_AXI_WLAST),
        .S_AXI_RAM0_ETH_wready(channel_0_M_AXI_WREADY),
        .S_AXI_RAM0_ETH_wstrb(channel_0_M_AXI_WSTRB),
        .S_AXI_RAM0_ETH_wvalid(channel_0_M_AXI_WVALID),
        .S_AXI_RAM0_PCI_araddr(smem_manager_S_AXI_RAM0_PCI_ARADDR),
        .S_AXI_RAM0_PCI_arburst(smem_manager_S_AXI_RAM0_PCI_ARBURST),
        .S_AXI_RAM0_PCI_arcache(smem_manager_S_AXI_RAM0_PCI_ARCACHE),
        .S_AXI_RAM0_PCI_arid(smem_manager_S_AXI_RAM0_PCI_ARID),
        .S_AXI_RAM0_PCI_arlen(smem_manager_S_AXI_RAM0_PCI_ARLEN),
        .S_AXI_RAM0_PCI_arlock(smem_manager_S_AXI_RAM0_PCI_ARLOCK),
        .S_AXI_RAM0_PCI_arprot(smem_manager_S_AXI_RAM0_PCI_ARPROT),
        .S_AXI_RAM0_PCI_arqos(smem_manager_S_AXI_RAM0_PCI_ARQOS),
        .S_AXI_RAM0_PCI_arready(smem_manager_S_AXI_RAM0_PCI_ARREADY),
        .S_AXI_RAM0_PCI_arsize(smem_manager_S_AXI_RAM0_PCI_ARSIZE),
        .S_AXI_RAM0_PCI_arvalid(smem_manager_S_AXI_RAM0_PCI_ARVALID),
        .S_AXI_RAM0_PCI_awaddr(smem_manager_S_AXI_RAM0_PCI_AWADDR),
        .S_AXI_RAM0_PCI_awburst(smem_manager_S_AXI_RAM0_PCI_AWBURST),
        .S_AXI_RAM0_PCI_awcache(smem_manager_S_AXI_RAM0_PCI_AWCACHE),
        .S_AXI_RAM0_PCI_awid(smem_manager_S_AXI_RAM0_PCI_AWID),
        .S_AXI_RAM0_PCI_awlen(smem_manager_S_AXI_RAM0_PCI_AWLEN),
        .S_AXI_RAM0_PCI_awlock(smem_manager_S_AXI_RAM0_PCI_AWLOCK),
        .S_AXI_RAM0_PCI_awprot(smem_manager_S_AXI_RAM0_PCI_AWPROT),
        .S_AXI_RAM0_PCI_awqos(smem_manager_S_AXI_RAM0_PCI_AWQOS),
        .S_AXI_RAM0_PCI_awready(smem_manager_S_AXI_RAM0_PCI_AWREADY),
        .S_AXI_RAM0_PCI_awsize(smem_manager_S_AXI_RAM0_PCI_AWSIZE),
        .S_AXI_RAM0_PCI_awvalid(smem_manager_S_AXI_RAM0_PCI_AWVALID),
        .S_AXI_RAM0_PCI_bready(smem_manager_S_AXI_RAM0_PCI_BREADY),
        .S_AXI_RAM0_PCI_bresp(smem_manager_S_AXI_RAM0_PCI_BRESP),
        .S_AXI_RAM0_PCI_bvalid(smem_manager_S_AXI_RAM0_PCI_BVALID),
        .S_AXI_RAM0_PCI_rdata(smem_manager_S_AXI_RAM0_PCI_RDATA),
        .S_AXI_RAM0_PCI_rlast(smem_manager_S_AXI_RAM0_PCI_RLAST),
        .S_AXI_RAM0_PCI_rready(smem_manager_S_AXI_RAM0_PCI_RREADY),
        .S_AXI_RAM0_PCI_rresp(smem_manager_S_AXI_RAM0_PCI_RRESP),
        .S_AXI_RAM0_PCI_rvalid(smem_manager_S_AXI_RAM0_PCI_RVALID),
        .S_AXI_RAM0_PCI_wdata(smem_manager_S_AXI_RAM0_PCI_WDATA),
        .S_AXI_RAM0_PCI_wlast(smem_manager_S_AXI_RAM0_PCI_WLAST),
        .S_AXI_RAM0_PCI_wready(smem_manager_S_AXI_RAM0_PCI_WREADY),
        .S_AXI_RAM0_PCI_wstrb(smem_manager_S_AXI_RAM0_PCI_WSTRB),
        .S_AXI_RAM0_PCI_wvalid(smem_manager_S_AXI_RAM0_PCI_WVALID),
        .S_AXI_RAM1_ETH_araddr(channel_1_M_AXI_ARADDR),
        .S_AXI_RAM1_ETH_arburst(channel_1_M_AXI_ARBURST),
        .S_AXI_RAM1_ETH_arcache(channel_1_M_AXI_ARCACHE),
        .S_AXI_RAM1_ETH_arid(channel_1_M_AXI_ARID),
        .S_AXI_RAM1_ETH_arlen(channel_1_M_AXI_ARLEN),
        .S_AXI_RAM1_ETH_arlock(channel_1_M_AXI_ARLOCK),
        .S_AXI_RAM1_ETH_arprot(channel_1_M_AXI_ARPROT),
        .S_AXI_RAM1_ETH_arqos(channel_1_M_AXI_ARQOS),
        .S_AXI_RAM1_ETH_arready(channel_1_M_AXI_ARREADY),
        .S_AXI_RAM1_ETH_arvalid(channel_1_M_AXI_ARVALID),
        .S_AXI_RAM1_ETH_awaddr(channel_1_M_AXI_AWADDR),
        .S_AXI_RAM1_ETH_awburst(channel_1_M_AXI_AWBURST),
        .S_AXI_RAM1_ETH_awcache(channel_1_M_AXI_AWCACHE),
        .S_AXI_RAM1_ETH_awid(channel_1_M_AXI_AWID),
        .S_AXI_RAM1_ETH_awlen(channel_1_M_AXI_AWLEN),
        .S_AXI_RAM1_ETH_awlock(channel_1_M_AXI_AWLOCK),
        .S_AXI_RAM1_ETH_awprot(channel_1_M_AXI_AWPROT),
        .S_AXI_RAM1_ETH_awqos(channel_1_M_AXI_AWQOS),
        .S_AXI_RAM1_ETH_awready(channel_1_M_AXI_AWREADY),
        .S_AXI_RAM1_ETH_awsize(channel_1_M_AXI_AWSIZE),
        .S_AXI_RAM1_ETH_awvalid(channel_1_M_AXI_AWVALID),
        .S_AXI_RAM1_ETH_bready(channel_1_M_AXI_BREADY),
        .S_AXI_RAM1_ETH_bresp(channel_1_M_AXI_BRESP),
        .S_AXI_RAM1_ETH_bvalid(channel_1_M_AXI_BVALID),
        .S_AXI_RAM1_ETH_rdata(channel_1_M_AXI_RDATA),
        .S_AXI_RAM1_ETH_rlast(channel_1_M_AXI_RLAST),
        .S_AXI_RAM1_ETH_rready(channel_1_M_AXI_RREADY),
        .S_AXI_RAM1_ETH_rresp(channel_1_M_AXI_RRESP),
        .S_AXI_RAM1_ETH_rvalid(channel_1_M_AXI_RVALID),
        .S_AXI_RAM1_ETH_wdata(channel_1_M_AXI_WDATA),
        .S_AXI_RAM1_ETH_wlast(channel_1_M_AXI_WLAST),
        .S_AXI_RAM1_ETH_wready(channel_1_M_AXI_WREADY),
        .S_AXI_RAM1_ETH_wstrb(channel_1_M_AXI_WSTRB),
        .S_AXI_RAM1_ETH_wvalid(channel_1_M_AXI_WVALID),
        .S_AXI_RAM1_PCI_araddr(smem_manager_S_AXI_RAM1_PCI_ARADDR),
        .S_AXI_RAM1_PCI_arburst(smem_manager_S_AXI_RAM1_PCI_ARBURST),
        .S_AXI_RAM1_PCI_arcache(smem_manager_S_AXI_RAM1_PCI_ARCACHE),
        .S_AXI_RAM1_PCI_arid(smem_manager_S_AXI_RAM1_PCI_ARID),
        .S_AXI_RAM1_PCI_arlen(smem_manager_S_AXI_RAM1_PCI_ARLEN),
        .S_AXI_RAM1_PCI_arlock(smem_manager_S_AXI_RAM1_PCI_ARLOCK),
        .S_AXI_RAM1_PCI_arprot(smem_manager_S_AXI_RAM1_PCI_ARPROT),
        .S_AXI_RAM1_PCI_arqos(smem_manager_S_AXI_RAM1_PCI_ARQOS),
        .S_AXI_RAM1_PCI_arready(smem_manager_S_AXI_RAM1_PCI_ARREADY),
        .S_AXI_RAM1_PCI_arsize(smem_manager_S_AXI_RAM1_PCI_ARSIZE),
        .S_AXI_RAM1_PCI_arvalid(smem_manager_S_AXI_RAM1_PCI_ARVALID),
        .S_AXI_RAM1_PCI_awaddr(smem_manager_S_AXI_RAM1_PCI_AWADDR),
        .S_AXI_RAM1_PCI_awburst(smem_manager_S_AXI_RAM1_PCI_AWBURST),
        .S_AXI_RAM1_PCI_awcache(smem_manager_S_AXI_RAM1_PCI_AWCACHE),
        .S_AXI_RAM1_PCI_awid(smem_manager_S_AXI_RAM1_PCI_AWID),
        .S_AXI_RAM1_PCI_awlen(smem_manager_S_AXI_RAM1_PCI_AWLEN),
        .S_AXI_RAM1_PCI_awlock(smem_manager_S_AXI_RAM1_PCI_AWLOCK),
        .S_AXI_RAM1_PCI_awprot(smem_manager_S_AXI_RAM1_PCI_AWPROT),
        .S_AXI_RAM1_PCI_awqos(smem_manager_S_AXI_RAM1_PCI_AWQOS),
        .S_AXI_RAM1_PCI_awready(smem_manager_S_AXI_RAM1_PCI_AWREADY),
        .S_AXI_RAM1_PCI_awsize(smem_manager_S_AXI_RAM1_PCI_AWSIZE),
        .S_AXI_RAM1_PCI_awvalid(smem_manager_S_AXI_RAM1_PCI_AWVALID),
        .S_AXI_RAM1_PCI_bready(smem_manager_S_AXI_RAM1_PCI_BREADY),
        .S_AXI_RAM1_PCI_bresp(smem_manager_S_AXI_RAM1_PCI_BRESP),
        .S_AXI_RAM1_PCI_bvalid(smem_manager_S_AXI_RAM1_PCI_BVALID),
        .S_AXI_RAM1_PCI_rdata(smem_manager_S_AXI_RAM1_PCI_RDATA),
        .S_AXI_RAM1_PCI_rlast(smem_manager_S_AXI_RAM1_PCI_RLAST),
        .S_AXI_RAM1_PCI_rready(smem_manager_S_AXI_RAM1_PCI_RREADY),
        .S_AXI_RAM1_PCI_rresp(smem_manager_S_AXI_RAM1_PCI_RRESP),
        .S_AXI_RAM1_PCI_rvalid(smem_manager_S_AXI_RAM1_PCI_RVALID),
        .S_AXI_RAM1_PCI_wdata(smem_manager_S_AXI_RAM1_PCI_WDATA),
        .S_AXI_RAM1_PCI_wlast(smem_manager_S_AXI_RAM1_PCI_WLAST),
        .S_AXI_RAM1_PCI_wready(smem_manager_S_AXI_RAM1_PCI_WREADY),
        .S_AXI_RAM1_PCI_wstrb(smem_manager_S_AXI_RAM1_PCI_WSTRB),
        .S_AXI_RAM1_PCI_wvalid(smem_manager_S_AXI_RAM1_PCI_WVALID),
        .pin_hsi_cmd(CHIP_HSI_CMD),
        .pin_hsi_data(CHIP_HSI_DATA),
        .pin_hsi_pclk(CHIP_HSI_CLK),
        .pin_hsi_valid(CHIP_HSI_VALID),
        .pin_spi_cs_n(CHIP_SPI_CSN),
        .pin_spi_miso(CHIP_SPI_MISO),
        .pin_spi_mosi(CHIP_SPI_MOSI),
        .pin_spi_pclk(CHIP_SPI_CLK),
        .sys_clk(pcie_bridge_0_axi_aclk),
        .sys_resetn(pcie_bridge_0_axi_aresetn),
        .sys_smem_wen(allow_writes_to_smem_dout1));
  adc_bank_imp_1SLD8RV adc_bank
       (.S_AXI_CTL_araddr(S_AXI_1_ARADDR),
        .S_AXI_CTL_arprot(S_AXI_1_ARPROT),
        .S_AXI_CTL_arready(S_AXI_1_ARREADY),
        .S_AXI_CTL_arvalid(S_AXI_1_ARVALID),
        .S_AXI_CTL_awaddr(S_AXI_1_AWADDR),
        .S_AXI_CTL_awprot(S_AXI_1_AWPROT),
        .S_AXI_CTL_awready(S_AXI_1_AWREADY),
        .S_AXI_CTL_awvalid(S_AXI_1_AWVALID),
        .S_AXI_CTL_bready(S_AXI_1_BREADY),
        .S_AXI_CTL_bresp(S_AXI_1_BRESP),
        .S_AXI_CTL_bvalid(S_AXI_1_BVALID),
        .S_AXI_CTL_rdata(S_AXI_1_RDATA),
        .S_AXI_CTL_rready(S_AXI_1_RREADY),
        .S_AXI_CTL_rresp(S_AXI_1_RRESP),
        .S_AXI_CTL_rvalid(S_AXI_1_RVALID),
        .S_AXI_CTL_wdata(S_AXI_1_WDATA),
        .S_AXI_CTL_wready(S_AXI_1_WREADY),
        .S_AXI_CTL_wstrb(S_AXI_1_WSTRB),
        .S_AXI_CTL_wvalid(S_AXI_1_WVALID),
        .UCI_ADC_CSN(UCI_ADC_CSN),
        .UCI_ADC_MISO(UCI_ADC_MISO),
        .UCI_ADC_MOSI(UCI_ADC_MOSI),
        .UCI_ADC_SCK(UCI_ADC_SCK),
        .clk(pcie_bridge_0_axi_aclk),
        .resetn(pcie_bridge_0_axi_aresetn));
  assign allow_writes_to_smem_dout1 = 1'h1;
  chip_power_imp_1UD5E88 chip_power
       (.CHIP_RESET_N(CHIP_RESET_N),
        .CHIP_VDD(CHIP_VDD),
        .CHIP_VDDA(CHIP_VDDA),
        .CHIP_VDDIO(CHIP_VDDIO),
        .CHIP_VDDLVDS(CHIP_VDDLVDS),
        .LVL_TRSL_OE_N(LVL_TRSL_OE_N),
        .S_AXI_araddr(smartconnect_M03_AXI_ARADDR),
        .S_AXI_arprot(smartconnect_M03_AXI_ARPROT),
        .S_AXI_arready(smartconnect_M03_AXI_ARREADY),
        .S_AXI_arvalid(smartconnect_M03_AXI_ARVALID),
        .S_AXI_awaddr(smartconnect_M03_AXI_AWADDR),
        .S_AXI_awprot(smartconnect_M03_AXI_AWPROT),
        .S_AXI_awready(smartconnect_M03_AXI_AWREADY),
        .S_AXI_awvalid(smartconnect_M03_AXI_AWVALID),
        .S_AXI_bready(smartconnect_M03_AXI_BREADY),
        .S_AXI_bresp(smartconnect_M03_AXI_BRESP),
        .S_AXI_bvalid(smartconnect_M03_AXI_BVALID),
        .S_AXI_rdata(smartconnect_M03_AXI_RDATA),
        .S_AXI_rready(smartconnect_M03_AXI_RREADY),
        .S_AXI_rresp(smartconnect_M03_AXI_RRESP),
        .S_AXI_rvalid(smartconnect_M03_AXI_RVALID),
        .S_AXI_wdata(smartconnect_M03_AXI_WDATA),
        .S_AXI_wready(smartconnect_M03_AXI_WREADY),
        .S_AXI_wstrb(smartconnect_M03_AXI_WSTRB),
        .S_AXI_wvalid(smartconnect_M03_AXI_WVALID),
        .clk(pcie_bridge_0_axi_aclk),
        .resetn(pcie_bridge_0_axi_aresetn));
  clk_192_imp_10A48RI clk_192
       (.clk192(clk_wiz_clk192),
        .init_clk_clk_n(init_clk_clk_n),
        .init_clk_clk_p(init_clk_clk_p),
        .resetn_192(clk_192_resetn_192),
        .sys_resetn(pcie_bridge_0_axi_aresetn));
  cmac_imp_3VLRKT cmac
       (.M_AXI0_araddr(channel_0_M_AXI_ARADDR),
        .M_AXI0_arburst(channel_0_M_AXI_ARBURST),
        .M_AXI0_arcache(channel_0_M_AXI_ARCACHE),
        .M_AXI0_arid(channel_0_M_AXI_ARID),
        .M_AXI0_arlen(channel_0_M_AXI_ARLEN),
        .M_AXI0_arlock(channel_0_M_AXI_ARLOCK),
        .M_AXI0_arprot(channel_0_M_AXI_ARPROT),
        .M_AXI0_arqos(channel_0_M_AXI_ARQOS),
        .M_AXI0_arready(channel_0_M_AXI_ARREADY),
        .M_AXI0_arvalid(channel_0_M_AXI_ARVALID),
        .M_AXI0_awaddr(channel_0_M_AXI_AWADDR),
        .M_AXI0_awburst(channel_0_M_AXI_AWBURST),
        .M_AXI0_awcache(channel_0_M_AXI_AWCACHE),
        .M_AXI0_awid(channel_0_M_AXI_AWID),
        .M_AXI0_awlen(channel_0_M_AXI_AWLEN),
        .M_AXI0_awlock(channel_0_M_AXI_AWLOCK),
        .M_AXI0_awprot(channel_0_M_AXI_AWPROT),
        .M_AXI0_awqos(channel_0_M_AXI_AWQOS),
        .M_AXI0_awready(channel_0_M_AXI_AWREADY),
        .M_AXI0_awsize(channel_0_M_AXI_AWSIZE),
        .M_AXI0_awvalid(channel_0_M_AXI_AWVALID),
        .M_AXI0_bready(channel_0_M_AXI_BREADY),
        .M_AXI0_bresp(channel_0_M_AXI_BRESP),
        .M_AXI0_bvalid(channel_0_M_AXI_BVALID),
        .M_AXI0_rdata(channel_0_M_AXI_RDATA),
        .M_AXI0_rlast(channel_0_M_AXI_RLAST),
        .M_AXI0_rready(channel_0_M_AXI_RREADY),
        .M_AXI0_rresp(channel_0_M_AXI_RRESP),
        .M_AXI0_rvalid(channel_0_M_AXI_RVALID),
        .M_AXI0_wdata(channel_0_M_AXI_WDATA),
        .M_AXI0_wlast(channel_0_M_AXI_WLAST),
        .M_AXI0_wready(channel_0_M_AXI_WREADY),
        .M_AXI0_wstrb(channel_0_M_AXI_WSTRB),
        .M_AXI0_wvalid(channel_0_M_AXI_WVALID),
        .M_AXI1_araddr(channel_1_M_AXI_ARADDR),
        .M_AXI1_arburst(channel_1_M_AXI_ARBURST),
        .M_AXI1_arcache(channel_1_M_AXI_ARCACHE),
        .M_AXI1_arid(channel_1_M_AXI_ARID),
        .M_AXI1_arlen(channel_1_M_AXI_ARLEN),
        .M_AXI1_arlock(channel_1_M_AXI_ARLOCK),
        .M_AXI1_arprot(channel_1_M_AXI_ARPROT),
        .M_AXI1_arqos(channel_1_M_AXI_ARQOS),
        .M_AXI1_arready(channel_1_M_AXI_ARREADY),
        .M_AXI1_arvalid(channel_1_M_AXI_ARVALID),
        .M_AXI1_awaddr(channel_1_M_AXI_AWADDR),
        .M_AXI1_awburst(channel_1_M_AXI_AWBURST),
        .M_AXI1_awcache(channel_1_M_AXI_AWCACHE),
        .M_AXI1_awid(channel_1_M_AXI_AWID),
        .M_AXI1_awlen(channel_1_M_AXI_AWLEN),
        .M_AXI1_awlock(channel_1_M_AXI_AWLOCK),
        .M_AXI1_awprot(channel_1_M_AXI_AWPROT),
        .M_AXI1_awqos(channel_1_M_AXI_AWQOS),
        .M_AXI1_awready(channel_1_M_AXI_AWREADY),
        .M_AXI1_awsize(channel_1_M_AXI_AWSIZE),
        .M_AXI1_awvalid(channel_1_M_AXI_AWVALID),
        .M_AXI1_bready(channel_1_M_AXI_BREADY),
        .M_AXI1_bresp(channel_1_M_AXI_BRESP),
        .M_AXI1_bvalid(channel_1_M_AXI_BVALID),
        .M_AXI1_rdata(channel_1_M_AXI_RDATA),
        .M_AXI1_rlast(channel_1_M_AXI_RLAST),
        .M_AXI1_rready(channel_1_M_AXI_RREADY),
        .M_AXI1_rresp(channel_1_M_AXI_RRESP),
        .M_AXI1_rvalid(channel_1_M_AXI_RVALID),
        .M_AXI1_wdata(channel_1_M_AXI_WDATA),
        .M_AXI1_wlast(channel_1_M_AXI_WLAST),
        .M_AXI1_wready(channel_1_M_AXI_WREADY),
        .M_AXI1_wstrb(channel_1_M_AXI_WSTRB),
        .M_AXI1_wvalid(channel_1_M_AXI_WVALID),
        .cmac0_clk(cmac_cmac0_clk),
        .cmac1_clk(cmac_cmac1_clk),
        .qsfp0_clk_clk_n(qsfp0_clk_clk_n),
        .qsfp0_clk_clk_p(qsfp0_clk_clk_p),
        .qsfp0_gt_grx_n(qsfp0_gt_grx_n),
        .qsfp0_gt_grx_p(qsfp0_gt_grx_p),
        .qsfp0_gt_gtx_n(qsfp0_gt_gtx_n),
        .qsfp0_gt_gtx_p(qsfp0_gt_gtx_p),
        .qsfp0_up(qsfp0_up),
        .qsfp1_clk_clk_n(qsfp1_clk_clk_n),
        .qsfp1_clk_clk_p(qsfp1_clk_clk_p),
        .qsfp1_gt_grx_n(qsfp1_gt_grx_n),
        .qsfp1_gt_grx_p(qsfp1_gt_grx_p),
        .qsfp1_gt_gtx_n(qsfp1_gt_gtx_n),
        .qsfp1_gt_gtx_p(qsfp1_gt_gtx_p),
        .qsfp1_up(qsfp1_up),
        .sys_clk(pcie_bridge_0_axi_aclk),
        .sys_resetn_in(pcie_bridge_0_axi_aresetn),
        .tx0_in_tdata(tx0_in_1_TDATA),
        .tx0_in_tkeep(tx0_in_1_TKEEP),
        .tx0_in_tlast(tx0_in_1_TLAST),
        .tx0_in_tready(tx0_in_1_TREADY),
        .tx0_in_tvalid(tx0_in_1_TVALID),
        .tx1_in_tdata(tx1_in_1_TDATA),
        .tx1_in_tkeep(tx1_in_1_TKEEP),
        .tx1_in_tlast(tx1_in_1_TLAST),
        .tx1_in_tready(tx1_in_1_TREADY),
        .tx1_in_tvalid(tx1_in_1_TVALID));
  frame_gen_imp_1DFNVFE frame_gen
       (.GPIO15_DIR(GPIO15_DIR),
        .GPIO_BYTE_DIR(GPIO15),
        .S_AXI_araddr(S_AXI_2_ARADDR),
        .S_AXI_arprot(S_AXI_2_ARPROT),
        .S_AXI_arready(S_AXI_2_ARREADY),
        .S_AXI_arvalid(S_AXI_2_ARVALID),
        .S_AXI_awaddr(S_AXI_2_AWADDR),
        .S_AXI_awprot(S_AXI_2_AWPROT),
        .S_AXI_awready(S_AXI_2_AWREADY),
        .S_AXI_awvalid(S_AXI_2_AWVALID),
        .S_AXI_bready(S_AXI_2_BREADY),
        .S_AXI_bresp(S_AXI_2_BRESP),
        .S_AXI_bvalid(S_AXI_2_BVALID),
        .S_AXI_rdata(S_AXI_2_RDATA),
        .S_AXI_rready(S_AXI_2_RREADY),
        .S_AXI_rresp(S_AXI_2_RRESP),
        .S_AXI_rvalid(S_AXI_2_RVALID),
        .S_AXI_wdata(S_AXI_2_WDATA),
        .S_AXI_wready(S_AXI_2_WREADY),
        .S_AXI_wstrb(S_AXI_2_WSTRB),
        .S_AXI_wvalid(S_AXI_2_WVALID),
        .clk_192(clk_wiz_clk192),
        .pa_sync_in(indy_lvds_pa_sync_out),
        .resetn_192(clk_192_resetn_192),
        .rs0(rs0),
        .rs256(rs256));
  indy_lvds_inst_0 indy_lvds
       (.LVDS_BANKA_clk_n(LVDS_BANKA_clk_n),
        .LVDS_BANKA_clk_p(LVDS_BANKA_clk_p),
        .LVDS_BANKB_clk_n(LVDS_BANKB_clk_n),
        .LVDS_BANKB_clk_p(LVDS_BANKB_clk_p),
        .LVDS_BANKC_clk_n(LVDS_BANKC_clk_n),
        .LVDS_BANKC_clk_p(LVDS_BANKC_clk_p),
        .LVDS_CLK_clk_n(LVDS_CLK_clk_n),
        .LVDS_CLK_clk_p(LVDS_CLK_clk_p),
        .LVDS_DN(LVDS_DN),
        .LVDS_DP(LVDS_DP),
        .S_AXI_CTL_araddr(S_AXI_CTL_2_ARADDR),
        .S_AXI_CTL_arprot(S_AXI_CTL_2_ARPROT),
        .S_AXI_CTL_arready(S_AXI_CTL_2_ARREADY),
        .S_AXI_CTL_arvalid(S_AXI_CTL_2_ARVALID),
        .S_AXI_CTL_awaddr(S_AXI_CTL_2_AWADDR),
        .S_AXI_CTL_awprot(S_AXI_CTL_2_AWPROT),
        .S_AXI_CTL_awready(S_AXI_CTL_2_AWREADY),
        .S_AXI_CTL_awvalid(S_AXI_CTL_2_AWVALID),
        .S_AXI_CTL_bready(S_AXI_CTL_2_BREADY),
        .S_AXI_CTL_bresp(S_AXI_CTL_2_BRESP),
        .S_AXI_CTL_bvalid(S_AXI_CTL_2_BVALID),
        .S_AXI_CTL_rdata(S_AXI_CTL_2_RDATA),
        .S_AXI_CTL_rready(S_AXI_CTL_2_RREADY),
        .S_AXI_CTL_rresp(S_AXI_CTL_2_RRESP),
        .S_AXI_CTL_rvalid(S_AXI_CTL_2_RVALID),
        .S_AXI_CTL_wdata(S_AXI_CTL_2_WDATA),
        .S_AXI_CTL_wready(S_AXI_CTL_2_WREADY),
        .S_AXI_CTL_wstrb(S_AXI_CTL_2_WSTRB),
        .S_AXI_CTL_wvalid(S_AXI_CTL_2_WVALID),
        .S_AXI_SENSOR_EMU_araddr(S_AXI_SENSOR_EMU_1_ARADDR),
        .S_AXI_SENSOR_EMU_arprot(S_AXI_SENSOR_EMU_1_ARPROT),
        .S_AXI_SENSOR_EMU_arready(S_AXI_SENSOR_EMU_1_ARREADY),
        .S_AXI_SENSOR_EMU_arvalid(S_AXI_SENSOR_EMU_1_ARVALID),
        .S_AXI_SENSOR_EMU_awaddr(S_AXI_SENSOR_EMU_1_AWADDR),
        .S_AXI_SENSOR_EMU_awprot(S_AXI_SENSOR_EMU_1_AWPROT),
        .S_AXI_SENSOR_EMU_awready(S_AXI_SENSOR_EMU_1_AWREADY),
        .S_AXI_SENSOR_EMU_awvalid(S_AXI_SENSOR_EMU_1_AWVALID),
        .S_AXI_SENSOR_EMU_bready(S_AXI_SENSOR_EMU_1_BREADY),
        .S_AXI_SENSOR_EMU_bresp(S_AXI_SENSOR_EMU_1_BRESP),
        .S_AXI_SENSOR_EMU_bvalid(S_AXI_SENSOR_EMU_1_BVALID),
        .S_AXI_SENSOR_EMU_rdata(S_AXI_SENSOR_EMU_1_RDATA),
        .S_AXI_SENSOR_EMU_rready(S_AXI_SENSOR_EMU_1_RREADY),
        .S_AXI_SENSOR_EMU_rresp(S_AXI_SENSOR_EMU_1_RRESP),
        .S_AXI_SENSOR_EMU_rvalid(S_AXI_SENSOR_EMU_1_RVALID),
        .S_AXI_SENSOR_EMU_wdata(S_AXI_SENSOR_EMU_1_WDATA),
        .S_AXI_SENSOR_EMU_wready(S_AXI_SENSOR_EMU_1_WREADY),
        .S_AXI_SENSOR_EMU_wstrb(S_AXI_SENSOR_EMU_1_WSTRB),
        .S_AXI_SENSOR_EMU_wvalid(S_AXI_SENSOR_EMU_1_WVALID),
        .axis_out_tdata(indy_lvds_0_axis_out_TDATA),
        .axis_out_tready(indy_lvds_0_axis_out_TREADY),
        .axis_out_tvalid(indy_lvds_0_axis_out_TVALID),
        .clk_192(clk_wiz_clk192),
        .pa_sync_in(CHIP_PA_SYNC),
        .pa_sync_out(indy_lvds_pa_sync_out),
        .resetn_192(clk_192_resetn_192),
        .rs0(rs0),
        .rs256(rs256),
        .sys_clk(pcie_bridge_0_axi_aclk),
        .sys_resetn(pcie_bridge_0_axi_aresetn));
  mindy_core_inst_0 mindy_core
       (.AXIS_FD_IN_tdata(indy_lvds_0_axis_out_TDATA),
        .AXIS_FD_IN_tready(indy_lvds_0_axis_out_TREADY),
        .AXIS_FD_IN_tvalid(indy_lvds_0_axis_out_TVALID),
        .AXIS_TX0_tdata(tx0_in_1_TDATA),
        .AXIS_TX0_tkeep(tx0_in_1_TKEEP),
        .AXIS_TX0_tlast(tx0_in_1_TLAST),
        .AXIS_TX0_tready(tx0_in_1_TREADY),
        .AXIS_TX0_tvalid(tx0_in_1_TVALID),
        .AXIS_TX1_tdata(tx1_in_1_TDATA),
        .AXIS_TX1_tkeep(tx1_in_1_TKEEP),
        .AXIS_TX1_tlast(tx1_in_1_TLAST),
        .AXIS_TX1_tready(tx1_in_1_TREADY),
        .AXIS_TX1_tvalid(tx1_in_1_TVALID),
        .S_AXI_CTL_araddr(smartconnect_M00_AXI_ARADDR),
        .S_AXI_CTL_arprot(smartconnect_M00_AXI_ARPROT),
        .S_AXI_CTL_arready(smartconnect_M00_AXI_ARREADY),
        .S_AXI_CTL_arvalid(smartconnect_M00_AXI_ARVALID),
        .S_AXI_CTL_awaddr(smartconnect_M00_AXI_AWADDR),
        .S_AXI_CTL_awprot(smartconnect_M00_AXI_AWPROT),
        .S_AXI_CTL_awready(smartconnect_M00_AXI_AWREADY),
        .S_AXI_CTL_awvalid(smartconnect_M00_AXI_AWVALID),
        .S_AXI_CTL_bready(smartconnect_M00_AXI_BREADY),
        .S_AXI_CTL_bresp(smartconnect_M00_AXI_BRESP),
        .S_AXI_CTL_bvalid(smartconnect_M00_AXI_BVALID),
        .S_AXI_CTL_rdata(smartconnect_M00_AXI_RDATA),
        .S_AXI_CTL_rready(smartconnect_M00_AXI_RREADY),
        .S_AXI_CTL_rresp(smartconnect_M00_AXI_RRESP),
        .S_AXI_CTL_rvalid(smartconnect_M00_AXI_RVALID),
        .S_AXI_CTL_wdata(smartconnect_M00_AXI_WDATA),
        .S_AXI_CTL_wready(smartconnect_M00_AXI_WREADY),
        .S_AXI_CTL_wstrb(smartconnect_M00_AXI_WSTRB),
        .S_AXI_CTL_wvalid(smartconnect_M00_AXI_WVALID),
        .cmac0_clk(cmac_cmac0_clk),
        .cmac1_clk(cmac_cmac1_clk),
        .sys_clk(pcie_bridge_0_axi_aclk),
        .sys_resetn(pcie_bridge_0_axi_aresetn));
  pcie_bridge_imp_1AINXYK pcie_bridge
       (.M_AXI_B_araddr(pcie_bridge_M_AXI_B_ARADDR),
        .M_AXI_B_arburst(pcie_bridge_M_AXI_B_ARBURST),
        .M_AXI_B_arcache(pcie_bridge_M_AXI_B_ARCACHE),
        .M_AXI_B_arid(pcie_bridge_M_AXI_B_ARID),
        .M_AXI_B_arlen(pcie_bridge_M_AXI_B_ARLEN),
        .M_AXI_B_arlock(pcie_bridge_M_AXI_B_ARLOCK),
        .M_AXI_B_arprot(pcie_bridge_M_AXI_B_ARPROT),
        .M_AXI_B_arready(pcie_bridge_M_AXI_B_ARREADY),
        .M_AXI_B_arsize(pcie_bridge_M_AXI_B_ARSIZE),
        .M_AXI_B_arvalid(pcie_bridge_M_AXI_B_ARVALID),
        .M_AXI_B_awaddr(pcie_bridge_M_AXI_B_AWADDR),
        .M_AXI_B_awburst(pcie_bridge_M_AXI_B_AWBURST),
        .M_AXI_B_awcache(pcie_bridge_M_AXI_B_AWCACHE),
        .M_AXI_B_awid(pcie_bridge_M_AXI_B_AWID),
        .M_AXI_B_awlen(pcie_bridge_M_AXI_B_AWLEN),
        .M_AXI_B_awlock(pcie_bridge_M_AXI_B_AWLOCK),
        .M_AXI_B_awprot(pcie_bridge_M_AXI_B_AWPROT),
        .M_AXI_B_awready(pcie_bridge_M_AXI_B_AWREADY),
        .M_AXI_B_awsize(pcie_bridge_M_AXI_B_AWSIZE),
        .M_AXI_B_awvalid(pcie_bridge_M_AXI_B_AWVALID),
        .M_AXI_B_bid(pcie_bridge_M_AXI_B_BID),
        .M_AXI_B_bready(pcie_bridge_M_AXI_B_BREADY),
        .M_AXI_B_bresp(pcie_bridge_M_AXI_B_BRESP),
        .M_AXI_B_bvalid(pcie_bridge_M_AXI_B_BVALID),
        .M_AXI_B_rdata(pcie_bridge_M_AXI_B_RDATA),
        .M_AXI_B_rid(pcie_bridge_M_AXI_B_RID),
        .M_AXI_B_rlast(pcie_bridge_M_AXI_B_RLAST),
        .M_AXI_B_rready(pcie_bridge_M_AXI_B_RREADY),
        .M_AXI_B_rresp(pcie_bridge_M_AXI_B_RRESP),
        .M_AXI_B_rvalid(pcie_bridge_M_AXI_B_RVALID),
        .M_AXI_B_wdata(pcie_bridge_M_AXI_B_WDATA),
        .M_AXI_B_wlast(pcie_bridge_M_AXI_B_WLAST),
        .M_AXI_B_wready(pcie_bridge_M_AXI_B_WREADY),
        .M_AXI_B_wstrb(pcie_bridge_M_AXI_B_WSTRB),
        .M_AXI_B_wvalid(pcie_bridge_M_AXI_B_WVALID),
        .PCIE_REFCLK_clk_n(pcie_refclk_clk_n),
        .PCIE_REFCLK_clk_p(pcie_refclk_clk_p),
        .S00_AXI_araddr(smem_manager_S_AXI_RAM0_PCI_ARADDR),
        .S00_AXI_arburst(smem_manager_S_AXI_RAM0_PCI_ARBURST),
        .S00_AXI_arcache(smem_manager_S_AXI_RAM0_PCI_ARCACHE),
        .S00_AXI_arid(smem_manager_S_AXI_RAM0_PCI_ARID),
        .S00_AXI_arlen(smem_manager_S_AXI_RAM0_PCI_ARLEN),
        .S00_AXI_arlock(smem_manager_S_AXI_RAM0_PCI_ARLOCK),
        .S00_AXI_arprot(smem_manager_S_AXI_RAM0_PCI_ARPROT),
        .S00_AXI_arqos(smem_manager_S_AXI_RAM0_PCI_ARQOS),
        .S00_AXI_arready(smem_manager_S_AXI_RAM0_PCI_ARREADY),
        .S00_AXI_arsize(smem_manager_S_AXI_RAM0_PCI_ARSIZE),
        .S00_AXI_arvalid(smem_manager_S_AXI_RAM0_PCI_ARVALID),
        .S00_AXI_awaddr(smem_manager_S_AXI_RAM0_PCI_AWADDR),
        .S00_AXI_awburst(smem_manager_S_AXI_RAM0_PCI_AWBURST),
        .S00_AXI_awcache(smem_manager_S_AXI_RAM0_PCI_AWCACHE),
        .S00_AXI_awid(smem_manager_S_AXI_RAM0_PCI_AWID),
        .S00_AXI_awlen(smem_manager_S_AXI_RAM0_PCI_AWLEN),
        .S00_AXI_awlock(smem_manager_S_AXI_RAM0_PCI_AWLOCK),
        .S00_AXI_awprot(smem_manager_S_AXI_RAM0_PCI_AWPROT),
        .S00_AXI_awqos(smem_manager_S_AXI_RAM0_PCI_AWQOS),
        .S00_AXI_awready(smem_manager_S_AXI_RAM0_PCI_AWREADY),
        .S00_AXI_awsize(smem_manager_S_AXI_RAM0_PCI_AWSIZE),
        .S00_AXI_awvalid(smem_manager_S_AXI_RAM0_PCI_AWVALID),
        .S00_AXI_bready(smem_manager_S_AXI_RAM0_PCI_BREADY),
        .S00_AXI_bresp(smem_manager_S_AXI_RAM0_PCI_BRESP),
        .S00_AXI_bvalid(smem_manager_S_AXI_RAM0_PCI_BVALID),
        .S00_AXI_rdata(smem_manager_S_AXI_RAM0_PCI_RDATA),
        .S00_AXI_rlast(smem_manager_S_AXI_RAM0_PCI_RLAST),
        .S00_AXI_rready(smem_manager_S_AXI_RAM0_PCI_RREADY),
        .S00_AXI_rresp(smem_manager_S_AXI_RAM0_PCI_RRESP),
        .S00_AXI_rvalid(smem_manager_S_AXI_RAM0_PCI_RVALID),
        .S00_AXI_wdata(smem_manager_S_AXI_RAM0_PCI_WDATA),
        .S00_AXI_wlast(smem_manager_S_AXI_RAM0_PCI_WLAST),
        .S00_AXI_wready(smem_manager_S_AXI_RAM0_PCI_WREADY),
        .S00_AXI_wstrb(smem_manager_S_AXI_RAM0_PCI_WSTRB),
        .S00_AXI_wvalid(smem_manager_S_AXI_RAM0_PCI_WVALID),
        .S01_AXI_araddr(smem_manager_S_AXI_RAM1_PCI_ARADDR),
        .S01_AXI_arburst(smem_manager_S_AXI_RAM1_PCI_ARBURST),
        .S01_AXI_arcache(smem_manager_S_AXI_RAM1_PCI_ARCACHE),
        .S01_AXI_arid(smem_manager_S_AXI_RAM1_PCI_ARID),
        .S01_AXI_arlen(smem_manager_S_AXI_RAM1_PCI_ARLEN),
        .S01_AXI_arlock(smem_manager_S_AXI_RAM1_PCI_ARLOCK),
        .S01_AXI_arprot(smem_manager_S_AXI_RAM1_PCI_ARPROT),
        .S01_AXI_arqos(smem_manager_S_AXI_RAM1_PCI_ARQOS),
        .S01_AXI_arready(smem_manager_S_AXI_RAM1_PCI_ARREADY),
        .S01_AXI_arsize(smem_manager_S_AXI_RAM1_PCI_ARSIZE),
        .S01_AXI_arvalid(smem_manager_S_AXI_RAM1_PCI_ARVALID),
        .S01_AXI_awaddr(smem_manager_S_AXI_RAM1_PCI_AWADDR),
        .S01_AXI_awburst(smem_manager_S_AXI_RAM1_PCI_AWBURST),
        .S01_AXI_awcache(smem_manager_S_AXI_RAM1_PCI_AWCACHE),
        .S01_AXI_awid(smem_manager_S_AXI_RAM1_PCI_AWID),
        .S01_AXI_awlen(smem_manager_S_AXI_RAM1_PCI_AWLEN),
        .S01_AXI_awlock(smem_manager_S_AXI_RAM1_PCI_AWLOCK),
        .S01_AXI_awprot(smem_manager_S_AXI_RAM1_PCI_AWPROT),
        .S01_AXI_awqos(smem_manager_S_AXI_RAM1_PCI_AWQOS),
        .S01_AXI_awready(smem_manager_S_AXI_RAM1_PCI_AWREADY),
        .S01_AXI_awsize(smem_manager_S_AXI_RAM1_PCI_AWSIZE),
        .S01_AXI_awvalid(smem_manager_S_AXI_RAM1_PCI_AWVALID),
        .S01_AXI_bready(smem_manager_S_AXI_RAM1_PCI_BREADY),
        .S01_AXI_bresp(smem_manager_S_AXI_RAM1_PCI_BRESP),
        .S01_AXI_bvalid(smem_manager_S_AXI_RAM1_PCI_BVALID),
        .S01_AXI_rdata(smem_manager_S_AXI_RAM1_PCI_RDATA),
        .S01_AXI_rlast(smem_manager_S_AXI_RAM1_PCI_RLAST),
        .S01_AXI_rready(smem_manager_S_AXI_RAM1_PCI_RREADY),
        .S01_AXI_rresp(smem_manager_S_AXI_RAM1_PCI_RRESP),
        .S01_AXI_rvalid(smem_manager_S_AXI_RAM1_PCI_RVALID),
        .S01_AXI_wdata(smem_manager_S_AXI_RAM1_PCI_WDATA),
        .S01_AXI_wlast(smem_manager_S_AXI_RAM1_PCI_WLAST),
        .S01_AXI_wready(smem_manager_S_AXI_RAM1_PCI_WREADY),
        .S01_AXI_wstrb(smem_manager_S_AXI_RAM1_PCI_WSTRB),
        .S01_AXI_wvalid(smem_manager_S_AXI_RAM1_PCI_WVALID),
        .pcie_mgt_rxn(pcie_mgt_rxn),
        .pcie_mgt_rxp(pcie_mgt_rxp),
        .pcie_mgt_txn(pcie_mgt_txn),
        .pcie_mgt_txp(pcie_mgt_txp),
        .sys_clk(pcie_bridge_0_axi_aclk),
        .sys_resetn(pcie_bridge_0_axi_aresetn));
  top_level_qsfp_pins_0_0 qsfp_pins
       (.qsfp_lp(qsfp_lp),
        .qsfp_rst_l(qsfp_rst_l));
  top_level_smartconnect_0_0 smartconnect
       (.M00_AXI_araddr(smartconnect_M00_AXI_ARADDR),
        .M00_AXI_arprot(smartconnect_M00_AXI_ARPROT),
        .M00_AXI_arready(smartconnect_M00_AXI_ARREADY),
        .M00_AXI_arvalid(smartconnect_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_M00_AXI_AWADDR),
        .M00_AXI_awprot(smartconnect_M00_AXI_AWPROT),
        .M00_AXI_awready(smartconnect_M00_AXI_AWREADY),
        .M00_AXI_awvalid(smartconnect_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_M00_AXI_RDATA),
        .M00_AXI_rready(smartconnect_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_M00_AXI_WDATA),
        .M00_AXI_wready(smartconnect_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_M00_AXI_WVALID),
        .M01_AXI_araddr(S_AXI_CTL_1_ARADDR),
        .M01_AXI_arprot(S_AXI_CTL_1_ARPROT),
        .M01_AXI_arready(S_AXI_CTL_1_ARREADY),
        .M01_AXI_arvalid(S_AXI_CTL_1_ARVALID),
        .M01_AXI_awaddr(S_AXI_CTL_1_AWADDR),
        .M01_AXI_awprot(S_AXI_CTL_1_AWPROT),
        .M01_AXI_awready(S_AXI_CTL_1_AWREADY),
        .M01_AXI_awvalid(S_AXI_CTL_1_AWVALID),
        .M01_AXI_bready(S_AXI_CTL_1_BREADY),
        .M01_AXI_bresp(S_AXI_CTL_1_BRESP),
        .M01_AXI_bvalid(S_AXI_CTL_1_BVALID),
        .M01_AXI_rdata(S_AXI_CTL_1_RDATA),
        .M01_AXI_rready(S_AXI_CTL_1_RREADY),
        .M01_AXI_rresp(S_AXI_CTL_1_RRESP),
        .M01_AXI_rvalid(S_AXI_CTL_1_RVALID),
        .M01_AXI_wdata(S_AXI_CTL_1_WDATA),
        .M01_AXI_wready(S_AXI_CTL_1_WREADY),
        .M01_AXI_wstrb(S_AXI_CTL_1_WSTRB),
        .M01_AXI_wvalid(S_AXI_CTL_1_WVALID),
        .M02_AXI_araddr(S_AXI_1_ARADDR),
        .M02_AXI_arprot(S_AXI_1_ARPROT),
        .M02_AXI_arready(S_AXI_1_ARREADY),
        .M02_AXI_arvalid(S_AXI_1_ARVALID),
        .M02_AXI_awaddr(S_AXI_1_AWADDR),
        .M02_AXI_awprot(S_AXI_1_AWPROT),
        .M02_AXI_awready(S_AXI_1_AWREADY),
        .M02_AXI_awvalid(S_AXI_1_AWVALID),
        .M02_AXI_bready(S_AXI_1_BREADY),
        .M02_AXI_bresp(S_AXI_1_BRESP),
        .M02_AXI_bvalid(S_AXI_1_BVALID),
        .M02_AXI_rdata(S_AXI_1_RDATA),
        .M02_AXI_rready(S_AXI_1_RREADY),
        .M02_AXI_rresp(S_AXI_1_RRESP),
        .M02_AXI_rvalid(S_AXI_1_RVALID),
        .M02_AXI_wdata(S_AXI_1_WDATA),
        .M02_AXI_wready(S_AXI_1_WREADY),
        .M02_AXI_wstrb(S_AXI_1_WSTRB),
        .M02_AXI_wvalid(S_AXI_1_WVALID),
        .M03_AXI_araddr(smartconnect_M03_AXI_ARADDR),
        .M03_AXI_arprot(smartconnect_M03_AXI_ARPROT),
        .M03_AXI_arready(smartconnect_M03_AXI_ARREADY),
        .M03_AXI_arvalid(smartconnect_M03_AXI_ARVALID),
        .M03_AXI_awaddr(smartconnect_M03_AXI_AWADDR),
        .M03_AXI_awprot(smartconnect_M03_AXI_AWPROT),
        .M03_AXI_awready(smartconnect_M03_AXI_AWREADY),
        .M03_AXI_awvalid(smartconnect_M03_AXI_AWVALID),
        .M03_AXI_bready(smartconnect_M03_AXI_BREADY),
        .M03_AXI_bresp(smartconnect_M03_AXI_BRESP),
        .M03_AXI_bvalid(smartconnect_M03_AXI_BVALID),
        .M03_AXI_rdata(smartconnect_M03_AXI_RDATA),
        .M03_AXI_rready(smartconnect_M03_AXI_RREADY),
        .M03_AXI_rresp(smartconnect_M03_AXI_RRESP),
        .M03_AXI_rvalid(smartconnect_M03_AXI_RVALID),
        .M03_AXI_wdata(smartconnect_M03_AXI_WDATA),
        .M03_AXI_wready(smartconnect_M03_AXI_WREADY),
        .M03_AXI_wstrb(smartconnect_M03_AXI_WSTRB),
        .M03_AXI_wvalid(smartconnect_M03_AXI_WVALID),
        .M04_AXI_araddr(AXI_CLOCK_CTL_1_ARADDR),
        .M04_AXI_arprot(AXI_CLOCK_CTL_1_ARPROT),
        .M04_AXI_arready(AXI_CLOCK_CTL_1_ARREADY),
        .M04_AXI_arvalid(AXI_CLOCK_CTL_1_ARVALID),
        .M04_AXI_awaddr(AXI_CLOCK_CTL_1_AWADDR),
        .M04_AXI_awprot(AXI_CLOCK_CTL_1_AWPROT),
        .M04_AXI_awready(AXI_CLOCK_CTL_1_AWREADY),
        .M04_AXI_awvalid(AXI_CLOCK_CTL_1_AWVALID),
        .M04_AXI_bready(AXI_CLOCK_CTL_1_BREADY),
        .M04_AXI_bresp(AXI_CLOCK_CTL_1_BRESP),
        .M04_AXI_bvalid(AXI_CLOCK_CTL_1_BVALID),
        .M04_AXI_rdata(AXI_CLOCK_CTL_1_RDATA),
        .M04_AXI_rready(AXI_CLOCK_CTL_1_RREADY),
        .M04_AXI_rresp(AXI_CLOCK_CTL_1_RRESP),
        .M04_AXI_rvalid(AXI_CLOCK_CTL_1_RVALID),
        .M04_AXI_wdata(AXI_CLOCK_CTL_1_WDATA),
        .M04_AXI_wready(AXI_CLOCK_CTL_1_WREADY),
        .M04_AXI_wstrb(AXI_CLOCK_CTL_1_WSTRB),
        .M04_AXI_wvalid(AXI_CLOCK_CTL_1_WVALID),
        .M05_AXI_araddr(S_AXI_CTL_2_ARADDR),
        .M05_AXI_arprot(S_AXI_CTL_2_ARPROT),
        .M05_AXI_arready(S_AXI_CTL_2_ARREADY),
        .M05_AXI_arvalid(S_AXI_CTL_2_ARVALID),
        .M05_AXI_awaddr(S_AXI_CTL_2_AWADDR),
        .M05_AXI_awprot(S_AXI_CTL_2_AWPROT),
        .M05_AXI_awready(S_AXI_CTL_2_AWREADY),
        .M05_AXI_awvalid(S_AXI_CTL_2_AWVALID),
        .M05_AXI_bready(S_AXI_CTL_2_BREADY),
        .M05_AXI_bresp(S_AXI_CTL_2_BRESP),
        .M05_AXI_bvalid(S_AXI_CTL_2_BVALID),
        .M05_AXI_rdata(S_AXI_CTL_2_RDATA),
        .M05_AXI_rready(S_AXI_CTL_2_RREADY),
        .M05_AXI_rresp(S_AXI_CTL_2_RRESP),
        .M05_AXI_rvalid(S_AXI_CTL_2_RVALID),
        .M05_AXI_wdata(S_AXI_CTL_2_WDATA),
        .M05_AXI_wready(S_AXI_CTL_2_WREADY),
        .M05_AXI_wstrb(S_AXI_CTL_2_WSTRB),
        .M05_AXI_wvalid(S_AXI_CTL_2_WVALID),
        .M06_AXI_araddr(S_AXI_SENSOR_EMU_1_ARADDR),
        .M06_AXI_arprot(S_AXI_SENSOR_EMU_1_ARPROT),
        .M06_AXI_arready(S_AXI_SENSOR_EMU_1_ARREADY),
        .M06_AXI_arvalid(S_AXI_SENSOR_EMU_1_ARVALID),
        .M06_AXI_awaddr(S_AXI_SENSOR_EMU_1_AWADDR),
        .M06_AXI_awprot(S_AXI_SENSOR_EMU_1_AWPROT),
        .M06_AXI_awready(S_AXI_SENSOR_EMU_1_AWREADY),
        .M06_AXI_awvalid(S_AXI_SENSOR_EMU_1_AWVALID),
        .M06_AXI_bready(S_AXI_SENSOR_EMU_1_BREADY),
        .M06_AXI_bresp(S_AXI_SENSOR_EMU_1_BRESP),
        .M06_AXI_bvalid(S_AXI_SENSOR_EMU_1_BVALID),
        .M06_AXI_rdata(S_AXI_SENSOR_EMU_1_RDATA),
        .M06_AXI_rready(S_AXI_SENSOR_EMU_1_RREADY),
        .M06_AXI_rresp(S_AXI_SENSOR_EMU_1_RRESP),
        .M06_AXI_rvalid(S_AXI_SENSOR_EMU_1_RVALID),
        .M06_AXI_wdata(S_AXI_SENSOR_EMU_1_WDATA),
        .M06_AXI_wready(S_AXI_SENSOR_EMU_1_WREADY),
        .M06_AXI_wstrb(S_AXI_SENSOR_EMU_1_WSTRB),
        .M06_AXI_wvalid(S_AXI_SENSOR_EMU_1_WVALID),
        .M07_AXI_araddr(S_AXI_2_ARADDR),
        .M07_AXI_arprot(S_AXI_2_ARPROT),
        .M07_AXI_arready(S_AXI_2_ARREADY),
        .M07_AXI_arvalid(S_AXI_2_ARVALID),
        .M07_AXI_awaddr(S_AXI_2_AWADDR),
        .M07_AXI_awprot(S_AXI_2_AWPROT),
        .M07_AXI_awready(S_AXI_2_AWREADY),
        .M07_AXI_awvalid(S_AXI_2_AWVALID),
        .M07_AXI_bready(S_AXI_2_BREADY),
        .M07_AXI_bresp(S_AXI_2_BRESP),
        .M07_AXI_bvalid(S_AXI_2_BVALID),
        .M07_AXI_rdata(S_AXI_2_RDATA),
        .M07_AXI_rready(S_AXI_2_RREADY),
        .M07_AXI_rresp(S_AXI_2_RRESP),
        .M07_AXI_rvalid(S_AXI_2_RVALID),
        .M07_AXI_wdata(S_AXI_2_WDATA),
        .M07_AXI_wready(S_AXI_2_WREADY),
        .M07_AXI_wstrb(S_AXI_2_WSTRB),
        .M07_AXI_wvalid(S_AXI_2_WVALID),
        .S00_AXI_araddr(pcie_bridge_M_AXI_B_ARADDR),
        .S00_AXI_arburst(pcie_bridge_M_AXI_B_ARBURST),
        .S00_AXI_arcache(pcie_bridge_M_AXI_B_ARCACHE),
        .S00_AXI_arid(pcie_bridge_M_AXI_B_ARID),
        .S00_AXI_arlen(pcie_bridge_M_AXI_B_ARLEN),
        .S00_AXI_arlock(pcie_bridge_M_AXI_B_ARLOCK),
        .S00_AXI_arprot(pcie_bridge_M_AXI_B_ARPROT),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(pcie_bridge_M_AXI_B_ARREADY),
        .S00_AXI_arsize(pcie_bridge_M_AXI_B_ARSIZE),
        .S00_AXI_arvalid(pcie_bridge_M_AXI_B_ARVALID),
        .S00_AXI_awaddr(pcie_bridge_M_AXI_B_AWADDR),
        .S00_AXI_awburst(pcie_bridge_M_AXI_B_AWBURST),
        .S00_AXI_awcache(pcie_bridge_M_AXI_B_AWCACHE),
        .S00_AXI_awid(pcie_bridge_M_AXI_B_AWID),
        .S00_AXI_awlen(pcie_bridge_M_AXI_B_AWLEN),
        .S00_AXI_awlock(pcie_bridge_M_AXI_B_AWLOCK),
        .S00_AXI_awprot(pcie_bridge_M_AXI_B_AWPROT),
        .S00_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awready(pcie_bridge_M_AXI_B_AWREADY),
        .S00_AXI_awsize(pcie_bridge_M_AXI_B_AWSIZE),
        .S00_AXI_awvalid(pcie_bridge_M_AXI_B_AWVALID),
        .S00_AXI_bid(pcie_bridge_M_AXI_B_BID),
        .S00_AXI_bready(pcie_bridge_M_AXI_B_BREADY),
        .S00_AXI_bresp(pcie_bridge_M_AXI_B_BRESP),
        .S00_AXI_bvalid(pcie_bridge_M_AXI_B_BVALID),
        .S00_AXI_rdata(pcie_bridge_M_AXI_B_RDATA),
        .S00_AXI_rid(pcie_bridge_M_AXI_B_RID),
        .S00_AXI_rlast(pcie_bridge_M_AXI_B_RLAST),
        .S00_AXI_rready(pcie_bridge_M_AXI_B_RREADY),
        .S00_AXI_rresp(pcie_bridge_M_AXI_B_RRESP),
        .S00_AXI_rvalid(pcie_bridge_M_AXI_B_RVALID),
        .S00_AXI_wdata(pcie_bridge_M_AXI_B_WDATA),
        .S00_AXI_wlast(pcie_bridge_M_AXI_B_WLAST),
        .S00_AXI_wready(pcie_bridge_M_AXI_B_WREADY),
        .S00_AXI_wstrb(pcie_bridge_M_AXI_B_WSTRB),
        .S00_AXI_wvalid(pcie_bridge_M_AXI_B_WVALID),
        .aclk(pcie_bridge_0_axi_aclk),
        .aclk1(clk_wiz_clk192),
        .aresetn(pcie_bridge_0_axi_aresetn));
endmodule
