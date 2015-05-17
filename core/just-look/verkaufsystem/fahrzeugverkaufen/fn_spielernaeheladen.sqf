
/*
	Lädt alle Spieler die in der Nähe des Clienten sind in eine Comboliste, Code ist vom Z-Menu.

	
*/

private ["_spielerMenu"];


_spielerMenu = ((findDisplay 1999) displayCtrl 2100);


_near_units = [];
{ if(player distance _x < 10) then {_near_units set [count _near_units,_x];};} foreach playableUnits;
{
	if(!isNull _x && alive _x && player distance _x < 10) then
	{
		_spielerMenu lbAdd format["%1 - %2",_x getVariable["realname",name _x], side _x];
		_spielerMenu lbSetData [(lbSize _spielerMenu)-1,str(_x)];
		
	};
} foreach _near_units;

diag_log format["//////////// nahe spieler %1", _near_units];