/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern void execute_1212(char*, char *);
extern void execute_1213(char*, char *);
extern void execute_1206(char*, char *);
extern void execute_966(char*, char *);
extern void execute_967(char*, char *);
extern void execute_37(char*, char *);
extern void execute_42(char*, char *);
extern void execute_43(char*, char *);
extern void execute_44(char*, char *);
extern void execute_712(char*, char *);
extern void execute_961(char*, char *);
extern void execute_902(char*, char *);
extern void execute_903(char*, char *);
extern void execute_896(char*, char *);
extern void execute_897(char*, char *);
extern void execute_721(char*, char *);
extern void execute_725(char*, char *);
extern void execute_727(char*, char *);
extern void execute_808(char*, char *);
extern void execute_803(char*, char *);
extern void execute_804(char*, char *);
extern void execute_899(char*, char *);
extern void execute_901(char*, char *);
extern void execute_905(char*, char *);
extern void execute_910(char*, char *);
extern void execute_959(char*, char *);
extern void execute_960(char*, char *);
extern void execute_995(char*, char *);
extern void execute_996(char*, char *);
extern void execute_998(char*, char *);
extern void execute_999(char*, char *);
extern void execute_1001(char*, char *);
extern void execute_1002(char*, char *);
extern void execute_1004(char*, char *);
extern void execute_1006(char*, char *);
extern void execute_1011(char*, char *);
extern void execute_1012(char*, char *);
extern void execute_1068(char*, char *);
extern void execute_1069(char*, char *);
extern void execute_1045(char*, char *);
extern void execute_1052(char*, char *);
extern void execute_1059(char*, char *);
extern void execute_1066(char*, char *);
extern void execute_1074(char*, char *);
extern void execute_1075(char*, char *);
extern void execute_1076(char*, char *);
extern void execute_1077(char*, char *);
extern void execute_1078(char*, char *);
extern void execute_1079(char*, char *);
extern void execute_1080(char*, char *);
extern void execute_1081(char*, char *);
extern void execute_1082(char*, char *);
extern void execute_1083(char*, char *);
extern void execute_1084(char*, char *);
extern void execute_1085(char*, char *);
extern void execute_1086(char*, char *);
extern void execute_1087(char*, char *);
extern void execute_1088(char*, char *);
extern void execute_1089(char*, char *);
extern void execute_1090(char*, char *);
extern void execute_1091(char*, char *);
extern void execute_1185(char*, char *);
extern void execute_1149(char*, char *);
extern void execute_1150(char*, char *);
extern void execute_1151(char*, char *);
extern void execute_1152(char*, char *);
extern void execute_1153(char*, char *);
extern void execute_1154(char*, char *);
extern void execute_1155(char*, char *);
extern void execute_1156(char*, char *);
extern void execute_1157(char*, char *);
extern void execute_1158(char*, char *);
extern void execute_1159(char*, char *);
extern void execute_1160(char*, char *);
extern void execute_1161(char*, char *);
extern void execute_1162(char*, char *);
extern void execute_1163(char*, char *);
extern void execute_1164(char*, char *);
extern void execute_1165(char*, char *);
extern void execute_1166(char*, char *);
extern void execute_1167(char*, char *);
extern void execute_1168(char*, char *);
extern void execute_1169(char*, char *);
extern void execute_1170(char*, char *);
extern void execute_1171(char*, char *);
extern void execute_1172(char*, char *);
extern void execute_1173(char*, char *);
extern void execute_1174(char*, char *);
extern void execute_1175(char*, char *);
extern void execute_1176(char*, char *);
extern void execute_1177(char*, char *);
extern void execute_1178(char*, char *);
extern void execute_1179(char*, char *);
extern void execute_1180(char*, char *);
extern void execute_1181(char*, char *);
extern void execute_1182(char*, char *);
extern void execute_1183(char*, char *);
extern void execute_1195(char*, char *);
extern void execute_1196(char*, char *);
extern void execute_1197(char*, char *);
extern void execute_1198(char*, char *);
extern void execute_1199(char*, char *);
extern void execute_1200(char*, char *);
extern void execute_1201(char*, char *);
extern void execute_1192(char*, char *);
extern void execute_1193(char*, char *);
extern void execute_1194(char*, char *);
extern void execute_1205(char*, char *);
extern void execute_1208(char*, char *);
extern void execute_1209(char*, char *);
extern void execute_1210(char*, char *);
extern void execute_1211(char*, char *);
extern void transaction_0(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_25(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_36(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_450(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_453(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_456(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_457(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_459(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_460(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_461(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_462(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_463(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_464(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_491(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_492(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_493(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_494(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_512(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_519(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_521(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_528(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_544(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_545(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_546(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_547(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_548(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_549(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_550(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_551(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_564(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_565(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_566(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_567(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_570(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[147] = {(funcp)execute_1212, (funcp)execute_1213, (funcp)execute_1206, (funcp)execute_966, (funcp)execute_967, (funcp)execute_37, (funcp)execute_42, (funcp)execute_43, (funcp)execute_44, (funcp)execute_712, (funcp)execute_961, (funcp)execute_902, (funcp)execute_903, (funcp)execute_896, (funcp)execute_897, (funcp)execute_721, (funcp)execute_725, (funcp)execute_727, (funcp)execute_808, (funcp)execute_803, (funcp)execute_804, (funcp)execute_899, (funcp)execute_901, (funcp)execute_905, (funcp)execute_910, (funcp)execute_959, (funcp)execute_960, (funcp)execute_995, (funcp)execute_996, (funcp)execute_998, (funcp)execute_999, (funcp)execute_1001, (funcp)execute_1002, (funcp)execute_1004, (funcp)execute_1006, (funcp)execute_1011, (funcp)execute_1012, (funcp)execute_1068, (funcp)execute_1069, (funcp)execute_1045, (funcp)execute_1052, (funcp)execute_1059, (funcp)execute_1066, (funcp)execute_1074, (funcp)execute_1075, (funcp)execute_1076, (funcp)execute_1077, (funcp)execute_1078, (funcp)execute_1079, (funcp)execute_1080, (funcp)execute_1081, (funcp)execute_1082, (funcp)execute_1083, (funcp)execute_1084, (funcp)execute_1085, (funcp)execute_1086, (funcp)execute_1087, (funcp)execute_1088, (funcp)execute_1089, (funcp)execute_1090, (funcp)execute_1091, (funcp)execute_1185, (funcp)execute_1149, (funcp)execute_1150, (funcp)execute_1151, (funcp)execute_1152, (funcp)execute_1153, (funcp)execute_1154, (funcp)execute_1155, (funcp)execute_1156, (funcp)execute_1157, (funcp)execute_1158, (funcp)execute_1159, (funcp)execute_1160, (funcp)execute_1161, (funcp)execute_1162, (funcp)execute_1163, (funcp)execute_1164, (funcp)execute_1165, (funcp)execute_1166, (funcp)execute_1167, (funcp)execute_1168, (funcp)execute_1169, (funcp)execute_1170, (funcp)execute_1171, (funcp)execute_1172, (funcp)execute_1173, (funcp)execute_1174, (funcp)execute_1175, (funcp)execute_1176, (funcp)execute_1177, (funcp)execute_1178, (funcp)execute_1179, (funcp)execute_1180, (funcp)execute_1181, (funcp)execute_1182, (funcp)execute_1183, (funcp)execute_1195, (funcp)execute_1196, (funcp)execute_1197, (funcp)execute_1198, (funcp)execute_1199, (funcp)execute_1200, (funcp)execute_1201, (funcp)execute_1192, (funcp)execute_1193, (funcp)execute_1194, (funcp)execute_1205, (funcp)execute_1208, (funcp)execute_1209, (funcp)execute_1210, (funcp)execute_1211, (funcp)transaction_0, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_25, (funcp)transaction_36, (funcp)transaction_450, (funcp)transaction_453, (funcp)transaction_456, (funcp)transaction_457, (funcp)transaction_459, (funcp)transaction_460, (funcp)transaction_461, (funcp)transaction_462, (funcp)transaction_463, (funcp)transaction_464, (funcp)transaction_491, (funcp)transaction_492, (funcp)transaction_493, (funcp)transaction_494, (funcp)transaction_512, (funcp)transaction_519, (funcp)transaction_521, (funcp)transaction_528, (funcp)transaction_544, (funcp)transaction_545, (funcp)transaction_546, (funcp)transaction_547, (funcp)transaction_548, (funcp)transaction_549, (funcp)transaction_550, (funcp)transaction_551, (funcp)transaction_564, (funcp)transaction_565, (funcp)transaction_566, (funcp)transaction_567, (funcp)transaction_570};
const int NumRelocateId= 147;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/MCU_TOP_tb_behav/xsim.reloc",  (void **)funcTab, 147);
	iki_vhdl_file_variable_register(dp + 141248);
	iki_vhdl_file_variable_register(dp + 141304);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/MCU_TOP_tb_behav/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/MCU_TOP_tb_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/MCU_TOP_tb_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/MCU_TOP_tb_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/MCU_TOP_tb_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
