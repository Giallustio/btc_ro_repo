if (isPlayer (_this select 1)) then {
	[format ["A civilian has been killed by %1",name (_this select 1)],"hint"] spawn BIS_fnc_MP;
};