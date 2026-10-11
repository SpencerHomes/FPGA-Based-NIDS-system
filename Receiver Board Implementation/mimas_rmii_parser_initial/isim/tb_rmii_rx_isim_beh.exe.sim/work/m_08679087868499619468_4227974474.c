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
static const char *ng0 = "/home/ise/MimasV2-shared/mimas_rmii_parser_initial/rtl/rmii_rx.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static int ng3[] = {1, 0};
static int ng4[] = {0, 0};
static int ng5[] = {3, 0};
static int ng6[] = {2, 0};
static unsigned int ng7[] = {2U, 0U};
static int ng8[] = {5, 0};
static int ng9[] = {4, 0};
static unsigned int ng10[] = {3U, 0U};



static void Always_30_0(char *t0)
{
    char t4[8];
    char t30[8];
    char t31[8];
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
    char *t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    int t32;
    int t33;
    int t34;
    int t35;
    int t36;
    int t37;
    int t38;
    int t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    int t44;

LAB0:    t1 = (t0 + 3960U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 4280);
    *((int *)t2) = 1;
    t3 = (t0 + 3992);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(30, ng0);

LAB5:    xsi_set_current_line(31, ng0);
    t5 = (t0 + 1208U);
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

LAB11:    xsi_set_current_line(40, ng0);

LAB14:    xsi_set_current_line(41, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(42, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB15;

LAB16:    xsi_set_current_line(80, ng0);

LAB58:    xsi_set_current_line(81, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    xsi_set_current_line(82, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(84, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t12 = (t6 + 4);
    t7 = *((unsigned int *)t12);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB59;

LAB60:
LAB61:
LAB17:
LAB12:    goto LAB2;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(31, ng0);

LAB13:    xsi_set_current_line(32, ng0);
    t19 = ((char*)((ng1)));
    t20 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t20, t19, 0, 0, 2, 0LL);
    xsi_set_current_line(33, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 6, 0LL);
    xsi_set_current_line(34, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 8, 0LL);
    xsi_set_current_line(35, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(36, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(37, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(38, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(39, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB12;

LAB15:    xsi_set_current_line(46, ng0);

LAB18:    xsi_set_current_line(48, ng0);
    t5 = (t0 + 3048);
    t6 = (t5 + 56U);
    t12 = *((char **)t6);
    memset(t4, 0, 8);
    t13 = (t12 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (~(t14));
    t16 = *((unsigned int *)t12);
    t17 = (t16 & t15);
    t18 = (t17 & 1U);
    if (t18 != 0)
        goto LAB22;

LAB20:    if (*((unsigned int *)t13) == 0)
        goto LAB19;

LAB21:    t19 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t19) = 1;

LAB22:    t20 = (t4 + 4);
    t21 = *((unsigned int *)t20);
    t22 = (~(t21));
    t23 = *((unsigned int *)t4);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB23;

LAB24:    xsi_set_current_line(56, ng0);

LAB37:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);

LAB38:    t6 = ((char*)((ng1)));
    t32 = xsi_vlog_unsigned_case_compare(t5, 2, t6, 2);
    if (t32 == 1)
        goto LAB39;

LAB40:    t2 = ((char*)((ng2)));
    t32 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t32 == 1)
        goto LAB41;

LAB42:    t2 = ((char*)((ng7)));
    t32 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t32 == 1)
        goto LAB43;

LAB44:    t2 = ((char*)((ng10)));
    t32 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t32 == 1)
        goto LAB45;

LAB46:
LAB47:
LAB25:    goto LAB17;

LAB19:    *((unsigned int *)t4) = 1;
    goto LAB22;

LAB23:    xsi_set_current_line(48, ng0);

LAB26:    xsi_set_current_line(49, ng0);
    t26 = ((char*)((ng1)));
    t27 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t27, t26, 0, 0, 2, 0LL);
    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t4, 0, 8);
    t5 = (t3 + 4);
    t6 = (t2 + 4);
    t7 = *((unsigned int *)t3);
    t8 = *((unsigned int *)t2);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t6);
    t14 = (t10 ^ t11);
    t15 = (t9 | t14);
    t16 = *((unsigned int *)t5);
    t17 = *((unsigned int *)t6);
    t18 = (t16 | t17);
    t21 = (~(t18));
    t22 = (t15 & t21);
    if (t22 != 0)
        goto LAB28;

LAB27:    if (t18 != 0)
        goto LAB29;

LAB30:    t13 = (t4 + 4);
    t23 = *((unsigned int *)t13);
    t24 = (~(t23));
    t25 = *((unsigned int *)t4);
    t28 = (t25 & t24);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB31;

LAB32:
LAB33:    goto LAB25;

LAB28:    *((unsigned int *)t4) = 1;
    goto LAB30;

LAB29:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB30;

LAB31:    xsi_set_current_line(51, ng0);

LAB34:    xsi_set_current_line(52, ng0);
    t19 = ((char*)((ng2)));
    t20 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t20, t19, 0, 0, 1, 0LL);
    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t0 + 2728);
    t5 = (t0 + 2728);
    t6 = (t5 + 72U);
    t12 = *((char **)t6);
    t13 = ((char*)((ng3)));
    t19 = ((char*)((ng4)));
    xsi_vlog_convert_partindices(t4, t30, t31, ((int*)(t12)), 2, t13, 32, 1, t19, 32, 1);
    t20 = (t4 + 4);
    t7 = *((unsigned int *)t20);
    t32 = (!(t7));
    t26 = (t30 + 4);
    t8 = *((unsigned int *)t26);
    t33 = (!(t8));
    t34 = (t32 && t33);
    t27 = (t31 + 4);
    t9 = *((unsigned int *)t27);
    t35 = (!(t9));
    t36 = (t34 && t35);
    if (t36 == 1)
        goto LAB35;

LAB36:    xsi_set_current_line(54, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    goto LAB33;

LAB35:    t10 = *((unsigned int *)t31);
    t37 = (t10 + 0);
    t11 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t30);
    t38 = (t11 - t14);
    t39 = (t38 + 1);
    xsi_vlogvar_wait_assign_value(t2, t3, t37, *((unsigned int *)t30), t39, 0LL);
    goto LAB36;

LAB39:    xsi_set_current_line(58, ng0);

LAB48:    xsi_set_current_line(59, ng0);
    t12 = (t0 + 1368U);
    t13 = *((char **)t12);
    t12 = (t0 + 2728);
    t19 = (t0 + 2728);
    t20 = (t19 + 72U);
    t26 = *((char **)t20);
    t27 = ((char*)((ng3)));
    t40 = ((char*)((ng4)));
    xsi_vlog_convert_partindices(t4, t30, t31, ((int*)(t26)), 2, t27, 32, 1, t40, 32, 1);
    t41 = (t4 + 4);
    t7 = *((unsigned int *)t41);
    t33 = (!(t7));
    t42 = (t30 + 4);
    t8 = *((unsigned int *)t42);
    t34 = (!(t8));
    t35 = (t33 && t34);
    t43 = (t31 + 4);
    t9 = *((unsigned int *)t43);
    t36 = (!(t9));
    t37 = (t35 && t36);
    if (t37 == 1)
        goto LAB49;

LAB50:    xsi_set_current_line(60, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    goto LAB47;

LAB41:    xsi_set_current_line(63, ng0);

LAB51:    xsi_set_current_line(64, ng0);
    t3 = (t0 + 1368U);
    t6 = *((char **)t3);
    t3 = (t0 + 2728);
    t12 = (t0 + 2728);
    t13 = (t12 + 72U);
    t19 = *((char **)t13);
    t20 = ((char*)((ng5)));
    t26 = ((char*)((ng6)));
    xsi_vlog_convert_partindices(t4, t30, t31, ((int*)(t19)), 2, t20, 32, 1, t26, 32, 1);
    t27 = (t4 + 4);
    t7 = *((unsigned int *)t27);
    t33 = (!(t7));
    t40 = (t30 + 4);
    t8 = *((unsigned int *)t40);
    t34 = (!(t8));
    t35 = (t33 && t34);
    t41 = (t31 + 4);
    t9 = *((unsigned int *)t41);
    t36 = (!(t9));
    t37 = (t35 && t36);
    if (t37 == 1)
        goto LAB52;

LAB53:    xsi_set_current_line(65, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    goto LAB47;

LAB43:    xsi_set_current_line(68, ng0);

LAB54:    xsi_set_current_line(69, ng0);
    t3 = (t0 + 1368U);
    t6 = *((char **)t3);
    t3 = (t0 + 2728);
    t12 = (t0 + 2728);
    t13 = (t12 + 72U);
    t19 = *((char **)t13);
    t20 = ((char*)((ng8)));
    t26 = ((char*)((ng9)));
    xsi_vlog_convert_partindices(t4, t30, t31, ((int*)(t19)), 2, t20, 32, 1, t26, 32, 1);
    t27 = (t4 + 4);
    t7 = *((unsigned int *)t27);
    t33 = (!(t7));
    t40 = (t30 + 4);
    t8 = *((unsigned int *)t40);
    t34 = (!(t8));
    t35 = (t33 && t34);
    t41 = (t31 + 4);
    t9 = *((unsigned int *)t41);
    t36 = (!(t9));
    t37 = (t35 && t36);
    if (t37 == 1)
        goto LAB55;

LAB56:    xsi_set_current_line(70, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    goto LAB47;

LAB45:    xsi_set_current_line(73, ng0);

LAB57:    xsi_set_current_line(74, ng0);
    t3 = (t0 + 2728);
    t6 = (t3 + 56U);
    t12 = *((char **)t6);
    memset(t30, 0, 8);
    t13 = (t30 + 4);
    t19 = (t12 + 4);
    t7 = *((unsigned int *)t12);
    t8 = (t7 >> 0);
    *((unsigned int *)t30) = t8;
    t9 = *((unsigned int *)t19);
    t10 = (t9 >> 0);
    *((unsigned int *)t13) = t10;
    t11 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t11 & 63U);
    t14 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t14 & 63U);
    t20 = (t0 + 1368U);
    t26 = *((char **)t20);
    xsi_vlogtype_concat(t4, 8, 8, 2U, t26, 2, t30, 6);
    t20 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t20, t4, 0, 0, 8, 0LL);
    xsi_set_current_line(75, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(76, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    goto LAB47;

LAB49:    t10 = *((unsigned int *)t31);
    t38 = (t10 + 0);
    t11 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t30);
    t39 = (t11 - t14);
    t44 = (t39 + 1);
    xsi_vlogvar_wait_assign_value(t12, t13, t38, *((unsigned int *)t30), t44, 0LL);
    goto LAB50;

LAB52:    t10 = *((unsigned int *)t31);
    t38 = (t10 + 0);
    t11 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t30);
    t39 = (t11 - t14);
    t44 = (t39 + 1);
    xsi_vlogvar_wait_assign_value(t3, t6, t38, *((unsigned int *)t30), t44, 0LL);
    goto LAB53;

LAB55:    t10 = *((unsigned int *)t31);
    t38 = (t10 + 0);
    t11 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t30);
    t39 = (t11 - t14);
    t44 = (t39 + 1);
    xsi_vlogvar_wait_assign_value(t3, t6, t38, *((unsigned int *)t30), t44, 0LL);
    goto LAB56;

LAB59:    xsi_set_current_line(85, ng0);
    t13 = ((char*)((ng2)));
    t19 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t19, t13, 0, 0, 1, 0LL);
    goto LAB61;

}


extern void work_m_08679087868499619468_4227974474_init()
{
	static char *pe[] = {(void *)Always_30_0};
	xsi_register_didat("work_m_08679087868499619468_4227974474", "isim/tb_rmii_rx_isim_beh.exe.sim/work/m_08679087868499619468_4227974474.didat");
	xsi_register_executes(pe);
}
