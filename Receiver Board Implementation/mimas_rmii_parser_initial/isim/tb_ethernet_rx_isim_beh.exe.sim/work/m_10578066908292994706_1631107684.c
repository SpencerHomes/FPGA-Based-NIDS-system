/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/ise/MimasV2-shared/mimas_rmii_parser_initial/tb/tb_ethernet_rx.v";
static unsigned int ng1[] = {1U, 0U};
static unsigned int ng2[] = {0U, 0U};
static const char *ng3 = "OUT[%0d] = %02h, tlast=%b";
static int ng4[] = {16, 0};
static const char *ng5 = "FAIL: unexpected extra output byte";
static int ng6[] = {1, 0};
static const char *ng7 = "FAIL: byte %0d actual=%02h expected=%02h";
static int ng8[] = {15, 0};
static const char *ng9 = "FAIL: tlast at output index %0d";
static const char *ng10 = "FAIL: final byte missing tlast";
static int ng11[] = {0, 0};
static unsigned int ng12[] = {17U, 0U};
static unsigned int ng13[] = {34U, 0U};
static int ng14[] = {2, 0};
static unsigned int ng15[] = {51U, 0U};
static int ng16[] = {3, 0};
static unsigned int ng17[] = {68U, 0U};
static int ng18[] = {4, 0};
static unsigned int ng19[] = {85U, 0U};
static int ng20[] = {5, 0};
static unsigned int ng21[] = {102U, 0U};
static int ng22[] = {6, 0};
static unsigned int ng23[] = {119U, 0U};
static int ng24[] = {7, 0};
static unsigned int ng25[] = {136U, 0U};
static int ng26[] = {8, 0};
static unsigned int ng27[] = {153U, 0U};
static int ng28[] = {9, 0};
static unsigned int ng29[] = {170U, 0U};
static int ng30[] = {10, 0};
static unsigned int ng31[] = {187U, 0U};
static int ng32[] = {11, 0};
static unsigned int ng33[] = {8U, 0U};
static int ng34[] = {12, 0};
static int ng35[] = {13, 0};
static unsigned int ng36[] = {69U, 0U};
static int ng37[] = {14, 0};
static const char *ng38 = "Sending seven preamble bytes...";
static const char *ng39 = "Sending SFD...";
static unsigned int ng40[] = {213U, 0U};
static const char *ng41 = "Sending 16 Ethernet bytes...";
static const char *ng42 = "";
static const char *ng43 = "---- Ethernet RX test results ----";
static const char *ng44 = "Output bytes: %0d";
static const char *ng45 = "FAIL: expected 16 output bytes";
static const char *ng46 = "FAIL: no correctly positioned tlast observed";
static const char *ng47 = "ALL CHECKS PASSED";
static const char *ng48 = "TEST FAILED: %0d error(s)";



static int sp_send_rmii_byte(char *t1, char *t2)
{
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    t0 = 1;
    t3 = (t2 + 48U);
    t4 = *((char **)t3);
    if (t4 == 0)
        goto LAB2;

LAB3:    goto *t4;

LAB2:    t4 = (t1 + 848);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(41, ng0);

LAB5:    xsi_set_current_line(42, ng0);
    t5 = (t2 + 88U);
    t6 = *((char **)t5);
    t7 = (t6 + 0U);
    xsi_wp_set_status(t7, 1);
    *((char **)t3) = &&LAB6;

LAB1:    return t0;
LAB4:    xsi_vlog_dispose_subprogram_invocation(t2);
    t4 = (t2 + 48U);
    *((char **)t4) = &&LAB2;
    t0 = 0;
    goto LAB1;

LAB6:    xsi_set_current_line(43, ng0);
    t4 = (t1 + 3960);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t1 + 2520);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 8);
    xsi_set_current_line(44, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t1 + 2680);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(46, ng0);
    t4 = (t2 + 88U);
    t5 = *((char **)t4);
    t6 = (t5 + 16U);
    xsi_wp_set_status(t6, 1);
    *((char **)t3) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(47, ng0);
    t4 = ((char*)((ng2)));
    t5 = (t1 + 2680);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    goto LAB4;

}

static void Initial_35_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(35, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 2200);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);

LAB1:    return;
}

static void Always_36_1(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;

LAB0:    t1 = (t0 + 5120U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 4928);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(36, ng0);
    t4 = (t0 + 2200);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB8;

LAB6:    if (*((unsigned int *)t7) == 0)
        goto LAB5;

LAB7:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB8:    t14 = (t3 + 4);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (~(t16));
    *((unsigned int *)t3) = t17;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB10;

LAB9:    t22 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t22 & 1U);
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 1U);
    t24 = (t0 + 2200);
    xsi_vlogvar_assign_value(t24, t3, 0, 0, 1);
    goto LAB2;

LAB5:    *((unsigned int *)t3) = 1;
    goto LAB8;

LAB10:    t18 = *((unsigned int *)t3);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t3) = (t18 | t19);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t20 | t21);
    goto LAB9;

}

