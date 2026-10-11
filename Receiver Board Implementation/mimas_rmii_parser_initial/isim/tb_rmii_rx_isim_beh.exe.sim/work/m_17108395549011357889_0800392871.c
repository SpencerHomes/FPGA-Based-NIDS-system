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
static const char *ng0 = "/home/ise/MimasV2-shared/mimas_rmii_parser_initial/tb/tb_rmii_rx.v";
static unsigned int ng1[] = {1U, 0U};
static unsigned int ng2[] = {0U, 0U};
static int ng3[] = {3, 0};
static int ng4[] = {2, 0};
static unsigned int ng5[] = {85U, 0U};
static unsigned int ng6[] = {213U, 0U};
static unsigned int ng7[] = {8U, 0U};
static unsigned int ng8[] = {69U, 0U};
static const char *ng9 = "CASE %0d: byte[%0d] = %02h";
static int ng10[] = {1, 0};
static const char *ng11 = "CASE %0d: rx_frame_end";
static int ng12[] = {0, 0};
static const char *ng13 = "";
static const char *ng14 = "=== CASE A: immediate preamble ===";
static int ng15[] = {4, 0};
static const char *ng16 = "CASE A total bytes = %0d";
static const char *ng17 = "CASE A frame-end pulses = %0d";
static const char *ng18 = "=== CASE B: leading zero dibits ===";
static const char *ng19 = "CASE B total bytes = %0d";
static const char *ng20 = "CASE B frame-end pulses = %0d";
static const char *ng21 = "=== TEST COMPLETE ===";



static int sp_send_dibit(char *t1, char *t2)
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
    xsi_set_current_line(38, ng0);

LAB5:    xsi_set_current_line(39, ng0);
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

LAB6:    xsi_set_current_line(40, ng0);
    t4 = (t1 + 4776);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t1 + 3976);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 2);
    xsi_set_current_line(41, ng0);
    t4 = (t1 + 4936);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t1 + 4136);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 1);
    goto LAB4;

}

static int sp_send_byte(char *t1, char *t2)
{
    char t5[8];
    int t0;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
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
    int t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;

LAB0:    t0 = 1;
    t3 = (t2 + 48U);
    t4 = *((char **)t3);
    if (t4 == 0)
        goto LAB2;

LAB3:    goto *t4;

LAB2:    t4 = (t1 + 1280);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(48, ng0);

LAB5:    xsi_set_current_line(49, ng0);
    t6 = (t1 + 5096);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memset(t5, 0, 8);
    t9 = (t5 + 4);
    t10 = (t8 + 4);
    t11 = *((unsigned int *)t8);
    t12 = (t11 >> 0);
    *((unsigned int *)t5) = t12;
    t13 = *((unsigned int *)t10);
    t14 = (t13 >> 0);
    *((unsigned int *)t9) = t14;
    t15 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t15 & 3U);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 & 3U);
    t17 = ((char*)((ng1)));
    t18 = (t2 + 56U);
    t19 = *((char **)t18);
    t20 = (t2 + 56U);
    t21 = *((char **)t20);
    xsi_vlog_subprograminvocation_setJumpstate(t2, t21, &&LAB6);
    t22 = (t2 + 56U);
    t23 = *((char **)t22);
    t24 = (t1 + 848);
    t25 = xsi_create_subprogram_invocation(t23, 0, t1, t24, 0, t2);
    xsi_vlog_subprogram_pushinvocation(t24, t25);
    t26 = (t1 + 4776);
    xsi_vlogvar_assign_value(t26, t5, 0, 0, 2);
    t27 = (t1 + 4936);
    xsi_vlogvar_assign_value(t27, t17, 0, 0, 1);

LAB8:    t28 = (t2 + 64U);
    t29 = *((char **)t28);
    t30 = (t29 + 80U);
    t31 = *((char **)t30);
    t32 = (t31 + 272U);
    t33 = *((char **)t32);
    t34 = (t33 + 0U);
    t35 = *((char **)t34);
    t36 = ((int  (*)(char *, char *))t35)(t1, t29);
    if (t36 == -1)
        goto LAB9;

LAB10:    if (t36 != 0)
        goto LAB11;

LAB6:    t29 = (t1 + 848);
    xsi_vlog_subprogram_popinvocation(t29);

LAB7:    t37 = (t2 + 64U);
    t38 = *((char **)t37);
    t37 = (t1 + 848);
    t39 = (t2 + 56U);
    t40 = *((char **)t39);
    xsi_delete_subprogram_invocation(t37, t38, t1, t40, t2);
    xsi_set_current_line(50, ng0);
    t4 = (t1 + 5096);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memset(t5, 0, 8);
    t8 = (t5 + 4);
    t9 = (t7 + 4);
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 2);
    *((unsigned int *)t5) = t12;
    t13 = *((unsigned int *)t9);
    t14 = (t13 >> 2);
    *((unsigned int *)t8) = t14;
    t15 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t15 & 3U);
    t16 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t16 & 3U);
    t10 = ((char*)((ng1)));
    t17 = (t2 + 56U);
    t18 = *((char **)t17);
    t19 = (t2 + 56U);
    t20 = *((char **)t19);
    xsi_vlog_subprograminvocation_setJumpstate(t2, t20, &&LAB12);
    t21 = (t2 + 56U);
    t22 = *((char **)t21);
    t23 = (t1 + 848);
    t24 = xsi_create_subprogram_invocation(t22, 0, t1, t23, 0, t2);
    xsi_vlog_subprogram_pushinvocation(t23, t24);
    t25 = (t1 + 4776);
    xsi_vlogvar_assign_value(t25, t5, 0, 0, 2);
    t26 = (t1 + 4936);
    xsi_vlogvar_assign_value(t26, t10, 0, 0, 1);

LAB14:    t27 = (t2 + 64U);
    t28 = *((char **)t27);
    t29 = (t28 + 80U);
    t30 = *((char **)t29);
    t31 = (t30 + 272U);
    t32 = *((char **)t31);
    t33 = (t32 + 0U);
    t34 = *((char **)t33);
    t36 = ((int  (*)(char *, char *))t34)(t1, t28);
    if (t36 == -1)
        goto LAB15;

LAB16:    if (t36 != 0)
        goto LAB17;

LAB12:    t28 = (t1 + 848);
    xsi_vlog_subprogram_popinvocation(t28);

