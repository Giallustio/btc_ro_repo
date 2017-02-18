//BTC UTILS

BTC_fnc_GetVehiclesArrayFromFactionAndType = {
	private["_faction", "_armoredType"];
	_faction = _this select 0;
	_armoredType = _this select 1;
	_selArray = [];
	
	{
		_arrayFound = false;
		
		_recordFaction = _x select 0;
		_joinArmoredTypeClassArray = _x select 1;
		if(_faction == _recordFaction) then {
			{
				_recordArmoredType = _x select 0;
				_recordClassArray = _x select 1;
				
				if(_armoredType == _recordArmoredType) then { 
					_arrayFound = true; 
					_selArray = _recordClassArray; 
				}
			} foreach _joinArmoredTypeClassArray;
		};
		
		if(_arrayFound) exitWith{ true; } ;			
	} foreach RHS_FACTIONS_VEHICLES_TYPES_CLASS_NAMES;
	
	_selArray;
};

BTC_fnc_IsUnitPresentInGroup = {
	_group = _this select 0;
	_unit = _this select 1;

	_groupClassNames = [];
	{
		_groupClassNames pushback (className _x);
	} foreach units _group;

	_isPresent = className _unit in _groupClassNames;

	_isPresent;
};

BTC_fnc_GetSideFromFaction = {
	_faction = _this select 0;
	_side = east;
	
	{
		_factionRel = _x select 0;
		_sideRel = _x select 1;
		if(_faction == _faction ) then { _side = _sideRel; };
	} forEach RHS_FACTIONS_SIDE;
	_side;
};

BTC_fnc_GetRandomPositionFromRadius = {
	_pos = _this select 0;
	_radius = _this select 1;
	
	_dir = random 360;
	_randomPos = [(_pos select 0) + (sin _dir *_radius), (_pos select 1) + (cos _dir *_radius), _pos select 2];
	
	_randomPos;
};

BTC_fnc_GetRandomOccurrenceFromArray = {
	_array = _this;
	
	_sel = _array select (floor random count _array);
	_sel;
};

BTC_fnc_HintDebug = {
	_params = _this;
	
	if(btc_debug) then {
		{
			hint(format["%1", _x]);
		} foreach _params;
	}
};

BTC_fnc_HintSilentDebug = {
	_params = _this;
	
	if(btc_debug) then {
		{
			hintSilent(format["%1", _x]);
		} foreach _params;
	}
};

BTC_fnc_FactionDebug = {
	_params = _this;
	
	if(btc_debug) then {
		_str = "- ";
		{
			_str = _str + " " + format["%1", _x];
		} foreach _params; 
		player sideChat _str;
	}
};

BTC_fnc_GetHousesInRadius = {
	_pos = _this select 0;
	_radius = _this select 1;

	_buildings = nearestObjects [_pos, ["Building"], _radius];

	_useful = [];
	{ 
		if (format["%1", _x buildingPos 2] != "[0,0,0]" && {damage _x == 0}) then
		{ 
			_useful set [count _useful, _x]; 
		}; 
	} forEach _buildings; 
	_useful;
};

BTC_fnc_GetUsefulPositionInHouse = {
	_house = _this;

	_housePositions = _house buildingPos - 1;
	if([0,0,0] in _housePositions) then {
		_housePositions - [0,0,0];
	};
	_housePositions;
};

BTC_fnc_GetPositionFromMakerOrObject = {
	_obj = _this;
	_pos = [];
	
	if ((typeName _obj) == "object") then { _pos = position _obj } else { _pos = getMarkerPos _obj };

	_pos;
};

BTC_fnc_AtLastInputEnemiesInRadius = {
	_enemyLimit = _this select 0;
	_position = _this select 1;
	_radius = _this select 2;

	_entitiesInRadius = _position nearEntities [["Man"], _radius];
	_enemies = _entitiesInRadius select {!isPlayer _x};
	atLastInputLimit = (count _enemies) > _enemyLimit;
	atLastInputLimit;
};

BTC_fnc_MoveGroupToPosition = {
	_group = _this select 0;
	_position =_this select 1;
	_hasCargo = _this select 2;

	_wp = _group addWaypoint [_position, 0];
	_wp setWaypointType "MOVE";
	_wp setWaypointSpeed "FAST";

	if(_hasCargo) then { _wp setWaypointType "Unload"; };
};

BTC_fnc_AddUnitsToCargo = {
	_vehicle = _this select 0;
	_faction = _this select 1;

	_emptyPosCargo = _vehicle emptyPositions "Cargo";
	_groups = floor(_emptyPosCargo / 2);
	_type = RHS_RU_UNITS_TYPES call BTC_fnc_GetRandomOccurrenceFromArray;

	_unitGroup = [_groups, _emptyPosCargo, _faction, _type, [_vehicle], 1] call BTC_fnc_CreateGroupsOfRandomUnits;
	
	{
		_x assignAsCargo _vehicle;
		_x moveInCargo _vehicle;
	} forEach _unitGroup;
};
