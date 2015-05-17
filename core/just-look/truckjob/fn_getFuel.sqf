/*
	File: fn_getFuel.sqf
	Author: Andre Dilger
	
	Description:
	get Fuel for fueltruck
*/
private["_vehicle","_displayName","_upp","_ui","_progress","_pgText","_cP","_previousState","_ext"];

_vehicle = (vehicle player);
_vendor = getPos _vehicle;
life_interrupted = false;
if(!(_vehicle isKindOF "LandVehicle")) exitWith {};
if((_vehicle getVariable ["stationfuel",0] > 0)) exitWith {hint "Fahrzeug ist bereits Betankt!"};
life_action_inUse = true;
_displayName = getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName");

_upp = format["%1 wird mit Benzin befuellt",_displayName];
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

if(typeOf _vehicle == "C_Van_01_fuel_F") then 
{
	_vehicle setVariable ["stationfuel",1];
};
if(typeOf _vehicle == "B_Truck_01_fuel_F") then 
{
	_vehicle setVariable ["stationfuel",3];
};
titleText[format["%1 wurde erfolgreich Betankt",_displayName],"PLAIN"];
