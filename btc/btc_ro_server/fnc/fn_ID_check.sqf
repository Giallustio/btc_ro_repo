_uid = getPlayerUid _this;
_name = name _this;

if ((btc_ro_jip_max_time > 0 && {time > btc_ro_jip_max_time}) || ((btc_ro_players_id_dead find _uid) >= 0)) then {
	{if (name _x isEqualTo _name) then {[[],"btc_ro_ro_fnc_spectating", _x] call BIS_fnc_MP; };} foreach playableUnits;
};