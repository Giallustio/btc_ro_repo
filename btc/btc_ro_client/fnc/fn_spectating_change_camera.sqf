_view = lbText [1772,lbCurSel 1772];
//["1st person","3rd person","Free"]
switch (_view) do
{
	case ("1st person") : {
		if (btc_ro_spectating_using_camera) then {
			call btc_ro_fnc_spectating_destroy_camera
		};
		btc_ro_spectating_target switchCamera "INTERNAL";
	};
	case ("3rd person") : {
		btc_ro_spectating_camera_offset = [0,-3,3];
		if (!btc_ro_spectating_using_camera) then {call btc_ro_fnc_spectating_create_camera} else {
			btc_ro_spectating_camera camSetTarget btc_ro_spectating_target;
			btc_ro_spectating_camera camSetPos (position btc_ro_spectating_target);
			btc_ro_spectating_camera camCommit 0;
		};
		btc_ro_spectating_camera attachTo [btc_ro_spectating_target,btc_ro_spectating_camera_offset];
	};
	case ("Free") : {
		btc_ro_spectating_camera_offset = [-15,-15,15];
		if (!btc_ro_spectating_using_camera) then {call btc_ro_fnc_spectating_create_camera} else {
			btc_ro_spectating_camera camSetTarget btc_ro_spectating_target;
			btc_ro_spectating_camera_pos = [((position btc_ro_spectating_target) select 0) + (btc_ro_spectating_camera_offset select 0), ((position btc_ro_spectating_target) select 1) + (btc_ro_spectating_camera_offset select 1), ((position btc_ro_spectating_target) select 2) + (btc_ro_spectating_camera_offset select 2)];
			btc_ro_spectating_camera camSetPos btc_ro_spectating_camera_pos;
			btc_ro_spectating_camera camCommit 0;
		};
		btc_ro_spectating_camera attachTo [btc_ro_spectating_target,btc_ro_spectating_camera_offset];
	};
};