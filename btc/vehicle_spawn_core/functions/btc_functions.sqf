
//Create random quantity of defined armored factiona and type in marker radius 
//Returns created crew
// Usage: [int quantity,globalFactionVariable, globalVehicleTypeVariable, [str markersNames || object], int radius, bool fillCargoWithUnits] call BTC_fnc_CreateRandomArmored;
// Example: [3,RHS_RU_FACTION_VDV, RHS_RU_ARMORED_TYPE_BTR, ["marker1", object], 200, false] call BTC_fnc_CreateRandomArmored;
BTC_fnc_CreateRandomVehicle = {
	_vehQuantity = _this select 0;
	_faction = _this select 1;
	_type = _this select 2;
	_markersArray = _this select 3;
	_spawnRadius = _this select 4;
	_addUnitsToCargo = _this select 5;
	
	_vehArray = [_faction, _type] call BTC_fnc_GetVehiclesArrayFromFactionAndType;
	
	_spawnedCrews = [];
	for "_i" from 0 to (_vehQuantity - 1) do {
		_objName = _markersArray call BTC_fnc_GetRandomOccurrenceFromArray;
		_vehClass = _vehArray call BTC_fnc_GetRandomOccurrenceFromArray;
		_randomMarkerPos = _objName call BTC_fnc_GetPositionFromMakerOrObject;
		_randomPosInRadius = [_randomMarkerPos, _spawnRadius] call BTC_fnc_GetRandomPositionFromRadius;
		_spawnedVeh = _vehClass createVehicle _randomPosInRadius;
		_vehCrew = createVehicleCrew _spawnedVeh;
		_spawnedCrews pushBack _vehCrew;

		if(_addUnitsToCargo) then {
			[_spawnedVeh, _faction] call BTC_fnc_AddUnitsToCargo;
		};
	};
	_spawnedCrews;
};

//Create random empty armored of defined quantity and type in marker radius 
//Returns created vehicles
// Usage: [int quantity,globalFactionVariable, globalVehicleTypeVariable, [str markersNames || object], int radius] call BTC_fnc_CreateRandomArmored;
// Example: [3,RHS_RU_FACTION_VDV, RHS_RU_ARMORED_TYPE_BTR, ["marker1", object], 200] call BTC_fnc_CreateRandomArmored;
BTC_fnc_CreateRandomEmptyVehicles = {
	_vehQuantity = _this select 0;
	_faction = _this select 1;
	_type = _this select 2;
	_markersArray = _this select 3;
	_spawnRadius = _this select 4;
	
	_vehArray = [_faction, _type] call BTC_fnc_GetVehiclesArrayFromFactionAndType;
	
	_spawnedVehicles = [];
	for "_i" from 0 to (_vehQuantity - 1) do {
		_objName = _markersArray call BTC_fnc_GetRandomOccurrenceFromArray;
		_vehClass = _vehArray call BTC_fnc_GetRandomOccurrenceFromArray;
		_randomMarkerPos = _objName call BTC_fnc_GetPositionFromMakerOrObject;
		_randomPosInRadius = [_randomMarkerPos, _spawnRadius] call BTC_fnc_GetRandomPositionFromRadius;
		_spawnedVeh = _vehClass createVehicle _randomPosInRadius;
		_spawnedVehicles pushBack _spawnedVeh;
	};
	_spawnedVehicles;
};

