#include "tri_intersect.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void tri_intersect::thread_ap_rst_n_inv() {
    ap_rst_n_inv =  (sc_logic) (~ap_rst_n.read());
}

void tri_intersect::thread_ap_sig_bdd_104() {
    ap_sig_bdd_104 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(16, 16));
}

void tri_intersect::thread_ap_sig_bdd_114() {
    ap_sig_bdd_114 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(2, 2));
}

void tri_intersect::thread_ap_sig_bdd_122() {
    ap_sig_bdd_122 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(17, 17));
}

void tri_intersect::thread_ap_sig_bdd_132() {
    ap_sig_bdd_132 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(3, 3));
}

void tri_intersect::thread_ap_sig_bdd_140() {
    ap_sig_bdd_140 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(18, 18));
}

void tri_intersect::thread_ap_sig_bdd_150() {
    ap_sig_bdd_150 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(4, 4));
}

void tri_intersect::thread_ap_sig_bdd_158() {
    ap_sig_bdd_158 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(19, 19));
}

void tri_intersect::thread_ap_sig_bdd_168() {
    ap_sig_bdd_168 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(5, 5));
}

void tri_intersect::thread_ap_sig_bdd_176() {
    ap_sig_bdd_176 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(20, 20));
}

void tri_intersect::thread_ap_sig_bdd_186() {
    ap_sig_bdd_186 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(6, 6));
}

void tri_intersect::thread_ap_sig_bdd_1866() {
    ap_sig_bdd_1866 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(33, 33));
}

void tri_intersect::thread_ap_sig_bdd_1874() {
    ap_sig_bdd_1874 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(34, 34));
}

void tri_intersect::thread_ap_sig_bdd_1883() {
    ap_sig_bdd_1883 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(36, 36));
}

void tri_intersect::thread_ap_sig_bdd_1891() {
    ap_sig_bdd_1891 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(37, 37));
}

void tri_intersect::thread_ap_sig_bdd_194() {
    ap_sig_bdd_194 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(21, 21));
}

void tri_intersect::thread_ap_sig_bdd_1948() {
    ap_sig_bdd_1948 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(31, 31));
}

void tri_intersect::thread_ap_sig_bdd_204() {
    ap_sig_bdd_204 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(7, 7));
}

void tri_intersect::thread_ap_sig_bdd_212() {
    ap_sig_bdd_212 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(22, 22));
}

void tri_intersect::thread_ap_sig_bdd_222() {
    ap_sig_bdd_222 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(8, 8));
}

void tri_intersect::thread_ap_sig_bdd_230() {
    ap_sig_bdd_230 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(23, 23));
}

void tri_intersect::thread_ap_sig_bdd_240() {
    ap_sig_bdd_240 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(9, 9));
}

void tri_intersect::thread_ap_sig_bdd_248() {
    ap_sig_bdd_248 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(24, 24));
}

void tri_intersect::thread_ap_sig_bdd_258() {
    ap_sig_bdd_258 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(10, 10));
}

void tri_intersect::thread_ap_sig_bdd_266() {
    ap_sig_bdd_266 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(25, 25));
}

void tri_intersect::thread_ap_sig_bdd_276() {
    ap_sig_bdd_276 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(11, 11));
}

void tri_intersect::thread_ap_sig_bdd_284() {
    ap_sig_bdd_284 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(26, 26));
}

void tri_intersect::thread_ap_sig_bdd_294() {
    ap_sig_bdd_294 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(12, 12));
}

void tri_intersect::thread_ap_sig_bdd_302() {
    ap_sig_bdd_302 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(27, 27));
}

void tri_intersect::thread_ap_sig_bdd_312() {
    ap_sig_bdd_312 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(13, 13));
}

void tri_intersect::thread_ap_sig_bdd_320() {
    ap_sig_bdd_320 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(28, 28));
}

void tri_intersect::thread_ap_sig_bdd_331() {
    ap_sig_bdd_331 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(32, 32));
}

void tri_intersect::thread_ap_sig_bdd_342() {
    ap_sig_bdd_342 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(35, 35));
}

void tri_intersect::thread_ap_sig_bdd_355() {
    ap_sig_bdd_355 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(14, 14));
}

void tri_intersect::thread_ap_sig_bdd_365() {
    ap_sig_bdd_365 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(29, 29));
}

void tri_intersect::thread_ap_sig_bdd_387() {
    ap_sig_bdd_387 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(30, 30));
}

void tri_intersect::thread_ap_sig_bdd_75() {
    ap_sig_bdd_75 = esl_seteq<1,1,1>(ap_CS_fsm.read().range(0, 0), ap_const_lv1_1);
}

void tri_intersect::thread_ap_sig_bdd_86() {
    ap_sig_bdd_86 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(15, 15));
}

void tri_intersect::thread_ap_sig_bdd_96() {
    ap_sig_bdd_96 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(1, 1));
}

void tri_intersect::thread_ap_sig_cseq_ST_pp0_stg0_fsm_30() {
    if (ap_sig_bdd_387.read()) {
        ap_sig_cseq_ST_pp0_stg0_fsm_30 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg0_fsm_30 = ap_const_logic_0;
    }
}

void tri_intersect::thread_ap_sig_cseq_ST_st10_fsm_9() {
    if (ap_sig_bdd_240.read()) {
        ap_sig_cseq_ST_st10_fsm_9 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st10_fsm_9 = ap_const_logic_0;
    }
}

void tri_intersect::thread_ap_sig_cseq_ST_st115_fsm_31() {
    if (ap_sig_bdd_1948.read()) {
        ap_sig_cseq_ST_st115_fsm_31 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st115_fsm_31 = ap_const_logic_0;
    }
}

void tri_intersect::thread_ap_sig_cseq_ST_st116_fsm_32() {
    if (ap_sig_bdd_331.read()) {
        ap_sig_cseq_ST_st116_fsm_32 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st116_fsm_32 = ap_const_logic_0;
    }
}

void tri_intersect::thread_ap_sig_cseq_ST_st117_fsm_33() {
    if (ap_sig_bdd_1866.read()) {
        ap_sig_cseq_ST_st117_fsm_33 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st117_fsm_33 = ap_const_logic_0;
    }
}

void tri_intersect::thread_ap_sig_cseq_ST_st118_fsm_34() {
    if (ap_sig_bdd_1874.read()) {
        ap_sig_cseq_ST_st118_fsm_34 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st118_fsm_34 = ap_const_logic_0;
    }
}

void tri_intersect::thread_ap_sig_cseq_ST_st119_fsm_35() {
    if (ap_sig_bdd_342.read()) {
        ap_sig_cseq_ST_st119_fsm_35 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st119_fsm_35 = ap_const_logic_0;
    }
}

