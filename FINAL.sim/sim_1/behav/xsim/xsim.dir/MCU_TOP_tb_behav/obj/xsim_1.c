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
extern void execute_1158(char*, char *);
extern void execute_1159(char*, char *);
extern void execute_1150(char*, char *);
extern void execute_1156(char*, char *);
extern void execute_1157(char*, char *);
extern void execute_910(char*, char *);
extern void execute_911(char*, char *);
extern void execute_37(char*, char *);
extern void execute_42(char*, char *);
extern void execute_43(char*, char *);
extern void execute_44(char*, char *);
extern void execute_712(char*, char *);
extern void execute_905(char*, char *);
extern void execute_846(char*, char *);
extern void execute_847(char*, char *);
extern void execute_840(char*, char *);
extern void execute_841(char*, char *);
extern void execute_720(char*, char *);
extern void execute_752(char*, char *);
extern void execute_747(char*, char *);
extern void execute_748(char*, char *);
extern void execute_843(char*, char *);
extern void execute_845(char*, char *);
extern void execute_849(char*, char *);
extern void execute_854(char*, char *);
extern void execute_903(char*, char *);
extern void execute_904(char*, char *);
extern void execute_939(char*, char *);
extern void execute_940(char*, char *);
extern void execute_942(char*, char *);
extern void execute_943(char*, char *);
extern void execute_945(char*, char *);
extern void execute_946(char*, char *);
extern void execute_948(char*, char *);
extern void execute_950(char*, char *);
extern void execute_955(char*, char *);
extern void execute_956(char*, char *);
extern void execute_1012(char*, char *);
extern void execute_1013(char*, char *);
extern void execute_989(char*, char *);
extern void execute_996(char*, char *);
extern void execute_1003(char*, char *);
extern void execute_1010(char*, char *);
extern void execute_1018(char*, char *);
extern void execute_1019(char*, char *);
extern void execute_1020(char*, char *);
extern void execute_1021(char*, char *);
extern void execute_1022(char*, char *);
extern void execute_1023(char*, char *);
extern void execute_1024(char*, char *);
extern void execute_1025(char*, char *);
extern void execute_1026(char*, char *);
extern void execute_1027(char*, char *);
extern void execute_1028(char*, char *);
extern void execute_1029(char*, char *);
extern void execute_1030(char*, char *);
extern void execute_1031(char*, char *);
extern void execute_1032(char*, char *);
extern void execute_1033(char*, char *);
extern void execute_1034(char*, char *);
extern void execute_1035(char*, char *);
extern void execute_1129(char*, char *);
extern void execute_1093(char*, char *);
extern void execute_1094(char*, char *);
extern void execute_1095(char*, char *);
extern void execute_1096(char*, char *);
extern void execute_1097(char*, char *);
extern void execute_1098(char*, char *);
extern void execute_1099(char*, char *);
extern void execute_1100(char*, char *);
extern void execute_1101(char*, char *);
extern void execute_1102(char*, char *);
extern void execute_1103(char*, char *);
extern void execute_1104(char*, char *);
extern void execute_1105(char*, char *);
extern void execute_1106(char*, char *);
extern void execute_1107(char*, char *);
extern void execute_1108(char*, char *);
extern void execute_1109(char*, char *);
extern void execute_1110(char*, char *);
extern void execute_1111(char*, char *);
extern void execute_1112(char*, char *);
extern void execute_1113(char*, char *);
extern void execute_1114(char*, char *);
extern void execute_1115(char*, char *);
extern void execute_1116(char*, char *);
extern void execute_1117(char*, char *);
extern void execute_1118(char*, char *);
extern void execute_1119(char*, char *);
extern void execute_1120(char*, char *);
extern void execute_1121(char*, char *);
extern void execute_1122(char*, char *);
extern void execute_1123(char*, char *);
extern void execute_1124(char*, char *);
extern void execute_1125(char*, char *);
extern void execute_1126(char*, char *);
extern void execute_1127(char*, char *);
extern void execute_1139(char*, char *);
extern void execute_1140(char*, char *);
extern void execute_1141(char*, char *);
extern void execute_1142(char*, char *);
extern void execute_1143(char*, char *);
extern void execute_1144(char*, char *);
extern void execute_1145(char*, char *);
extern void execute_1136(char*, char *);
extern void execute_1137(char*, char *);
extern void execute_1138(char*, char *);
extern void execute_1149(char*, char *);
extern void execute_1152(char*, char *);
extern void execute_1153(char*, char *);
extern void execute_1154(char*, char *);
extern void execute_1155(char*, char *);
extern void transaction_0(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_25(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_36(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_427(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_430(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_433(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_434(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_436(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_437(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_438(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_439(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_440(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_441(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_468(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_469(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_470(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_471(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_489(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_496(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_498(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_505(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_521(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_522(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_523(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_524(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_525(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_526(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_527(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_528(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_541(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_542(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_543(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_544(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_547(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[147] = {(funcp)execute_1158, (funcp)execute_1159, (funcp)execute_1150, (funcp)execute_1156, (funcp)execute_1157, (funcp)execute_910, (funcp)execute_911, (funcp)execute_37, (funcp)execute_42, (funcp)execute_43, (funcp)execute_44, (funcp)execute_712, (funcp)execute_905, (funcp)execute_846, (funcp)execute_847, (funcp)execute_840, (funcp)execute_841, (funcp)execute_720, (funcp)execute_752, (funcp)execute_747, (funcp)execute_748, (funcp)execute_843, (funcp)execute_845, (funcp)execute_849, (funcp)execute_854, (funcp)execute_903, (funcp)execute_904, (funcp)execute_939, (funcp)execute_940, (funcp)execute_942, (funcp)execute_943, (funcp)execute_945, (funcp)execute_946, (funcp)execute_948, (funcp)execute_950, (funcp)execute_955, (funcp)execute_956, (funcp)execute_1012, (funcp)execute_1013, (funcp)execute_989, (funcp)execute_996, (funcp)execute_1003, (funcp)execute_1010, (funcp)execute_1018, (funcp)execute_1019, (funcp)execute_1020, (funcp)execute_1021, (funcp)execute_1022, (funcp)execute_1023, (funcp)execute_1024, (funcp)execute_1025, (funcp)execute_1026, (funcp)execute_1027, (funcp)execute_1028, (funcp)execute_1029, (funcp)execute_1030, (funcp)execute_1031, (funcp)execute_1032, (funcp)execute_1033, (funcp)execute_1034, (funcp)execute_1035, (funcp)execute_1129, (funcp)execute_1093, (funcp)execute_1094, (funcp)execute_1095, (funcp)execute_1096, (funcp)execute_1097, (funcp)execute_1098, (funcp)execute_1099, (funcp)execute_1100, (funcp)execute_1101, (funcp)execute_1102, (funcp)execute_1103, (funcp)execute_1104, (funcp)execute_1105, (funcp)execute_1106, (funcp)execute_1107, (funcp)execute_1108, (funcp)execute_1109, (funcp)execute_1110, (funcp)execute_1111, (funcp)execute_1112, (funcp)execute_1113, (funcp)execute_1114, (funcp)execute_1115, (funcp)execute_1116, (funcp)execute_1117, (funcp)execute_1118, (funcp)execute_1119, (funcp)execute_1120, (funcp)execute_1121, (funcp)execute_1122, (funcp)execute_1123, (funcp)execute_1124, (funcp)execute_1125, (funcp)execute_1126, (funcp)execute_1127, (funcp)execute_1139, (funcp)execute_1140, (funcp)execute_1141, (funcp)execute_1142, (funcp)execute_1143, (funcp)execute_1144, (funcp)execute_1145, (funcp)execute_1136, (funcp)execute_1137, (funcp)execute_1138, (funcp)execute_1149, (funcp)execute_1152, (funcp)execute_1153, (funcp)execute_1154, (funcp)execute_1155, (funcp)transaction_0, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_25, (funcp)transaction_36, (funcp)transaction_427, (funcp)transaction_430, (funcp)transaction_433, (funcp)transaction_434, (funcp)transaction_436, (funcp)transaction_437, (funcp)transaction_438, (funcp)transaction_439, (funcp)transaction_440, (funcp)transaction_441, (funcp)transaction_468, (funcp)transaction_469, (funcp)transaction_470, (funcp)transaction_471, (funcp)transaction_489, (funcp)transaction_496, (funcp)transaction_498, (funcp)transaction_505, (funcp)transaction_521, (funcp)transaction_522, (funcp)transaction_523, (funcp)transaction_524, (funcp)transaction_525, (funcp)transaction_526, (funcp)transaction_527, (funcp)transaction_528, (funcp)transaction_541, (funcp)transaction_542, (funcp)transaction_543, (funcp)transaction_544, (funcp)transaction_547};
const int NumRelocateId= 147;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/MCU_TOP_tb_behav/xsim.reloc",  (void **)funcTab, 147);
	iki_vhdl_file_variable_register(dp + 136304);
	iki_vhdl_file_variable_register(dp + 136360);


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
