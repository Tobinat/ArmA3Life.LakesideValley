/*
	Behandelt onDuty und offDuty actions vom Taxifahrer
	
	Author: Just-Look | Aequalitas

*/

private["_type"];

_type = _this select 3;

diag_log "//////////////Onduty oder Offduty";
if(_type==1) then
{

	
	[[1,getPlayerUID player,position player],"JL_fnc_handlealleTaxis",false,false] spawn life_fnc_MP;
	taxionduty=1;
	hint "Du bist nun im Taxidienst.";
}
else
{
	[[2,getPlayerUID player],"JL_fnc_handlealleTaxis",false,false] spawn life_fnc_MP;
	taxionduty = 0;
	hint "Du bist nun aus dem Taxidienst.";
};