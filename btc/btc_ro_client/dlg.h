class btc_ro_spectating
{
	name = btc_ro_spectating;
	idd = -1;
	movingEnable = 1;
	controlsBackground[] = {};
	objects[] = {};
	controls[] = {exit_game,target,units_target,view_mode};

	onLoad = "uiNamespace setVariable [""btc_ro_spectating"", _this select 0];";

	class Background 
	{

	};
	class exit_game 
	{
		onMouseButtonClick = "['end1',false,2] call BIS_fnc_endMission;";
		idc = -1;
		type = 1;
		style = 2;
		colorText[] = {1, 1, 1, 1};
		colorDisabled[] = {1, 1, 1, 0};
		colorBackground[] = {0, 0, 1, 0};
		colorBackgroundDisabled[] = {0,0,1,0};
		colorBackgroundActive[] = {0,0,1,0};
		colorFocused[] = {0,0,1,0};
		colorShadow[] = {0,0,0,0};
		colorBorder[] = {0,0,0,0};
		soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1};
		soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1};
		soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1};
		soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1};
		
		x = 0.05 * safezoneW + safezoneX;
		y = 0.05 * safezoneH + safezoneY;
		w = 0.18 * safezoneW;
		h = 0.0286915 * safezoneH;
		shadow = 2;
		font = "PuristaMedium";
		sizeEx = 0.03921;
		offsetX = 0.003;
		offsetY = 0.003;
		offsetPressedX = 0.002;
		offsetPressedY = 0.002;
		borderSize = 0;
		text = "Exit";
		action = "";			
	};
	class target 
	{
		idc = 1770;
		x = 0.45 * safezoneW + safezoneX;
		y = 0.8 * safezoneH + safezoneY;
		w = 0.18 * safezoneW;
		h = 0.0286915 * safezoneH;
		type = 0;
		style = 0;
		shadow = 0;
		colorShadow[] = {0, 0, 0, 0.5};
		font = "PuristaMedium";
		SizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
		text = "";
		colorText[] = {1, 1, 1, 1};
		colorBackground[] = {0, 0, 0, 0};
		linespacing = 1;			
	};
	class units_target
	{
		style = 16;
		type = 4;
		idc = 1771;
		x = 0.2 * safezoneW + safezoneX;
		y = 0.05 * safezoneH + safezoneY;
		w = 0.3 * safezoneW;
		h = 0.0286915 * safezoneH;
		shadow = 0;
		onLBSelChanged = "call btc_ro_fnc_spectating_change_target";
		colorSelect[] = {0,0,0,1};
		colorText[] = {0.95,0.95,0.95,1};
		colorBackground[] = {0,0,0,1};
		colorSelectBackground[] = {1,1,1,0.7};
		colorScrollBar[] = {1,0,0,1};
		arrowEmpty = "\A3\ui_f\data\GUI\RscCommon\rsccombo\arrow_combo_ca.paa";
		arrowFull = "\A3\ui_f\data\GUI\RscCommon\rsccombo\arrow_combo_active_ca.paa";
		wholeHeight = 0.45;
		color[] = {1,1,1,1};
		colorActive[] = {1,0,0,1};
		colorDisabled[] = {1,1,1,0.25};
		font = "PuristaMedium";
		sizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.85)";
		class ComboScrollBar
		{
			color[] = {1,1,1,0.6};
			colorActive[] = {1,1,1,1};
			colorDisabled[] = {1,1,1,0.3};
			thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
			arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
			arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
			border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
		};
		soundSelect[] = { "", 0, 1 };
		soundExpand[] = { "", 0, 1 };
		soundCollapse[] = { "", 0, 1 };
		maxHistoryDelay = 0;
	};
	class view_mode : units_target
	{
		idc = 1772;
		x = 0.6 * safezoneW + safezoneX;
		y = 0.05 * safezoneH + safezoneY;
		w = 0.2 * safezoneW;
		onLBSelChanged = "call btc_ro_fnc_spectating_change_camera";
	};
};
