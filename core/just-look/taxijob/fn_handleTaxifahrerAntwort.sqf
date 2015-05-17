/*
	Behandelt die positive/negative Antwort von einem Taxifahrer auf eine Taxianfrage von diesem Clienten
	
	Author: Aequalitas

*/


private ["_antwort","_taxifahrerUID","_startposition","_anfahrtskosten","_taxiposition","_distanz"];


_antwort = [_this,0] call BIS_fnc_Param;
_taxifahrerUID = [_this,1] call BIS_fnc_Param;
_taxiposition = [_this,2] call BIS_fnc_param;
_taxifahrername = [_this,3] call BIS_fnc_param;

diag_log "/////////////// taxifahrerantwort angekommen";

_startposition = position player;

_distanz = _taxiposition distance player;
diag_log format["///////////////// distanz anfahrt %1",_distanz];

_anfahrtskosten =( _distanz * 10 ) + 1000; /// 1000 mindestkosten
diag_log format ["//////////////// anfahrtskosten %1",_anfahrtskosten];

if(_antwort) then
{	
	taxijobbeansprucht=true;
	hint format[ "Der Taxifahrer(%1) hat akzeptiert und macht sich nun auf den Weg",_taxifahrername];
	[1,_taxifahrerUID,_anfahrtskosten,_startposition] call jl_fnc_taxijobAktivKunde;
	
}
else
{	
	hint "Taxifahrer hat abgelehnt, nächster Taxifahrer wird gefragt...";
	[false] call jl_fnc_taxirufen;
	
};