/*
	Empfängt eine Anfrage eines Kunden und fragt den Taxifahrer(client) ob er annimmt oder nicht
	
	Author:Just-Look | Aequalitas
	
*/

private["_kundepos","_kundenname","_kundendistanz","_kundenuid"];

_kundenuid = [_this,0] call BIS_fnc_Param;
_kundenpos = [_this,1] call BIS_fnc_Param;
_kundenname = [_this,2] call BIS_fnc_Param;


diag_log "//////////////taxidialog????";


kundenuid = _kundenuid;

createDialog "jl_taxianfrage";
disableSerialization;

sleep 1;




_kundendistanz = player distance _kundenpos;

diag_log format["//////////////distanz zum kunden %1",_kundendistanz];
ctrlSetText [3752, format["%1",_kundenname]];
ctrlSetText [3753, format["%1",_kundendistanz]];



