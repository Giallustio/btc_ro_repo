if !((lbText [1771,lbCurSel 1771]) isEqualTo (name btc_ro_spectating_target)) then {call btc_ro_fnc_spectating_change_target;};

if (btc_ro_spectating_using_camera) then {
	_view = lbText [1772,lbCurSel 1772];
	if (_view isEqualTo "3rd person") then {
		_in_veh = if (vehicle btc_ro_spectating_target == btc_ro_spectating_target) then {1} else {3};
		btc_ro_spectating_camera attachTo [vehicle btc_ro_spectating_target,[btc_ro_spectating_camera_offset select 0,((btc_ro_spectating_camera_offset select 1) * _in_veh),btc_ro_spectating_camera_offset select 2]];
	} else {
		detach btc_ro_spectating_camera;
	};
} 
else {
	if (vehicle btc_ro_spectating_target != btc_ro_spectating_target && { ! (btc_ro_spectating_target in (assignedCargo vehicle btc_ro_spectating_target)) }) then {
		btc_ro_spectating_target switchCamera "GUNNER";
	} else {
		btc_ro_spectating_target switchCamera "INTERNAL";
	};
};