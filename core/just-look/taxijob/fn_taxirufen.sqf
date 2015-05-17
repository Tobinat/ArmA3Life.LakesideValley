/*
	Sucht einen passenden Taxifahrer für die aktuelle Position des Clienten.
	
	Author: Aequalitas
	
*/

private["_aktuelleTaxifahrerPos","_nearestTaxifahrer","_taxifahrerUID","_distanz","_ersteAnfrage","_tmp"];

_ersteAnfrage = [_this,0] call BIS_fnc_Param;

if(life_taxi_request) exitWith {hint "Du kannst nur alle 5 Minuten ein Taxi rufen";};

diag_log format["//////////taxanfrage wurdge gestelle %1", _ersteAnfrage];
if(_ersteAnfrage) then
{

	[[5,getPlayerUID player],"JL_fnc_handlealleTaxis",false,false] spawn life_fnc_MP;
	hint "Taxianfrage wird gestellt..";
};

sleep 2;

if(isNil {alleTaxifahreronDuty}) exitWith {hint "Es steht zur Zeit kein Taxifahrer zur Verfuegung."};  			/// wenn die liste das erste Mal angefordert wird.
if(!(_ersteAnfrage) && (count alleTaxifahreronDuty == 0) ) exitWith {hint "Kein Taxifahrer hat deine Anfrage angenommen oder keiner ist frei."};
if(count alleTaxifahreronDuty == 0) exitWith {hint "Es steht zur Zeit kein Taxifahrer zur Verfuegung."};



/// sucht den am nähesten liegenden Taxifahrer
_distanz = 99999;

{
	_aktuelleTaxifahrerPos = _x select 2;
	
	if((_aktuelleTaxifahrerPos distance player) < _distanz && !(_x select 1)) then
	{
		_distanz = _aktuelleTaxifahrerPos distance player;
		_nearestTaxifahrer = _x select 0;
		diag_log format["////////taxifahrer ausgewählt %1",_nearestTaxifahrer];
		
	};

	
}foreach alleTaxifahreronDuty;

///Server wird gesagt bei dem Taxifahrer eine Anfrage zu stellen

[[getPlayerUID player,position player,name player],"jl_fnc_anfrageAnTaxifahrer",_nearestTaxifahrer,false] spawn life_fnc_MP;
diag_log format["//////////////////1 taxiarray = %1",alleTaxifahreronDuty];
	
	
///Taxifahrer wird aus der Liste der verfügbaren Taxifahrer (lokal) gestrichen.

	
		for "_i" from 0 to count alleTaxifahreronDuty do {
		
			diag_log format["%1 == %2  ?",alleTaxifahreronDuty select _i select 0 ,_nearestTaxifahrer];
			
				if(alleTaxifahreronDuty select _i select 0 == _nearestTaxifahrer) exitWith {
					
				
						alleTaxifahreronDuty set [_i,objNull];
						alleTaxifahreronDuty = alleTaxifahreronDuty - [objNull];
						
						diag_log "erfolgreich gelöscht//////////// lokal";
					
				
				};
		
		
		};
diag_log format["//////////////////2 taxiarray = %1",alleTaxifahreronDuty];
diag_log format ["///////////////%1", count alleTaxifahreronDuty];


[] spawn 
{
	life_taxi_request = true;
	sleep (5 * 60);
	life_taxi_request = false;
};