class CfgPatches
{
	class btc_ro_server
	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"A3_Data_F"};
	};
};

class CfgFunctions {
	class btc_ro_server_functions {
		tag = "btc_ro";
		class btc_ro_server_functions {
			file = "btc\btc_ro_server\fnc";
			class add_WP;
			class check_AI;
			class civ_add_WP;
			class civ_killed;
			class create_group;
			class create_static;
			class create_unit;
			class create_veh;
			class define_enemies;
			class get_houses;
			class get_turret;
			class house_add_WP;
			class house_fortify;
			class ID_add;
			class ID_check;
			class randomize_pos;
			class set_skill;
			class init_server {preInit = 1;};
			class unit_init;
		};
	};
};

class Extended_InitPost_EventHandlers {
	class CAManBase {
		class btc_ro {
			init = "_this call btc_ro_fnc_unit_init;";
		};
	};
};