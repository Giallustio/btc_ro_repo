
private ["_pos","_dir","_type","_fill","_cargo","_group","_veh","_crew","_return","_slots"];

//_return = [getpos player,10,"rhs_brm1k_msv",true,true] call btc_ro_fnc_create_veh;

_pos = _this select 0;
_dir = _this select 1;
_type = _this select 2;
_fill = _this select 3;
_cargo = _this select 4;

_group = createGroup btc_ro_enemy_side;

switch (typeName _pos) do
{
	case "STRING" : {_pos = getMarkerPos _pos;};
	case "OBJECT" : {_pos = position _pos;};
};

_veh = _type createVehicle _pos;
_veh setDir _dir;

_trts = _type call btc_ro_fnc_get_turret;
if (_fill) then {
	{
		_crew = _group createUnit [btc_ro_en_C, _pos, [], 0, "NONE"];
		_crew moveInTurret [_veh, _x];
	} foreach _trts;
};
if (_veh emptyPositions "driver" > 0) then {_crew = _group createUnit [btc_ro_en_C, _pos, [], 0, "NONE"];_crew assignAsDriver _veh;_crew moveInDriver _veh;};

if (_cargo) then {
	_slots = _veh emptyPositions "cargo";
	for "_i" from 1 to _slots do {
		_crew = _group createUnit [btc_ro_en_C, _pos, [], 0, "NONE"];
		_crew assignAsCargo _veh;
		_crew moveInCargo _veh;
	};
};

_return = [_veh,_group];

_return 