static void Always_52_2(char *t0)
{
    char t7[8];
    char t21[8];
    char t28[8];
    char t60[8];
    char t75[8];
    char t83[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    char *t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    int t52;
    int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    char *t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    char *t67;
    char *t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    char *t72;
    char *t73;
    char *t74;
    char *t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    char *t82;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    char *t87;
    char *t88;
    char *t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    char *t97;
    char *t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    int t107;
    int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    char *t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    char *t121;
    char *t122;
    char *t123;
    char *t124;
    char *t125;
    char *t126;

LAB0:    t1 = (t0 + 5368U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 5968);
    *((int *)t2) = 1;
    t3 = (t0 + 5400);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(52, ng0);

LAB5:    xsi_set_current_line(53, ng0);
    t4 = (t0 + 2360);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t7, 0, 8);
    t8 = (t6 + 4);
    t9 = *((unsigned int *)t8);
    t10 = (~(t9));
    t11 = *((unsigned int *)t6);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB6;

LAB7:    if (*((unsigned int *)t8) != 0)
        goto LAB8;

LAB9:    t15 = (t7 + 4);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t15);
    t18 = (t16 || t17);
    if (t18 > 0)
        goto LAB10;

LAB11:    memcpy(t28, t7, 8);

LAB12:    memset(t60, 0, 8);
    t61 = (t28 + 4);
    t62 = *((unsigned int *)t61);
    t63 = (~(t62));
    t64 = *((unsigned int *)t28);
    t65 = (t64 & t63);
    t66 = (t65 & 1U);
    if (t66 != 0)
        goto LAB20;

LAB21:    if (*((unsigned int *)t61) != 0)
        goto LAB22;

LAB23:    t68 = (t60 + 4);
    t69 = *((unsigned int *)t60);
    t70 = *((unsigned int *)t68);
    t71 = (t69 || t70);
    if (t71 > 0)
        goto LAB24;

LAB25:    memcpy(t83, t60, 8);

LAB26:    t115 = (t83 + 4);
    t116 = *((unsigned int *)t115);
    t117 = (~(t116));
    t118 = *((unsigned int *)t83);
    t119 = (t118 & t117);
    t120 = (t119 != 0);
    if (t120 > 0)
        goto LAB34;

LAB35:
LAB36:    goto LAB2;

LAB6:    *((unsigned int *)t7) = 1;
    goto LAB9;

LAB8:    t14 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB9;

LAB10:    t19 = (t0 + 1800U);
    t20 = *((char **)t19);
    memset(t21, 0, 8);
    t19 = (t20 + 4);
    t22 = *((unsigned int *)t19);
    t23 = (~(t22));
    t24 = *((unsigned int *)t20);
    t25 = (t24 & t23);
    t26 = (t25 & 1U);
    if (t26 != 0)
        goto LAB13;

LAB14:    if (*((unsigned int *)t19) != 0)
        goto LAB15;

LAB16:    t29 = *((unsigned int *)t7);
    t30 = *((unsigned int *)t21);
    t31 = (t29 & t30);
    *((unsigned int *)t28) = t31;
    t32 = (t7 + 4);
    t33 = (t21 + 4);
    t34 = (t28 + 4);
    t35 = *((unsigned int *)t32);
    t36 = *((unsigned int *)t33);
    t37 = (t35 | t36);
    *((unsigned int *)t34) = t37;
    t38 = *((unsigned int *)t34);
    t39 = (t38 != 0);
    if (t39 == 1)
        goto LAB17;

LAB18:
LAB19:    goto LAB12;

LAB13:    *((unsigned int *)t21) = 1;
    goto LAB16;

LAB15:    t27 = (t21 + 4);
    *((unsigned int *)t21) = 1;
    *((unsigned int *)t27) = 1;
    goto LAB16;

LAB17:    t40 = *((unsigned int *)t28);
    t41 = *((unsigned int *)t34);
    *((unsigned int *)t28) = (t40 | t41);
    t42 = (t7 + 4);
    t43 = (t21 + 4);
    t44 = *((unsigned int *)t7);
    t45 = (~(t44));
    t46 = *((unsigned int *)t42);
    t47 = (~(t46));
    t48 = *((unsigned int *)t21);
    t49 = (~(t48));
    t50 = *((unsigned int *)t43);
    t51 = (~(t50));
    t52 = (t45 & t47);
    t53 = (t49 & t51);
    t54 = (~(t52));
    t55 = (~(t53));
    t56 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t56 & t54);
    t57 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t57 & t55);
    t58 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t58 & t54);
    t59 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t59 & t55);
    goto LAB19;

LAB20:    *((unsigned int *)t60) = 1;
    goto LAB23;

LAB22:    t67 = (t60 + 4);
    *((unsigned int *)t60) = 1;
    *((unsigned int *)t67) = 1;
    goto LAB23;

LAB24:    t72 = (t0 + 3000);
    t73 = (t72 + 56U);
    t74 = *((char **)t73);
    memset(t75, 0, 8);
    t76 = (t74 + 4);
    t77 = *((unsigned int *)t76);
    t78 = (~(t77));
    t79 = *((unsigned int *)t74);
    t80 = (t79 & t78);
    t81 = (t80 & 1U);
    if (t81 != 0)
        goto LAB27;

LAB28:    if (*((unsigned int *)t76) != 0)
        goto LAB29;

LAB30:    t84 = *((unsigned int *)t60);
    t85 = *((unsigned int *)t75);
    t86 = (t84 & t85);
    *((unsigned int *)t83) = t86;
    t87 = (t60 + 4);
    t88 = (t75 + 4);
    t89 = (t83 + 4);
    t90 = *((unsigned int *)t87);
    t91 = *((unsigned int *)t88);
    t92 = (t90 | t91);
    *((unsigned int *)t89) = t92;
    t93 = *((unsigned int *)t89);
    t94 = (t93 != 0);
    if (t94 == 1)
        goto LAB31;

LAB32:
LAB33:    goto LAB26;

LAB27:    *((unsigned int *)t75) = 1;
    goto LAB30;

LAB29:    t82 = (t75 + 4);
    *((unsigned int *)t75) = 1;
    *((unsigned int *)t82) = 1;
    goto LAB30;

