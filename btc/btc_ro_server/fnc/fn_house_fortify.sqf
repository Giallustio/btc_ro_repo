/*
	[_house_object,[btc_ro_en_R],true,0.5] call btc_ro_fnc_house_fortify;
*/

private ["_house","_units","_all_pos","_random","_n_pos","_max_pos"];

_house = _this select 0;
_units = _this select 1;
_all_pos = _this select 2;
_random = 0.3;
if (count _this > 3) then {_random = _this select 3;};

if (count _units == 0) then {_units =+ btc_ro_en_array;};

_n_pos = 0;
while {format ["%1", _house buildingPos _n_pos] != "[0,0,0]" } do {_n_pos = _n_pos + 1};
_max_pos = _n_pos;

_group = createGroup btc_ro_enemy_side;

for "_i" from 0 to (_max_pos - 1) do {
	if (_all_pos || (random 1 > _random)) then {
		private ["_type","_unit"];
		_type = _units select (floor random count _units);
		_unit = _group createUnit [_type, (_house buildingPos _i), [], 0, "NONE"];
		_unit setPos (_house buildingPos _i);
		doStop _unit;		
	};
};

if ({Alive _x} count units _group == 0) exitWith {deleteGroup _group;true};

{deleteWaypoint _x;} foreach waypoints _group;
_group setBehaviour "AWARE";
_group setCombatMode "RED";