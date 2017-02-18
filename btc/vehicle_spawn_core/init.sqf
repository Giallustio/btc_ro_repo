btc_debug = true;
call compile preprocessFile "configurations\btc_rhs_global_variables.sqf";
call compile preprocessFile "configurations\btc_rhs_relationships.sqf";
call compile preprocessFile "functions\btc_utils.sqf";
call compile preprocessFile "functions\btc_functions.sqf";

if(btc_debug) then { 
	player allowDamage false; 
	onMapSingleClick { player setPos _pos; };
	}
