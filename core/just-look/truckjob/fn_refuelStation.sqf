/*
	File: fn_getFuel.sqf
	Author: Andre Dilger
	
	Description:
	get Fuel for fueltruck
*/
private["_vehicle","_displayName","_upp","_ui","_progress","_pgText","_cP","_previousState","_ext","_station","_cash"];

_station = _this select 3;
_vehicle = (vehicle player);
_vendor = getPos _vehicle;
life_interrupted = false;
if(!(_vehicle isKindOF "LandVehicle")) exitWith {};
if((_vehicle getVariable ["stationfuel",0] <= 0 )) exitWith {hint "Fahrzeug ist leer. Betanke es erst!"};

life_action_inUse = true;
_displayName = getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName");

_upp = format["Fahrzeug: %1 betankt die Tankstelle",_displayName];

//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
_progress progressSetPosition 0.01;
_cP = 0.01;
while{true} do
{
	sleep  0.5;
	_cP = _cP + 0.01;
	_progress progressSetPosition _cP;
	_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
	if(_cP >= 1) exitWith {};
	if(player distance _vendor > 10) exitWith {life_interrupted = true;};
	if((vehicle player) == player) exitWith {life_interrupted = true;};
	if(life_interrupted) exitWith {};
};
	
life_action_inUse = false;
5 cutText ["","PLAIN"];
if(!alive player) exitWith {};
if(life_interrupted) exitWith {life_interrupted = false; titleText["Action cancelled","PLAIN"];};

_fueltank = _vehicle getVariable ["stationfuel",0];
_fueltank = _fueltank - 1;
_vehicle setVariable ["stationfuel",_fueltank];

_lastIndex = -1;
{
	if((_x select 0) == _station) then
	{
		_lastIndex = _forEachIndex;
	};
}foreach tankstellen;

_tankstelle = tankstellen select _lastIndex;
_tankfuel = _tankstelle select 1;
_cash = 1000;
if(_tankfuel < 40000)then{
	_cash = 30000;
};
if(_tankfuel < 10000)then{
	_cash = 75000;
};	
if(_tankfuel < 1000)then{
	_cash = 100000;
};	
_tankfuel = _tankfuel + 5000;
[[_lastIndex,_station,_tankfuel],"TON_fnc_saveTank"] spawn life_fnc_MP;
life_bankgeld = life_bankgeld + _cash;

	

hint format["Du hast %1$ auf dein Bankkonto überwießen bekommen",_cash];
titleText[format["%1 hat die Tankstelle erfolgreich Betankt",_displayName],"PLAIN"];
