
private ["_group","_array","_wp"];

_group = _this select 0;
_array = _this select 1;

{
	//pos - type - speed
	_wp = _group addWaypoint [(_x select 0), 0];
	_wp setWaypointType (_x select 1);
	_wp setWaypointSpeed (_x select 2);
} foreach _array;
