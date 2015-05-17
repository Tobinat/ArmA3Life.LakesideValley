#include <macro.h>
/*
	Client betritt/verlässt Gebiet
	
	Author : Just-Look | Aequalitas
*/


private ["_type","_gebietID","_gebiet1wirdErobert","_besitztschonGebiet","_ganggebiet"];

_type = [_this,0] call BIS_fnc_Param;
gebietID = [_this,1] call BIS_fnc_Param;

gangname = grpPlayer getVariable "gang_name";
waitUntil{sleep 0.5;!isNil{gangname};};

switch(_type) do
{
	case 1:
	{
	
			[[3,getPlayerUID player,"ganggebietabfrage"],"JL_fnc_ganggebietHandler",false,false] call life_fnc_MP;

			waitUntil{sleep 0.5;!isNil{ganggebiete};};
			sleep 2;


			if(((ganggebiete select gebietID) select 0) == gangname) then {_besitztschonGebiet = true;} else {_besitztschonGebiet = false;};
				diag_log format["::besitztschonGebiet::%1::",_besitztschonGebiet];
				if(!_besitztschonGebiet) then
				{
					diag_log format["::ganggebiete select gebietID select 3::%1::",((ganggebiete select gebietID) select 3)];
					diag_log format["::ganggebiete select gebietID select 2::%1::",((ganggebiete select gebietID) select 2)];
					gangGebietAction = player addAction["Deine Gang fuer Eroberung anmelden.",{
						
						[[3,getPlayerUID player,"ganggebietabfrage"],"JL_fnc_ganggebietHandler",false,false] call life_fnc_MP; // um aktuelle Daten zu haben wird nochmals beim ausführen des actionmenu abgefragt

						if(((ganggebiete select gebietID) select 2 )) exitWith{hint "Dies ist zurzeit nicht moeglich da eine Eroberung schon zur Zeit laeuft.";}; // falls schon erobert wird

						[[gangname,getPlayerUID player],format["JL_fnc_gebiet%1",gebietID],false,false] spawn life_fnc_MP;
						schonGebietangemeldet = true;
						player removeAction gangGebietAction;
					
					},"",1,false,false,"","(leader group player == leader player) && !(schonGebietangemeldet) && !((ganggebiete select gebietID) select 2) && !((ganggebiete select gebietID) select 3)"];
				};
			
			
			[[1,gebietID,gangname],"JL_fnc_ganggebietHandler",false,false] spawn life_fnc_MP;
		
	};
	case 2:
	{
		
		[[2,gebietID,gangname],"JL_fnc_ganggebietHandler",false,false] spawn life_fnc_MP;
	};
	
	case 3:
	{
		hint "Deine Gang hat das Gebiet erobert, deine Gang kann nun Steuern erheben.";
		player removeAction gangGebietAction;
		sleep 15 ;
		hint "Du kannst deine Gang nun wieder fuer eine Eroberung anmelden";
		schonGebietangemeldet = false;
		
	};
	
	case 4:
	{
		hint "Deine Gang hat es nicht geschafft das Gebiet zu erobern.";
		player removeAction gangGebietAction;
		sleep 15 ;
		hint "Du kannst deine Gang nun wieder fuer eine Eroberung anmelden";
		schonGebietangemeldet = false;
		
	};
	
	case 5:
	{
		hint "In 5 Minuten faengt der Eroberungsprozess an. Dann hat deine Gang 15 Minuten Zeit das Gebiet zu erobern. Wenn dein Team am Ende die Mehrheit im Gebiet repraesentiert hat deine Gang das Gebiet erobert.";
		
	};
	
};
