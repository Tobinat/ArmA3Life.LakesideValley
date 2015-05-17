/*
	Wenn der Spieler ein Verkaufsangebot bekommt, behandelt das Script diese Event
	
	Author: Just-Look | Aequalitas
*/


private["_type","_fahrzeugtyp","_preis","_verkaeuferID"];

_type = [_this,0] call BIS_fnc_Param;
_verkaeuferID = [_this,3] call BIS_fnc_Param;
		
diag_log fomrat ["////// kaufen typ %1",_type];


switch(_type)
{
	case 1: /// Angebot kommt an und Dialog wird aufgebaut 
	{
		_fahrzeugtyp = [_this,1] call BIS_fnc_Param;
		_preis = [_this,2] call BIS_fnc_Param;
		
		
		createDialog "jl_fahrzeugkaufen";
		
		disableSerialization;
		
		ctrlSetText [1002,format["%1",_fahrzeugtyp];];
		
		ctrlSetText [1004,_preis];
		
	};
	
	case 2: //// Angebot wird angenommen
	{
		disableSerialization; 
		
		_fahrzeugtyp = ctrlText 1002;
		
		_preis = ctrlText 1004;
		
		life_atmcash = life_atmcash - _preis;
		
		life_vehicles = life_vehicles + [_fahrzeugtyp];
	
		hint format ["Du hast das Angebot fuer das Fahrzeug %1 mit dem Preis %2 angenommen.",_fahrzeugtyp,_preis];
		
		[[2,_preis,_fahrzeugtyp],"jl_fnc_fahrzeugverkaufen",_verkaeuferID,false] call life_fnc_MP;
		
		
		
		closeDialog 0;
	};
	
	case 3: // Angebot wird abgelehnt
	{
		disableSerialization;
	
		hint "Du hast das Angebot abgelehnt.";
	
		[[3,_preis,_fahrzeugtyp],"jl_fnc_fahrzeugverkaufen",_verkaeuferID,false] call life_fnc_MP;
	
		closeDialog 0;
	};
};