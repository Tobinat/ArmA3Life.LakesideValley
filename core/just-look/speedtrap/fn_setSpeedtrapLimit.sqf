

private["_speedlimit","_speedtrap"];
disableSerialization;

_speedtrap = cursorTarget;
if(isNull _speedtrap) exitwith {};

_speedlimit = ctrlText 8001;
if(!([_speedlimit] call fnc_isnumber)) exitWith {hint "Ungültiges Zahlenformat";};
_speedlimit = parseNumber(_speedlimit);
if(_speedlimit < 1) exitWith {hint "Bitte nichts unter 1 eingeben!";};

_speedtrap setVariable ["speedtrap_speedlimit", _speedlimit, true];
