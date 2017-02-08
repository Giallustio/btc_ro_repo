_target = lbText [1771,lbCurSel 1771];

_units = [];

if (isMultiplayer) then {_units = playableUnits} else {_units = switchableUnits};

{
	if (_target isEqualTo (name _x)) then {
		btc_ro_spectating_target = _x;
		call btc_ro_fnc_spectating_change_camera;
	};
} foreach _units;