//GLOBAL CONFIGURATION TO DEFINE RELATIONSHIP BETWEEN RHS FACTIONS, ARMORED TYPES AND ARMORED CLASS NAMES ARRAY

RHS_FACTIONS_VEHICLES_TYPES_CLASS_NAMES = [
	[
		RHS_RU_FACTION_VDV, 
		[
			[RHS_RU_ARMORED_TYPE_BTR, RHS_VDV_BTR_ARRAY],
			[RHS_RU_ARMORED_TYPE_HEAVY_BTR, RHS_VDV_BTR_HEAVY_ARRAY],
			[RHS_RU_ARMORED_TYPE_BMP, RHS_VDV_BMP_ARRAY],
			[RHS_RU_ARMORED_TYPE_HEAVY_BMP, RHS_VDV_BMP_HEAVY_ARRAY],
			[RHS_RU_UNITS_TYPE_WOODLAND, RHS_VDV_UNITS_WOODLAND_ARRAY]
		]		
	],
	[
		RHS_RU_FACTION_VMF,
		[
			[RHS_RU_ARMORED_TYPE_BTR, RHS_VMF_BTR_ARRAY],
			[RHS_RU_ARMORED_TYPE_HEAVY_BTR, RHS_VMF_BTR_HEAVY_ARRAY],
			[RHS_RU_ARMORED_TYPE_BMP, RHS_VMF_BMP_ARRAY],
			[RHS_RU_ARMORED_TYPE_HEAVY_BMP, RHS_VMF_BMP_HEAVY_ARRAY],
			[RHS_RU_UNITS_TYPE_WOODLAND, RHS_VDV_UNITS_WOODLAND_ARRAY]
		]
	],
	[
		RHS_RU_FACTION_VV,
		[
			[RHS_RU_ARMORED_TYPE_BTR, RHS_VV_BTR_ARRAY],
			[RHS_RU_ARMORED_TYPE_HEAVY_BTR, RHS_VV_BTR_HEAVY_ARRAY],
			[RHS_RU_ARMORED_TYPE_BMP, RHS_VV_BMP_ARRAY],
			[RHS_RU_ARMORED_TYPE_HEAVY_BMP, RHS_VV_BMP_HEAVY_ARRAY],
			[RHS_RU_UNITS_TYPE_WOODLAND, RHS_VDV_UNITS_WOODLAND_ARRAY]
		]
	],
	[
		RHS_RU_FACTION_MSV,
		[
			[RHS_RU_ARMORED_TYPE_BTR, RHS_MSV_BTR_ARRAY],
			[RHS_RU_ARMORED_TYPE_HEAVY_BTR, RHS_MSV_BTR_HEAVY_ARRAY],
			[RHS_RU_ARMORED_TYPE_BMP, RHS_MSV_BMP_ARRAY],
			[RHS_RU_ARMORED_TYPE_HEAVY_BMP, RHS_MSV_BMP_HEAVY_ARRAY],
			[RHS_RU_UNITS_TYPE_WOODLAND, RHS_VDV_UNITS_WOODLAND_ARRAY]
		]
	],
	[
		RHS_US_FACTION_USMC_WD,
		[
			[RHS_US_UNITS_TYPE_WOODLAND, RHS_USMC_UNITS_WOODLAND_ARRAY]
		]
	],
	[
		RHS_US_FACTION_USMC_D,
		[
			[RHS_US_UNITS_TYPE_DESERT, RHS_USMC_UNITS_DESERT_ARRAY]
		]
	]
];

RHS_FACTIONS_SIDE = [
	[RHS_RU_FACTION_VDV, EAST],
	[RHS_RU_FACTION_VMF, EAST],
	[RHS_RU_FACTION_VV, EAST],
	[RHS_US_FACTION_USMC_WD, WEST],
	[RHS_US_FACTION_USMC_D, WEST]
];