void tri_intersect::thread_ap_sig_cseq_ST_st11_fsm_10() {
    if (ap_sig_bdd_258.read()) {
        ap_sig_cseq_ST_st11_fsm_10 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st11_fsm_10 = ap_const_logic_0;
    }
}

void tri_intersect::thread_ap_sig_cseq_ST_st120_fsm_36() {
    if (ap_sig_bdd_1883.read()) {
        ap_sig_cseq_ST_st120_fsm_36 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st120_fsm_36 = ap_const_logic_0;
    }
}

void tri_intersect::thread_ap_sig_cseq_ST_st121_fsm_37() {
    if (ap_sig_bdd_1891.read()) {
        ap_sig_cseq_ST_st121_fsm_37 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st121_fsm_37 = ap_const_logic_0;
    }
}

void tri_intersect::thread_ap_sig_cseq_ST_st12_fsm_11() {
    if (ap_sig_bdd_276.read()) {
        ap_sig_cseq_ST_st12_fsm_11 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st12_fsm_11 = ap_const_logic_0;
    }
}

void tri_intersect::thread_ap_sig_cseq_ST_st13_fsm_12() {
    if (ap_sig_bdd_294.read()) {
        ap_sig_cseq_ST_st13_fsm_12 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st13_fsm_12 = ap_const_logic_0;
    }
}

void tri_intersect::thread_ap_sig_cseq_ST_st14_fsm_13() {
    if (ap_sig_bdd_312.read()) {
        ap_sig_cseq_ST_st14_fsm_13 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st14_fsm_13 = ap_const_logic_0;
    }
}

void tri_intersect::thread_ap_sig_cseq_ST_st15_fsm_14() {
    if (ap_sig_bdd_355.read()) {
        ap_sig_cseq_ST_st15_fsm_14 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st15_fsm_14 = ap_const_logic_0;
    }
}

void tri_intersect::thread_ap_sig_cseq_ST_st16_fsm_15() {
    if (ap_sig_bdd_86.read()) {
        ap_sig_cseq_ST_st16_fsm_15 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st16_fsm_15 = ap_const_logic_0;
    }
}

void tri_intersect::thread_ap_sig_cseq_ST_st17_fsm_16() {
    if (ap_sig_bdd_104.read()) {
        ap_sig_cseq_ST_st17_fsm_16 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st17_fsm_16 = ap_const_logic_0;
    }
}

void tri_intersect::thread_ap_sig_cseq_ST_st18_fsm_17() {
    if (ap_sig_bdd_122.read()) {
        ap_sig_cseq_ST_st18_fsm_17 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st18_fsm_17 = ap_const_logic_0;
    }
}

void tri_intersect::thread_ap_sig_cseq_ST_st19_fsm_18() {
    if (ap_sig_bdd_140.read()) {
        ap_sig_cseq_ST_st19_fsm_18 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st19_fsm_18 = ap_const_logic_0;
    }
}

void tri_intersect::thread_ap_sig_cseq_ST_st1_fsm_0() {
    if (ap_sig_bdd_75.read()) {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    }
}

void tri_intersect::thread_ap_sig_cseq_ST_st20_fsm_19() {
    if (ap_sig_bdd_158.read()) {
        ap_sig_cseq_ST_st20_fsm_19 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st20_fsm_19 = ap_const_logic_0;
    }
}

void tri_intersect::thread_ap_sig_cseq_ST_st21_fsm_20() {
    if (ap_sig_bdd_176.read()) {
        ap_sig_cseq_ST_st21_fsm_20 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st21_fsm_20 = ap_const_logic_0;
    }
}

void tri_intersect::thread_ap_sig_cseq_ST_st22_fsm_21() {
    if (ap_sig_bdd_194.read()) {
        ap_sig_cseq_ST_st22_fsm_21 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st22_fsm_21 = ap_const_logic_0;
    }
}

void tri_intersect::thread_ap_sig_cseq_ST_st23_fsm_22() {
    if (ap_sig_bdd_212.read()) {
        ap_sig_cseq_ST_st23_fsm_22 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st23_fsm_22 = ap_const_logic_0;
    }
}

void tri_intersect::thread_ap_sig_cseq_ST_st24_fsm_23() {
    if (ap_sig_bdd_230.read()) {
        ap_sig_cseq_ST_st24_fsm_23 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st24_fsm_23 = ap_const_logic_0;
    }
}

void tri_intersect::thread_ap_sig_cseq_ST_st25_fsm_24() {
    if (ap_sig_bdd_248.read()) {
        ap_sig_cseq_ST_st25_fsm_24 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st25_fsm_24 = ap_const_logic_0;
    }
}

void tri_intersect::thread_ap_sig_cseq_ST_st26_fsm_25() {
    if (ap_sig_bdd_266.read()) {
        ap_sig_cseq_ST_st26_fsm_25 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st26_fsm_25 = ap_const_logic_0;
    }
}

void tri_intersect::thread_ap_sig_cseq_ST_st27_fsm_26() {
    if (ap_sig_bdd_284.read()) {
        ap_sig_cseq_ST_st27_fsm_26 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st27_fsm_26 = ap_const_logic_0;
    }
}

void tri_intersect::thread_ap_sig_cseq_ST_st28_fsm_27() {
    if (ap_sig_bdd_302.read()) {
        ap_sig_cseq_ST_st28_fsm_27 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st28_fsm_27 = ap_const_logic_0;
    }
}

void tri_intersect::thread_ap_sig_cseq_ST_st29_fsm_28() {
    if (ap_sig_bdd_320.read()) {
        ap_sig_cseq_ST_st29_fsm_28 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st29_fsm_28 = ap_const_logic_0;
    }
}

void tri_intersect::thread_ap_sig_cseq_ST_st2_fsm_1() {
    if (ap_sig_bdd_96.read()) {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    }
}

void tri_intersect::thread_ap_sig_cseq_ST_st30_fsm_29() {
    if (ap_sig_bdd_365.read()) {
        ap_sig_cseq_ST_st30_fsm_29 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st30_fsm_29 = ap_const_logic_0;
    }
}

void tri_intersect::thread_ap_sig_cseq_ST_st3_fsm_2() {
    if (ap_sig_bdd_114.read()) {
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_0;
    }
}

void tri_intersect::thread_ap_sig_cseq_ST_st4_fsm_3() {
    if (ap_sig_bdd_132.read()) {
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_0;
    }
}

void tri_intersect::thread_ap_sig_cseq_ST_st5_fsm_4() {
    if (ap_sig_bdd_150.read()) {
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_0;
    }
}

void tri_intersect::thread_ap_sig_cseq_ST_st6_fsm_5() {
    if (ap_sig_bdd_168.read()) {
        ap_sig_cseq_ST_st6_fsm_5 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st6_fsm_5 = ap_const_logic_0;
    }
}

