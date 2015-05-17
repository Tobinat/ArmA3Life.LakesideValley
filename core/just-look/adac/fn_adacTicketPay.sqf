/*
	File: fn_ticketPay.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Pays the ticket.
*/
if(isnil {life_ticket_val} OR isNil {life_ticket_cop}) exitWith {};
if(life_bargeld < life_ticket_val) exitWith
{
	if(life_bankgeld < life_ticket_val) exitWith 
	{
		hint "Du hast nicht genug Geld auf deinem Konto, um die Rechnung zu bezahlen.";
		[[1,format["%1 hat nicht genug Geld.",profileName]],"life_fnc_broadcast",life_ticket_cop,false] spawn life_fnc_MP;
		closeDialog 0;
	};
	hint format["Du hast $%1 bezahlt",[life_ticket_val] call life_fnc_numberText];
	life_bankgeld = life_bankgeld - life_ticket_val;
	life_ticket_paid = true;
	
	[[0,format["%1 bezahlte $%2",profileName,[life_ticket_val] call life_fnc_numberText]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
	closeDialog 0;
	
	[[1,format["%1 bezahlte die Rechnung.",profileName]],"life_fnc_broadcast",life_ticket_cop,false] spawn life_fnc_MP;
	[[[life_ticket_val],{life_bankgeld = life_bankgeld + (_this select 0);}],"BIS_fnc_call",life_ticket_cop,false] spawn life_fnc_MP;
};

life_bargeld = life_bargeld - life_ticket_val;
life_ticket_paid = true;

[[0,format["%1 bezahlte $%2",profileName,[life_ticket_val] call life_fnc_numberText]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;

closeDialog 0;
[[1,format["%1 hat die Rechnung bezahlt.",profileName]],"life_fnc_broadcast",life_ticket_cop,false] spawn life_fnc_MP;
[[[life_ticket_val],{life_bankgeld = life_bankgeld + (_this select 0);}],"BIS_fnc_call",life_ticket_cop,false] spawn life_fnc_MP;