/*
	File: fn_requestMedic.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	N/A
*/
private["_adacOnline","_vehicle"];
if(life_adac_request) exitWith {hint "Du hast schon den ADAC gerufen";};
_adacOnline = {_x != player && {side _x == civilian} && {(_x getVariable ["job", 0]) == 99}} count playableUnits > 0; //Check if medics (indep) are in the room.
_vehicle = cursorTarget;
	//There is medics let's send them the request.
	[[_vehicle,name player],"jl_fnc_adacRequest",civilian,FALSE] spawn life_fnc_MP;
	_vehicle setVariable["pName",name player,true];
	_vehicle setVariable ["adac_called",true,true];
	hint "ADAC wurde gerufen";
if(_adacOnline) then {

	
} else {
	hint "Eventuell ist kein ADAC online";
	//No medics were online, send it to the police.
	//[[life_corpse,profileName],"life_fnc_copMedicRequest",west,FALSE] spawn life_fnc_MP;
};

//Create a thread to monitor duration since last request (prevent spammage).
[] spawn 
{
	life_adac_request = true;
	sleep (2 * 60);
	life_adac_request = false;
};