LAB13:    t35 = (t2 + 64U);
    t37 = *((char **)t35);
    t35 = (t1 + 848);
    t38 = (t2 + 56U);
    t39 = *((char **)t38);
    xsi_delete_subprogram_invocation(t35, t37, t1, t39, t2);
    xsi_set_current_line(51, ng0);
    t4 = (t1 + 5096);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memset(t5, 0, 8);
    t8 = (t5 + 4);
    t9 = (t7 + 4);
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 4);
    *((unsigned int *)t5) = t12;
    t13 = *((unsigned int *)t9);
    t14 = (t13 >> 4);
    *((unsigned int *)t8) = t14;
    t15 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t15 & 3U);
    t16 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t16 & 3U);
    t10 = ((char*)((ng1)));
    t17 = (t2 + 56U);
    t18 = *((char **)t17);
    t19 = (t2 + 56U);
    t20 = *((char **)t19);
    xsi_vlog_subprograminvocation_setJumpstate(t2, t20, &&LAB18);
    t21 = (t2 + 56U);
    t22 = *((char **)t21);
    t23 = (t1 + 848);
    t24 = xsi_create_subprogram_invocation(t22, 0, t1, t23, 0, t2);
    xsi_vlog_subprogram_pushinvocation(t23, t24);
    t25 = (t1 + 4776);
    xsi_vlogvar_assign_value(t25, t5, 0, 0, 2);
    t26 = (t1 + 4936);
    xsi_vlogvar_assign_value(t26, t10, 0, 0, 1);

LAB20:    t27 = (t2 + 64U);
    t28 = *((char **)t27);
    t29 = (t28 + 80U);
    t30 = *((char **)t29);
    t31 = (t30 + 272U);
    t32 = *((char **)t31);
    t33 = (t32 + 0U);
    t34 = *((char **)t33);
    t36 = ((int  (*)(char *, char *))t34)(t1, t28);
    if (t36 == -1)
        goto LAB21;

LAB22:    if (t36 != 0)
        goto LAB23;

LAB18:    t28 = (t1 + 848);
    xsi_vlog_subprogram_popinvocation(t28);

LAB19:    t35 = (t2 + 64U);
    t37 = *((char **)t35);
    t35 = (t1 + 848);
    t38 = (t2 + 56U);
    t39 = *((char **)t38);
    xsi_delete_subprogram_invocation(t35, t37, t1, t39, t2);
    xsi_set_current_line(52, ng0);
    t4 = (t1 + 5096);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memset(t5, 0, 8);
    t8 = (t5 + 4);
    t9 = (t7 + 4);
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 6);
    *((unsigned int *)t5) = t12;
    t13 = *((unsigned int *)t9);
    t14 = (t13 >> 6);
    *((unsigned int *)t8) = t14;
    t15 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t15 & 3U);
    t16 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t16 & 3U);
    t10 = ((char*)((ng1)));
    t17 = (t2 + 56U);
    t18 = *((char **)t17);
    t19 = (t2 + 56U);
    t20 = *((char **)t19);
    xsi_vlog_subprograminvocation_setJumpstate(t2, t20, &&LAB24);
    t21 = (t2 + 56U);
    t22 = *((char **)t21);
    t23 = (t1 + 848);
    t24 = xsi_create_subprogram_invocation(t22, 0, t1, t23, 0, t2);
    xsi_vlog_subprogram_pushinvocation(t23, t24);
    t25 = (t1 + 4776);
    xsi_vlogvar_assign_value(t25, t5, 0, 0, 2);
    t26 = (t1 + 4936);
    xsi_vlogvar_assign_value(t26, t10, 0, 0, 1);

LAB26:    t27 = (t2 + 64U);
    t28 = *((char **)t27);
    t29 = (t28 + 80U);
    t30 = *((char **)t29);
    t31 = (t30 + 272U);
    t32 = *((char **)t31);
    t33 = (t32 + 0U);
    t34 = *((char **)t33);
    t36 = ((int  (*)(char *, char *))t34)(t1, t28);
    if (t36 == -1)
        goto LAB27;

LAB28:    if (t36 != 0)
        goto LAB29;

LAB24:    t28 = (t1 + 848);
    xsi_vlog_subprogram_popinvocation(t28);

LAB25:    t35 = (t2 + 64U);
    t37 = *((char **)t35);
    t35 = (t1 + 848);
    t38 = (t2 + 56U);
    t39 = *((char **)t38);
    xsi_delete_subprogram_invocation(t35, t37, t1, t39, t2);

LAB4:    xsi_vlog_dispose_subprogram_invocation(t2);
    t4 = (t2 + 48U);
    *((char **)t4) = &&LAB2;
    t0 = 0;

LAB1:    return t0;
LAB9:    t0 = -1;
    goto LAB1;

LAB11:    t28 = (t2 + 48U);
    *((char **)t28) = &&LAB8;
    goto LAB1;

LAB15:    t0 = -1;
    goto LAB1;

LAB17:    t27 = (t2 + 48U);
    *((char **)t27) = &&LAB14;
    goto LAB1;

LAB21:    t0 = -1;
    goto LAB1;

LAB23:    t27 = (t2 + 48U);
    *((char **)t27) = &&LAB20;
    goto LAB1;

LAB27:    t0 = -1;
    goto LAB1;

LAB29:    t27 = (t2 + 48U);
    *((char **)t27) = &&LAB26;
    goto LAB1;

}

