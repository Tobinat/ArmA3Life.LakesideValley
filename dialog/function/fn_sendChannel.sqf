/*
    File: fn_sendChannel.sqf
    Author: alleskapot & Lifted
    Thanks again for all the help alleskapot!
    Description:
    Ermöglicht senden bzw. die Abfrage des Geschriebenen.
*/
private["_message"];
disableSerialization;
waitUntil {!isnull (findDisplay 9000)};
if (life_cash <= 6000 ) exitWith { systemChat "Du brauchst 60000€ um eine Nachricht zu senden!"; };
if (playerSide != civilian ) exitWith { systemChat "Du musst ein Zivilist sein!"; };
life_cash = life_cash - 6000;
_message = ctrlText 9001;
[[3,format ["%1 sendete folgende Nachricht von Lakeside Newspaper an Alle: %2",name player,_message]],"life_fnc_broadcast",true,false] call life_fnc_MP;
life_channel_send = false;
[] spawn
{
    sleep 700;
    life_channel_send = true;
};