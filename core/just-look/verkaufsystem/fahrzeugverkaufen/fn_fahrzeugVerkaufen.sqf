/*
	behandelt das verkaufen vom Spieler
	
	Author: Just-Look | Aequalitas
*/

private ["_type","_titel","_fahrzeugtyp","_dialog","_preis","_unit"];

_type = [_this,0] call BIS_fnc_Param;

diag_log fomrat ["////// verkaufen typ %1",_type];

switch(_type)
{
	case 1: /// Angebot abschicken
	{
				
		disableSerialization;

		_dialog = findDisplay 1999;

		

		_fahrzeugtyp = cursorTarget;
		diag_log format["/////////////// cursortarget %1",cursorTarget];
		ctrlSetText [1002,(name _fahrzeugtyp)];
		if(isNil{_fahrzeugtyp}) exitWith{hint "Fahrzeugtyp ist leer";};
		
		_preis = ctrlText 1400;
		if(isNil{_preis}) exitWith{hint "Geben Sie einen Preis an!";};
		
		
		if((lbCurSel 2100) == -1) exitWith {hint "Es ist kein Spieler ausgewaehlt!";};
		_unit = lbData [2100,lbCurSel 2100];
		_unit = call compile format["%1",_unit];
		
		[[1,_fahrzeugtyp,_preis,getPlayerUID player],"jl_fnc_fahrzeugkaufen",getPlayerUID _unit,false] call life_fnc_MP;
		
		
		closeDialog 0;
	};
	
	case 2:///Angebot angenommen
	{
		_preis = [_this,1] call BIS_fnc_Param;
		_fahrzeugtyp = [_this,2] call BIS_fnc_Param;
		
		life_atmcash = life_atmcash + _gewinn;
		
		{
			if(_x == _fahrzeugtyp) exitWith
			{
				life_vehicles = life_vehicles - [_fahrzeugtyp];
			};
			
		}foreach life_vehicles;
		
		hint format ["Dein Angebot fuer das Fahrzeug %1 mit dem Preis %2 wurde angenommen.",_fahrzeugtyp,_preis];
	};
	
	case 3: /// Angebot abgelehnt
	{
		_preis  = [_this,1] call BIS_fnc_Param;
		_fahrzeugtyp = [_this,2] call BIS_fnc_Param;	
		
		hint format ["Dein Angebot für das Fahrzeug %1 mit dem Preis %2 wurde abgelehnt",_fahrzeugtyp,_preis];
	
	};
};
