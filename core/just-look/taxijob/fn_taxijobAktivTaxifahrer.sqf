/*
	Behandelt das beenden Event für den Taxifahrer
	
	Author: Just-Look | Aequalitas
*/
private["_type","_kundenID","_taxikosten"];

_type = [_this,0] call BIS_fnc_Param;
kundenid = [_this,1] call BIS_fnc_Param;
_taxikosten = [_this,2] call BIS_fnc_Param;
_kundenname = [_this,3] call BIS_fnc_Param;
taxikunde = [_this,4] call BIS_fnc_Param;



switch(_type) do 
{
	case 2: 
	{
		life_taxiMarker = [[taxikunde,_kundenname]];
	
	};
	case 1:
	
	{
		life_bargeld = life_bargeld + _taxikosten;
		hint format["Der Kunde ist zufrieden und hat fuer die Fahrt %1 bezahlt",_taxikosten];
		taxiused=false;
		[] call jl_fnc_deleteTaxi;
	};
	case 0:
	{
		hint format ["Der Kunde hatte nicht genuegend dabei und schuldet dir nun %1 Dollar. Du darfst %2 verklagen.",_taxikosten,_kundenname];
		taxiused=false;
		[] call jl_fnc_deleteTaxi;
	};
};