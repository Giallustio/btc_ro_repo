//GLOBAL RHS VARIABLES DEFINITIONS LIKE FACTIONS, ARMORED TYPES, INFANTRY GROUPS, ARMORED GROUPS ECC. ECC.

//ARMORED TYPES FOR RUSSIAN FORCES
RHS_RU_ARMORED_TYPE_TANK = 0;
RHS_RU_ARMORED_TYPE_BTR = 1;
RHS_RU_ARMORED_TYPE_HEAVY_BTR = 2;
RHS_RU_ARMORED_TYPE_BMP = 3;
RHS_RU_ARMORED_TYPE_HEAVY_BMP = 4;

//FACTIONS FOR RUSSIAN FORCES
RHS_RU_FACTION_VDV = 0;
RHS_RU_FACTION_VMF = 1;
RHS_RU_FACTION_VV = 2;
RHS_RU_FACTION_MSV = 3;

//RUSSIAN BTR CLASS NAMES ARRAYS DIVIDED BY FACTIONS
RHS_VDV_BTR_ARRAY = ["rhs_btr70_vdv", "rhs_btr80_vdv", "rhs_btr60_vdv"]; 
RHS_VMF_BTR_ARRAY = ["rhs_btr70_vmf","rhs_btr80_vmf","rhs_btr60_vmf"]; 
RHS_VV_BTR_ARRAY = ["rhs_btr70_vv", "rhs_btr80_vv", "rhs_btr60_vv"]; 
RHS_MSV_BTR_ARRAY = ["rhs_btr70_msv", "rhs_btr80_vv", "rhs_btr60_msv"]; 

//RUSSIAN HEAVY BTR CLASS NAMES ARRAYS DIVIDED FOR FACTIONS
RHS_VDV_BTR_HEAVY_ARRAY = ["rhs_btr80a_vdv"]; 
RHS_VMF_BTR_HEAVY_ARRAY = ["rhs_btr80a_vmf"]; 
RHS_VV_BTR_HEAVY_ARRAY = ["rhs_btr80a_vv"]; 
RHS_MSV_BTR_HEAVY_ARRAY = ["rhs_btr80a_msv"]; 

//RUSSIAN BMP CLASS NAMES ARRAYS ARRAYS DIVIDED BY FACTIONS
RHS_VDV_BMP_ARRAY = ["rhs_bmp1p_vdv", "rhs_bmp1k_vdv", "rhs_bmp1d_vdv", "rhs_bmp2e_vdv", "rhs_bmp2_vdv", "rhs_bmp2k_vdv", "rhs_bmp2d_vdv"]; 
RHS_VMF_BMP_ARRAY = ["rhs_bmp1p_vmf", "rhs_bmp1k_vmf", "rhs_bmp1d_vmf", "rhs_bmp2e_vmf", "rhs_bmp2_vmf", "rhs_bmp2k_vmf", "rhs_bmp2d_vmf"]; 
RHS_VV_BMP_ARRAY = ["rhs_bmp1p_vv", "rhs_bmp1k_vv", "rhs_bmp1d_vv", "rhs_bmp2e_vv", "rhs_bmp2_vv", "rhs_bmp2k_vv", "rhs_bmp2d_vv"]; 
RHS_MSV_BMP_ARRAY = ["rhs_bmp1p_msv", "rhs_bmp1k_msv", "rhs_bmp1d_msv", "rhs_bmp2e_msv", "rhs_bmp2_msv", "rhs_bmp2k_msv", "rhs_bmp2d_msv"]; 

//RUSSIAN HEAVY BMP CLASS NAMES ARRAYS DIVIDED BY FACTIONS
RHS_VDV_BMP_HEAVY_ARRAY = ["rhs_bmp1_vdv"];
RHS_VMF_BMP_HEAVY_ARRAY = ["rhs_bmp1_vmf"]; 
RHS_VV_BMP_HEAVY_ARRAY = ["rhs_bmp1_vv"]; 
RHS_MSV_BMP_HEAVY_ARRAY = ["rhs_bmp1_msv"]; 

//DEFINE ARRAY OF RUSSIAN ARMORED TYPE
RHS_RU_ARMORED_TYPES = [/*RHS_RU_ARMORED_TYPE_TANK,*/ RHS_RU_ARMORED_TYPE_BTR, RHS_RU_ARMORED_TYPE_HEAVY_BTR, RHS_RU_ARMORED_TYPE_BMP, RHS_RU_ARMORED_TYPE_HEAVY_BMP];
//DEFINE ARRAY OF RUSSIAN FACTIONS
RHS_RU_FACTIONS = [RHS_RU_FACTION_VDV, RHS_RU_FACTION_VMF, RHS_RU_FACTION_VV, RHS_RU_FACTION_MSV];