
private ["_group","_pos","_area","_units","_n","_array"];

_pos = _this select 0;
_area = _this select 1;
_units = _this select 2;
//select 4 random number

_group = createGroup btc_ro_enemy_side;

switch (typeName _pos) do {
	//case "ARRAY" :{_pos = _pos;};
	case "STRING":{_pos = getMarkerPos _pos;};
	case "OBJECT":{_pos = position _pos;};
};

if (_area > 0) then {_pos = [_pos, _area] call btc_ro_fnc_randomize_pos;};

_array = [];

switch (typeName _units) do {
	case "ARRAY" : {_array = _units;};
	case "SCALAR": {
		if (_this select 3) then {_units = random _units;};
		for "_i" from 1 to _units do {
			_array = _array + [(btc_ro_en_array select (floor random count btc_ro_en_array))];
		};
	};
};


{
	_group createUnit [_x, _pos, [], 0, "NONE"];
} foreach _array;

_group