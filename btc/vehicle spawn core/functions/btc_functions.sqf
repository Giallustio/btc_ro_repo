
//Create random armored of defined quantity and type in marker radius 
// [int quantity,RHS_RU_FACTIONS select _n, RHS_RU_ARMORED_TYPES SELECT _n, [str markersNames], int radius] spawn BTC_fnc_CreateRandomArmored;
// [int quantity,RHS_RU_FACTION_VDV, RHS_RU_ARMORED_TYPE_TANK, [str markersNames], int radius] spawn BTC_fnc_CreateRandomArmored;

BTC_fnc_CreateRandomArmored = {
	_vehQuantity = _this select 0;
	_faction = _this select 1;
	_armoredType = _this select 2;
	_markersArray = _this select 3;
	_spawnRadius = _this select 4;
	
	_vehArray = [_faction, _armoredType] call BTC_fnc_GetArmoredArrayFromFactionAndType;
	
	
	for "_i" from 0 to (_vehQuantity - 1) do {
		_randomMarker = _markersArray call BTC_fnc_GetRandomOccurrenceFromArray;
		_vehClass = _vehArray call BTC_fnc_GetRandomOccurrenceFromArray;
		_randomMarkerPos = getMarkerPos _randomMarker;
		_spawnedVeh = _vehClass createVehicle ([_randomMarkerPos, _spawnRadius] call BTC_fnc_GetRandomPositionFromRadius);
		_vehCrew = createVehicleCrew _spawnedVeh;
		
	};
};