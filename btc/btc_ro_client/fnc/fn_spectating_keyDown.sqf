_idc = 1772;
if (btc_ro_spectating_using_camera) then
{
	_value = 1;
	switch (true) do
	{
		/*
		case ((_this select 1) == 30 && (lbText [_idc,lbCurSel _idc] == "Free")) : {btc_ro_spectating_camera_offset = [(btc_ro_spectating_camera_offset select 0) - _value,(btc_ro_spectating_camera_offset select 1),(btc_ro_spectating_camera_offset select 2)];btc_ro_spectating_camera attachTo [btc_ro_spectating_target,btc_ro_spectating_camera_offset];};//A
		case ((_this select 1) == 32 && (lbText [_idc,lbCurSel _idc] == "Free")) : {btc_ro_spectating_camera_offset = [(btc_ro_spectating_camera_offset select 0) + _value,(btc_ro_spectating_camera_offset select 1),(btc_ro_spectating_camera_offset select 2)];};//D
		case ((_this select 1) == 31 && (lbText [_idc,lbCurSel _idc] == "Free")) : {btc_ro_spectating_camera_offset = [(btc_ro_spectating_camera_offset select 0),(btc_ro_spectating_camera_offset select 1) - _value,(btc_ro_spectating_camera_offset select 2)];};
		case ((_this select 1) == 17 && (lbText [_idc,lbCurSel _idc] == "Free")) : {btc_ro_spectating_camera_offset = [(btc_ro_spectating_camera_offset select 0),(btc_ro_spectating_camera_offset select 1) + _value,(btc_ro_spectating_camera_offset select 2)];};
		case ((_this select 1) == 44 && (lbText [_idc,lbCurSel _idc] == "Free")) : {btc_ro_spectating_camera_offset = [(btc_ro_spectating_camera_offset select 0),(btc_ro_spectating_camera_offset select 1),(btc_ro_spectating_camera_offset select 2) - _value];};
		case ((_this select 1) == 16 && (lbText [_idc,lbCurSel _idc] == "Free")) : {btc_ro_spectating_camera_offset = [(btc_ro_spectating_camera_offset select 0),(btc_ro_spectating_camera_offset select 1),(btc_ro_spectating_camera_offset select 2) + _value];};
		*/
		case ((_this select 1) == 30 && (lbText [_idc,lbCurSel _idc] == "Free")) : {btc_ro_spectating_camera_pos = [(btc_ro_spectating_camera_pos select 0) - _value,(btc_ro_spectating_camera_pos select 1),(btc_ro_spectating_camera_pos select 2)];};//A
		case ((_this select 1) == 32 && (lbText [_idc,lbCurSel _idc] == "Free")) : {btc_ro_spectating_camera_pos = [(btc_ro_spectating_camera_pos select 0) + _value,(btc_ro_spectating_camera_pos select 1),(btc_ro_spectating_camera_pos select 2)];};//D
		case ((_this select 1) == 31 && (lbText [_idc,lbCurSel _idc] == "Free")) : {btc_ro_spectating_camera_pos = [(btc_ro_spectating_camera_pos select 0),(btc_ro_spectating_camera_pos select 1) - _value,(btc_ro_spectating_camera_pos select 2)];};
		case ((_this select 1) == 17 && (lbText [_idc,lbCurSel _idc] == "Free")) : {btc_ro_spectating_camera_pos = [(btc_ro_spectating_camera_pos select 0),(btc_ro_spectating_camera_pos select 1) + _value,(btc_ro_spectating_camera_pos select 2)];};
		case ((_this select 1) == 44 && (lbText [_idc,lbCurSel _idc] == "Free")) : {btc_ro_spectating_camera_pos = [(btc_ro_spectating_camera_pos select 0),(btc_ro_spectating_camera_pos select 1),(btc_ro_spectating_camera_pos select 2) - _value];};
		case ((_this select 1) == 16 && (lbText [_idc,lbCurSel _idc] == "Free")) : {btc_ro_spectating_camera_pos = [(btc_ro_spectating_camera_pos select 0),(btc_ro_spectating_camera_pos select 1),(btc_ro_spectating_camera_pos select 2) + _value];};

		case ((_this select 1) == 49) : {if (btc_ro_spectating_camera_nvg) then {btc_ro_spectating_camera_nvg = false;camusenvg false;} else {btc_ro_spectating_camera_nvg = true;camusenvg true;};};
		default {};
	};
	if (lbText [_idc,lbCurSel _idc] == "Free") then {btc_ro_spectating_camera camSetPos btc_ro_spectating_camera_pos;btc_ro_spectating_camera camCommit 0;};
};
if ((_this select 1) == 1) then { true }