static int sp_reset_receiver(char *t1, char *t2)
{
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    int t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    t0 = 1;
    t3 = (t2 + 48U);
    t4 = *((char **)t3);
    if (t4 == 0)
        goto LAB2;

LAB3:    goto *t4;

LAB2:    t4 = (t1 + 1712);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(57, ng0);

LAB5:    xsi_set_current_line(58, ng0);
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

LAB6:    xsi_set_current_line(59, ng0);
    t4 = ((char*)((ng2)));
    t5 = (t1 + 4136);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(60, ng0);
    t4 = ((char*)((ng2)));
    t5 = (t1 + 3976);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 2);
    xsi_set_current_line(61, ng0);
    t4 = ((char*)((ng2)));
    t5 = (t1 + 3816);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(63, ng0);
    t4 = ((char*)((ng3)));
    t5 = (t4 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (~(t8));
    t10 = *((unsigned int *)t4);
    t11 = (t10 & t9);
    t6 = (t1 + 9352);
    *((int *)t6) = t11;

LAB7:    t7 = (t1 + 9352);
    if (*((int *)t7) > 0)
        goto LAB8;

LAB9:    xsi_set_current_line(65, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t1 + 3816);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(66, ng0);
    t4 = ((char*)((ng4)));
    t5 = (t4 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (~(t8));
    t10 = *((unsigned int *)t4);
    t11 = (t10 & t9);
    t6 = (t1 + 9356);
    *((int *)t6) = t11;

LAB11:    t7 = (t1 + 9356);
    if (*((int *)t7) > 0)
        goto LAB12;

LAB13:    goto LAB4;

LAB8:    xsi_set_current_line(63, ng0);
    t12 = (t2 + 88U);
    t13 = *((char **)t12);
    t14 = (t13 + 16U);
    xsi_wp_set_status(t14, 1);
    *((char **)t3) = &&LAB10;
    goto LAB1;

LAB10:    t4 = (t1 + 9352);
    t11 = *((int *)t4);
    *((int *)t4) = (t11 - 1);
    goto LAB7;

LAB12:    xsi_set_current_line(66, ng0);
    t12 = (t2 + 88U);
    t13 = *((char **)t12);
    t14 = (t13 + 32U);
    xsi_wp_set_status(t14, 1);
    *((char **)t3) = &&LAB14;
    goto LAB1;

LAB14:    t4 = (t1 + 9356);
    t11 = *((int *)t4);
    *((int *)t4) = (t11 - 1);
    goto LAB11;

}

static int sp_send_test_frame(char *t1, char *t2)
{
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    int t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    t0 = 1;
    t3 = (t2 + 48U);
    t4 = *((char **)t3);
    if (t4 == 0)
        goto LAB2;

LAB3:    goto *t4;

LAB2:    t4 = (t1 + 2144);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(86, ng0);

LAB5:    xsi_set_current_line(87, ng0);
    t5 = ((char*)((ng5)));
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t2 + 56U);
    t9 = *((char **)t8);
    xsi_vlog_subprograminvocation_setJumpstate(t2, t9, &&LAB6);
    t10 = (t2 + 56U);
    t11 = *((char **)t10);
    t12 = (t1 + 1280);
    t13 = xsi_create_subprogram_invocation(t11, 0, t1, t12, 0, t2);
    xsi_vlog_subprogram_pushinvocation(t12, t13);
    t14 = (t1 + 5096);
    xsi_vlogvar_assign_value(t14, t5, 0, 0, 8);

LAB8:    t15 = (t2 + 64U);
    t16 = *((char **)t15);
    t17 = (t16 + 80U);
    t18 = *((char **)t17);
    t19 = (t18 + 272U);
    t20 = *((char **)t19);
    t21 = (t20 + 0U);
    t22 = *((char **)t21);
    t23 = ((int  (*)(char *, char *))t22)(t1, t16);
    if (t23 == -1)
        goto LAB9;

LAB10:    if (t23 != 0)
        goto LAB11;

LAB6:    t16 = (t1 + 1280);
    xsi_vlog_subprogram_popinvocation(t16);

LAB7:    t24 = (t2 + 64U);
    t25 = *((char **)t24);
    t24 = (t1 + 1280);
    t26 = (t2 + 56U);
    t27 = *((char **)t26);
    xsi_delete_subprogram_invocation(t24, t25, t1, t27, t2);
    xsi_set_current_line(88, ng0);
    t4 = ((char*)((ng5)));
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    xsi_vlog_subprograminvocation_setJumpstate(t2, t8, &&LAB12);
    t9 = (t2 + 56U);
    t10 = *((char **)t9);
    t11 = (t1 + 1280);
    t12 = xsi_create_subprogram_invocation(t10, 0, t1, t11, 0, t2);
    xsi_vlog_subprogram_pushinvocation(t11, t12);
    t13 = (t1 + 5096);
    xsi_vlogvar_assign_value(t13, t4, 0, 0, 8);

LAB14:    t14 = (t2 + 64U);
    t15 = *((char **)t14);
    t16 = (t15 + 80U);
    t17 = *((char **)t16);
    t18 = (t17 + 272U);
    t19 = *((char **)t18);
    t20 = (t19 + 0U);
    t21 = *((char **)t20);
    t23 = ((int  (*)(char *, char *))t21)(t1, t15);
    if (t23 == -1)
        goto LAB15;

LAB16:    if (t23 != 0)
        goto LAB17;

LAB12:    t15 = (t1 + 1280);
    xsi_vlog_subprogram_popinvocation(t15);

LAB13:    t22 = (t2 + 64U);
    t24 = *((char **)t22);
    t22 = (t1 + 1280);
    t25 = (t2 + 56U);
    t26 = *((char **)t25);
    xsi_delete_subprogram_invocation(t22, t24, t1, t26, t2);
    xsi_set_current_line(89, ng0);
    t4 = ((char*)((ng5)));
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    xsi_vlog_subprograminvocation_setJumpstate(t2, t8, &&LAB18);
    t9 = (t2 + 56U);
    t10 = *((char **)t9);
    t11 = (t1 + 1280);
    t12 = xsi_create_subprogram_invocation(t10, 0, t1, t11, 0, t2);
    xsi_vlog_subprogram_pushinvocation(t11, t12);
    t13 = (t1 + 5096);
    xsi_vlogvar_assign_value(t13, t4, 0, 0, 8);

LAB20:    t14 = (t2 + 64U);
    t15 = *((char **)t14);
    t16 = (t15 + 80U);
    t17 = *((char **)t16);
    t18 = (t17 + 272U);
    t19 = *((char **)t18);
    t20 = (t19 + 0U);
    t21 = *((char **)t20);
    t23 = ((int  (*)(char *, char *))t21)(t1, t15);
    if (t23 == -1)
        goto LAB21;

LAB22:    if (t23 != 0)
        goto LAB23;

LAB18:    t15 = (t1 + 1280);
    xsi_vlog_subprogram_popinvocation(t15);

LAB19:    t22 = (t2 + 64U);
    t24 = *((char **)t22);
    t22 = (t1 + 1280);
    t25 = (t2 + 56U);
    t26 = *((char **)t25);
    xsi_delete_subprogram_invocation(t22, t24, t1, t26, t2);
    xsi_set_current_line(90, ng0);
    t4 = ((char*)((ng5)));
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    xsi_vlog_subprograminvocation_setJumpstate(t2, t8, &&LAB24);
    t9 = (t2 + 56U);
    t10 = *((char **)t9);
    t11 = (t1 + 1280);
    t12 = xsi_create_subprogram_invocation(t10, 0, t1, t11, 0, t2);
    xsi_vlog_subprogram_pushinvocation(t11, t12);
    t13 = (t1 + 5096);
    xsi_vlogvar_assign_value(t13, t4, 0, 0, 8);

LAB26:    t14 = (t2 + 64U);
    t15 = *((char **)t14);
    t16 = (t15 + 80U);
    t17 = *((char **)t16);
    t18 = (t17 + 272U);
    t19 = *((char **)t18);
    t20 = (t19 + 0U);
    t21 = *((char **)t20);
    t23 = ((int  (*)(char *, char *))t21)(t1, t15);
    if (t23 == -1)
        goto LAB27;

LAB28:    if (t23 != 0)
        goto LAB29;

LAB24:    t15 = (t1 + 1280);
    xsi_vlog_subprogram_popinvocation(t15);

LAB25:    t22 = (t2 + 64U);
    t24 = *((char **)t22);
    t22 = (t1 + 1280);
    t25 = (t2 + 56U);
    t26 = *((char **)t25);
    xsi_delete_subprogram_invocation(t22, t24, t1, t26, t2);
    xsi_set_current_line(91, ng0);
    t4 = ((char*)((ng5)));
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    xsi_vlog_subprograminvocation_setJumpstate(t2, t8, &&LAB30);
    t9 = (t2 + 56U);
    t10 = *((char **)t9);
    t11 = (t1 + 1280);
    t12 = xsi_create_subprogram_invocation(t10, 0, t1, t11, 0, t2);
    xsi_vlog_subprogram_pushinvocation(t11, t12);
    t13 = (t1 + 5096);
    xsi_vlogvar_assign_value(t13, t4, 0, 0, 8);

LAB32:    t14 = (t2 + 64U);
    t15 = *((char **)t14);
    t16 = (t15 + 80U);
    t17 = *((char **)t16);
    t18 = (t17 + 272U);
    t19 = *((char **)t18);
    t20 = (t19 + 0U);
    t21 = *((char **)t20);
    t23 = ((int  (*)(char *, char *))t21)(t1, t15);
    if (t23 == -1)
        goto LAB33;

LAB34:    if (t23 != 0)
        goto LAB35;

LAB30:    t15 = (t1 + 1280);
    xsi_vlog_subprogram_popinvocation(t15);

LAB31:    t22 = (t2 + 64U);
    t24 = *((char **)t22);
    t22 = (t1 + 1280);
    t25 = (t2 + 56U);
    t26 = *((char **)t25);
    xsi_delete_subprogram_invocation(t22, t24, t1, t26, t2);
    xsi_set_current_line(92, ng0);
    t4 = ((char*)((ng5)));
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    xsi_vlog_subprograminvocation_setJumpstate(t2, t8, &&LAB36);
    t9 = (t2 + 56U);
    t10 = *((char **)t9);
    t11 = (t1 + 1280);
    t12 = xsi_create_subprogram_invocation(t10, 0, t1, t11, 0, t2);
    xsi_vlog_subprogram_pushinvocation(t11, t12);
    t13 = (t1 + 5096);
    xsi_vlogvar_assign_value(t13, t4, 0, 0, 8);

LAB38:    t14 = (t2 + 64U);
    t15 = *((char **)t14);
    t16 = (t15 + 80U);
    t17 = *((char **)t16);
    t18 = (t17 + 272U);
    t19 = *((char **)t18);
    t20 = (t19 + 0U);
    t21 = *((char **)t20);
    t23 = ((int  (*)(char *, char *))t21)(t1, t15);
    if (t23 == -1)
        goto LAB39;

LAB40:    if (t23 != 0)
        goto LAB41;

LAB36:    t15 = (t1 + 1280);
    xsi_vlog_subprogram_popinvocation(t15);

LAB37:    t22 = (t2 + 64U);
    t24 = *((char **)t22);
    t22 = (t1 + 1280);
    t25 = (t2 + 56U);
    t26 = *((char **)t25);
    xsi_delete_subprogram_invocation(t22, t24, t1, t26, t2);
    xsi_set_current_line(93, ng0);
    t4 = ((char*)((ng5)));
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    xsi_vlog_subprograminvocation_setJumpstate(t2, t8, &&LAB42);
    t9 = (t2 + 56U);
    t10 = *((char **)t9);
    t11 = (t1 + 1280);
    t12 = xsi_create_subprogram_invocation(t10, 0, t1, t11, 0, t2);
    xsi_vlog_subprogram_pushinvocation(t11, t12);
    t13 = (t1 + 5096);
    xsi_vlogvar_assign_value(t13, t4, 0, 0, 8);

LAB44:    t14 = (t2 + 64U);
    t15 = *((char **)t14);
    t16 = (t15 + 80U);
    t17 = *((char **)t16);
    t18 = (t17 + 272U);
    t19 = *((char **)t18);
    t20 = (t19 + 0U);
    t21 = *((char **)t20);
    t23 = ((int  (*)(char *, char *))t21)(t1, t15);
    if (t23 == -1)
        goto LAB45;

LAB46:    if (t23 != 0)
        goto LAB47;

LAB42:    t15 = (t1 + 1280);
    xsi_vlog_subprogram_popinvocation(t15);

LAB43:    t22 = (t2 + 64U);
    t24 = *((char **)t22);
    t22 = (t1 + 1280);
    t25 = (t2 + 56U);
    t26 = *((char **)t25);
    xsi_delete_subprogram_invocation(t22, t24, t1, t26, t2);
    xsi_set_current_line(95, ng0);
    t4 = ((char*)((ng6)));
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    xsi_vlog_subprograminvocation_setJumpstate(t2, t8, &&LAB48);
    t9 = (t2 + 56U);
    t10 = *((char **)t9);
    t11 = (t1 + 1280);
    t12 = xsi_create_subprogram_invocation(t10, 0, t1, t11, 0, t2);
    xsi_vlog_subprogram_pushinvocation(t11, t12);
    t13 = (t1 + 5096);
    xsi_vlogvar_assign_value(t13, t4, 0, 0, 8);

LAB50:    t14 = (t2 + 64U);
    t15 = *((char **)t14);
    t16 = (t15 + 80U);
    t17 = *((char **)t16);
    t18 = (t17 + 272U);
    t19 = *((char **)t18);
    t20 = (t19 + 0U);
    t21 = *((char **)t20);
    t23 = ((int  (*)(char *, char *))t21)(t1, t15);
    if (t23 == -1)
        goto LAB51;

LAB52:    if (t23 != 0)
        goto LAB53;

LAB48:    t15 = (t1 + 1280);
    xsi_vlog_subprogram_popinvocation(t15);

LAB49:    t22 = (t2 + 64U);
    t24 = *((char **)t22);
    t22 = (t1 + 1280);
    t25 = (t2 + 56U);
    t26 = *((char **)t25);
    xsi_delete_subprogram_invocation(t22, t24, t1, t26, t2);
    xsi_set_current_line(97, ng0);
    t4 = ((char*)((ng7)));
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    xsi_vlog_subprograminvocation_setJumpstate(t2, t8, &&LAB54);
    t9 = (t2 + 56U);
    t10 = *((char **)t9);
    t11 = (t1 + 1280);
    t12 = xsi_create_subprogram_invocation(t10, 0, t1, t11, 0, t2);
    xsi_vlog_subprogram_pushinvocation(t11, t12);
    t13 = (t1 + 5096);
    xsi_vlogvar_assign_value(t13, t4, 0, 0, 8);

LAB56:    t14 = (t2 + 64U);
    t15 = *((char **)t14);
    t16 = (t15 + 80U);
    t17 = *((char **)t16);
    t18 = (t17 + 272U);
    t19 = *((char **)t18);
    t20 = (t19 + 0U);
    t21 = *((char **)t20);
    t23 = ((int  (*)(char *, char *))t21)(t1, t15);
    if (t23 == -1)
        goto LAB57;

LAB58:    if (t23 != 0)
        goto LAB59;

LAB54:    t15 = (t1 + 1280);
    xsi_vlog_subprogram_popinvocation(t15);

LAB55:    t22 = (t2 + 64U);
    t24 = *((char **)t22);
    t22 = (t1 + 1280);
    t25 = (t2 + 56U);
    t26 = *((char **)t25);
    xsi_delete_subprogram_invocation(t22, t24, t1, t26, t2);
    xsi_set_current_line(98, ng0);
    t4 = ((char*)((ng2)));
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    xsi_vlog_subprograminvocation_setJumpstate(t2, t8, &&LAB60);
    t9 = (t2 + 56U);
    t10 = *((char **)t9);
    t11 = (t1 + 1280);
    t12 = xsi_create_subprogram_invocation(t10, 0, t1, t11, 0, t2);
    xsi_vlog_subprogram_pushinvocation(t11, t12);
    t13 = (t1 + 5096);
    xsi_vlogvar_assign_value(t13, t4, 0, 0, 8);

LAB62:    t14 = (t2 + 64U);
    t15 = *((char **)t14);
    t16 = (t15 + 80U);
    t17 = *((char **)t16);
    t18 = (t17 + 272U);
    t19 = *((char **)t18);
    t20 = (t19 + 0U);
    t21 = *((char **)t20);
    t23 = ((int  (*)(char *, char *))t21)(t1, t15);
    if (t23 == -1)
        goto LAB63;

LAB64:    if (t23 != 0)
        goto LAB65;

LAB60:    t15 = (t1 + 1280);
    xsi_vlog_subprogram_popinvocation(t15);

LAB61:    t22 = (t2 + 64U);
    t24 = *((char **)t22);
    t22 = (t1 + 1280);
    t25 = (t2 + 56U);
    t26 = *((char **)t25);
    xsi_delete_subprogram_invocation(t22, t24, t1, t26, t2);
    xsi_set_current_line(99, ng0);
    t4 = ((char*)((ng8)));
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    xsi_vlog_subprograminvocation_setJumpstate(t2, t8, &&LAB66);
    t9 = (t2 + 56U);
    t10 = *((char **)t9);
    t11 = (t1 + 1280);
    t12 = xsi_create_subprogram_invocation(t10, 0, t1, t11, 0, t2);
    xsi_vlog_subprogram_pushinvocation(t11, t12);
    t13 = (t1 + 5096);
    xsi_vlogvar_assign_value(t13, t4, 0, 0, 8);

LAB68:    t14 = (t2 + 64U);
    t15 = *((char **)t14);
    t16 = (t15 + 80U);
    t17 = *((char **)t16);
    t18 = (t17 + 272U);
    t19 = *((char **)t18);
    t20 = (t19 + 0U);
    t21 = *((char **)t20);
    t23 = ((int  (*)(char *, char *))t21)(t1, t15);
    if (t23 == -1)
        goto LAB69;

LAB70:    if (t23 != 0)
        goto LAB71;

LAB66:    t15 = (t1 + 1280);
    xsi_vlog_subprogram_popinvocation(t15);

LAB67:    t22 = (t2 + 64U);
    t24 = *((char **)t22);
    t22 = (t1 + 1280);
    t25 = (t2 + 56U);
    t26 = *((char **)t25);
    xsi_delete_subprogram_invocation(t22, t24, t1, t26, t2);
    xsi_set_current_line(100, ng0);
    t4 = ((char*)((ng2)));
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    xsi_vlog_subprograminvocation_setJumpstate(t2, t8, &&LAB72);
    t9 = (t2 + 56U);
    t10 = *((char **)t9);
    t11 = (t1 + 1280);
    t12 = xsi_create_subprogram_invocation(t10, 0, t1, t11, 0, t2);
    xsi_vlog_subprogram_pushinvocation(t11, t12);
    t13 = (t1 + 5096);
    xsi_vlogvar_assign_value(t13, t4, 0, 0, 8);

LAB74:    t14 = (t2 + 64U);
    t15 = *((char **)t14);
    t16 = (t15 + 80U);
    t17 = *((char **)t16);
    t18 = (t17 + 272U);
    t19 = *((char **)t18);
    t20 = (t19 + 0U);
    t21 = *((char **)t20);
    t23 = ((int  (*)(char *, char *))t21)(t1, t15);
    if (t23 == -1)
        goto LAB75;

LAB76:    if (t23 != 0)
        goto LAB77;

LAB72:    t15 = (t1 + 1280);
    xsi_vlog_subprogram_popinvocation(t15);

LAB73:    t22 = (t2 + 64U);
    t24 = *((char **)t22);
    t22 = (t1 + 1280);
    t25 = (t2 + 56U);
    t26 = *((char **)t25);
    xsi_delete_subprogram_invocation(t22, t24, t1, t26, t2);
    xsi_set_current_line(103, ng0);
    t4 = ((char*)((ng2)));
    t5 = ((char*)((ng2)));
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t2 + 56U);
    t9 = *((char **)t8);
    xsi_vlog_subprograminvocation_setJumpstate(t2, t9, &&LAB78);
    t10 = (t2 + 56U);
    t11 = *((char **)t10);
    t12 = (t1 + 848);
    t13 = xsi_create_subprogram_invocation(t11, 0, t1, t12, 0, t2);
    xsi_vlog_subprogram_pushinvocation(t12, t13);
    t14 = (t1 + 4776);
    xsi_vlogvar_assign_value(t14, t4, 0, 0, 2);
    t15 = (t1 + 4936);
    xsi_vlogvar_assign_value(t15, t5, 0, 0, 1);