//Create defined quantity of groups with defined quantity of units of defined faction and type in a random marker location in _radius
//Returns created groups
// Usage: [int totGroup, int totUnitPerGroup, globaFActionVariable, globalUnitTypeVariable, [str markersNames || object], int radius] call BTC_fnc_CreateGroupsOfRandomUnits
// Example: [2, 3, RHS_RU_FACTION_VDV, RHS_RU_UNITS_TYPE_WOODLAND, ["marker1",object], 150] call BTC_fnc_CreateGroupsOfRandomUnits
BTC_fnc_CreateGroupsOfRandomUnits = {
	_groupsQuantity = _this select 0;
	_unitQuantity = _this select 1;
	_faction = _this select 2;
	_unitType = _this select 3;
	_markersArray = _this select 4;
	_spawnRadius = _this select 5;

	_unitsArray = [_faction, _unitType] call BTC_fnc_GetVehiclesArrayFromFactionAndType;
	
	_spawnedGroups = [];
	for "_i" from 0 to (_groupsQuantity - 1) do {
			_objName = _markersArray call BTC_fnc_GetRandomOccurrenceFromArray;
			_randomMarkerPos = _objName call BTC_fnc_GetPositionFromMakerOrObject;
			_randomPosInRadius = [_randomMarkerPos, _spawnRadius] call BTC_fnc_GetRandomPositionFromRadius;
			_side = [_faction] call BTC_fnc_GetSideFromFaction;
			_group = createGroup _side;

		for "_y" from 0 to (_unitQuantity - 1) do {
			_unitClass = _unitsArray call BTC_fnc_GetRandomOccurrenceFromArray;
			_spawnedUnit = _group createUnit [_unitClass, _randomPosInRadius, [], 0, "NONE"];
		};
		_spawnedGroups pushBack _group;
	};
	_spawnedGroups;
};

//Move all units in input groups to a random house position getted from a random marker location in radius
// Usage: [[groupsName], [str markersName], int radius] call BTC_fnc_MoveUnitsInHouse;
// Example: [[group1, group2], ["marker1", "marker2"], 200] call BTC_fnc_MoveUnitsInHouse;
BTC_fnc_MoveUnitsInHouse = {
	_groups = _this select 0;
	_markersArray = _this select 1;
	_radius = _this select 2;

	{
		_group = _x;
		{
			_unit = _x;

			_objName = _markersArray call BTC_fnc_GetRandomOccurrenceFromArray;
			_markerPos = _objName call BTC_fnc_GetPositionFromMakerOrObject;
			_housesInRadius = [_markerPos, _radius] call BTC_fnc_GetHousesInRadius;
			_house = _housesInRadius call BTC_fnc_GetRandomOccurrenceFromArray;
			_housePositions = _house call BTC_fnc_GetUsefulPositionInHouse;
			_housePos = _housePositions call BTC_fnc_GetRandomOccurrenceFromArray;

			_unit setPos _housePos;
			doStop _unit;
		} forEach (units _group);
	} forEach _groups;
};

//Add random waypoints to input group in a defined radius of defined position
//Returns added waypoints
//Usage: [group, string||object nameOfObjectOrMarker, int radius] call BTC_fnc_AddRandomPatrolInRadiusToGroup;
//Example: [unitGroup1, "markerName", 200] call BTC_fnc_AddRandomPatrolInRadiusToGroup;
//Example: [unitGroup1, object, 200] call BTC_fnc_AddRandomPatrolInRadiusToGroup;
BTC_fnc_AddRandomPatrolInRadiusToGroup = {
	_group = _this select 0;
	_objName = _this select 1;
	_radius = _this select 2;
	
	_wpsNumber = 10;
	_addedWaypoints = [];
	for "_i" from 0 to _wpsNumber do {
		_markerPos = _objName call BTC_fnc_GetPositionFromMakerOrObject;
		_posInRadius = [_markerPos, _radius] call BTC_fnc_GetRandomPositionFromRadius;

		_addedWp = _group addWaypoint [_posInRadius, 0];
		_addedWp setWaypointSpeed "LIMITED";
		_addedWp setWaypointBehaviour "SAFE";

		if(_i != (_wpsNumber)) then {
			_addedWp setWaypointType "MOVE";
		} else {
			_addedWp setWaypointType "CYCLE";
			_addedWp setWaypointPosition (((waypoints _group) select 0));
		};
		_addedWaypoints pushBack _addedWp;
	};

	_addedWaypoints;		
};

