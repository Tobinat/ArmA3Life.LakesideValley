/*
	File: fn_animSync.sqf
*/
_mode = [_this,3,0,[0]] call BIS_fnc_param;
if(_mode == 1) then {
	[] call SOCK_fnc_updateRequest;
	life_adac_onDuty = true;
	[] call life_fnc_stripDownPlayer;
	
	player addItem "ItemMap";
	player assignItem "ItemMap";
	player addItem "ItemCompass";
	player assignItem "ItemCompass";
	player addItem "ItemWatch";
	player assignItem "ItemWatch";
	player forceAddUniform "U_Rangemaster";
	player additem "NVGoggles";
	player assignitem "NVGoggles";
	player addItem "ItemGPS";
	player assignItem "ItemGPS";
	player addBackpack "B_Kitbag_cbr";
	//player addUniform "U_Rangemaster";
	player addItem "ToolKit";
	hint "Du bist in Dienst Gegangen";
}else{
	[] call life_fnc_stripDownPlayer;
	[] spawn life_fnc_civLoadGear;
	life_adac_onDuty = false;
	hint "Du bist aus dem Dienst Gegangen";
};