LAB80:    t16 = (t2 + 64U);
    t17 = *((char **)t16);
    t18 = (t17 + 80U);
    t19 = *((char **)t18);
    t20 = (t19 + 272U);
    t21 = *((char **)t20);
    t22 = (t21 + 0U);
    t24 = *((char **)t22);
    t23 = ((int  (*)(char *, char *))t24)(t1, t17);
    if (t23 == -1)
        goto LAB81;

LAB82:    if (t23 != 0)
        goto LAB83;

LAB78:    t17 = (t1 + 848);
    xsi_vlog_subprogram_popinvocation(t17);

LAB79:    t25 = (t2 + 64U);
    t26 = *((char **)t25);
    t25 = (t1 + 848);
    t27 = (t2 + 56U);
    t28 = *((char **)t27);
    xsi_delete_subprogram_invocation(t25, t26, t1, t28, t2);

LAB4:    xsi_vlog_dispose_subprogram_invocation(t2);
    t4 = (t2 + 48U);
    *((char **)t4) = &&LAB2;
    t0 = 0;

LAB1:    return t0;
LAB9:    t0 = -1;
    goto LAB1;

LAB11:    t15 = (t2 + 48U);
    *((char **)t15) = &&LAB8;
    goto LAB1;

LAB15:    t0 = -1;
    goto LAB1;

