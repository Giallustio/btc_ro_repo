//GLOBALS RHS VARIABLES DEFINITIONS LIKE FACTIONS, ARMORED TYPES, INFANTRY GROUPS, ARMORED GROUPS ECC. ECC.

/***** DEFINING VEHICLES TYPES ****/
/***** DEFINING VEHICLES TYPES ****/
//ARMORED TYPES FOR RUSSIAN FORCES
RHS_RU_ARMORED_TYPE_TANK = 0;
RHS_RU_ARMORED_TYPE_BTR = 1;
RHS_RU_ARMORED_TYPE_HEAVY_BTR = 2;
RHS_RU_ARMORED_TYPE_BMP = 3;
RHS_RU_ARMORED_TYPE_HEAVY_BMP = 4;
RHS_RU_UNITS_TYPE_WOODLAND = 5;
/***** END DEFINING VEHICLES TYPES ****/
//ARMORED TYPES FOR USA FORCES
RHS_US_ARMORED_TYPE_TANK = 6;
RHS_US_ARMORED_TYPE_BTR = 7;
RHS_US_ARMORED_TYPE_HEAVY_BTR = 8;
RHS_US_ARMORED_TYPE_BMP = 9;
RHS_US_ARMORED_TYPE_HEAVY_BMP = 10;
RHS_US_UNITS_TYPE_WOODLAND = 11;
RHS_US_UNITS_TYPE_DESERT = 12;
/***** END DEFINING USA TYPES ****/


/***** DEFINING FACTIONS PER SIDE *****/
//FACTIONS FOR RUSSIAN FORCES
RHS_RU_FACTION_VDV = 0;
RHS_RU_FACTION_VMF = 1;
RHS_RU_FACTION_VV = 2;
RHS_RU_FACTION_MSV = 3;
//FACTIONS FOR USA FORCES
RHS_US_FACTION_ARMY_WD = 4;
RHS_US_FACTION_ARMY_D = 5;
RHS_US_FACTION_USMC_WD = 6;
RHS_US_FACTION_USMC_D = 7;
RHS_US_FACTION_USAF = 8;
RHS_US_FACTION_USN = 9;
RHS_US_FACTION_SOCOM = 10;
/***** END DEFINING FACTIONS PER SIDE *****/

/***** DEFINING ARRAY OF CLASSES NAMES FOR VEHICLES *****/
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


RHS_VDV_UNITS_WOODLAND_ARRAY = ["rhs_vdv_flora_rifleman", "rhs_vdv_flora_grenadier", "rhs_vdv_flora_machinegunner", "rhs_vdv_flora_at", "rhs_vdv_flora_sergeant", "rhs_vdv_flora_medic"];
RHS_USMC_UNITS_WOODLAND_ARRAY = ["rhsusf_usmc_marpat_wd_rifleman", "rhsusf_usmc_marpat_wd_grenadier", "rhsusf_usmc_marpat_wd_autorifleman", "rhsusf_usmc_marpat_wd_machinegunner", "rhsusf_usmc_fr_marpat_wd_riflemanat", "rhsusf_usmc_fr_marpat_wd_teamleader"];
RHS_USMC_UNITS_DESERT_ARRAY = ["rhsusf_usmc_marpat_d_rifleman", "rhsusf_usmc_marpat_d_grenadier", "rhsusf_usmc_marpat_d_autorifleman", "rhsusf_usmc_marpat_d_machinegunner", "rhsusf_usmc_fr_marpat_d_riflemanat", "rhsusf_usmc_fr_marpat_d_teamleader"];
/***** END DEFINING ARRAY OF CLASSES NAMES FOR VEHICLES *****/

/***** DEFINING ARRAYS OF VEHICLES TYPES AND FACTIONS PER SIDE *****/
//DEFINE ARRAY OF RUSSIAN ARMORED TYPE
RHS_RU_VEHICLES_TYPES = [
    RHS_RU_ARMORED_TYPE_BTR, 
    RHS_RU_ARMORED_TYPE_HEAVY_BTR, 
    RHS_RU_ARMORED_TYPE_BMP, 
    RHS_RU_ARMORED_TYPE_HEAVY_BMP, 
    RHS_RU_UNITS_TYPE_WOODLAND
];

RHS_US_VEHICLES_TYPES = [ 
    RHS_US_UNITS_TYPE_WOODLAND
];

//DEFINE ARRAY OF RUSSIAN FACTIONS
RHS_RU_FACTIONS = [RHS_RU_FACTION_VDV, RHS_RU_FACTION_VMF, RHS_RU_FACTION_VV, RHS_RU_FACTION_MSV, RHS_US_FACTION_USMC_WD, RHS_US_FACTION_USMC_D];

RHS_RU_UNITS_TYPES = [RHS_RU_UNITS_TYPE_WOODLAND, RHS_US_UNITS_TYPE_WOODLAND];
/***** END DEFINING ARRAYS OF VEHICLES TYPES AND FACTIONS PER SIDE  *****/