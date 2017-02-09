
//Create random armored of defined quantity and type in marker radius 
// [int quantity,RHS_RU_FACTIONS select _n, RHS_RU_ARMORED_TYPES SELECT _n, [str markersNames], int radius] spawn BTC_fnc_CreateRandomArmored;
// [int quantity,RHS_RU_FACTION_VDV, RHS_RU_ARMORED_TYPE_TANK, [str markersNames], int radius] spawn BTC_fnc_CreateRandomArmored;

BTC_fnc_CreateRandomArmored = {
	_vehQuantity = _this select 0;
	_faction = _this select 1;
	_armoredType = _this select 2;
	_markersArray = _this select 3;
	_spawnRadius = _this select 4;
	
	_vehArray = [_faction, _armoredType] call BTC_fnc_GetVehiclesArrayFromFactionAndType;
	
	_spawnedVehicles = [];
	for "_i" from 0 to (_vehQuantity - 1) do {
		_randomMarker = _markersArray call BTC_fnc_GetRandomOccurrenceFromArray;
		_vehClass = _vehArray call BTC_fnc_GetRandomOccurrenceFromArray;
		_randomMarkerPos = getMarkerPos _randomMarker;
		_randomPosInRadius = [_randomMarkerPos, _spawnRadius] call BTC_fnc_GetRandomPositionFromRadius;
		_spawnedVeh = _vehClass createVehicle _randomPosInRadius;
		_vehCrew = createVehicleCrew _spawnedVeh;
		_spawnedVehicles pushBack _spawnedVeh;
	};
	_spawnedVehicles;
};

//Create random empty armored of defined quantity and type in marker radius 
// [int quantity,RHS_RU_FACTION_VDV, RHS_RU_ARMORED_TYPE_TANK, [str markersNames], int radius] spawn BTC_fnc_CreateRandomArmored;
BTC_fnc_CreateRandomEmptyArmored = {
	_vehQuantity = _this select 0;
	_faction = _this select 1;
	_armoredType = _this select 2;
	_markersArray = _this select 3;
	_spawnRadius = _this select 4;
	
	_vehArray = [_faction, _armoredType] call BTC_fnc_GetVehiclesArrayFromFactionAndType;
	
	_spawnedVehicles = [];
	for "_i" from 0 to (_vehQuantity - 1) do {
		_randomMarker = _markersArray call BTC_fnc_GetRandomOccurrenceFromArray;
		_vehClass = _vehArray call BTC_fnc_GetRandomOccurrenceFromArray;
		_randomMarkerPos = getMarkerPos _randomMarker;
		_randomPosInRadius = [_randomMarkerPos, _spawnRadius] call BTC_fnc_GetRandomPositionFromRadius;
		_spawnedVeh = _vehClass createVehicle _randomPosInRadius;
		_spawnedVehicles pushBack _spawnedVeh;
	};
	_spawnedVehicles;
};

//Create defined quantity of groups with defined quantity of units of defined faction and type in a random marker location in radius
// [int totGroup, int totUnitPerGroup, RHS_RU_FACTION_VDV, RHS_RU_UNITS_TYPE_WOODLAND, [str markersNames], int radius] spawn BTC_fnc_CreateGroupsOfRandomUnits
BTC_fnc_CreateGroupsOfRandomUnits = {
	_groupsQuantity = _this select 0;
	_unitQuantity = _this select 1;
	_faction = _this select 2;
	_unitType = _this select 3;
	_markersArray = _this select 4;
	_spawnRadius = _this select 5;

	_unitsArray = [_faction, _unitType] call BTC_fnc_GetVehiclesArrayFromFactionAndType;
	
	_spawnedGroups = [];
	for "_i" from 0 to (count _groupsQuantity - 1) do {
			_randomMarker = _markersArray call BTC_fnc_GetRandomOccurrenceFromArray;
			_randomMarkerPos = getMarkerPos _randomMarker;
			_group = [_faction] call BTC_fnc_GetSideFromFaction;

		for "_y" from 0 to (count _unitQuantity - 1) do {
			_unitClass = _unitsArray call BTC_fnc_GetRandomOccurrenceFromArray;
			_isUnitPresentInGroup = [_unitClass, _group] call BTC_fnc_IsUnitPresentInGroup;

			while { _isUnitPresentInGroup } do {
				_unitClass = _unitsArray call BTC_fnc_GetRandomOccurrenceFromArray;
				_isUnitPresentInGroup = [_unitClass, _group] call BTC_fnc_IsUnitPresentInGroup;
			};

			_randomPosInRadius = [_randomMarkerPos, _spawnRadius] call BTC_fnc_GetRandomPositionFromRadius;
			_spawnedUnit = _group createUnit [_unitClass, _randomPosInRadius, [], 0, "NONE"];
		};
		_spawnedGroups pushBack _group;
	};
	_spawnedGroups;
};