LAB17:    t14 = (t2 + 48U);
    *((char **)t14) = &&LAB14;
    goto LAB1;

LAB21:    t0 = -1;
    goto LAB1;

LAB23:    t14 = (t2 + 48U);
    *((char **)t14) = &&LAB20;
    goto LAB1;

LAB27:    t0 = -1;
    goto LAB1;

LAB29:    t14 = (t2 + 48U);
    *((char **)t14) = &&LAB26;
    goto LAB1;

LAB33:    t0 = -1;
    goto LAB1;

LAB35:    t14 = (t2 + 48U);
    *((char **)t14) = &&LAB32;
    goto LAB1;

LAB39:    t0 = -1;
    goto LAB1;

LAB41:    t14 = (t2 + 48U);
    *((char **)t14) = &&LAB38;
    goto LAB1;

LAB45:    t0 = -1;
    goto LAB1;

LAB47:    t14 = (t2 + 48U);
    *((char **)t14) = &&LAB44;
    goto LAB1;

LAB51:    t0 = -1;
    goto LAB1;

LAB53:    t14 = (t2 + 48U);
    *((char **)t14) = &&LAB50;
    goto LAB1;

LAB57:    t0 = -1;
    goto LAB1;

LAB59:    t14 = (t2 + 48U);
    *((char **)t14) = &&LAB56;
    goto LAB1;

