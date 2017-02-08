btc_ro_spectating_camera = "camera" camCreate (position btc_ro_spectating_target);
btc_ro_spectating_camera camSetTarget btc_ro_spectating_target;
btc_ro_spectating_camera cameraEffect ["internal", "BACK"];
btc_ro_spectating_camera_pos = [((position btc_ro_spectating_target) select 0) + (btc_ro_spectating_camera_offset select 0), ((position btc_ro_spectating_target) select 1) + (btc_ro_spectating_camera_offset select 1), ((position btc_ro_spectating_target) select 2) + (btc_ro_spectating_camera_offset select 2)];
btc_ro_spectating_camera camSetPos btc_ro_spectating_camera_pos;
btc_ro_spectating_camera camCommit 0;

//btc_ro_spectating_camera attachTo [btc_ro_spectating_target,btc_ro_spectating_camera_offset];
btc_ro_spectating_using_camera = true;