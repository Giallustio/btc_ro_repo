
private ["_side","_pos","_dir","_type","_stance","_stop","_group","_unit"];

_side = _this select 0;
_pos = _this select 1;
_dir = _this select 2;
_type = _this select 3;
_stance = _this select 4;
_stop = _this select 5;

_group = createGroup _side;

switch (typeName _pos) do
{
	case "STRING":{_pos = getMarkerPos _pos;};
	case "OBJECT":{_pos = position _pos;};
};


_unit = _group createUnit [_type, _pos, [], 0, "NONE"];
_unit setFormDir _dir;
_unit setPos _pos;

_group setBehaviour "AWARE";
_group setCombatMode "RED";

_unit setUnitPos _stance;
if (_stop) then {doStop _unit;_wp = _group addWaypoint [_pos, 0];_wp setWaypointType "HOLD";};

_unit