LAB63:    t0 = -1;
    goto LAB1;

LAB65:    t14 = (t2 + 48U);
    *((char **)t14) = &&LAB62;
    goto LAB1;

LAB69:    t0 = -1;
    goto LAB1;

LAB71:    t14 = (t2 + 48U);
    *((char **)t14) = &&LAB68;
    goto LAB1;

LAB75:    t0 = -1;
    goto LAB1;

LAB77:    t14 = (t2 + 48U);
    *((char **)t14) = &&LAB74;
    goto LAB1;

LAB81:    t0 = -1;
    goto LAB1;

LAB83:    t16 = (t2 + 48U);
    *((char **)t16) = &&LAB80;
    goto LAB1;

}

static void Initial_31_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(31, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 3656);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);

LAB1:    return;
}

static void Always_32_1(char *t0)
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

LAB0:    t1 = (t0 + 6256U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 6064);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(32, ng0);
    t4 = (t0 + 3656);
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
    t24 = (t0 + 3656);
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

static void Always_71_2(char *t0)
{
    char t7[8];
    char t21[8];
    char t28[8];
    char t74[8];
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
    char *t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    char *t66;
    char *t67;
    char *t68;
    char *t69;
    char *t70;
    char *t71;
    char *t72;
    char *t73;

LAB0:    t1 = (t0 + 6504U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 7136);
    *((int *)t2) = 1;
    t3 = (t0 + 6536);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(71, ng0);

LAB5:    xsi_set_current_line(72, ng0);
    t4 = (t0 + 3816);
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

LAB12:    t60 = (t28 + 4);
    t61 = *((unsigned int *)t60);
    t62 = (~(t61));
    t63 = *((unsigned int *)t28);
    t64 = (t63 & t62);
    t65 = (t64 != 0);
    if (t65 > 0)
        goto LAB20;

LAB21:
LAB22:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 3816);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t7, 0, 8);
    t5 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = (~(t9));
    t11 = *((unsigned int *)t4);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB24;

LAB25:    if (*((unsigned int *)t5) != 0)
        goto LAB26;

LAB27:    t8 = (t7 + 4);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 || t17);
    if (t18 > 0)
        goto LAB28;

LAB29:    memcpy(t28, t7, 8);

LAB30:    t42 = (t28 + 4);
    t61 = *((unsigned int *)t42);
    t62 = (~(t61));
    t63 = *((unsigned int *)t28);
    t64 = (t63 & t62);
    t65 = (t64 != 0);
    if (t65 > 0)
        goto LAB38;

LAB39:
LAB40:    goto LAB2;

LAB6:    *((unsigned int *)t7) = 1;
    goto LAB9;

LAB8:    t14 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB9;

LAB10:    t19 = (t0 + 2936U);
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

LAB20:    xsi_set_current_line(72, ng0);

LAB23:    xsi_set_current_line(73, ng0);
    t66 = (t0 + 4616);
    t67 = (t66 + 56U);
    t68 = *((char **)t67);
    t69 = (t0 + 4296);
    t70 = (t69 + 56U);
    t71 = *((char **)t70);
    t72 = (t0 + 2776U);
    t73 = *((char **)t72);
    xsi_vlogfile_write(1, 0, 0, ng9, 4, t0, (char)119, t68, 32, (char)119, t71, 32, (char)118, t73, 8);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 4296);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng10)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t4, 32, t5, 32);
    t6 = (t0 + 4296);
    xsi_vlogvar_assign_value(t6, t7, 0, 0, 32);
    goto LAB22;

LAB24:    *((unsigned int *)t7) = 1;
    goto LAB27;

LAB26:    t6 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t6) = 1;
    goto LAB27;

LAB28:    t14 = (t0 + 3096U);
    t15 = *((char **)t14);
    memset(t21, 0, 8);
    t14 = (t15 + 4);
    t22 = *((unsigned int *)t14);
    t23 = (~(t22));
    t24 = *((unsigned int *)t15);
    t25 = (t24 & t23);
    t26 = (t25 & 1U);
    if (t26 != 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t14) != 0)
        goto LAB33;

LAB34:    t29 = *((unsigned int *)t7);
    t30 = *((unsigned int *)t21);
    t31 = (t29 & t30);
    *((unsigned int *)t28) = t31;
    t20 = (t7 + 4);
    t27 = (t21 + 4);
    t32 = (t28 + 4);
    t35 = *((unsigned int *)t20);
    t36 = *((unsigned int *)t27);
    t37 = (t35 | t36);
    *((unsigned int *)t32) = t37;
    t38 = *((unsigned int *)t32);
    t39 = (t38 != 0);
    if (t39 == 1)
        goto LAB35;