LAB31:    t95 = *((unsigned int *)t83);
    t96 = *((unsigned int *)t89);
    *((unsigned int *)t83) = (t95 | t96);
    t97 = (t60 + 4);
    t98 = (t75 + 4);
    t99 = *((unsigned int *)t60);
    t100 = (~(t99));
    t101 = *((unsigned int *)t97);
    t102 = (~(t101));
    t103 = *((unsigned int *)t75);
    t104 = (~(t103));
    t105 = *((unsigned int *)t98);
    t106 = (~(t105));
    t107 = (t100 & t102);
    t108 = (t104 & t106);
    t109 = (~(t107));
    t110 = (~(t108));
    t111 = *((unsigned int *)t89);
    *((unsigned int *)t89) = (t111 & t109);
    t112 = *((unsigned int *)t89);
    *((unsigned int *)t89) = (t112 & t110);
    t113 = *((unsigned int *)t83);
    *((unsigned int *)t83) = (t113 & t109);
    t114 = *((unsigned int *)t83);
    *((unsigned int *)t83) = (t114 & t110);
    goto LAB33;

LAB34:    xsi_set_current_line(53, ng0);

LAB37:    xsi_set_current_line(54, ng0);
    t121 = (t0 + 3480);
    t122 = (t121 + 56U);
    t123 = *((char **)t122);
    t124 = (t0 + 1480U);
    t125 = *((char **)t124);
    t124 = (t0 + 1640U);
    t126 = *((char **)t124);
    xsi_vlogfile_write(1, 0, 0, ng3, 4, t0, (char)119, t123, 32, (char)118, t125, 8, (char)118, t126, 1);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 3480);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t7, 0, 8);
    xsi_vlog_signed_greatereq(t7, 32, t4, 32, t5, 32);
    t6 = (t7 + 4);
    t9 = *((unsigned int *)t6);
    t10 = (~(t9));
    t11 = *((unsigned int *)t7);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB38;

LAB39:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 1480U);
    t3 = *((char **)t2);
    t2 = (t0 + 3160);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t0 + 3160);
    t8 = (t6 + 72U);
    t14 = *((char **)t8);
    t15 = (t0 + 3160);
    t19 = (t15 + 64U);
    t20 = *((char **)t19);
    t27 = (t0 + 3480);
    t32 = (t27 + 56U);
    t33 = *((char **)t32);
    xsi_vlog_generic_get_array_select_value(t7, 8, t5, t14, t20, 2, 1, t33, 32, 1);
    memset(t21, 0, 8);
    if (*((unsigned int *)t3) != *((unsigned int *)t7))
        goto LAB43;

LAB42:    t34 = (t3 + 4);
    t42 = (t7 + 4);
    if (*((unsigned int *)t34) != *((unsigned int *)t42))
        goto LAB43;

LAB44:    t43 = (t21 + 4);
    t9 = *((unsigned int *)t43);
    t10 = (~(t9));
    t11 = *((unsigned int *)t21);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB45;

LAB46:
LAB47:
LAB40:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 1640U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t9 = *((unsigned int *)t2);
    t10 = (~(t9));
    t11 = *((unsigned int *)t3);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB49;

LAB50:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 3480);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng8)));
    memset(t7, 0, 8);
    xsi_vlog_signed_equal(t7, 32, t4, 32, t5, 32);
    t6 = (t7 + 4);
    t9 = *((unsigned int *)t6);
    t10 = (~(t9));
    t11 = *((unsigned int *)t7);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB57;

LAB58:
LAB59:
LAB51:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 3480);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng6)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t4, 32, t5, 32);
    t6 = (t0 + 3480);
    xsi_vlogvar_assign_value(t6, t7, 0, 0, 32);
    goto LAB36;

LAB38:    xsi_set_current_line(57, ng0);

LAB41:    xsi_set_current_line(58, ng0);
    xsi_vlogfile_write(1, 0, 0, ng5, 1, t0);
    xsi_set_current_line(59, ng0);
    t2 = (t0 + 3640);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng6)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t4, 32, t5, 32);
    t6 = (t0 + 3640);
    xsi_vlogvar_assign_value(t6, t7, 0, 0, 32);
    goto LAB40;

LAB43:    *((unsigned int *)t21) = 1;
    goto LAB44;

LAB45:    xsi_set_current_line(60, ng0);

LAB48:    xsi_set_current_line(61, ng0);
    t61 = (t0 + 3480);
    t67 = (t61 + 56U);
    t68 = *((char **)t67);
    t72 = (t0 + 1480U);
    t73 = *((char **)t72);
    t72 = (t0 + 3160);
    t74 = (t72 + 56U);
    t76 = *((char **)t74);
    t82 = (t0 + 3160);
    t87 = (t82 + 72U);
    t88 = *((char **)t87);
    t89 = (t0 + 3160);
    t97 = (t89 + 64U);
    t98 = *((char **)t97);
    t115 = (t0 + 3480);
    t121 = (t115 + 56U);
    t122 = *((char **)t121);
    xsi_vlog_generic_get_array_select_value(t28, 8, t76, t88, t98, 2, 1, t122, 32, 1);
    xsi_vlogfile_write(1, 0, 0, ng7, 4, t0, (char)119, t68, 32, (char)118, t73, 8, (char)118, t28, 8);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 3640);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng6)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t4, 32, t5, 32);
    t6 = (t0 + 3640);
    xsi_vlogvar_assign_value(t6, t7, 0, 0, 32);
    goto LAB47;

