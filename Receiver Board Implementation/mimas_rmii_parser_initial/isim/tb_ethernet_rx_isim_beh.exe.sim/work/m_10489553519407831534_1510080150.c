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
static const char *ng0 = "/home/ise/MimasV2-shared/mimas_rmii_parser_initial/rtl/ethernet_rx.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {0, 0};
static int ng3[] = {7, 0};
static unsigned int ng4[] = {1U, 0U};
static int ng5[] = {1, 0};



static void Always_20_0(char *t0)
{
    char t4[8];
    char t39[8];
    char t53[8];
    char t72[8];
    char t85[8];
    char t98[8];
    char t105[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    char *t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    int t59;
    int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    char *t91;
    char *t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    char *t96;
    char *t97;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    char *t104;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    char *t109;
    char *t110;
    char *t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    char *t119;
    char *t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    int t129;
    int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    unsigned int t135;
    unsigned int t136;
    char *t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    char *t143;
    char *t144;
    char *t145;
    char *t146;

LAB0:    t1 = (t0 + 4392U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(20, ng0);
    t2 = (t0 + 4712);
    *((int *)t2) = 1;
    t3 = (t0 + 4424);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(20, ng0);

LAB5:    xsi_set_current_line(21, ng0);
    t5 = (t0 + 1480U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t5) == 0)
        goto LAB6;

LAB8:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB9:    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (~(t14));
    t16 = *((unsigned int *)t4);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(25, ng0);

LAB14:    xsi_set_current_line(26, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2680);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(27, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2840);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(29, ng0);
    t2 = (t0 + 1800U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB15;

LAB16:
LAB17:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1960U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB55;

LAB56:
LAB57:
LAB12:    goto LAB2;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(21, ng0);

LAB13:    xsi_set_current_line(22, ng0);
    t19 = ((char*)((ng1)));
    t20 = (t0 + 3000);
    xsi_vlogvar_wait_assign_value(t20, t19, 0, 0, 1, 0LL);
    xsi_set_current_line(22, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3160);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(23, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3320);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 8, 0LL);
    xsi_set_current_line(23, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3480);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(24, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2520);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 8, 0LL);
    xsi_set_current_line(24, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2680);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(24, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2840);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB12;

LAB15:    xsi_set_current_line(29, ng0);

LAB18:    xsi_set_current_line(30, ng0);
    t5 = (t0 + 3000);
    t6 = (t5 + 56U);
    t12 = *((char **)t6);
    t13 = ((char*)((ng1)));
    memset(t4, 0, 8);
    t19 = (t12 + 4);
    t20 = (t13 + 4);
    t14 = *((unsigned int *)t12);
    t15 = *((unsigned int *)t13);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t19);
    t18 = *((unsigned int *)t20);
    t21 = (t17 ^ t18);
    t22 = (t16 | t21);
    t23 = *((unsigned int *)t19);
    t24 = *((unsigned int *)t20);
    t25 = (t23 | t24);
    t26 = (~(t25));
    t27 = (t22 & t26);
    if (t27 != 0)
        goto LAB22;

LAB19:    if (t25 != 0)
        goto LAB21;

LAB20:    *((unsigned int *)t4) = 1;

LAB22:    t29 = (t4 + 4);
    t30 = *((unsigned int *)t29);
    t31 = (~(t30));
    t32 = *((unsigned int *)t4);
    t33 = (t32 & t31);
    t34 = (t33 != 0);
    if (t34 > 0)
        goto LAB23;

LAB24:    xsi_set_current_line(38, ng0);

LAB36:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 3480);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB37;

LAB38:    if (*((unsigned int *)t6) != 0)
        goto LAB39;

LAB40:    t13 = (t4 + 4);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t13);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB41;

LAB42:    memcpy(t53, t4, 8);

LAB43:    t40 = (t53 + 4);
    t67 = *((unsigned int *)t40);
    t68 = (~(t67));
    t69 = *((unsigned int *)t53);
    t70 = (t69 & t68);
    t71 = (t70 != 0);
    if (t71 > 0)
        goto LAB51;

LAB52:
LAB53:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1640U);
    t3 = *((char **)t2);
    t2 = (t0 + 3320);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 8, 0LL);
    xsi_set_current_line(44, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3480);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB25:    goto LAB17;

LAB21:    t28 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB22;

LAB23:    xsi_set_current_line(30, ng0);

