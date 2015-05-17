/*
Datei : fn_scheinEntzug.sqf
Ersteller : xnetsrac
Link : http://www.global-gamer.com/home/wbb/index.php/Thread/501-Tutorial-Per-Interaktionbutton-Fahrerlizenz-abnehmen-Polizei/
*/
private["_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _unit) exitWith {}; //Not valid
[[_unit,false],"life_fnc_scheinEntzugNow",_unit,false] spawn life_fnc_MP;