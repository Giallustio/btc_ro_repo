_type = _this getVariable ["gear", ""];

sleep 2;
//["ItemMap","ItemCompass","ItemWatch","ItemRadioAcreFlagged","rhsusf_ANPVS_14","Binocular"]
//(uniformContainer _this) addItemCargo ["ACRE_PRC148",1];
//(uniformContainer _this) addItemCargo ["ACRE_PRC343",1];
_this unassignItem "rhsusf_ANPVS_14";_this removeItem "rhsusf_ANPVS_14";
(uniformContainer _this) addItemCargo ["G_Combat",1];
if !("ACE_EarPlugs" in items _this) then {(uniformContainer _this) addItemCargo ["ACE_EarPlugs",1];};

_this addPrimaryWeaponItem "rhsusf_acc_compm4";

{_this addMagazine "smokeShell";} foreach [1,2];

if (_type isEqualTo "") exitWith {true};
_side = getNumber (configFile >> "CfgVehicles" >> "Thing" >> "maxSpeed");
switch _type do
{
	case "TL" :
	{
		{_this addMagazine "rhs_mag_30Rnd_556x45_M855A1_Stanag";} foreach [1,2,3,4,5,6];
	};
	case "GL" :
	{
		//Ne ha già 7
		//{_this addMagazine "rhs_mag_M441_HE";} foreach [1,2,3,4,5];
	};
	case "R" :
	{
		{_this addMagazine "rhs_mag_30Rnd_556x45_M855A1_Stanag";} foreach [1,2,3,4,5,6];
	};
	case "AR" :
	{
		{_this addMagazine "rhsusf_100Rnd_556x45_soft_pouch";} foreach [1,2,3];
	};
	case "AAR" :
	{
		_this removeMagazines "rhsusf_100Rnd_762x51";
		
		{_this addMagazine "rhs_mag_30Rnd_556x45_M855A1_Stanag";} foreach [1,2,3,4,5,6,7,8];
		{_this addMagazine "rhsusf_100Rnd_556x45_soft_pouch";} foreach [1,2,3];
	};
	case "MG" :
	{
		//rhsusf_100Rnd_762x51
	};
	case "AT" :
	{
		_this removeWeapon (secondaryWeapon _this);
		
		{_this addMagazine "rhs_mag_30Rnd_556x45_M855A1_Stanag";} foreach [1,2];
		(uniformContainer _this) addMagazineCargo ["btc_SMAW_HEAA",1];
		_this addWeapon "btc_smaw";		
	};
	case "M" :
	{
		{_this addMagazine "smokeShell";} foreach [1,2];
	};
};