LAB36:
LAB37:    goto LAB30;

LAB31:    *((unsigned int *)t21) = 1;
    goto LAB34;

LAB33:    t19 = (t21 + 4);
    *((unsigned int *)t21) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB34;

LAB35:    t40 = *((unsigned int *)t28);
    t41 = *((unsigned int *)t32);
    *((unsigned int *)t28) = (t40 | t41);
    t33 = (t7 + 4);
    t34 = (t21 + 4);
    t44 = *((unsigned int *)t7);
    t45 = (~(t44));
    t46 = *((unsigned int *)t33);
    t47 = (~(t46));
    t48 = *((unsigned int *)t21);
    t49 = (~(t48));
    t50 = *((unsigned int *)t34);
    t51 = (~(t50));
    t52 = (t45 & t47);
    t53 = (t49 & t51);
    t54 = (~(t52));
    t55 = (~(t53));
    t56 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t56 & t54);
    t57 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t57 & t55);
    t58 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t58 & t54);
    t59 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t59 & t55);
    goto LAB37;

LAB38:    xsi_set_current_line(78, ng0);

LAB41:    xsi_set_current_line(79, ng0);
    t43 = (t0 + 4456);
    t60 = (t43 + 56U);
    t66 = *((char **)t60);
    t67 = ((char*)((ng10)));
    memset(t74, 0, 8);
    xsi_vlog_signed_add(t74, 32, t66, 32, t67, 32);
    t68 = (t0 + 4456);
    xsi_vlogvar_assign_value(t68, t74, 0, 0, 32);
    xsi_set_current_line(80, ng0);
    t2 = (t0 + 4616);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    xsi_vlogfile_write(1, 0, 0, ng11, 2, t0, (char)119, t4, 32);
    goto LAB40;

}

static void Initial_107_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    t1 = (t0 + 6752U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(107, ng0);

LAB4:    xsi_set_current_line(108, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3816);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(109, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3976);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(110, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4136);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(111, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 4296);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(112, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 4456);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(113, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 4616);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(116, ng0);
    xsi_vlogfile_write(1, 0, 0, ng13, 1, t0);
    xsi_set_current_line(117, ng0);
    xsi_vlogfile_write(1, 0, 0, ng14, 1, t0);
    xsi_set_current_line(119, ng0);
    t2 = (t0 + 6560);
    t3 = (t0 + 1712);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB7:    t5 = (t0 + 6656);
    t6 = *((char **)t5);
    t7 = (t6 + 80U);
    t8 = *((char **)t7);
    t9 = (t8 + 272U);
    t10 = *((char **)t9);
    t11 = (t10 + 0U);
    t12 = *((char **)t11);
    t13 = ((int  (*)(char *, char *))t12)(t0, t6);

LAB9:    if (t13 != 0)
        goto LAB10;

LAB5:    t6 = (t0 + 1712);
    xsi_vlog_subprogram_popinvocation(t6);

LAB6:    t14 = (t0 + 6656);
    t15 = *((char **)t14);
    t14 = (t0 + 1712);
    t16 = (t0 + 6560);
    t17 = 0;
    xsi_delete_subprogram_invocation(t14, t15, t0, t16, t17);
    xsi_set_current_line(120, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 4616);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(122, ng0);
    t2 = (t0 + 6560);
    t3 = (t0 + 2144);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB13:    t5 = (t0 + 6656);
    t6 = *((char **)t5);
    t7 = (t6 + 80U);
    t8 = *((char **)t7);
    t9 = (t8 + 272U);
    t10 = *((char **)t9);
    t11 = (t10 + 0U);
    t12 = *((char **)t11);
    t13 = ((int  (*)(char *, char *))t12)(t0, t6);

LAB15:    if (t13 != 0)
        goto LAB16;

LAB11:    t6 = (t0 + 2144);
    xsi_vlog_subprogram_popinvocation(t6);

LAB12:    t14 = (t0 + 6656);
    t15 = *((char **)t14);
    t14 = (t0 + 2144);
    t16 = (t0 + 6560);
    t17 = 0;
    xsi_delete_subprogram_invocation(t14, t15, t0, t16, t17);
    xsi_set_current_line(124, ng0);
    t2 = ((char*)((ng15)));
    t3 = (t2 + 4);
    t18 = *((unsigned int *)t3);
    t19 = (~(t18));
    t20 = *((unsigned int *)t2);
    t13 = (t20 & t19);
    t4 = (t0 + 9360);
    *((int *)t4) = t13;

LAB17:    t5 = (t0 + 9360);
    if (*((int *)t5) > 0)
        goto LAB18;

LAB19:    xsi_set_current_line(126, ng0);
    t2 = (t0 + 4296);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    xsi_vlogfile_write(1, 0, 0, ng16, 2, t0, (char)119, t4, 32);
    xsi_set_current_line(127, ng0);
    t2 = (t0 + 4456);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    xsi_vlogfile_write(1, 0, 0, ng17, 2, t0, (char)119, t4, 32);
    xsi_set_current_line(131, ng0);
    xsi_vlogfile_write(1, 0, 0, ng13, 1, t0);
    xsi_set_current_line(132, ng0);
    xsi_vlogfile_write(1, 0, 0, ng18, 1, t0);
    xsi_set_current_line(134, ng0);
    t2 = (t0 + 6560);
    t3 = (t0 + 1712);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB23:    t5 = (t0 + 6656);
    t6 = *((char **)t5);
    t7 = (t6 + 80U);
    t8 = *((char **)t7);
    t9 = (t8 + 272U);
    t10 = *((char **)t9);
    t11 = (t10 + 0U);
    t12 = *((char **)t11);
    t13 = ((int  (*)(char *, char *))t12)(t0, t6);

LAB25:    if (t13 != 0)
        goto LAB26;

LAB21:    t6 = (t0 + 1712);
    xsi_vlog_subprogram_popinvocation(t6);

LAB22:    t14 = (t0 + 6656);
    t15 = *((char **)t14);
    t14 = (t0 + 1712);
    t16 = (t0 + 6560);
    t17 = 0;
    xsi_delete_subprogram_invocation(t14, t15, t0, t16, t17);
    xsi_set_current_line(135, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4616);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(136, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 4296);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(137, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 4456);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(139, ng0);
    t2 = ((char*)((ng2)));
    t3 = ((char*)((ng1)));
    t4 = (t0 + 6560);
    t5 = (t0 + 848);
    t6 = xsi_create_subprogram_invocation(t4, 0, t0, t5, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t5, t6);
    t7 = (t0 + 4776);
    xsi_vlogvar_assign_value(t7, t2, 0, 0, 2);
    t8 = (t0 + 4936);
    xsi_vlogvar_assign_value(t8, t3, 0, 0, 1);

LAB29:    t9 = (t0 + 6656);
    t10 = *((char **)t9);
    t11 = (t10 + 80U);
    t12 = *((char **)t11);
    t14 = (t12 + 272U);
    t15 = *((char **)t14);
    t16 = (t15 + 0U);
    t17 = *((char **)t16);
    t13 = ((int  (*)(char *, char *))t17)(t0, t10);

LAB31:    if (t13 != 0)
        goto LAB32;

LAB27:    t10 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t10);

