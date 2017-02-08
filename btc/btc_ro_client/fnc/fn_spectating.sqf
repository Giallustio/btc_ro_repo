
if (isNil "btc_ro_core_init") then {waitUntil {!isNil "btc_ro_core_init"};};

waitUntil {!isNull player && Alive player};

player setPos (getMarkerPos btc_ro_respawn_marker);
//removeAllWeapons player;
player allowDamage false;
[true] call acre_api_fnc_setSpectator;

titleText ["", "BLACK IN", 3];[] spawn {sleep 3;titleText ["", "PLAIN"];};

closeDialog 0;
disableSerialization;
createDialog "btc_ro_spectating";
_ui = uiNamespace getVariable "btc_ro_spectating";
_ui displayAddEventHandler ["KeyDown", "call btc_ro_fnc_spectating_keyDown"];

btc_ro_spectating_target = objNull;
btc_ro_spectating_units = [];
btc_ro_spectating_using_camera = false;
btc_ro_spectating_camera_nvg = false;

call btc_ro_fnc_spectating_units;

{_index = lbAdd [ 1772, _x ];} foreach btc_ro_spectating_view_mode;lbSetCurSel [1772, 0];

btc_ro_spectating_active = true;

while {btc_ro_spectating_active} do {
	//sleep 1;
	call btc_ro_fnc_spectating_units;
	if (count btc_ro_spectating_units == 0) then {["end1",false,2] call BIS_fnc_endMission;};
	call btc_ro_fnc_spectating_updating_camera;
};
