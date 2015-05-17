
private["_speedtrap"];

if(playerSide != west) exitWith {};

_speedtrap = cursorTarget;
if(isNull _speedtrap) exitwith {};

deleteVehicle _speedtrap;

[true,"speedtrap",1] call life_fnc_handleInv;

diag_log format ["::jl:: speedtrap id=%1 pos=%2 removed...", _speedtrap, position _speedtrap];
