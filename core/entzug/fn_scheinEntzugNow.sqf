/*
Datei : fn_scheinEntzug.sqf
Ersteller : xnetsrac
Link : http://www.global-gamer.com/home/wbb/index.php/Thread/501-Tutorial-Per-Interaktionbutton-Fahrerlizenz-abnehmen-Polizei/
*/
private["_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
[4] call life_fnc_removeLicenses;
[[0,format["%1's Führerschein wurde entzogen!", name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;