LAB49:    xsi_set_current_line(67, ng0);

LAB52:    xsi_set_current_line(68, ng0);
    t4 = (t0 + 3480);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = ((char*)((ng8)));
    memset(t7, 0, 8);
    xsi_vlog_signed_not_equal(t7, 32, t6, 32, t8, 32);
    t14 = (t7 + 4);
    t16 = *((unsigned int *)t14);
    t17 = (~(t16));
    t18 = *((unsigned int *)t7);
    t22 = (t18 & t17);
    t23 = (t22 != 0);
    if (t23 > 0)
        goto LAB53;

LAB54:
LAB55:    xsi_set_current_line(73, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 3800);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    goto LAB51;

LAB53:    xsi_set_current_line(68, ng0);

LAB56:    xsi_set_current_line(69, ng0);
    t15 = (t0 + 3480);
    t19 = (t15 + 56U);
    t20 = *((char **)t19);
    xsi_vlogfile_write(1, 0, 0, ng9, 2, t0, (char)119, t20, 32);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 3640);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng6)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t4, 32, t5, 32);
    t6 = (t0 + 3640);
    xsi_vlogvar_assign_value(t6, t7, 0, 0, 32);
    goto LAB55;

LAB57:    xsi_set_current_line(74, ng0);

LAB60:    xsi_set_current_line(75, ng0);
    xsi_vlogfile_write(1, 0, 0, ng10, 1, t0);
    xsi_set_current_line(76, ng0);
    t2 = (t0 + 3640);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng6)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t4, 32, t5, 32);
    t6 = (t0 + 3640);
    xsi_vlogvar_assign_value(t6, t7, 0, 0, 32);
    goto LAB59;

}

