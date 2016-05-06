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

-- IP VLNV: xilinx.com:hls:tri_intersect:0.1
-- IP Revision: 1605052059

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY triangle_intersect_tri_intersect_0_1 IS
  PORT (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    A_TVALID : IN STD_LOGIC;
    A_TREADY : OUT STD_LOGIC;
    A_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    A_TDEST : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    A_TKEEP : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    A_TSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    A_TUSER : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    A_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    A_TID : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    B_TVALID : OUT STD_LOGIC;
    B_TREADY : IN STD_LOGIC;
    B_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    B_TDEST : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    B_TKEEP : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    B_TSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    B_TUSER : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    B_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    B_TID : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
  );
END triangle_intersect_tri_intersect_0_1;

ARCHITECTURE triangle_intersect_tri_intersect_0_1_arch OF triangle_intersect_tri_intersect_0_1 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : string;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF triangle_intersect_tri_intersect_0_1_arch: ARCHITECTURE IS "yes";

  COMPONENT tri_intersect IS
    PORT (
      ap_clk : IN STD_LOGIC;
      ap_rst_n : IN STD_LOGIC;
      A_TVALID : IN STD_LOGIC;
      A_TREADY : OUT STD_LOGIC;
      A_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      A_TDEST : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      A_TKEEP : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      A_TSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      A_TUSER : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      A_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      A_TID : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      B_TVALID : OUT STD_LOGIC;
      B_TREADY : IN STD_LOGIC;
      B_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      B_TDEST : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      B_TKEEP : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      B_TSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      B_TUSER : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      B_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      B_TID : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
    );
  END COMPONENT tri_intersect;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF triangle_intersect_tri_intersect_0_1_arch: ARCHITECTURE IS "tri_intersect,Vivado 2015.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF triangle_intersect_tri_intersect_0_1_arch : ARCHITECTURE IS "triangle_intersect_tri_intersect_0_1,tri_intersect,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF triangle_intersect_tri_intersect_0_1_arch: ARCHITECTURE IS "triangle_intersect_tri_intersect_0_1,tri_intersect,{x_ipProduct=Vivado 2015.1,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=tri_intersect,x_ipVersion=0.1,x_ipCoreRevision=1605052059,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  ATTRIBUTE X_INTERFACE_INFO OF A_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 A TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF A_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 A TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF A_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 A TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF A_TDEST: SIGNAL IS "xilinx.com:interface:axis:1.0 A TDEST";
  ATTRIBUTE X_INTERFACE_INFO OF A_TKEEP: SIGNAL IS "xilinx.com:interface:axis:1.0 A TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF A_TSTRB: SIGNAL IS "xilinx.com:interface:axis:1.0 A TSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF A_TUSER: SIGNAL IS "xilinx.com:interface:axis:1.0 A TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF A_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 A TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF A_TID: SIGNAL IS "xilinx.com:interface:axis:1.0 A TID";
  ATTRIBUTE X_INTERFACE_INFO OF B_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 B TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF B_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 B TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF B_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 B TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF B_TDEST: SIGNAL IS "xilinx.com:interface:axis:1.0 B TDEST";
  ATTRIBUTE X_INTERFACE_INFO OF B_TKEEP: SIGNAL IS "xilinx.com:interface:axis:1.0 B TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF B_TSTRB: SIGNAL IS "xilinx.com:interface:axis:1.0 B TSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF B_TUSER: SIGNAL IS "xilinx.com:interface:axis:1.0 B TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF B_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 B TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF B_TID: SIGNAL IS "xilinx.com:interface:axis:1.0 B TID";
BEGIN
  U0 : tri_intersect
    PORT MAP (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      A_TVALID => A_TVALID,
      A_TREADY => A_TREADY,
      A_TDATA => A_TDATA,
      A_TDEST => A_TDEST,
      A_TKEEP => A_TKEEP,
      A_TSTRB => A_TSTRB,
      A_TUSER => A_TUSER,
      A_TLAST => A_TLAST,
      A_TID => A_TID,
      B_TVALID => B_TVALID,
      B_TREADY => B_TREADY,
      B_TDATA => B_TDATA,
      B_TDEST => B_TDEST,
      B_TKEEP => B_TKEEP,
      B_TSTRB => B_TSTRB,
      B_TUSER => B_TUSER,
      B_TLAST => B_TLAST,
      B_TID => B_TID
    );
END triangle_intersect_tri_intersect_0_1_arch;
