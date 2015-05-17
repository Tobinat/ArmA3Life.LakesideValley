/*
	Läuft für den Kunden während er das Taxiangebot in Anspruch nimmt.
	
	Author: Just-Look | Aequalitas

*/
_type = [_this,3] call BIS_fnc_Param;

if(_type == 1) then 
{
	taxijobbeansprucht=false;
		
	[[4,taxifahrerUID],"JL_fnc_handlealleTaxis",false,false] spawn life_fnc_MP;
		
	if(life_bargeld < taxikosten) exitWith {
		hint "Du hattest nicht genuegend Geld um das Taxi zu bezahlen, der Taxifahrer darf dich nun verklagen";
		[[0,getPlayerUID player,taxikosten,player],"JL_fnc_taxijobAktivTaxifahrer",taxifahrerUID,false] spawn Life_fnc_MP;
	};
		
	[[1,getPlayerUID player,taxikosten,player],"jl_fnc_taxijobAktivTaxifahrer",taxifahrerUID,false] spawn Life_fnc_MP;
		
	life_bargeld = life_bargeld - taxikosten;
		
	hint format["Du hast die Taxifahrt beendet.Die Fahrt hat %1 Dollar gekostet.",taxikosten];
	taxikosten = 0;
}else{
	[[4,getPlayerUID player],"JL_fnc_handlealleTaxis",false,false] spawn life_fnc_MP;
			
	[0,"jl_fnc_taxijobAktivKunde",kundenid,false] spawn life_fnc_MP;
			
	hint "Du hast nun die Fahrt beendet, du hast dadurch nichts verdient.";
	taxiused=false;
	[taxikunde] call jl_fnc_deleteTaxi;

};