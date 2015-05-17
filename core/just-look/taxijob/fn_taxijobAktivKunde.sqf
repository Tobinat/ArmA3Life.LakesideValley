/*
	Läuft für den Kunden während er das Taxiangebot in Anspruch nimmt.
	
	Author: Just-Look | Aequalitas

*/

private["_type","_taxifahrerUID","_taxikosten","_startposition","_anfahrtskosten","_distanz"];

_type = [_this,0] call BIS_fnc_Param;
if(_type == 1) then 
{
	taxifahrerUID = [_this,1] call BIS_fnc_Param;
	_anfahrtskosten = [_this,2] call BIS_fnc_Param;
	_startposition = [_this,3] call BIS_fnc_Param;

	_distanz = _startposition distance player;
	
	taxikosten = (_distanz * 10) + _anfahrtskosten; 
	//diag_log format ["///////////////// distanz %1",_distanz];
	//diag_log format ["///////////taxikosten %1",_taxikosten];
	
	[[2,getPlayerUID player,taxikosten,name player,player],"jl_fnc_taxijobAktivTaxifahrer",taxifahrerUID,false] spawn Life_fnc_MP;
	

} 
else
{
	hint "Der Fahrer hat die Fahrt beendet";
	taxijobbeansprucht = false;
};

