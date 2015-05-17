/*
	File: fn_ticketGive.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gives a ticket to the targeted player.
*/
private["_val"];
if(isNil {life_ticket_unit}) exitWith {hint "Person to ticket is nil"};
if(isNull life_ticket_unit) exitWith {hint "Person to ticket doesn't exist."};
_val = ctrlText 2652;
if(!([_val] call fnc_isnumber)) exitWith {hint "You didn't enter actual number format."};
if((parseNumber _val) > 1000000) exitWith {hint "Rechnungen können nicht mehr wie $1,000,000 betragen!"};
[[0,format["%1 hat %3 eine Rechnung ueber $%2 ausgestellt.",profileName,[(parseNumber _val)] call life_fnc_numberText,life_ticket_unit getVariable["realname",name life_ticket_unit]]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
[[player,(parseNumber _val)],"jl_fnc_adacTicketPrompt",life_ticket_unit,false] spawn life_fnc_MP;
closeDialog 0;