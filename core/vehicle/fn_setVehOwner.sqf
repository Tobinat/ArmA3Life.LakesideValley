/*
	File: fn_setVehOwner.sqf
	Author: Mindsaver
	
	Description:
	N/A
*/

_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
life_vehicles set[count life_vehicles, _vehicle];

/*_vehDBInfo = _vehicle getVariable["dbInfo",[]];




if (getplayerUID player == _vehDBInfo select 0) then
{
	life_vehicles set[count life_vehicles, _vehicle];
};*/