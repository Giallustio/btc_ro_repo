
if (isDedicated) exitWith {};

btc_ro_respawn_marker = "respawn_west";
btc_ro_spectating_view_mode = ["1st person","3rd person","Free"];//Free allowed?

btc_ro_one_life = false;
btc_ro_isGame = false;

if !(btc_ro_isGame) exitWith {};

[] spawn {
	waitUntil {(!isNull player && {Alive player})};

	[player] join GrpNull;
	//missionNamespace setVariable ["AGM_Interaction_EnableTeamManagement", false];
	[player, "btc_ro_fnc_ID_check", false] call BIS_fnc_MP;
	if (btc_ro_one_life) then {player addEventHandler ["Killed",{[] spawn btc_ro_fnc_player_killed;}];};
	
	btc_ro_side_player = side player;
	
	btc_ro_core_init = true;
};