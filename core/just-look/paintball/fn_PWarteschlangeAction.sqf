/*

	Behandelt das Actionmenu von Paintball
	
	Author: Aequalitas

*/

private ["_type","_uid"];

_type = _this select 3 ;
_uid = getPlayerUID player;

if(_type == 1) then
{
	if(life_cash < 20000) exitWith {hint "Du hast nicht genügend Geld, du brauchst 20000$ um am Paintball Match teilzunehmen";};
	life_cash = life_cash - 20000;
	[[_uid,1,20000],"TON_fnc_paintballWarteschlange",false,false] call life_fnc_MP;
	checkPaintballWarteschlange = true;
	diag_log format ["//////////////Warteschlange betreten client %1",checkPaintballWarteschlange];
}
else
{
	[[_uid,2,20000],"TON_fnc_paintballWarteschlange",false,false] call life_fnc_MP;
	checkPaintballWarteschlange = false;
};