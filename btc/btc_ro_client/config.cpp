class CfgPatches
{
	class btc_ro_client
	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"A3_Data_F"};
	};
};

#include "dlg.h"

class CfgFunctions {
	class btc_ro_client_functions {
		tag = "btc_ro";
		class btc_ro_client_functions {
			file = "btc\btc_ro_client\fnc";
			class marker_debug;
			class player_killed;
			class spectating;
			class spectating_change_camera;
			class spectating_change_target;
			class spectating_create_camera;
			class spectating_destroy_camera;
			class spectating_keyDown;
			class spectating_units;
			class spectating_updating_camera;
			class init_client {preInit = 1;};
		};
	};
};