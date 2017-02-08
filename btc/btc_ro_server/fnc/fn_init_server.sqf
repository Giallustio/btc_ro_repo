
if (!isServer) exitWith {};

btc_ro_players_id_dead = [];

btc_ro_jip_max_time = 600;//0 JIP ALLOWED

btc_ro_set_skill = true;
btc_ro_en_skill =
[
    0,//general
	0.1,//aimingAccuracy
    0.7,//aimingShake
    0.2,//aimingSpeed
    0.7,//endurance
    10,//spotDistance
    10,//spotTime
    0.1,//courage
    2,//reloadSpeed
    8//commanding
];

0 call btc_ro_fnc_define_enemies;

btc_ro_core_init = true;