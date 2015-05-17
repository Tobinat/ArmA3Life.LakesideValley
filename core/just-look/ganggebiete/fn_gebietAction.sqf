#include <macro.h>
/*
	Client betritt/verlässt Gebiet
	
	Author : Just-Look | Aequalitas
*/




[[3,getPlayerUID player,"ganggebietabfrage"],"JL_fnc_ganggebietHandler",false,false] call life_fnc_MP; // um aktuelle Daten zu haben wird nochmals beim ausführen des actionmenu abgefragt

if(((ganggebiete select gebietID) select 2 )) exitWith{hint "Dies ist zurzeit nicht moeglich da eine Eroberung schon zur Zeit laeuft.";}; // falls schon erobert wird

[[gangname,getPlayerUID player],format["JL_fnc_gebiet%1",gebietID],false,false] spawn life_fnc_MP;
schonGebietangemeldet = true;
