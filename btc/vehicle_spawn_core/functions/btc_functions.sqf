
//Create random armored of defined quantity and type in marker radius 
// Usage: [int quantity,globalFactionVariable, globalVehicleTypeVariable, [str markersNames], int radius] call BTC_fnc_CreateRandomArmored;
// Example: [3,RHS_RU_FACTION_VDV, RHS_RU_ARMORED_TYPE_BTR, ["marker1"m "marker2"], 200] call BTC_fnc_CreateRandomArmored;

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
// Usage: [int quantity,globalFactionVariable, globalVehicleTypeVariable, [str markersNames], int radius] call BTC_fnc_CreateRandomArmored;
// Example: [3,RHS_RU_FACTION_VDV, RHS_RU_ARMORED_TYPE_BTR, ["marker1"m "marker2"], 200] call BTC_fnc_CreateRandomArmored;
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
// Usage: [int totGroup, int totUnitPerGroup, globaFActionVariable, globalUnitTypeVariable, [str markersNames], int radius] call BTC_fnc_CreateGroupsOfRandomUnits
// Example: [2, 3, RHS_RU_FACTION_VDV, RHS_RU_UNITS_TYPE_WOODLAND, ["marker1","marker2"], 150] call BTC_fnc_CreateGroupsOfRandomUnits
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
			_randomPosInRadius = [_randomMarkerPos, _spawnRadius] call BTC_fnc_GetRandomPositionFromRadius;
			_spawnedUnit = _group createUnit [_unitClass, _randomPosInRadius, [], 0, "NONE"];
		};
		_spawnedGroups pushBack _group;
	};
	_spawnedGroups;
};

//Move all units in input groups to a random house position getted from a random marker location in radius
// Usage: [[str groupsName], [str markersName], int radius] call BTC_fnc_MoveUnitsInHouse;
// Example: [["group1", "group2"], ["marker1", "marker2"], 200] call BTC_fnc_MoveUnitsInHouse;
BTC_fnc_MoveUnitsInHouse = {
	_groups = _this select 0;
	_markersArray = _this select 1;
	_radius = _this select 2;

	{
		_group = _x;
		{
			_unit = _x;

			_randomMarker = _markersArray call BTC_fnc_GetRandomOccurrenceFromArray;
			_markerPos = getMarkerPos _randomMarker;
			_housesInRadius = [_markerPos, _radius] call btc_ro_fnc_get_houses;
			_house = _housesInRadius call BTC_fnc_GetRandomOccurrenceFromArray;
			_housePositions = _house call BTC_fnc_GetUsefulPositionInHouse;
			_housePos = _housePositions call BTC_fnc_GetRandomOccurrenceFromArray;

			_unit setPos _housePos;
			doStop _unit;
		} forEach units _group;
	} forEach _groups;
}