static void Initial_83_3(char *t0)
{
    char t4[8];
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    unsigned int t14;
    int t15;
    char *t16;
    unsigned int t17;
    int t18;
    int t19;
    unsigned int t20;
    unsigned int t21;
    int t22;
    int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;

LAB0:    t1 = (t0 + 5616U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(83, ng0);

LAB4:    xsi_set_current_line(84, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2360);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(85, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2520);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(86, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2680);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(87, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2840);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(88, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3000);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(89, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 3480);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(90, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 3640);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(91, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 3800);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(94, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3160);
    t6 = (t0 + 3160);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = (t0 + 3160);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = ((char*)((ng11)));
    xsi_vlog_generic_convert_array_indices(t4, t5, t8, t11, 2, 1, t12, 32, 1);
    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (!(t14));
    t16 = (t5 + 4);
    t17 = *((unsigned int *)t16);
    t18 = (!(t17));
    t19 = (t15 && t18);
    if (t19 == 1)
        goto LAB5;

LAB6:    xsi_set_current_line(95, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 3160);
    t6 = (t0 + 3160);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = (t0 + 3160);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = ((char*)((ng6)));
    xsi_vlog_generic_convert_array_indices(t4, t5, t8, t11, 2, 1, t12, 32, 1);
    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (!(t14));
    t16 = (t5 + 4);
    t17 = *((unsigned int *)t16);
    t18 = (!(t17));
    t19 = (t15 && t18);
    if (t19 == 1)
        goto LAB7;

LAB8:    xsi_set_current_line(96, ng0);
    t2 = ((char*)((ng13)));
    t3 = (t0 + 3160);
    t6 = (t0 + 3160);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = (t0 + 3160);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = ((char*)((ng14)));
    xsi_vlog_generic_convert_array_indices(t4, t5, t8, t11, 2, 1, t12, 32, 1);
    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (!(t14));
    t16 = (t5 + 4);
    t17 = *((unsigned int *)t16);
    t18 = (!(t17));
    t19 = (t15 && t18);
    if (t19 == 1)
        goto LAB9;

LAB10:    xsi_set_current_line(97, ng0);
    t2 = ((char*)((ng15)));
    t3 = (t0 + 3160);
    t6 = (t0 + 3160);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = (t0 + 3160);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = ((char*)((ng16)));
    xsi_vlog_generic_convert_array_indices(t4, t5, t8, t11, 2, 1, t12, 32, 1);
    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (!(t14));
    t16 = (t5 + 4);
    t17 = *((unsigned int *)t16);
    t18 = (!(t17));
    t19 = (t15 && t18);
    if (t19 == 1)
        goto LAB11;

LAB12:    xsi_set_current_line(98, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 3160);
    t6 = (t0 + 3160);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = (t0 + 3160);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = ((char*)((ng18)));
    xsi_vlog_generic_convert_array_indices(t4, t5, t8, t11, 2, 1, t12, 32, 1);
    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (!(t14));
    t16 = (t5 + 4);
    t17 = *((unsigned int *)t16);
    t18 = (!(t17));
    t19 = (t15 && t18);
    if (t19 == 1)
        goto LAB13;

LAB14:    xsi_set_current_line(99, ng0);
    t2 = ((char*)((ng19)));
    t3 = (t0 + 3160);
    t6 = (t0 + 3160);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = (t0 + 3160);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = ((char*)((ng20)));
    xsi_vlog_generic_convert_array_indices(t4, t5, t8, t11, 2, 1, t12, 32, 1);
    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (!(t14));
    t16 = (t5 + 4);
    t17 = *((unsigned int *)t16);
    t18 = (!(t17));
    t19 = (t15 && t18);
    if (t19 == 1)
        goto LAB15;

LAB16:    xsi_set_current_line(100, ng0);
    t2 = ((char*)((ng21)));
    t3 = (t0 + 3160);
    t6 = (t0 + 3160);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = (t0 + 3160);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = ((char*)((ng22)));
    xsi_vlog_generic_convert_array_indices(t4, t5, t8, t11, 2, 1, t12, 32, 1);
    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (!(t14));
    t16 = (t5 + 4);
    t17 = *((unsigned int *)t16);
    t18 = (!(t17));
    t19 = (t15 && t18);
    if (t19 == 1)
        goto LAB17;

LAB18:    xsi_set_current_line(101, ng0);
    t2 = ((char*)((ng23)));
    t3 = (t0 + 3160);
    t6 = (t0 + 3160);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = (t0 + 3160);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = ((char*)((ng24)));
    xsi_vlog_generic_convert_array_indices(t4, t5, t8, t11, 2, 1, t12, 32, 1);
    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (!(t14));
    t16 = (t5 + 4);
    t17 = *((unsigned int *)t16);
    t18 = (!(t17));
    t19 = (t15 && t18);
    if (t19 == 1)
        goto LAB19;

LAB20:    xsi_set_current_line(102, ng0);
    t2 = ((char*)((ng25)));
    t3 = (t0 + 3160);
    t6 = (t0 + 3160);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = (t0 + 3160);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = ((char*)((ng26)));
    xsi_vlog_generic_convert_array_indices(t4, t5, t8, t11, 2, 1, t12, 32, 1);
    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (!(t14));
    t16 = (t5 + 4);
    t17 = *((unsigned int *)t16);
    t18 = (!(t17));
    t19 = (t15 && t18);
    if (t19 == 1)
        goto LAB21;

LAB22:    xsi_set_current_line(103, ng0);
    t2 = ((char*)((ng27)));
    t3 = (t0 + 3160);
    t6 = (t0 + 3160);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = (t0 + 3160);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = ((char*)((ng28)));
    xsi_vlog_generic_convert_array_indices(t4, t5, t8, t11, 2, 1, t12, 32, 1);
    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (!(t14));
    t16 = (t5 + 4);
    t17 = *((unsigned int *)t16);
    t18 = (!(t17));
    t19 = (t15 && t18);
    if (t19 == 1)
        goto LAB23;

LAB24:    xsi_set_current_line(104, ng0);
    t2 = ((char*)((ng29)));
    t3 = (t0 + 3160);
    t6 = (t0 + 3160);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = (t0 + 3160);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = ((char*)((ng30)));
    xsi_vlog_generic_convert_array_indices(t4, t5, t8, t11, 2, 1, t12, 32, 1);
    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (!(t14));
    t16 = (t5 + 4);
    t17 = *((unsigned int *)t16);
    t18 = (!(t17));
    t19 = (t15 && t18);
    if (t19 == 1)
        goto LAB25;

LAB26:    xsi_set_current_line(105, ng0);
    t2 = ((char*)((ng31)));
    t3 = (t0 + 3160);
    t6 = (t0 + 3160);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = (t0 + 3160);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = ((char*)((ng32)));
    xsi_vlog_generic_convert_array_indices(t4, t5, t8, t11, 2, 1, t12, 32, 1);
    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (!(t14));
    t16 = (t5 + 4);
    t17 = *((unsigned int *)t16);
    t18 = (!(t17));
    t19 = (t15 && t18);
    if (t19 == 1)
        goto LAB27;

LAB28:    xsi_set_current_line(106, ng0);
    t2 = ((char*)((ng33)));
    t3 = (t0 + 3160);
    t6 = (t0 + 3160);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = (t0 + 3160);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = ((char*)((ng34)));
    xsi_vlog_generic_convert_array_indices(t4, t5, t8, t11, 2, 1, t12, 32, 1);
    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (!(t14));
    t16 = (t5 + 4);
    t17 = *((unsigned int *)t16);
    t18 = (!(t17));
    t19 = (t15 && t18);
    if (t19 == 1)
        goto LAB29;

LAB30:    xsi_set_current_line(107, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3160);
    t6 = (t0 + 3160);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = (t0 + 3160);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = ((char*)((ng35)));
    xsi_vlog_generic_convert_array_indices(t4, t5, t8, t11, 2, 1, t12, 32, 1);
    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (!(t14));
    t16 = (t5 + 4);
    t17 = *((unsigned int *)t16);
    t18 = (!(t17));
    t19 = (t15 && t18);
    if (t19 == 1)
        goto LAB31;

LAB32:    xsi_set_current_line(108, ng0);
    t2 = ((char*)((ng36)));
    t3 = (t0 + 3160);
    t6 = (t0 + 3160);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = (t0 + 3160);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = ((char*)((ng37)));
    xsi_vlog_generic_convert_array_indices(t4, t5, t8, t11, 2, 1, t12, 32, 1);
    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (!(t14));
    t16 = (t5 + 4);
    t17 = *((unsigned int *)t16);
    t18 = (!(t17));
    t19 = (t15 && t18);
    if (t19 == 1)
        goto LAB33;

LAB34:    xsi_set_current_line(109, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3160);
    t6 = (t0 + 3160);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = (t0 + 3160);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = ((char*)((ng8)));
    xsi_vlog_generic_convert_array_indices(t4, t5, t8, t11, 2, 1, t12, 32, 1);
    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (!(t14));
    t16 = (t5 + 4);
    t17 = *((unsigned int *)t16);
    t18 = (!(t17));
    t19 = (t15 && t18);
    if (t19 == 1)
        goto LAB35;

LAB36:    xsi_set_current_line(111, ng0);
    t2 = ((char*)((ng18)));
    t3 = (t2 + 4);
    t14 = *((unsigned int *)t3);
    t17 = (~(t14));
    t20 = *((unsigned int *)t2);
    t15 = (t20 & t17);
    t6 = (t0 + 8192);
    *((int *)t6) = t15;

LAB37:    t7 = (t0 + 8192);
    if (*((int *)t7) > 0)
        goto LAB38;

LAB39:    xsi_set_current_line(112, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2360);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(113, ng0);
    t2 = ((char*)((ng14)));
    t3 = (t2 + 4);
    t14 = *((unsigned int *)t3);
    t17 = (~(t14));
    t20 = *((unsigned int *)t2);
    t15 = (t20 & t17);
    t6 = (t0 + 8196);
    *((int *)t6) = t15;

LAB41:    t7 = (t0 + 8196);
    if (*((int *)t7) > 0)
        goto LAB42;

LAB43:    xsi_set_current_line(115, ng0);
    xsi_vlogfile_write(1, 0, 0, ng38, 1, t0);
    xsi_set_current_line(117, ng0);
    xsi_set_current_line(117, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 3320);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB45:    t2 = (t0 + 3320);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t7 = ((char*)((ng24)));
    memset(t4, 0, 8);
    xsi_vlog_signed_less(t4, 32, t6, 32, t7, 32);
    t8 = (t4 + 4);
    t14 = *((unsigned int *)t8);
    t17 = (~(t14));
    t20 = *((unsigned int *)t4);
    t21 = (t20 & t17);
    t24 = (t21 != 0);
    if (t24 > 0)
        goto LAB46;

LAB47:    xsi_set_current_line(120, ng0);
    xsi_vlogfile_write(1, 0, 0, ng39, 1, t0);
    xsi_set_current_line(121, ng0);
    t2 = ((char*)((ng40)));
    t3 = (t0 + 5424);
    t6 = (t0 + 848);
    t7 = xsi_create_subprogram_invocation(t3, 0, t0, t6, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t6, t7);
    t8 = (t0 + 3960);
    xsi_vlogvar_assign_value(t8, t2, 0, 0, 8);

LAB56:    t9 = (t0 + 5520);
    t10 = *((char **)t9);
    t11 = (t10 + 80U);
    t12 = *((char **)t11);
    t13 = (t12 + 272U);
    t16 = *((char **)t13);
    t25 = (t16 + 0U);
    t26 = *((char **)t25);
    t15 = ((int  (*)(char *, char *))t26)(t0, t10);

LAB58:    if (t15 != 0)
        goto LAB59;

LAB54:    t10 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t10);

LAB55:    t27 = (t0 + 5520);
    t28 = *((char **)t27);
    t27 = (t0 + 848);
    t29 = (t0 + 5424);
    t30 = 0;
    xsi_delete_subprogram_invocation(t27, t28, t0, t29, t30);
    xsi_set_current_line(123, ng0);
    xsi_vlogfile_write(1, 0, 0, ng41, 1, t0);
    xsi_set_current_line(125, ng0);
    xsi_set_current_line(125, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 3320);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB60:    t2 = (t0 + 3320);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t7 = ((char*)((ng4)));
    memset(t4, 0, 8);
    xsi_vlog_signed_less(t4, 32, t6, 32, t7, 32);
    t8 = (t4 + 4);
    t14 = *((unsigned int *)t8);
    t17 = (~(t14));
    t20 = *((unsigned int *)t4);
    t21 = (t20 & t17);
    t24 = (t21 != 0);
    if (t24 > 0)
        goto LAB61;

LAB62:    xsi_set_current_line(129, ng0);
    t2 = (t0 + 6016);
    *((int *)t2) = 1;
    t3 = (t0 + 5648);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB69;

LAB1:    return;
LAB5:    t20 = *((unsigned int *)t4);
    t21 = *((unsigned int *)t5);
    t22 = (t20 - t21);
    t23 = (t22 + 1);
    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t5), t23);
    goto LAB6;

