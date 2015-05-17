/*

	Behandelt das Actionmenu von Paintball
	
	Author: Aequalitas

*/
private ["_money"];


_money = [_this,0] call BIS_fnc_param;
life_bargeld = life_bargeld + _money;
hint format["Du hast das Paintball Match gewonnen! Du hast %1 bekommen",_money];
[[0,format["%1 Hat das Paintball Match gewonnen", name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