void tri_intersect::thread_ap_sig_cseq_ST_st7_fsm_6() {
    if (ap_sig_bdd_186.read()) {
        ap_sig_cseq_ST_st7_fsm_6 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st7_fsm_6 = ap_const_logic_0;
    }
}

void tri_intersect::thread_ap_sig_cseq_ST_st8_fsm_7() {
    if (ap_sig_bdd_204.read()) {
        ap_sig_cseq_ST_st8_fsm_7 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st8_fsm_7 = ap_const_logic_0;
    }
}

void tri_intersect::thread_ap_sig_cseq_ST_st9_fsm_8() {
    if (ap_sig_bdd_222.read()) {
        ap_sig_cseq_ST_st9_fsm_8 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st9_fsm_8 = ap_const_logic_0;
    }
}

void tri_intersect::thread_ap_sig_ioackin_outs_TREADY() {
    if (esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_outs_TREADY.read())) {
        ap_sig_ioackin_outs_TREADY = outs_TREADY.read();
    } else {
        ap_sig_ioackin_outs_TREADY = ap_const_logic_1;
    }
}

void tri_intersect::thread_beta_addr_1174175_part_set_fu_1054_p5() {
    beta_addr_1174175_part_set_fu_1054_p5 = esl_partset<576,576,96,32,32>(ap_reg_ppstg_data_array_load_2_reg_1150_pp0_it81.read(), tmp_2_fu_1044_p4.read(), ap_const_lv32_1E0, ap_const_lv32_23F);
}

void tri_intersect::thread_beta_load_fu_1075_p1() {
    beta_load_fu_1075_p1 = reg_549.read();
}

void tri_intersect::thread_beta_load_s_fu_1090_p1() {
    beta_load_s_fu_1090_p1 = reg_549.read();
}

void tri_intersect::thread_beta_write_assign_toint_fu_1040_p1() {
    beta_write_assign_toint_fu_1040_p1 = grp_fu_446_p2.read();
}

void tri_intersect::thread_data_array_addr_1_gep_fu_220_p3() {
    data_array_addr_1_gep_fu_220_p3 =  (sc_lv<1>) (ap_const_lv64_1);
}

void tri_intersect::thread_data_array_addr_gep_fu_208_p3() {
    data_array_addr_gep_fu_208_p3 =  (sc_lv<1>) (ap_const_lv64_0);
}

void tri_intersect::thread_data_array_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st30_fsm_29.read())) {
        data_array_address0 =  (sc_lv<1>) (ap_const_lv64_1);
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st15_fsm_14.read())) {
        data_array_address0 =  (sc_lv<1>) (ap_const_lv64_0);
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_30.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()))) {
        data_array_address0 =  (sc_lv<1>) (tmp_s_fu_803_p1.read());
    } else {
        data_array_address0 = "X";
    }
}

void tri_intersect::thread_data_array_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it83.read())) {
        data_array_address1 = ap_reg_ppstg_data_array_addr_2_reg_1144_pp0_it82.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st118_fsm_34.read())) {
        data_array_address1 = data_array_addr_1_reg_1100.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st115_fsm_31.read())) {
        data_array_address1 = data_array_addr_reg_1095.read();
    } else {
        data_array_address1 = "X";
    }
}

void tri_intersect::thread_data_array_ce0() {
    if (((!esl_seteq<1,1,1>(ins_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st15_fsm_14.read())) || 
         (!esl_seteq<1,1,1>(ins_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st30_fsm_29.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_30.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read())))) {
        data_array_ce0 = ap_const_logic_1;
    } else {
        data_array_ce0 = ap_const_logic_0;
    }
}

void tri_intersect::thread_data_array_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it83.read()) || 
         (!esl_seteq<1,1,1>(ap_const_logic_0, ap_sig_ioackin_outs_TREADY.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st118_fsm_34.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st115_fsm_31.read()))) {
        data_array_ce1 = ap_const_logic_1;
    } else {
        data_array_ce1 = ap_const_logic_0;
    }
}

void tri_intersect::thread_data_array_d0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st30_fsm_29.read())) {
        data_array_d0 = rez_addr_1146147_part_set_fu_778_p5.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st15_fsm_14.read())) {
        data_array_d0 = rez_addr149150_part_set_fu_647_p5.read();
    } else {
        data_array_d0 =  (sc_lv<576>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void tri_intersect::thread_data_array_d1() {
    data_array_d1 = beta_addr_1174175_part_set_reg_1593.read();
}

void tri_intersect::thread_data_array_we0() {
    if (((!esl_seteq<1,1,1>(ins_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st15_fsm_14.read())) || 
         (!esl_seteq<1,1,1>(ins_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st30_fsm_29.read())))) {
        data_array_we0 = ap_const_logic_1;
    } else {
        data_array_we0 = ap_const_logic_0;
    }
}

void tri_intersect::thread_data_array_we1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it83.read()) && 
          esl_seteq<1,1,1>(ap_reg_ppstg_exitcond2_reg_1135_pp0_it82.read(), ap_const_lv1_0)))) {
        data_array_we1 = ap_const_logic_1;
    } else {
        data_array_we1 = ap_const_logic_0;
    }
}

void tri_intersect::thread_exitcond2_fu_791_p2() {
    exitcond2_fu_791_p2 = (!i1_reg_238.read().is_01() || !ap_const_lv2_2.is_01())? sc_lv<1>(): sc_lv<1>(i1_reg_238.read() == ap_const_lv2_2);
}

void tri_intersect::thread_g_fu_1006_p1() {
    g_fu_1006_p1 = ap_reg_ppstg_rdx_assign_new_reg_1200_pp0_it10.read();
}

void tri_intersect::thread_gamma_load_fu_1070_p1() {
    gamma_load_fu_1070_p1 = reg_545.read();
}

void tri_intersect::thread_gamma_load_s_fu_1085_p1() {
    gamma_load_s_fu_1085_p1 = reg_545.read();
}

void tri_intersect::thread_gamma_write_assign_toint_fu_1036_p1() {
    gamma_write_assign_toint_fu_1036_p1 = grp_fu_442_p2.read();
}