LAB7:    t20 = *((unsigned int *)t4);
    t21 = *((unsigned int *)t5);
    t22 = (t20 - t21);
    t23 = (t22 + 1);
    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t5), t23);
    goto LAB8;

LAB9:    t20 = *((unsigned int *)t4);
    t21 = *((unsigned int *)t5);
    t22 = (t20 - t21);
    t23 = (t22 + 1);
    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t5), t23);
    goto LAB10;

LAB11:    t20 = *((unsigned int *)t4);
    t21 = *((unsigned int *)t5);
    t22 = (t20 - t21);
    t23 = (t22 + 1);
    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t5), t23);
    goto LAB12;

LAB13:    t20 = *((unsigned int *)t4);
    t21 = *((unsigned int *)t5);
    t22 = (t20 - t21);
    t23 = (t22 + 1);
    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t5), t23);
    goto LAB14;

LAB15:    t20 = *((unsigned int *)t4);
    t21 = *((unsigned int *)t5);
    t22 = (t20 - t21);
    t23 = (t22 + 1);
    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t5), t23);
    goto LAB16;

LAB17:    t20 = *((unsigned int *)t4);
    t21 = *((unsigned int *)t5);
    t22 = (t20 - t21);
    t23 = (t22 + 1);
    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t5), t23);
    goto LAB18;

LAB19:    t20 = *((unsigned int *)t4);
    t21 = *((unsigned int *)t5);
    t22 = (t20 - t21);
    t23 = (t22 + 1);
    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t5), t23);
    goto LAB20;

LAB21:    t20 = *((unsigned int *)t4);
    t21 = *((unsigned int *)t5);
    t22 = (t20 - t21);
    t23 = (t22 + 1);
    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t5), t23);
    goto LAB22;

