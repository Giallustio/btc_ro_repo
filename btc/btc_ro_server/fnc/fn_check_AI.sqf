{
	if (side _x != btc_ro_enemy_side) exitWith {};
	_unit = _x;
	diag_log text "--------------------------------------------------";
	diag_log format ["Unit: %1", typeOf _unit];
	
	{
		_v = _unit skillFinal _x;
		diag_log format ["%1 : %2",_x,_v];
	} 
	foreach
	[
		"aimingAccuracy",
		"aimingShake",
		"aimingSpeed",
		"endurance",
		"spotDistance",
		"spotTime",
		"courage",
		"reloadSpeed",
		"commanding",
		"general"
	];

} foreach allUnits;