//Create defined quantity of groups with defined quantity of units of defined faction and type in a random marker location in radius and adds ranodm waypoints to input group in a defined radius of defined position
//Returns spawned groups
// Usage: [int totGroup, int totUnitPerGroup, globaFactionVariable, globalUnitTypeVariable, [str markersNames || object], int radius] call BTC_fnc_CreateRandomPatrollingUnitsGroups
// Example: [2, 3, RHS_RU_FACTION_VDV, RHS_RU_UNITS_TYPE_WOODLAND, ["marker1", object], 150] call BTC_fnc_CreateRandomPatrollingUnitsGroups
BTC_fnc_CreateRandomPatrollingUnitsGroups = {
	_groupsNumber = _this select 0;
	_unitsPerGroup = _this select 1;
	_groupFaction = _this select 2;
	_unitsType = _this select 3;
	_markersName = _this select 4;
	_radius = _this select 5;

	_spawnedGroups = [_groupsNumber, _unitsPerGroup, _groupFaction, _unitsType, _markersName, _radius] call BTC_fnc_CreateGroupsOfRandomUnits;

	{
		_group = _x;
		_firstUnit = (units _group) select 0;
		null = [_group, _firstUnit, _radius] call BTC_fnc_AddRandomPatrolInRadiusToGroup;
	} forEach _spawnedGroups;

	_spawnedGroups;
};

//Create defined quantity of groups with defined quantity of units of defined faction and type in a random marker location in radius and Move all units in input groups to a random house position getted from a random marker location in radius
//Returns spawned groups
// Usage: [int totGroup, int totUnitPerGroup, globaFActionVariable, globalUnitTypeVariable, [str markersNames || object], int radius] call BTC_fnc_CreateRandomUnitsGroupsAndMoveToHousesPositions
// Example: [2, 3, RHS_RU_FACTION_VDV, RHS_RU_UNITS_TYPE_WOODLAND, ["marker1",object], 150] call BTC_fnc_CreateRandomUnitsGroupsAndMoveToHousesPositions
BTC_fnc_CreateRandomUnitsGroupsAndMoveToHousesPositions = {
	_groupsNumber = _this select 0;
	_unitsPerGroup = _this select 1;
	_groupFaction = _this select 2;
	_unitsType = _this select 3;
	_markersName = _this select 4;
	_radius = _this select 5;

	_spawnedGroups = [_groupsNumber, _unitsPerGroup, _groupFaction, _unitsType, _markersName, _radius] call BTC_fnc_CreateGroupsOfRandomUnits;

	{
		_group = _x;
		_firstUnit = (units _group) select 0;
		[[_group], [_firstUnit], _radius] call BTC_fnc_MoveUnitsInHouse;
	} forEach _spawnedGroups;
	_spawnedGroups;	
};

//Create random quantity of defined armored factiona and type in marker radius and adds ranodm waypoints to input group in a defined radius of defined position
//Returns spawned vehicles crews
// Usage: [int quantity,globalFactionVariable, globalVehicleTypeVariable, [str markersNames], int radius, bool fillCargoWithUnit] call BTC_fnc_CreateRandomPatrollingArmored;
// Example: [3,RHS_RU_FACTION_VDV, RHS_RU_ARMORED_TYPE_BTR, ["marker1", object], 200, false] call BTC_fnc_CreateRandomPatrollingArmored;
BTC_fnc_CreateRandomPatrollingVehicles = {
	_quantity = _this select 0;
	_faction = _this select 1;
	_type = _this select 2;
	_markersName = _this select 3;
	_radius = _this select 4;
	_withCargo = _this select 5;

	_spawnedVehicleCrews = [_quantity, _faction, _type, _markersName, _radius, _withCargo] call BTC_fnc_CreateRandomVehicle;

	{
		_group = _x;
		_firstUnit = (units _group) select 0;
		[_group, _firstUnit, _radius] call BTC_fnc_AddRandomPatrolInRadiusToGroup;
	} forEach _spawnedVehicleCrews;

	_spawnedVehicleCrews;
};

BTC_fnc_CallReinforcementOnMarkerPos = {
	_destination = _this select 0;
	_spawnLocation = _this select 1;
	_faction = _this select 2;
	_type = _this select 3;
	_withCargo = _this select 4;
	_minEnemyNumber = _this select 5;

	_position = _destination call BTC_fnc_GetPositionFromMakerOrObject;
	_radius = 600;
	_needCallReinf = [_minEnemyNumber, _position, _radius] call BTC_fnc_AtLastInputEnemiesInRadius;

	if(_needCallReinf) then {
		_spawnedGroup = [1, _faction, _type, 0, [_spawnLocation], 0, _withCargo] call BTC_fnc_CreateRandomVehicle;
		_wp = [_spawnedGroup select 0, _position, _withCargo] call BTC_fnc_MoveGroupToPosition;
	};
	_needCallReinf;
};