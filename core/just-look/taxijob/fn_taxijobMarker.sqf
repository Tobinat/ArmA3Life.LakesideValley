/*
	
	Author: Mindsaver
	

*/
private["_markers","_units"];
_markers = [];
_units = [];
sleep 0.25;

if(taxiused) then{
	if(visibleMap) then {
		{
			//diag_log format["::ADAC::%1::", getPos (_x select 0)];
			if(!(isNull (_x select 0))) then {
				_marker = createMarkerLocal [format["%1_adac_marker",_x select 0],getPos (_x select 0)];
				_marker setMarkerColorLocal "ColorYellow";
				_marker setMarkerTypeLocal "mil_warning";
				_vehicleType = typeOf (_x select 0);
				_marker setMarkerTextLocal format["%1 hat das Taxi gerufen",_x select 1];
				_markers set[count _markers,_marker];
			};
		} foreach life_taxiMarker;

		
		waitUntil {!visibleMap};
		{deleteMarkerLocal _x;} foreach _markers;
	};
};