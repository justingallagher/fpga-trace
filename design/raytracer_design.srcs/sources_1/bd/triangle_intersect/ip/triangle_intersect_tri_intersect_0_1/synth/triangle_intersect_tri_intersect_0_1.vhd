-- (c) Copyright 1995-2016 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:hls:tri_intersect:1.0
-- IP Revision: 1605070354

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY triangle_intersect_tri_intersect_0_1 IS
  PORT (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    ins_TVALID : IN STD_LOGIC;
    ins_TREADY : OUT STD_LOGIC;
    ins_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    ins_TDEST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    ins_TKEEP : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    ins_TSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    ins_TUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    ins_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    ins_TID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    outs_TVALID : OUT STD_LOGIC;
    outs_TREADY : IN STD_LOGIC;
    outs_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    outs_TDEST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    outs_TKEEP : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    outs_TSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    outs_TUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    outs_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    outs_TID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
  );
END triangle_intersect_tri_intersect_0_1;

ARCHITECTURE triangle_intersect_tri_intersect_0_1_arch OF triangle_intersect_tri_intersect_0_1 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : string;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF triangle_intersect_tri_intersect_0_1_arch: ARCHITECTURE IS "yes";

  COMPONENT tri_intersect IS
    PORT (
      ap_clk : IN STD_LOGIC;
      ap_rst_n : IN STD_LOGIC;
      ins_TVALID : IN STD_LOGIC;
      ins_TREADY : OUT STD_LOGIC;
      ins_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      ins_TDEST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      ins_TKEEP : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      ins_TSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      ins_TUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      ins_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      ins_TID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      outs_TVALID : OUT STD_LOGIC;
      outs_TREADY : IN STD_LOGIC;
      outs_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      outs_TDEST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      outs_TKEEP : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      outs_TSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      outs_TUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      outs_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      outs_TID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
    );
  END COMPONENT tri_intersect;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF triangle_intersect_tri_intersect_0_1_arch: ARCHITECTURE IS "tri_intersect,Vivado 2015.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF triangle_intersect_tri_intersect_0_1_arch : ARCHITECTURE IS "triangle_intersect_tri_intersect_0_1,tri_intersect,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF triangle_intersect_tri_intersect_0_1_arch: ARCHITECTURE IS "triangle_intersect_tri_intersect_0_1,tri_intersect,{x_ipProduct=Vivado 2015.1,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=tri_intersect,x_ipVersion=1.0,x_ipCoreRevision=1605070354,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  ATTRIBUTE X_INTERFACE_INFO OF ins_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 ins TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF ins_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 ins TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF ins_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 ins TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF ins_TDEST: SIGNAL IS "xilinx.com:interface:axis:1.0 ins TDEST";
  ATTRIBUTE X_INTERFACE_INFO OF ins_TKEEP: SIGNAL IS "xilinx.com:interface:axis:1.0 ins TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF ins_TSTRB: SIGNAL IS "xilinx.com:interface:axis:1.0 ins TSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF ins_TUSER: SIGNAL IS "xilinx.com:interface:axis:1.0 ins TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF ins_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 ins TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF ins_TID: SIGNAL IS "xilinx.com:interface:axis:1.0 ins TID";
  ATTRIBUTE X_INTERFACE_INFO OF outs_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 outs TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF outs_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 outs TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF outs_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 outs TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF outs_TDEST: SIGNAL IS "xilinx.com:interface:axis:1.0 outs TDEST";
  ATTRIBUTE X_INTERFACE_INFO OF outs_TKEEP: SIGNAL IS "xilinx.com:interface:axis:1.0 outs TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF outs_TSTRB: SIGNAL IS "xilinx.com:interface:axis:1.0 outs TSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF outs_TUSER: SIGNAL IS "xilinx.com:interface:axis:1.0 outs TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF outs_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 outs TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF outs_TID: SIGNAL IS "xilinx.com:interface:axis:1.0 outs TID";
BEGIN
  U0 : tri_intersect
    PORT MAP (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ins_TVALID => ins_TVALID,
      ins_TREADY => ins_TREADY,
      ins_TDATA => ins_TDATA,
      ins_TDEST => ins_TDEST,
      ins_TKEEP => ins_TKEEP,
      ins_TSTRB => ins_TSTRB,
      ins_TUSER => ins_TUSER,
      ins_TLAST => ins_TLAST,
      ins_TID => ins_TID,
      outs_TVALID => outs_TVALID,
      outs_TREADY => outs_TREADY,
      outs_TDATA => outs_TDATA,
      outs_TDEST => outs_TDEST,
      outs_TKEEP => outs_TKEEP,
      outs_TSTRB => outs_TSTRB,
      outs_TUSER => outs_TUSER,
      outs_TLAST => outs_TLAST,
      outs_TID => outs_TID
    );
END triangle_intersect_tri_intersect_0_1_arch;
