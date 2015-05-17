/*
	Behandelt das Actionmenu Taxiwagen ausleihen an einem Taxistand
	
	Author:Just-Look | Aequalitas
*/

private ["_standort"];

_standort = _this select 3;

switch(_standort) do {
	
	case 1: {
	
		["job_2",civilian,"taxizstandkavalla","civ","Taxiwagen Vermietung",true] call life_fnc_vehicleShopMenu;
	};

};






/*
private["_standort","_spawnpos"];
if(!isNil "hatschonGemietetTaxiwagen" && hatschonGemietetTaxiwagen == 1) exitWith {hint "Du hast dir schon einen Taxiwagen ausgeliehen."};
if(life_atmcash < 50000 ) exitWith { hint "Du hast nicht 50000 an Kaution um dir ein Taxiwagen zu leihen."};
if(!(["C_Hatchback_01_F"] call life_fnc_vehShopLicenses)) exitWith {hint "Du hast keine Autolizens!"};

life_atmcash = life_atmcash - 50000;
hint "Du hast dir ein Taxiwagen geliehen.";

_standort = _this select 3;

switch(_standort) do {

	case 1: {
		
		taxiwagen = "C_Hatchback_01_F" createVehicle (getMarkerPos "taxizstandkavalla");
		taxiwagen lock 2;
		taxiwagen allowDamage false;
		taxiwagen setVariable["vehicle_info_owners",[[getPlayerUID player,profileName]],true];
		taxiwagen allowDamage true;
		hatschonGemietetTaxiwagen = 1;
	};
};