LAB23:    t20 = *((unsigned int *)t4);
    t21 = *((unsigned int *)t5);
    t22 = (t20 - t21);
    t23 = (t22 + 1);
    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t5), t23);
    goto LAB24;

LAB25:    t20 = *((unsigned int *)t4);
    t21 = *((unsigned int *)t5);
    t22 = (t20 - t21);
    t23 = (t22 + 1);
    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t5), t23);
    goto LAB26;

LAB27:    t20 = *((unsigned int *)t4);
    t21 = *((unsigned int *)t5);
    t22 = (t20 - t21);
    t23 = (t22 + 1);
    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t5), t23);
    goto LAB28;

LAB29:    t20 = *((unsigned int *)t4);
    t21 = *((unsigned int *)t5);
    t22 = (t20 - t21);
    t23 = (t22 + 1);
    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t5), t23);
    goto LAB30;

LAB31:    t20 = *((unsigned int *)t4);
    t21 = *((unsigned int *)t5);
    t22 = (t20 - t21);
    t23 = (t22 + 1);
    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t5), t23);
    goto LAB32;

LAB33:    t20 = *((unsigned int *)t4);
    t21 = *((unsigned int *)t5);
    t22 = (t20 - t21);
    t23 = (t22 + 1);
    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t5), t23);
    goto LAB34;

LAB35:    t20 = *((unsigned int *)t4);
    t21 = *((unsigned int *)t5);
    t22 = (t20 - t21);
    t23 = (t22 + 1);
    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t5), t23);
    goto LAB36;

LAB38:    xsi_set_current_line(111, ng0);
    t8 = (t0 + 5984);
    *((int *)t8) = 1;
    t9 = (t0 + 5648);
    *((char **)t9) = t8;
    *((char **)t1) = &&LAB40;
    goto LAB1;

LAB40:    t2 = (t0 + 8192);
    t15 = *((int *)t2);
    *((int *)t2) = (t15 - 1);
    goto LAB37;

LAB42:    xsi_set_current_line(113, ng0);
    t8 = (t0 + 6000);
    *((int *)t8) = 1;
    t9 = (t0 + 5648);
    *((char **)t9) = t8;
    *((char **)t1) = &&LAB44;
    goto LAB1;

LAB44:    t2 = (t0 + 8196);
    t15 = *((int *)t2);
    *((int *)t2) = (t15 - 1);
    goto LAB41;

LAB46:    xsi_set_current_line(118, ng0);
    t9 = ((char*)((ng19)));
    t10 = (t0 + 5424);
    t11 = (t0 + 848);
    t12 = xsi_create_subprogram_invocation(t10, 0, t0, t11, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t11, t12);
    t13 = (t0 + 3960);
    xsi_vlogvar_assign_value(t13, t9, 0, 0, 8);

LAB50:    t16 = (t0 + 5520);
    t25 = *((char **)t16);
    t26 = (t25 + 80U);
    t27 = *((char **)t26);
    t28 = (t27 + 272U);
    t29 = *((char **)t28);
    t30 = (t29 + 0U);
    t31 = *((char **)t30);
    t15 = ((int  (*)(char *, char *))t31)(t0, t25);

LAB52:    if (t15 != 0)
        goto LAB53;

LAB48:    t25 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t25);

LAB49:    t32 = (t0 + 5520);
    t33 = *((char **)t32);
    t32 = (t0 + 848);
    t34 = (t0 + 5424);
    t35 = 0;
    xsi_delete_subprogram_invocation(t32, t33, t0, t34, t35);
    xsi_set_current_line(117, ng0);
    t2 = (t0 + 3320);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t7 = ((char*)((ng6)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t6, 32, t7, 32);
    t8 = (t0 + 3320);
    xsi_vlogvar_assign_value(t8, t4, 0, 0, 32);
    goto LAB45;

LAB51:;
LAB53:    t16 = (t0 + 5616U);
    *((char **)t16) = &&LAB50;
    goto LAB1;

LAB57:;
LAB59:    t9 = (t0 + 5616U);
    *((char **)t9) = &&LAB56;
    goto LAB1;

LAB61:    xsi_set_current_line(126, ng0);
    t9 = (t0 + 3160);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t0 + 3160);
    t13 = (t12 + 72U);
    t16 = *((char **)t13);
    t25 = (t0 + 3160);
    t26 = (t25 + 64U);
    t27 = *((char **)t26);
    t28 = (t0 + 3320);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    xsi_vlog_generic_get_array_select_value(t5, 8, t11, t16, t27, 2, 1, t30, 32, 1);
    t31 = (t0 + 5424);
    t32 = (t0 + 848);
    t33 = xsi_create_subprogram_invocation(t31, 0, t0, t32, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t32, t33);
    t34 = (t0 + 3960);
    xsi_vlogvar_assign_value(t34, t5, 0, 0, 8);

LAB65:    t35 = (t0 + 5520);
    t36 = *((char **)t35);
    t37 = (t36 + 80U);
    t38 = *((char **)t37);
    t39 = (t38 + 272U);
    t40 = *((char **)t39);
    t41 = (t40 + 0U);
    t42 = *((char **)t41);
    t15 = ((int  (*)(char *, char *))t42)(t0, t36);

LAB67:    if (t15 != 0)
        goto LAB68;

LAB63:    t36 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t36);