LAB26:    xsi_set_current_line(31, ng0);
    t35 = (t0 + 3160);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    t38 = ((char*)((ng3)));
    memset(t39, 0, 8);
    t40 = (t37 + 4);
    if (*((unsigned int *)t40) != 0)
        goto LAB28;

LAB27:    t41 = (t38 + 4);
    if (*((unsigned int *)t41) != 0)
        goto LAB28;

LAB31:    if (*((unsigned int *)t37) < *((unsigned int *)t38))
        goto LAB29;

LAB30:    t43 = (t39 + 4);
    t44 = *((unsigned int *)t43);
    t45 = (~(t44));
    t46 = *((unsigned int *)t39);
    t47 = (t46 & t45);
    t48 = (t47 != 0);
    if (t48 > 0)
        goto LAB32;

LAB33:    xsi_set_current_line(33, ng0);

LAB35:    xsi_set_current_line(35, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3160);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(36, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3000);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB34:    goto LAB25;

LAB28:    t42 = (t39 + 4);
    *((unsigned int *)t39) = 1;
    *((unsigned int *)t42) = 1;
    goto LAB30;

LAB29:    *((unsigned int *)t39) = 1;
    goto LAB30;

LAB32:    xsi_set_current_line(32, ng0);
    t49 = (t0 + 3160);
    t50 = (t49 + 56U);
    t51 = *((char **)t50);
    t52 = ((char*)((ng4)));
    memset(t53, 0, 8);
    xsi_vlog_unsigned_add(t53, 4, t51, 4, t52, 4);
    t54 = (t0 + 3160);
    xsi_vlogvar_wait_assign_value(t54, t53, 0, 0, 4, 0LL);
    goto LAB34;

LAB37:    *((unsigned int *)t4) = 1;
    goto LAB40;

LAB39:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB40;

LAB41:    t19 = (t0 + 2120U);
    t20 = *((char **)t19);
    memset(t39, 0, 8);
    t19 = (t20 + 4);
    t17 = *((unsigned int *)t19);
    t18 = (~(t17));
    t21 = *((unsigned int *)t20);
    t22 = (t21 & t18);
    t23 = (t22 & 1U);
    if (t23 != 0)
        goto LAB44;

LAB45:    if (*((unsigned int *)t19) != 0)
        goto LAB46;

LAB47:    t24 = *((unsigned int *)t4);
    t25 = *((unsigned int *)t39);
    t26 = (t24 & t25);
    *((unsigned int *)t53) = t26;
    t29 = (t4 + 4);
    t35 = (t39 + 4);
    t36 = (t53 + 4);
    t27 = *((unsigned int *)t29);
    t30 = *((unsigned int *)t35);
    t31 = (t27 | t30);
    *((unsigned int *)t36) = t31;
    t32 = *((unsigned int *)t36);
    t33 = (t32 != 0);
    if (t33 == 1)
        goto LAB48;

LAB49:
LAB50:    goto LAB43;

LAB44:    *((unsigned int *)t39) = 1;
    goto LAB47;

LAB46:    t28 = (t39 + 4);
    *((unsigned int *)t39) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB47;

LAB48:    t34 = *((unsigned int *)t53);
    t44 = *((unsigned int *)t36);
    *((unsigned int *)t53) = (t34 | t44);
    t37 = (t4 + 4);
    t38 = (t39 + 4);
    t45 = *((unsigned int *)t4);
    t46 = (~(t45));
    t47 = *((unsigned int *)t37);
    t48 = (~(t47));
    t55 = *((unsigned int *)t39);
    t56 = (~(t55));
    t57 = *((unsigned int *)t38);
    t58 = (~(t57));
    t59 = (t46 & t48);
    t60 = (t56 & t58);
    t61 = (~(t59));
    t62 = (~(t60));
    t63 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t63 & t61);
    t64 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t64 & t62);
    t65 = *((unsigned int *)t53);
    *((unsigned int *)t53) = (t65 & t61);
    t66 = *((unsigned int *)t53);
    *((unsigned int *)t53) = (t66 & t62);
    goto LAB50;

LAB51:    xsi_set_current_line(39, ng0);

LAB54:    xsi_set_current_line(40, ng0);
    t41 = (t0 + 3320);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    t49 = (t0 + 2520);
    xsi_vlogvar_wait_assign_value(t49, t43, 0, 0, 8, 0LL);
    xsi_set_current_line(41, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 2840);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB53;

LAB55:    xsi_set_current_line(48, ng0);

