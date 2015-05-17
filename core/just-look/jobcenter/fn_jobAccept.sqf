#include <macro.h>
/*
	File: fn_jobAccept.sqf
	Author: Andre Dilger
	
	Description:
	Job annehmen
*/
private["_vehicle","_vid","_pid","_unit","_price"];
disableSerialization;
if(life_job != 0) exitWith {hint "Du hast schon einen Beruf. Kündige diesen erst!"};
if(lbCurSel 4802 == -1) exitWith {hint "Du hast nichts ausgewählt"};
_job = lbCurSel 4802;

switch (_job) do {
    case 0: { 
		life_job = 1;
		[] call SOCK_fnc_updateRequest;
		hint "Du bist nun Tanklastfahrer!"
	};
	case 1: { 
		life_job = 2;
		[] call SOCK_fnc_updateRequest;
		hint "Du bist nun Taxifahrer!"
	};
	case 3: { 
		life_job = 4;
		[] call SOCK_fnc_updateRequest;
		hint "Du bist nun Jaeger!"
	};

    default { 
		life_job = 0;
	};
};