LAB64:    t43 = (t0 + 5520);
    t44 = *((char **)t43);
    t43 = (t0 + 848);
    t45 = (t0 + 5424);
    t46 = 0;
    xsi_delete_subprogram_invocation(t43, t44, t0, t45, t46);
    xsi_set_current_line(125, ng0);
    t2 = (t0 + 3320);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t7 = ((char*)((ng6)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t6, 32, t7, 32);
    t8 = (t0 + 3320);
    xsi_vlogvar_assign_value(t8, t4, 0, 0, 32);
    goto LAB60;

LAB66:;
LAB68:    t35 = (t0 + 5616U);
    *((char **)t35) = &&LAB65;
    goto LAB1;

LAB69:    xsi_set_current_line(130, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2840);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(132, ng0);
    t2 = (t0 + 6032);
    *((int *)t2) = 1;
    t3 = (t0 + 5648);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB70;
    goto LAB1;

LAB70:    xsi_set_current_line(133, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2840);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(136, ng0);
    t2 = ((char*)((ng20)));
    t3 = (t2 + 4);
    t14 = *((unsigned int *)t3);
    t17 = (~(t14));
    t20 = *((unsigned int *)t2);
    t15 = (t20 & t17);
    t6 = (t0 + 8200);
    *((int *)t6) = t15;

LAB71:    t7 = (t0 + 8200);
    if (*((int *)t7) > 0)
        goto LAB72;

LAB73:    xsi_set_current_line(138, ng0);
    xsi_vlogfile_write(1, 0, 0, ng42, 1, t0);
    xsi_set_current_line(139, ng0);
    xsi_vlogfile_write(1, 0, 0, ng43, 1, t0);
    xsi_set_current_line(140, ng0);
    t2 = (t0 + 3480);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    xsi_vlogfile_write(1, 0, 0, ng44, 2, t0, (char)119, t6, 32);
    xsi_set_current_line(142, ng0);
    t2 = (t0 + 3480);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t7 = ((char*)((ng4)));
    memset(t4, 0, 8);
    xsi_vlog_signed_not_equal(t4, 32, t6, 32, t7, 32);
    t8 = (t4 + 4);
    t14 = *((unsigned int *)t8);
    t17 = (~(t14));
    t20 = *((unsigned int *)t4);
    t21 = (t20 & t17);
    t24 = (t21 != 0);
    if (t24 > 0)
        goto LAB75;

LAB76:
LAB77:    xsi_set_current_line(147, ng0);
    t2 = (t0 + 3800);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t7 = ((char*)((ng6)));
    memset(t4, 0, 8);
    xsi_vlog_signed_not_equal(t4, 32, t6, 32, t7, 32);
    t8 = (t4 + 4);
    t14 = *((unsigned int *)t8);
    t17 = (~(t14));
    t20 = *((unsigned int *)t4);
    t21 = (t20 & t17);
    t24 = (t21 != 0);
    if (t24 > 0)
        goto LAB79;

LAB80:
LAB81:    xsi_set_current_line(152, ng0);
    t2 = (t0 + 3640);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t7 = ((char*)((ng11)));
    memset(t4, 0, 8);
    xsi_vlog_signed_equal(t4, 32, t6, 32, t7, 32);
    t8 = (t4 + 4);
    t14 = *((unsigned int *)t8);
    t17 = (~(t14));
    t20 = *((unsigned int *)t4);
    t21 = (t20 & t17);
    t24 = (t21 != 0);
    if (t24 > 0)
        goto LAB83;

LAB84:    xsi_set_current_line(155, ng0);
    t2 = (t0 + 3640);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    xsi_vlogfile_write(1, 0, 0, ng48, 2, t0, (char)119, t6, 32);

LAB85:    xsi_set_current_line(157, ng0);
    xsi_vlog_finish(1);
    goto LAB1;

LAB72:    xsi_set_current_line(136, ng0);
    t8 = (t0 + 6048);
    *((int *)t8) = 1;
    t9 = (t0 + 5648);
    *((char **)t9) = t8;
    *((char **)t1) = &&LAB74;
    goto LAB1;

LAB74:    t2 = (t0 + 8200);
    t15 = *((int *)t2);
    *((int *)t2) = (t15 - 1);
    goto LAB71;

LAB75:    xsi_set_current_line(142, ng0);

LAB78:    xsi_set_current_line(143, ng0);
    xsi_vlogfile_write(1, 0, 0, ng45, 1, t0);
    xsi_set_current_line(144, ng0);
    t2 = (t0 + 3640);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t7 = ((char*)((ng6)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t6, 32, t7, 32);
    t8 = (t0 + 3640);
    xsi_vlogvar_assign_value(t8, t4, 0, 0, 32);
    goto LAB77;

LAB79:    xsi_set_current_line(147, ng0);

LAB82:    xsi_set_current_line(148, ng0);
    xsi_vlogfile_write(1, 0, 0, ng46, 1, t0);
    xsi_set_current_line(149, ng0);
    t2 = (t0 + 3640);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t7 = ((char*)((ng6)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t6, 32, t7, 32);
    t8 = (t0 + 3640);
    xsi_vlogvar_assign_value(t8, t4, 0, 0, 32);
    goto LAB81;

LAB83:    xsi_set_current_line(153, ng0);
    xsi_vlogfile_write(1, 0, 0, ng47, 1, t0);
    goto LAB85;

}


extern void work_m_10578066908292994706_1631107684_init()
{
	static char *pe[] = {(void *)Initial_35_0,(void *)Always_36_1,(void *)Always_52_2,(void *)Initial_83_3};
	static char *se[] = {(void *)sp_send_rmii_byte};
	xsi_register_didat("work_m_10578066908292994706_1631107684", "isim/tb_ethernet_rx_isim_beh.exe.sim/work/m_10578066908292994706_1631107684.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