LAB58:    xsi_set_current_line(49, ng0);
    t5 = (t0 + 3000);
    t6 = (t5 + 56U);
    t12 = *((char **)t6);
    t13 = ((char*)((ng4)));
    memset(t4, 0, 8);
    t19 = (t12 + 4);
    t20 = (t13 + 4);
    t14 = *((unsigned int *)t12);
    t15 = *((unsigned int *)t13);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t19);
    t18 = *((unsigned int *)t20);
    t21 = (t17 ^ t18);
    t22 = (t16 | t21);
    t23 = *((unsigned int *)t19);
    t24 = *((unsigned int *)t20);
    t25 = (t23 | t24);
    t26 = (~(t25));
    t27 = (t22 & t26);
    if (t27 != 0)
        goto LAB62;

LAB59:    if (t25 != 0)
        goto LAB61;

LAB60:    *((unsigned int *)t4) = 1;

LAB62:    memset(t39, 0, 8);
    t29 = (t4 + 4);
    t30 = *((unsigned int *)t29);
    t31 = (~(t30));
    t32 = *((unsigned int *)t4);
    t33 = (t32 & t31);
    t34 = (t33 & 1U);
    if (t34 != 0)
        goto LAB63;

LAB64:    if (*((unsigned int *)t29) != 0)
        goto LAB65;

LAB66:    t36 = (t39 + 4);
    t44 = *((unsigned int *)t39);
    t45 = *((unsigned int *)t36);
    t46 = (t44 || t45);
    if (t46 > 0)
        goto LAB67;

LAB68:    memcpy(t72, t39, 8);

LAB69:    memset(t85, 0, 8);
    t54 = (t72 + 4);
    t86 = *((unsigned int *)t54);
    t87 = (~(t86));
    t88 = *((unsigned int *)t72);
    t89 = (t88 & t87);
    t90 = (t89 & 1U);
    if (t90 != 0)
        goto LAB77;

LAB78:    if (*((unsigned int *)t54) != 0)
        goto LAB79;

LAB80:    t92 = (t85 + 4);
    t93 = *((unsigned int *)t85);
    t94 = *((unsigned int *)t92);
    t95 = (t93 || t94);
    if (t95 > 0)
        goto LAB81;

LAB82:    memcpy(t105, t85, 8);

LAB83:    t137 = (t105 + 4);
    t138 = *((unsigned int *)t137);
    t139 = (~(t138));
    t140 = *((unsigned int *)t105);
    t141 = (t140 & t139);
    t142 = (t141 != 0);
    if (t142 > 0)
        goto LAB91;

LAB92:
LAB93:    xsi_set_current_line(54, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3000);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(55, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3160);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(56, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3480);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB57;

LAB61:    t28 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB62;

LAB63:    *((unsigned int *)t39) = 1;
    goto LAB66;

LAB65:    t35 = (t39 + 4);
    *((unsigned int *)t39) = 1;
    *((unsigned int *)t35) = 1;
    goto LAB66;

LAB67:    t37 = (t0 + 3480);
    t38 = (t37 + 56U);
    t40 = *((char **)t38);
    memset(t53, 0, 8);
    t41 = (t40 + 4);
    t47 = *((unsigned int *)t41);
    t48 = (~(t47));
    t55 = *((unsigned int *)t40);
    t56 = (t55 & t48);
    t57 = (t56 & 1U);
    if (t57 != 0)
        goto LAB70;

LAB71:    if (*((unsigned int *)t41) != 0)
        goto LAB72;

LAB73:    t58 = *((unsigned int *)t39);
    t61 = *((unsigned int *)t53);
    t62 = (t58 & t61);
    *((unsigned int *)t72) = t62;
    t43 = (t39 + 4);
    t49 = (t53 + 4);
    t50 = (t72 + 4);
    t63 = *((unsigned int *)t43);
    t64 = *((unsigned int *)t49);
    t65 = (t63 | t64);
    *((unsigned int *)t50) = t65;
    t66 = *((unsigned int *)t50);
    t67 = (t66 != 0);
    if (t67 == 1)
        goto LAB74;

LAB75:
LAB76:    goto LAB69;

LAB70:    *((unsigned int *)t53) = 1;
    goto LAB73;

LAB72:    t42 = (t53 + 4);
    *((unsigned int *)t53) = 1;
    *((unsigned int *)t42) = 1;
    goto LAB73;

