#include <macro.h>
/*
	File: fn_jobLeave.sqf
	Author: Andre Dilger
	
	Description:
	Job annehmen
*/

if(life_job == 0) exitWith {hint "Du hast keinen Beruf den du Kündigen könntest!"};
hint "Du hast deinen Job gekündigt!";

life_job = 0;

[] call SOCK_fnc_updateRequest;