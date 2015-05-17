/*

	Benachrichtigungen für den Clienten im Bezug auf Paintball
	
	Author: Aequalitas

*/

private ["_type"];


_type = [_this,0] call BIS_fnc_param;

switch (_type) do {

 case 1 : 
 {
	hint "Es werden mindestens 2 Personen fuer ein Match benoetigt";
 };
 case 2 : 
 {
	hint "In 5 Minuten startet das Match";
 };
 case 3 :
 {
	hint "Du bist nun der Warteschlange fuer das Paintballmatch beigetreten.";
 };
 case 4 : 
 {
	hint "Du hast nun die Warteschlange verlassen.";
 };
 case 5 : 
 {
	hint "Paintball Arena ist Voll. Warte auf die Nächste Runde.";
 };
 case 6 : 
 {
	hint "Paintball Match ist bereits gestartet. Du musst warten bis die Runde beendet wurde.";
 };
};