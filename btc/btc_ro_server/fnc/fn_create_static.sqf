
private ["_pos","_dir","_type","_gunner","_group","_static"];

_pos  = _this select 0;
_dir = _this select 1;
_type = _this select 2;

if (typeName _type == "ARRAY") then {_type = _type select (floor random count _type);};

_static = _type createVehicle _pos;
_static setDir _dir;
_static setpos _pos;

_group = createGroup btc_ro_enemy_side;

_gunner = _group createUnit [btc_ro_en_R, _pos, [], 0, "NONE"];
_gunner moveInGunner _static;
_gunner setBehaviour "COMBAT";
_gunner setCombatMode "RED";

_static setFormDir _dir;

_static