LAB74:    t68 = *((unsigned int *)t72);
    t69 = *((unsigned int *)t50);
    *((unsigned int *)t72) = (t68 | t69);
    t51 = (t39 + 4);
    t52 = (t53 + 4);
    t70 = *((unsigned int *)t39);
    t71 = (~(t70));
    t73 = *((unsigned int *)t51);
    t74 = (~(t73));
    t75 = *((unsigned int *)t53);
    t76 = (~(t75));
    t77 = *((unsigned int *)t52);
    t78 = (~(t77));
    t59 = (t71 & t74);
    t60 = (t76 & t78);
    t79 = (~(t59));
    t80 = (~(t60));
    t81 = *((unsigned int *)t50);
    *((unsigned int *)t50) = (t81 & t79);
    t82 = *((unsigned int *)t50);
    *((unsigned int *)t50) = (t82 & t80);
    t83 = *((unsigned int *)t72);
    *((unsigned int *)t72) = (t83 & t79);
    t84 = *((unsigned int *)t72);
    *((unsigned int *)t72) = (t84 & t80);
    goto LAB76;

LAB77:    *((unsigned int *)t85) = 1;
    goto LAB80;

LAB79:    t91 = (t85 + 4);
    *((unsigned int *)t85) = 1;
    *((unsigned int *)t91) = 1;
    goto LAB80;

LAB81:    t96 = (t0 + 2120U);
    t97 = *((char **)t96);
    memset(t98, 0, 8);
    t96 = (t97 + 4);
    t99 = *((unsigned int *)t96);
    t100 = (~(t99));
    t101 = *((unsigned int *)t97);
    t102 = (t101 & t100);
    t103 = (t102 & 1U);
    if (t103 != 0)
        goto LAB84;

LAB85:    if (*((unsigned int *)t96) != 0)
        goto LAB86;

LAB87:    t106 = *((unsigned int *)t85);
    t107 = *((unsigned int *)t98);
    t108 = (t106 & t107);
    *((unsigned int *)t105) = t108;
    t109 = (t85 + 4);
    t110 = (t98 + 4);
    t111 = (t105 + 4);
    t112 = *((unsigned int *)t109);
    t113 = *((unsigned int *)t110);
    t114 = (t112 | t113);
    *((unsigned int *)t111) = t114;
    t115 = *((unsigned int *)t111);
    t116 = (t115 != 0);
    if (t116 == 1)
        goto LAB88;

LAB89:
LAB90:    goto LAB83;

LAB84:    *((unsigned int *)t98) = 1;
    goto LAB87;

LAB86:    t104 = (t98 + 4);
    *((unsigned int *)t98) = 1;
    *((unsigned int *)t104) = 1;
    goto LAB87;

LAB88:    t117 = *((unsigned int *)t105);
    t118 = *((unsigned int *)t111);
    *((unsigned int *)t105) = (t117 | t118);
    t119 = (t85 + 4);
    t120 = (t98 + 4);
    t121 = *((unsigned int *)t85);
    t122 = (~(t121));
    t123 = *((unsigned int *)t119);
    t124 = (~(t123));
    t125 = *((unsigned int *)t98);
    t126 = (~(t125));
    t127 = *((unsigned int *)t120);
    t128 = (~(t127));
    t129 = (t122 & t124);
    t130 = (t126 & t128);
    t131 = (~(t129));
    t132 = (~(t130));
    t133 = *((unsigned int *)t111);
    *((unsigned int *)t111) = (t133 & t131);
    t134 = *((unsigned int *)t111);
    *((unsigned int *)t111) = (t134 & t132);
    t135 = *((unsigned int *)t105);
    *((unsigned int *)t105) = (t135 & t131);
    t136 = *((unsigned int *)t105);
    *((unsigned int *)t105) = (t136 & t132);
    goto LAB90;

LAB91:    xsi_set_current_line(49, ng0);

LAB94:    xsi_set_current_line(50, ng0);
    t143 = (t0 + 3320);
    t144 = (t143 + 56U);
    t145 = *((char **)t144);
    t146 = (t0 + 2520);
    xsi_vlogvar_wait_assign_value(t146, t145, 0, 0, 8, 0LL);
    xsi_set_current_line(51, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 2840);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(52, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 2680);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB93;

}


extern void work_m_10489553519407831534_1510080150_init()
{
	static char *pe[] = {(void *)Always_20_0};
	xsi_register_didat("work_m_10489553519407831534_1510080150", "isim/tb_ethernet_rx_isim_beh.exe.sim/work/m_10489553519407831534_1510080150.didat");
	xsi_register_executes(pe);
}
