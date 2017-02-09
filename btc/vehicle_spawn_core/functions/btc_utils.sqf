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
}

BTC_fnc_GetSideFromFaction = {
	_faction = _this select 0;
	_side = east;
	
	switch(_faction) do {
		case RHS_RU_FACTION_VDV:  	{ _side = east };
		case RHS_RU_FACTION_VMF: 	{ _side = east };
		case RHS_RU_FACTION_VV: 	{ _side = east };
		case RHS_RU_FACTION_MSV: 	{ _side = east };
	};
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

BTC_fnc_GetUsefulPositionInHouse = {
	_house = _this;

	_housePositions = _house buildingPos - 1;
	if([0,0,0] in _housePositions) then {
		_housePositions - [0,0,0];
	};
	_housePositions;
}