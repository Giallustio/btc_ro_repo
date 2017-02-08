/*
	0 - middle-east units
	1 - CHDKz
	2 - RHS ins

*/

switch _this do {
	case 0 : {
		btc_ro_enemy_side = resistance;

		btc_ro_en_TL = "LOP_AM_Soldier_TL";
		btc_ro_en_R = "LOP_AM_Soldier";
		btc_ro_en_R74 = "LOP_AM_Soldier";
		btc_ro_en_MG = "LOP_AM_Soldier_AR";
		btc_ro_en_M = "LOP_AM_Soldier_Medic";
		btc_ro_en_AR = "LOP_AM_Soldier_AR";
		btc_ro_en_AT = "LOP_AM_Soldier_AT";
		btc_ro_en_AA = "LOP_AM_Soldier";
		btc_ro_en_GL = "LOP_AM_Soldier_GL";
		btc_ro_en_E = "LOP_AM_Soldier_Engineer";
		btc_ro_en_S = "LOP_AM_Soldier_Marksman";
		btc_ro_en_C = "LOP_AM_Soldier";
		btc_ro_en_P = "LOP_AM_Soldier";
		btc_ro_en_array = ["LOP_AM_Soldier_TL","LOP_AM_Soldier_SL","LOP_AM_Soldier_GL","LOP_AM_Soldier_AR","LOP_AM_Soldier_Medic","LOP_AM_Soldier_Engineer","LOP_AM_Soldier_Marksman","LOP_AM_Soldier","LOP_AM_Soldier_AT"];

		btc_ro_en_static_mg = "RDS_DSHKM_CSAT";

		btc_ro_civ_array  = ["LOP_Afg_civ_01","LOP_Afg_civ_02","LOP_Afg_civ_03","LOP_Afg_civ_04"];
	};
	case 1 : {
		btc_ro_enemy_side = east;

		btc_ro_en_TL = "LOP_ChDKZ_Soldier_TL";
		btc_ro_en_R = "LOP_ChDKZ_Soldier";
		btc_ro_en_R74 = "LOP_ChDKZ_Soldier";
		btc_ro_en_MG = "LOP_ChDKZ_Soldier_AR";
		btc_ro_en_M = "LOP_ChDKZ_Soldier_Medic";
		btc_ro_en_AR = "LOP_ChDKZ_Soldier_AR";
		btc_ro_en_AT = "LOP_ChDKZ_Soldier_AT";
		btc_ro_en_AA = "LOP_ChDKZ_Soldier";
		btc_ro_en_GL = "LOP_ChDKZ_Soldier_GL";
		btc_ro_en_E = "LOP_ChDKZ_Soldier_Engineer";
		btc_ro_en_S = "LOP_ChDKZ_Soldier_Marksman";
		btc_ro_en_C = "LOP_ChDKZ_Soldier";
		btc_ro_en_P = "LOP_ChDKZ_Soldier";
		btc_ro_en_array = ["LOP_ChDKZ_Soldier_TL","LOP_ChDKZ_Soldier_SL","LOP_ChDKZ_Soldier_GL","LOP_ChDKZ_Soldier_AR","LOP_ChDKZ_Soldier_Medic","LOP_ChDKZ_Soldier_Engineer","LOP_ChDKZ_Soldier","LOP_ChDKZ_Soldier_AT"];

		btc_ro_en_static_mg = "RDS_DSHKM_CSAT";

		btc_ro_civ_array  = ["C_man_polo_1_F_euro_F_euro","C_man_polo_2_F_euro","C_man_polo_3_F_euro_F_euro","C_man_p_beggar_F_euro"];
	};
	case 2 : {
		btc_ro_enemy_side = resistance;

		btc_ro_en_TL = "rhs_g_Soldier_TL_F";
		btc_ro_en_R = "rhs_g_Soldier_F";
		btc_ro_en_R74 = "rhs_g_Soldier_F";
		btc_ro_en_MG = "rhs_g_Soldier_AR_F";
		btc_ro_en_M = "rhs_g_medic_F";
		btc_ro_en_AR = "rhs_g_Soldier_AR_F";
		btc_ro_en_AT = "rhs_g_Soldier_LAT_F";
		btc_ro_en_AA = "rhs_g_Soldier_AA_F";
		btc_ro_en_GL = "rhs_g_Soldier_GL_F";
		btc_ro_en_E = "rhs_g_engineer_F";
		btc_ro_en_S = "rhs_g_Soldier_M_F";
		btc_ro_en_C = "rhs_g_Soldier_F";
		btc_ro_en_P = "rhs_g_Soldier_F";
		btc_ro_en_array = ["rhs_g_Soldier_F","rhs_g_Soldier_F","rhs_g_Soldier_AR_F","rhs_g_medic_F","rhs_g_Soldier_LAT_F","rhs_g_Soldier_GL_F","rhs_g_Soldier_M_F"];

		btc_ro_en_static_mg = "RDS_DSHKM_CSAT";

		btc_ro_civ_array  = ["C_man_polo_1_F_euro_F_euro","C_man_polo_2_F_euro","C_man_polo_3_F_euro_F_euro","C_man_p_beggar_F_euro"];
	};	
};