void tri_intersect::thread_grp_fu_250_ce() {
    grp_fu_250_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_250_p0() {
    grp_fu_250_p0 = v0x_assign4_fu_952_p1.read();
}

void tri_intersect::thread_grp_fu_250_p1() {
    grp_fu_250_p1 = v1x_assign_new_reg_1170.read();
}

void tri_intersect::thread_grp_fu_254_ce() {
    grp_fu_254_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_254_p0() {
    grp_fu_254_p0 = v0y_assign_fu_958_p1.read();
}

void tri_intersect::thread_grp_fu_254_p1() {
    grp_fu_254_p1 = v1y_assign_new_reg_1175.read();
}

void tri_intersect::thread_grp_fu_258_ce() {
    grp_fu_258_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_258_p0() {
    grp_fu_258_p0 = v0z_assign_fu_964_p1.read();
}

void tri_intersect::thread_grp_fu_258_p1() {
    grp_fu_258_p1 = v1z_assign_new_reg_1180.read();
}

void tri_intersect::thread_grp_fu_262_ce() {
    grp_fu_262_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_262_p0() {
    grp_fu_262_p0 = v0x_assign4_fu_952_p1.read();
}

void tri_intersect::thread_grp_fu_262_p1() {
    grp_fu_262_p1 = v2x_assign_new_reg_1185.read();
}

void tri_intersect::thread_grp_fu_266_ce() {
    grp_fu_266_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_266_p0() {
    grp_fu_266_p0 = v0y_assign_fu_958_p1.read();
}

void tri_intersect::thread_grp_fu_266_p1() {
    grp_fu_266_p1 = v2y_assign_new_reg_1190.read();
}

void tri_intersect::thread_grp_fu_270_ce() {
    grp_fu_270_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_270_p0() {
    grp_fu_270_p0 = v0z_assign_fu_964_p1.read();
}

void tri_intersect::thread_grp_fu_270_p1() {
    grp_fu_270_p1 = v2z_assign_new_reg_1195.read();
}

void tri_intersect::thread_grp_fu_274_ce() {
    grp_fu_274_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_274_p0() {
    grp_fu_274_p0 = v0x_assign4_fu_952_p1.read();
}

void tri_intersect::thread_grp_fu_274_p1() {
    grp_fu_274_p1 = rex_assign_new_reg_1215.read();
}

void tri_intersect::thread_grp_fu_278_ce() {
    grp_fu_278_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_278_p0() {
    grp_fu_278_p0 = v0y_assign_fu_958_p1.read();
}

void tri_intersect::thread_grp_fu_278_p1() {
    grp_fu_278_p1 = rey_assign_new_reg_1220.read();
}

void tri_intersect::thread_grp_fu_282_ce() {
    grp_fu_282_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_282_p0() {
    grp_fu_282_p0 = v0z_assign_fu_964_p1.read();
}

void tri_intersect::thread_grp_fu_282_p1() {
    grp_fu_282_p1 = rez_assign_new_reg_1225.read();
}

void tri_intersect::thread_grp_fu_286_ce() {
    grp_fu_286_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_286_p0() {
    grp_fu_286_p0 = tmp_i_reg_1380.read();
}

void tri_intersect::thread_grp_fu_286_p1() {
    grp_fu_286_p1 = tmp_i_41_reg_1385.read();
}

void tri_intersect::thread_grp_fu_290_ce() {
    grp_fu_290_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_290_p0() {
    grp_fu_290_p0 = tmp_3_i_reg_1390.read();
}

void tri_intersect::thread_grp_fu_290_p1() {
    grp_fu_290_p1 = tmp_4_i_reg_1395.read();
}

void tri_intersect::thread_grp_fu_294_ce() {
    grp_fu_294_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_294_p0() {
    grp_fu_294_p0 = tmp_12_i_reg_1400.read();
}

void tri_intersect::thread_grp_fu_294_p1() {
    grp_fu_294_p1 = tmp_13_i_reg_1405.read();
}

void tri_intersect::thread_grp_fu_298_ce() {
    grp_fu_298_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_298_p0() {
    grp_fu_298_p0 = tmp_16_i_reg_1410.read();
}

void tri_intersect::thread_grp_fu_298_p1() {
    grp_fu_298_p1 = tmp_17_i_reg_1415.read();
}

void tri_intersect::thread_grp_fu_302_ce() {
    grp_fu_302_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_302_p0() {
    grp_fu_302_p0 = tmp_8_i_reg_1432.read();
}

void tri_intersect::thread_grp_fu_302_p1() {
    grp_fu_302_p1 = tmp_9_i_reg_1437.read();
}

void tri_intersect::thread_grp_fu_306_ce() {
    grp_fu_306_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_306_p0() {
    grp_fu_306_p0 = tmp_21_i_reg_1454.read();
}

void tri_intersect::thread_grp_fu_306_p1() {
    grp_fu_306_p1 = tmp_22_i_reg_1459.read();
}

void tri_intersect::thread_grp_fu_310_ce() {
    grp_fu_310_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_310_p0() {
    grp_fu_310_p0 = tmp_2_i_reg_1464.read();
}

void tri_intersect::thread_grp_fu_310_p1() {
    grp_fu_310_p1 = tmp_6_i_reg_1469.read();
}

void tri_intersect::thread_grp_fu_314_ce() {
    grp_fu_314_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_314_p0() {
    grp_fu_314_p0 = tmp_15_i_reg_1474.read();
}

void tri_intersect::thread_grp_fu_314_p1() {
    grp_fu_314_p1 = tmp_19_i_reg_1479.read();
}

void tri_intersect::thread_grp_fu_318_ce() {
    grp_fu_318_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_318_p0() {
    grp_fu_318_p0 = tmp_27_i_reg_1484.read();
}

void tri_intersect::thread_grp_fu_318_p1() {
    grp_fu_318_p1 = tmp_28_i_reg_1489.read();
}

void tri_intersect::thread_grp_fu_322_ce() {
    grp_fu_322_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_322_p0() {
    grp_fu_322_p0 = tmp_32_i_reg_1494.read();
}

void tri_intersect::thread_grp_fu_322_p1() {
    grp_fu_322_p1 = tmp_33_i_reg_1499.read();
}

void tri_intersect::thread_grp_fu_326_ce() {
    grp_fu_326_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_326_p0() {
    grp_fu_326_p0 = tmp_7_i_reg_1516.read();
}

void tri_intersect::thread_grp_fu_326_p1() {
    grp_fu_326_p1 = tmp_11_i_reg_1521.read();
}

void tri_intersect::thread_grp_fu_330_ce() {
    grp_fu_330_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_330_p0() {
    grp_fu_330_p0 = tmp_20_i_reg_1526.read();
}

void tri_intersect::thread_grp_fu_330_p1() {
    grp_fu_330_p1 = tmp_24_i_reg_1531.read();
}

void tri_intersect::thread_grp_fu_334_ce() {
    grp_fu_334_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_334_p0() {
    grp_fu_334_p0 = tmp_29_i_reg_1536.read();
}

void tri_intersect::thread_grp_fu_334_p1() {
    grp_fu_334_p1 = tmp_30_i_reg_1541.read();
}

void tri_intersect::thread_grp_fu_338_ce() {
    grp_fu_338_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_338_p0() {
    grp_fu_338_p0 = tmp_34_i_reg_1546.read();
}

void tri_intersect::thread_grp_fu_338_p1() {
    grp_fu_338_p1 = tmp_35_i_reg_1551.read();
}

void tri_intersect::thread_grp_fu_342_ce() {
    grp_fu_342_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_342_p0() {
    grp_fu_342_p0 = e_reg_1324.read();
}

void tri_intersect::thread_grp_fu_342_p1() {
    grp_fu_342_p1 = i_1_fu_1014_p1.read();
}

void tri_intersect::thread_grp_fu_346_ce() {
    grp_fu_346_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_346_p0() {
    grp_fu_346_p0 = f_reg_1331.read();
}

void tri_intersect::thread_grp_fu_346_p1() {
    grp_fu_346_p1 = ap_reg_ppstg_rdy_assign_new_reg_1205_pp0_it10.read();
}

void tri_intersect::thread_grp_fu_350_ce() {
    grp_fu_350_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_350_p0() {
    grp_fu_350_p0 = f_reg_1331.read();
}

void tri_intersect::thread_grp_fu_350_p1() {
    grp_fu_350_p1 = ap_reg_ppstg_rdx_assign_new_reg_1200_pp0_it10.read();
}

void tri_intersect::thread_grp_fu_354_ce() {
    grp_fu_354_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_354_p0() {
    grp_fu_354_p0 = d_reg_1317.read();
}

void tri_intersect::thread_grp_fu_354_p1() {
    grp_fu_354_p1 = i_1_fu_1014_p1.read();
}

void tri_intersect::thread_grp_fu_358_ce() {
    grp_fu_358_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_358_p0() {
    grp_fu_358_p0 = a_reg_1296.read();
}

void tri_intersect::thread_grp_fu_358_p1() {
    grp_fu_358_p1 = k_reg_1345.read();
}

void tri_intersect::thread_grp_fu_362_ce() {
    grp_fu_362_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_362_p0() {
    grp_fu_362_p0 = j_reg_1338.read();
}

void tri_intersect::thread_grp_fu_362_p1() {
    grp_fu_362_p1 = b_reg_1303.read();
}

void tri_intersect::thread_grp_fu_366_ce() {
    grp_fu_366_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_366_p0() {
    grp_fu_366_p0 = j_reg_1338.read();
}

void tri_intersect::thread_grp_fu_366_p1() {
    grp_fu_366_p1 = c_reg_1310.read();
}

void tri_intersect::thread_grp_fu_370_ce() {
    grp_fu_370_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_370_p0() {
    grp_fu_370_p0 = a_reg_1296.read();
}

void tri_intersect::thread_grp_fu_370_p1() {
    grp_fu_370_p1 = l_reg_1352.read();
}

void tri_intersect::thread_grp_fu_374_ce() {
    grp_fu_374_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_374_p0() {
    grp_fu_374_p0 = ap_reg_ppstg_d_reg_1317_pp0_it19.read();
}

void tri_intersect::thread_grp_fu_374_p1() {
    grp_fu_374_p1 = ap_reg_ppstg_h_reg_1366_pp0_it19.read();
}

void tri_intersect::thread_grp_fu_378_ce() {
    grp_fu_378_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_378_p0() {
    grp_fu_378_p0 = ap_reg_ppstg_e_reg_1324_pp0_it19.read();
}

void tri_intersect::thread_grp_fu_378_p1() {
    grp_fu_378_p1 = ap_reg_ppstg_g_reg_1359_pp0_it19.read();
}

void tri_intersect::thread_grp_fu_382_ce() {
    grp_fu_382_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_382_p0() {
    grp_fu_382_p0 = ap_reg_ppstg_b_reg_1303_pp0_it19.read();
}

void tri_intersect::thread_grp_fu_382_p1() {
    grp_fu_382_p1 = ap_reg_ppstg_l_reg_1352_pp0_it19.read();
}

void tri_intersect::thread_grp_fu_386_ce() {
    grp_fu_386_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_386_p0() {
    grp_fu_386_p0 = ap_reg_ppstg_k_reg_1345_pp0_it19.read();
}

void tri_intersect::thread_grp_fu_386_p1() {
    grp_fu_386_p1 = ap_reg_ppstg_c_reg_1310_pp0_it19.read();
}

void tri_intersect::thread_grp_fu_390_ce() {
    grp_fu_390_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_390_p0() {
    grp_fu_390_p0 = ap_reg_ppstg_a_reg_1296_pp0_it24.read();
}

void tri_intersect::thread_grp_fu_390_p1() {
    grp_fu_390_p1 = tmp_1_i_reg_1420.read();
}

void tri_intersect::thread_grp_fu_394_ce() {
    grp_fu_394_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_394_p0() {
    grp_fu_394_p0 = ap_reg_ppstg_b_reg_1303_pp0_it24.read();
}

void tri_intersect::thread_grp_fu_394_p1() {
    grp_fu_394_p1 = tmp_5_i_reg_1426.read();
}

void tri_intersect::thread_grp_fu_398_ce() {
    grp_fu_398_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_398_p0() {
    grp_fu_398_p0 = ap_reg_ppstg_f_reg_1331_pp0_it24.read();
}

void tri_intersect::thread_grp_fu_398_p1() {
    grp_fu_398_p1 = tmp_14_i_reg_1442.read();
}

void tri_intersect::thread_grp_fu_402_ce() {
    grp_fu_402_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_402_p0() {
    grp_fu_402_p0 = ap_reg_ppstg_e_reg_1324_pp0_it24.read();
}

void tri_intersect::thread_grp_fu_402_p1() {
    grp_fu_402_p1 = tmp_18_i_reg_1448.read();
}

void tri_intersect::thread_grp_fu_406_ce() {
    grp_fu_406_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_406_p0() {
    grp_fu_406_p0 = tmp_14_i_reg_1442.read();
}

void tri_intersect::thread_grp_fu_406_p1() {
    grp_fu_406_p1 = ap_reg_ppstg_i_1_reg_1373_pp0_it24.read();
}

void tri_intersect::thread_grp_fu_410_ce() {
    grp_fu_410_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_410_p0() {
    grp_fu_410_p0 = tmp_18_i_reg_1448.read();
}

void tri_intersect::thread_grp_fu_410_p1() {
    grp_fu_410_p1 = ap_reg_ppstg_h_reg_1366_pp0_it24.read();
}

void tri_intersect::thread_grp_fu_414_ce() {
    grp_fu_414_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_414_p0() {
    grp_fu_414_p0 = ap_reg_ppstg_j_reg_1338_pp0_it24.read();
}

void tri_intersect::thread_grp_fu_414_p1() {
    grp_fu_414_p1 = tmp_1_i_reg_1420.read();
}

void tri_intersect::thread_grp_fu_418_ce() {
    grp_fu_418_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_418_p0() {
    grp_fu_418_p0 = ap_reg_ppstg_k_reg_1345_pp0_it24.read();
}

void tri_intersect::thread_grp_fu_418_p1() {
    grp_fu_418_p1 = tmp_5_i_reg_1426.read();
}

void tri_intersect::thread_grp_fu_422_ce() {
    grp_fu_422_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_422_p0() {
    grp_fu_422_p0 = ap_reg_ppstg_c_reg_1310_pp0_it33.read();
}

void tri_intersect::thread_grp_fu_422_p1() {
    grp_fu_422_p1 = tmp_10_i_reg_1504.read();
}

void tri_intersect::thread_grp_fu_426_ce() {
    grp_fu_426_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_426_p0() {
    grp_fu_426_p0 = ap_reg_ppstg_d_reg_1317_pp0_it33.read();
}

void tri_intersect::thread_grp_fu_426_p1() {
    grp_fu_426_p1 = tmp_23_i_reg_1510.read();
}

void tri_intersect::thread_grp_fu_430_ce() {
    grp_fu_430_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_430_p0() {
    grp_fu_430_p0 = tmp_23_i_reg_1510.read();
}

void tri_intersect::thread_grp_fu_430_p1() {
    grp_fu_430_p1 = ap_reg_ppstg_g_reg_1359_pp0_it33.read();
}

void tri_intersect::thread_grp_fu_434_ce() {
    grp_fu_434_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_434_p0() {
    grp_fu_434_p0 = ap_reg_ppstg_l_reg_1352_pp0_it33.read();
}

void tri_intersect::thread_grp_fu_434_p1() {
    grp_fu_434_p1 = tmp_10_i_reg_1504.read();
}

void tri_intersect::thread_grp_fu_438_ce() {
    grp_fu_438_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_438_p0() {
    grp_fu_438_p0 = tmp_61_neg_i_reg_1583.read();
}

void tri_intersect::thread_grp_fu_438_p1() {
    grp_fu_438_p1 = im_reg_1576.read();
}

void tri_intersect::thread_grp_fu_442_ce() {
    grp_fu_442_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_442_p0() {
    grp_fu_442_p0 = ap_reg_ppstg_tmp_31_i_reg_1566_pp0_it77.read();
}

void tri_intersect::thread_grp_fu_442_p1() {
    grp_fu_442_p1 = im_reg_1576.read();
}

void tri_intersect::thread_grp_fu_446_ce() {
    grp_fu_446_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_446_p0() {
    grp_fu_446_p0 = ap_reg_ppstg_tmp_36_i_reg_1571_pp0_it77.read();
}

void tri_intersect::thread_grp_fu_446_p1() {
    grp_fu_446_p1 = im_reg_1576.read();
}

void tri_intersect::thread_grp_fu_450_ce() {
    grp_fu_450_ce = ap_const_logic_1;
}

void tri_intersect::thread_grp_fu_450_p0() {
    grp_fu_450_p0 = ap_const_lv32_3F800000;
}

void tri_intersect::thread_grp_fu_450_p1() {
    grp_fu_450_p1 = m_reg_1556.read();
}

void tri_intersect::thread_grp_fu_459_p4() {
    grp_fu_459_p4 = data_array_q1.read().range(511, 480);
}

void tri_intersect::thread_h_fu_1010_p1() {
    h_fu_1010_p1 = ap_reg_ppstg_rdy_assign_new_reg_1205_pp0_it10.read();
}

void tri_intersect::thread_i_1_fu_1014_p1() {
    i_1_fu_1014_p1 = ap_reg_ppstg_rdz_assign_new_reg_1210_pp0_it10.read();
}

void tri_intersect::thread_i_fu_797_p2() {
    i_fu_797_p2 = (!i1_reg_238.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<2>(): (sc_biguint<2>(i1_reg_238.read()) + sc_biguint<2>(ap_const_lv2_1));
}

void tri_intersect::thread_ins_TREADY() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
          !esl_seteq<1,1,1>(ins_TVALID.read(), ap_const_logic_0)) || 
         (!esl_seteq<1,1,1>(ins_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st16_fsm_15.read())) || 
         (!esl_seteq<1,1,1>(ins_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read())) || 
         (!esl_seteq<1,1,1>(ins_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st17_fsm_16.read())) || 
         (!esl_seteq<1,1,1>(ins_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read())) || 
         (!esl_seteq<1,1,1>(ins_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st18_fsm_17.read())) || 
         (!esl_seteq<1,1,1>(ins_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read())) || 
         (!esl_seteq<1,1,1>(ins_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st19_fsm_18.read())) || 
         (!esl_seteq<1,1,1>(ins_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st5_fsm_4.read())) || 
         (!esl_seteq<1,1,1>(ins_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st20_fsm_19.read())) || 
         (!esl_seteq<1,1,1>(ins_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st6_fsm_5.read())) || 
         (!esl_seteq<1,1,1>(ins_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st21_fsm_20.read())) || 
         (!esl_seteq<1,1,1>(ins_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st7_fsm_6.read())) || 
         (!esl_seteq<1,1,1>(ins_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st22_fsm_21.read())) || 
         (!esl_seteq<1,1,1>(ins_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st8_fsm_7.read())) || 
         (!esl_seteq<1,1,1>(ins_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st23_fsm_22.read())) || 
         (!esl_seteq<1,1,1>(ins_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st9_fsm_8.read())) || 
         (!esl_seteq<1,1,1>(ins_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st24_fsm_23.read())) || 
         (!esl_seteq<1,1,1>(ins_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st10_fsm_9.read())) || 
         (!esl_seteq<1,1,1>(ins_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st25_fsm_24.read())) || 
         (!esl_seteq<1,1,1>(ins_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st11_fsm_10.read())) || 
         (!esl_seteq<1,1,1>(ins_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st26_fsm_25.read())) || 
         (!esl_seteq<1,1,1>(ins_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st12_fsm_11.read())) || 
         (!esl_seteq<1,1,1>(ins_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st27_fsm_26.read())) || 
         (!esl_seteq<1,1,1>(ins_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st13_fsm_12.read())) || 
         (!esl_seteq<1,1,1>(ins_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st28_fsm_27.read())) || 
         (!esl_seteq<1,1,1>(ins_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st14_fsm_13.read())) || 
         (!esl_seteq<1,1,1>(ins_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st29_fsm_28.read())) || 
         (!esl_seteq<1,1,1>(ins_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st15_fsm_14.read())) || 
         (!esl_seteq<1,1,1>(ins_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st30_fsm_29.read())))) {
        ins_TREADY = ap_const_logic_1;
    } else {
        ins_TREADY = ap_const_logic_0;
    }
}

void tri_intersect::thread_ins_data_tmp_load_10_toint_fu_593_p1() {
    ins_data_tmp_load_10_toint_fu_593_p1 = reg_529.read();
}

void tri_intersect::thread_ins_data_tmp_load_11_toint_fu_597_p1() {
    ins_data_tmp_load_11_toint_fu_597_p1 = reg_533.read();
}

void tri_intersect::thread_ins_data_tmp_load_12_toint_fu_601_p1() {
    ins_data_tmp_load_12_toint_fu_601_p1 = reg_537.read();
}

void tri_intersect::thread_ins_data_tmp_load_13_toint_fu_605_p1() {
    ins_data_tmp_load_13_toint_fu_605_p1 = reg_541.read();
}

void tri_intersect::thread_ins_data_tmp_load_14_toint_fu_609_p1() {
    ins_data_tmp_load_14_toint_fu_609_p1 = ins_TDATA.read();
}

void tri_intersect::thread_ins_data_tmp_load_15_toint_fu_660_p1() {
    ins_data_tmp_load_15_toint_fu_660_p1 = reg_489.read();
}

void tri_intersect::thread_ins_data_tmp_load_16_toint_fu_664_p1() {
    ins_data_tmp_load_16_toint_fu_664_p1 = reg_493.read();
}

void tri_intersect::thread_ins_data_tmp_load_17_toint_fu_668_p1() {
    ins_data_tmp_load_17_toint_fu_668_p1 = reg_497.read();
}

void tri_intersect::thread_ins_data_tmp_load_18_toint_fu_672_p1() {
    ins_data_tmp_load_18_toint_fu_672_p1 = reg_501.read();
}

void tri_intersect::thread_ins_data_tmp_load_19_toint_fu_676_p1() {
    ins_data_tmp_load_19_toint_fu_676_p1 = reg_505.read();
}

void tri_intersect::thread_ins_data_tmp_load_1_toint_fu_557_p1() {
    ins_data_tmp_load_1_toint_fu_557_p1 = reg_493.read();
}

void tri_intersect::thread_ins_data_tmp_load_20_toint_fu_680_p1() {
    ins_data_tmp_load_20_toint_fu_680_p1 = reg_509.read();
}

void tri_intersect::thread_ins_data_tmp_load_21_toint_fu_684_p1() {
    ins_data_tmp_load_21_toint_fu_684_p1 = reg_513.read();
}

void tri_intersect::thread_ins_data_tmp_load_22_toint_fu_688_p1() {
    ins_data_tmp_load_22_toint_fu_688_p1 = reg_517.read();
}

void tri_intersect::thread_ins_data_tmp_load_23_toint_fu_692_p1() {
    ins_data_tmp_load_23_toint_fu_692_p1 = reg_521.read();
}

void tri_intersect::thread_ins_data_tmp_load_24_toint_fu_696_p1() {
    ins_data_tmp_load_24_toint_fu_696_p1 = reg_525.read();
}

void tri_intersect::thread_ins_data_tmp_load_25_toint_fu_700_p1() {
    ins_data_tmp_load_25_toint_fu_700_p1 = reg_529.read();
}

void tri_intersect::thread_ins_data_tmp_load_26_toint_fu_704_p1() {
    ins_data_tmp_load_26_toint_fu_704_p1 = reg_533.read();
}

void tri_intersect::thread_ins_data_tmp_load_27_toint_fu_708_p1() {
    ins_data_tmp_load_27_toint_fu_708_p1 = reg_537.read();
}

void tri_intersect::thread_ins_data_tmp_load_28_toint_fu_712_p1() {
    ins_data_tmp_load_28_toint_fu_712_p1 = reg_541.read();
}

void tri_intersect::thread_ins_data_tmp_load_29_toint_fu_740_p1() {
    ins_data_tmp_load_29_toint_fu_740_p1 = ins_TDATA.read();
}

void tri_intersect::thread_ins_data_tmp_load_2_toint_fu_561_p1() {
    ins_data_tmp_load_2_toint_fu_561_p1 = reg_497.read();
}

void tri_intersect::thread_ins_data_tmp_load_3_toint_fu_565_p1() {
    ins_data_tmp_load_3_toint_fu_565_p1 = reg_501.read();
}

void tri_intersect::thread_ins_data_tmp_load_4_toint_fu_569_p1() {
    ins_data_tmp_load_4_toint_fu_569_p1 = reg_505.read();
}

void tri_intersect::thread_ins_data_tmp_load_5_toint_fu_573_p1() {
    ins_data_tmp_load_5_toint_fu_573_p1 = reg_509.read();
}

void tri_intersect::thread_ins_data_tmp_load_6_toint_fu_577_p1() {
    ins_data_tmp_load_6_toint_fu_577_p1 = reg_513.read();
}

void tri_intersect::thread_ins_data_tmp_load_7_toint_fu_581_p1() {
    ins_data_tmp_load_7_toint_fu_581_p1 = reg_517.read();
}

void tri_intersect::thread_ins_data_tmp_load_8_toint_fu_585_p1() {
    ins_data_tmp_load_8_toint_fu_585_p1 = reg_521.read();
}

void tri_intersect::thread_ins_data_tmp_load_9_toint_fu_589_p1() {
    ins_data_tmp_load_9_toint_fu_589_p1 = reg_525.read();
}

void tri_intersect::thread_ins_data_tmp_load_toint_fu_553_p1() {
    ins_data_tmp_load_toint_fu_553_p1 = reg_489.read();
}

void tri_intersect::thread_outs_TDATA() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st121_fsm_37.read())) {
        outs_TDATA = beta_load_s_fu_1090_p1.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st120_fsm_36.read())) {
        outs_TDATA = gamma_load_s_fu_1085_p1.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st119_fsm_35.read())) {
        outs_TDATA = t_load_s_fu_1080_p1.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st118_fsm_34.read())) {
        outs_TDATA = beta_load_fu_1075_p1.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st117_fsm_33.read())) {
        outs_TDATA = gamma_load_fu_1070_p1.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st116_fsm_32.read())) {
        outs_TDATA = t_load_fu_1065_p1.read();
    } else {
        outs_TDATA =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void tri_intersect::thread_outs_TDEST() {
    outs_TDEST = ins_dest_V_val_reg_1130.read();
}

void tri_intersect::thread_outs_TID() {
    outs_TID = ins_id_V_val_reg_1125.read();
}

void tri_intersect::thread_outs_TKEEP() {
    outs_TKEEP = ins_keep_V_val_reg_1105.read();
}

void tri_intersect::thread_outs_TLAST() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st121_fsm_37.read())) {
        outs_TLAST = ins_last_V_val_reg_1120.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st116_fsm_32.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st119_fsm_35.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st117_fsm_33.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st118_fsm_34.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st120_fsm_36.read()))) {
        outs_TLAST = ap_const_lv1_0;
    } else {
        outs_TLAST = "X";
    }
}

void tri_intersect::thread_outs_TSTRB() {
    outs_TSTRB = ins_strb_V_val_reg_1110.read();
}

void tri_intersect::thread_outs_TUSER() {
    outs_TUSER = ins_user_V_val_reg_1115.read();
}

void tri_intersect::thread_outs_TVALID() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st116_fsm_32.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_outs_TREADY.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st117_fsm_33.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_outs_TREADY.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st118_fsm_34.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_outs_TREADY.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st119_fsm_35.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_outs_TREADY.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st120_fsm_36.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_outs_TREADY.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st121_fsm_37.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_outs_TREADY.read())))) {
        outs_TVALID = ap_const_logic_1;
    } else {
        outs_TVALID = ap_const_logic_0;
    }
}

void tri_intersect::thread_rez_addr149150_part_set_fu_647_p5() {
    rez_addr149150_part_set_fu_647_p5 = esl_partset<576,576,480,32,32>(ap_const_lv576_lc_1, tmp_fu_613_p16.read(), ap_const_lv32_0, ap_const_lv32_1DF);
}

void tri_intersect::thread_rez_addr_1146147_part_set_fu_778_p5() {
    rez_addr_1146147_part_set_fu_778_p5 = esl_partset<576,576,480,32,32>(ap_const_lv576_lc_1, tmp_1_fu_744_p16.read(), ap_const_lv32_0, ap_const_lv32_1DF);
}

void tri_intersect::thread_t_load_fu_1065_p1() {
    t_load_fu_1065_p1 = grp_fu_459_p4.read();
}

void tri_intersect::thread_t_load_s_fu_1080_p1() {
    t_load_s_fu_1080_p1 = grp_fu_459_p4.read();
}

void tri_intersect::thread_t_write_assign_toint_fu_1032_p1() {
    t_write_assign_toint_fu_1032_p1 = grp_fu_438_p2.read();
}

void tri_intersect::thread_tmp_1_fu_744_p16() {
    tmp_1_fu_744_p16 = esl_concat<448,32>(esl_concat<416,32>(esl_concat<384,32>(esl_concat<352,32>(esl_concat<320,32>(esl_concat<288,32>(esl_concat<256,32>(esl_concat<224,32>(esl_concat<192,32>(esl_concat<160,32>(esl_concat<128,32>(esl_concat<96,32>(esl_concat<64,32>(esl_concat<32,32>(ins_data_tmp_load_29_toint_fu_740_p1.read(), ins_data_tmp_load_28_toint_fu_712_p1.read()), ins_data_tmp_load_27_toint_fu_708_p1.read()), ins_data_tmp_load_26_toint_fu_704_p1.read()), ins_data_tmp_load_25_toint_fu_700_p1.read()), ins_data_tmp_load_24_toint_fu_696_p1.read()), ins_data_tmp_load_23_toint_fu_692_p1.read()), ins_data_tmp_load_22_toint_fu_688_p1.read()), ins_data_tmp_load_21_toint_fu_684_p1.read()), ins_data_tmp_load_20_toint_fu_680_p1.read()), ins_data_tmp_load_19_toint_fu_676_p1.read()), ins_data_tmp_load_18_toint_fu_672_p1.read()), ins_data_tmp_load_17_toint_fu_668_p1.read()), ins_data_tmp_load_16_toint_fu_664_p1.read()), ins_data_tmp_load_15_toint_fu_660_p1.read());
}

void tri_intersect::thread_tmp_2_fu_1044_p4() {
    tmp_2_fu_1044_p4 = esl_concat<64,32>(esl_concat<32,32>(beta_write_assign_toint_fu_1040_p1.read(), gamma_write_assign_toint_fu_1036_p1.read()), t_write_assign_toint_fu_1032_p1.read());
}

void tri_intersect::thread_tmp_3_fu_808_p1() {
    tmp_3_fu_808_p1 = data_array_q0.read().range(32-1, 0);
}

void tri_intersect::thread_tmp_61_neg_i_fu_1022_p2() {
    tmp_61_neg_i_fu_1022_p2 = (tmp_61_to_int_i_fu_1019_p1.read() ^ ap_const_lv32_80000000);
}

void tri_intersect::thread_tmp_61_to_int_i_fu_1019_p1() {
    tmp_61_to_int_i_fu_1019_p1 = ap_reg_ppstg_tmp_25_i_reg_1561_pp0_it76.read();
}

void tri_intersect::thread_tmp_fu_613_p16() {
    tmp_fu_613_p16 = esl_concat<448,32>(esl_concat<416,32>(esl_concat<384,32>(esl_concat<352,32>(esl_concat<320,32>(esl_concat<288,32>(esl_concat<256,32>(esl_concat<224,32>(esl_concat<192,32>(esl_concat<160,32>(esl_concat<128,32>(esl_concat<96,32>(esl_concat<64,32>(esl_concat<32,32>(ins_data_tmp_load_14_toint_fu_609_p1.read(), ins_data_tmp_load_13_toint_fu_605_p1.read()), ins_data_tmp_load_12_toint_fu_601_p1.read()), ins_data_tmp_load_11_toint_fu_597_p1.read()), ins_data_tmp_load_10_toint_fu_593_p1.read()), ins_data_tmp_load_9_toint_fu_589_p1.read()), ins_data_tmp_load_8_toint_fu_585_p1.read()), ins_data_tmp_load_7_toint_fu_581_p1.read()), ins_data_tmp_load_6_toint_fu_577_p1.read()), ins_data_tmp_load_5_toint_fu_573_p1.read()), ins_data_tmp_load_4_toint_fu_569_p1.read()), ins_data_tmp_load_3_toint_fu_565_p1.read()), ins_data_tmp_load_2_toint_fu_561_p1.read()), ins_data_tmp_load_1_toint_fu_557_p1.read()), ins_data_tmp_load_toint_fu_553_p1.read());
}

void tri_intersect::thread_tmp_s_fu_803_p1() {
    tmp_s_fu_803_p1 = esl_zext<64,2>(i1_reg_238.read());
}

void tri_intersect::thread_v0x_assign4_fu_952_p1() {
    v0x_assign4_fu_952_p1 = tmp_3_reg_1155.read();
}

void tri_intersect::thread_v0y_assign_fu_958_p1() {
    v0y_assign_fu_958_p1 = v0y_assign_new_reg_1160.read();
}

void tri_intersect::thread_v0z_assign_fu_964_p1() {
    v0z_assign_fu_964_p1 = v0z_assign_new_reg_1165.read();
}

}