LAB28:    t21 = (t0 + 6656);
    t22 = *((char **)t21);
    t21 = (t0 + 848);
    t23 = (t0 + 6560);
    t24 = 0;
    xsi_delete_subprogram_invocation(t21, t22, t0, t23, t24);
    xsi_set_current_line(140, ng0);
    t2 = ((char*)((ng2)));
    t3 = ((char*)((ng1)));
    t4 = (t0 + 6560);
    t5 = (t0 + 848);
    t6 = xsi_create_subprogram_invocation(t4, 0, t0, t5, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t5, t6);
    t7 = (t0 + 4776);
    xsi_vlogvar_assign_value(t7, t2, 0, 0, 2);
    t8 = (t0 + 4936);
    xsi_vlogvar_assign_value(t8, t3, 0, 0, 1);

LAB35:    t9 = (t0 + 6656);
    t10 = *((char **)t9);
    t11 = (t10 + 80U);
    t12 = *((char **)t11);
    t14 = (t12 + 272U);
    t15 = *((char **)t14);
    t16 = (t15 + 0U);
    t17 = *((char **)t16);
    t13 = ((int  (*)(char *, char *))t17)(t0, t10);

LAB37:    if (t13 != 0)
        goto LAB38;

LAB33:    t10 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t10);

LAB34:    t21 = (t0 + 6656);
    t22 = *((char **)t21);
    t21 = (t0 + 848);
    t23 = (t0 + 6560);
    t24 = 0;
    xsi_delete_subprogram_invocation(t21, t22, t0, t23, t24);
    xsi_set_current_line(142, ng0);
    t2 = (t0 + 6560);
    t3 = (t0 + 2144);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB41:    t5 = (t0 + 6656);
    t6 = *((char **)t5);
    t7 = (t6 + 80U);
    t8 = *((char **)t7);
    t9 = (t8 + 272U);
    t10 = *((char **)t9);
    t11 = (t10 + 0U);
    t12 = *((char **)t11);
    t13 = ((int  (*)(char *, char *))t12)(t0, t6);

LAB43:    if (t13 != 0)
        goto LAB44;

LAB39:    t6 = (t0 + 2144);
    xsi_vlog_subprogram_popinvocation(t6);

LAB40:    t14 = (t0 + 6656);
    t15 = *((char **)t14);
    t14 = (t0 + 2144);
    t16 = (t0 + 6560);
    t17 = 0;
    xsi_delete_subprogram_invocation(t14, t15, t0, t16, t17);
    xsi_set_current_line(144, ng0);
    t2 = ((char*)((ng15)));
    t3 = (t2 + 4);
    t18 = *((unsigned int *)t3);
    t19 = (~(t18));
    t20 = *((unsigned int *)t2);
    t13 = (t20 & t19);
    t4 = (t0 + 9364);
    *((int *)t4) = t13;

LAB45:    t5 = (t0 + 9364);
    if (*((int *)t5) > 0)
        goto LAB46;

LAB47:    xsi_set_current_line(146, ng0);
    t2 = (t0 + 4296);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    xsi_vlogfile_write(1, 0, 0, ng19, 2, t0, (char)119, t4, 32);
    xsi_set_current_line(147, ng0);
    t2 = (t0 + 4456);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    xsi_vlogfile_write(1, 0, 0, ng20, 2, t0, (char)119, t4, 32);
    xsi_set_current_line(149, ng0);
    xsi_vlogfile_write(1, 0, 0, ng13, 1, t0);
    xsi_set_current_line(150, ng0);
    xsi_vlogfile_write(1, 0, 0, ng21, 1, t0);
    xsi_set_current_line(151, ng0);
    xsi_vlog_finish(1);

LAB1:    return;
LAB8:;
LAB10:    t5 = (t0 + 6752U);
    *((char **)t5) = &&LAB7;
    goto LAB1;

LAB14:;
LAB16:    t5 = (t0 + 6752U);
    *((char **)t5) = &&LAB13;
    goto LAB1;

LAB18:    xsi_set_current_line(124, ng0);
    t6 = (t0 + 7152);
    *((int *)t6) = 1;
    t7 = (t0 + 6784);
    *((char **)t7) = t6;
    *((char **)t1) = &&LAB20;
    goto LAB1;

LAB20:    t2 = (t0 + 9360);
    t13 = *((int *)t2);
    *((int *)t2) = (t13 - 1);
    goto LAB17;

LAB24:;
LAB26:    t5 = (t0 + 6752U);
    *((char **)t5) = &&LAB23;
    goto LAB1;

LAB30:;
LAB32:    t9 = (t0 + 6752U);
    *((char **)t9) = &&LAB29;
    goto LAB1;

LAB36:;
LAB38:    t9 = (t0 + 6752U);
    *((char **)t9) = &&LAB35;
    goto LAB1;

LAB42:;
LAB44:    t5 = (t0 + 6752U);
    *((char **)t5) = &&LAB41;
    goto LAB1;

LAB46:    xsi_set_current_line(144, ng0);
    t6 = (t0 + 7168);
    *((int *)t6) = 1;
    t7 = (t0 + 6784);
    *((char **)t7) = t6;
    *((char **)t1) = &&LAB48;
    goto LAB1;

LAB48:    t2 = (t0 + 9364);
    t13 = *((int *)t2);
    *((int *)t2) = (t13 - 1);
    goto LAB45;

}


extern void work_m_17108395549011357889_0800392871_init()
{
	static char *pe[] = {(void *)Initial_31_0,(void *)Always_32_1,(void *)Always_71_2,(void *)Initial_107_3};
	static char *se[] = {(void *)sp_send_dibit,(void *)sp_send_byte,(void *)sp_reset_receiver,(void *)sp_send_test_frame};
	xsi_register_didat("work_m_17108395549011357889_0800392871", "isim/tb_rmii_rx_isim_beh.exe.sim/work/m_17108395549011357889_0800392871.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
