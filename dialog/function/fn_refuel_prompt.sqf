/*
	File: fn_refuel_prompt.sqf
	
*/
private["_pricectrl","_price"];
disableSerialization;

refuel_station = _this select 3;

_vehicle = (vehicle player);
_classname = typeOf _vehicle;
_tank = 65;
switch (_classname) do
{
	case "C_Offroad_01_F": { _tank = 65;};
	case "B_G_Offroad_01_F": { _tank = 65;};
	case "B_Quadbike_01_F": { _tank = 30;};
	case "I_Truck_02_covered_F": { _tank = 350;};
	case "I_Truck_02_transport_F": { _tank = 350;};
	case "C_Hatchback_01_F": { _tank = 45;};
	case "C_Hatchback_01_sport_F": { _tank = 60;};
	case "C_SUV_01_F": { _tank = 80;};
	case "C_Van_01_transport_F": { _tank = 100;};
	case "I_G_Van_01_transport_F": { _tank = 100;};
	case "C_Van_01_box_F": { _tank = 150;};
	case "B_Truck_01_box_F": { _tank = 325;};
	case "B_Truck_01_transport_F": { _tank = 325;};
	case "O_Truck_03_transport_F": { _tank = 400;};
	case "B_MRAP_01_F": { _tank = 65;};
	case "O_MRAP_02_F": { _tank = 60;};
	case "I_MRAP_03_F": { _tank = 58;};
	case "B_Heli_Light_01_F": { _tank = 242;};
	case "O_Heli_Light_02_unarmed_F": { _tank = 500;};
	case "I_Heli_Transport_02_F": { _tank = 900;};
	case "O_Heli_Attack_02_black_F": { _tank = 2500;};
	case "C_Van_01_fuel_F": { _tank = 120;};
	case "B_Truck_01_fuel_F": { _tank =350;};
	case "O_Truck_02_fuel_F": { _tank =300;};
	
	
	default { _tank = 65;};
};

_fuelex = fuel _vehicle;
_fuelex = _fuelex * 100;
_fuelex = 100 - _fuelex;
_fuelex =  _tank / 100 * _fuelex;
_price = ceil (75 * _fuelex);

createDialog "refuel";

_pricectrl = ((findDisplay 8000) displayCtrl 8002);
ctrlSetText[8002,format["%1",_price]];