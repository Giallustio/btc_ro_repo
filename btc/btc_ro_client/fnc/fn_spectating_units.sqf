_ui = uiNamespace getVariable "btc_ro_spectating";

_units = [];
if (isMultiplayer) then
{
	{if ((side _x == btc_ro_side_player) && {_x distance (getMarkerPos btc_ro_respawn_marker) > 100}) then {_units pushBack _x;}} foreach playableUnits;
} else {{_units pushBack _x;} foreach switchableUnits;};

if ((count _units) isEqualTo (count btc_ro_spectating_units)) exitWith {btc_ro_spectating_units};

_idc = 1771;
lbClear _idc;
{
	private ["_index"];

	_index = lbAdd [ _idc, name _x ];
	if ((name _x) isEqualTo (name btc_ro_spectating_target)) then {lbSetCurSel [_idc, _index];};
} foreach _units;

lbSort [(_ui displayCtrl _idc), "ASC"];

if (isNull btc_ro_spectating_target) then {lbSetCurSel [_idc, 0];call btc_ro_fnc_spectating_change_target};

btc_ro_spectating_units = _units;

_units 