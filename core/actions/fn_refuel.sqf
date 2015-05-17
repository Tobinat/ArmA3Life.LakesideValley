/*
	File: fn_refuel.sqf
	
*/
private ["_vehicle","_updateInterval","_amount","_type","_name","_station","_text","_price","_classname","_tank","_nomoney","_fuelex","_lastIndex","_tankstelle","_tankfuel"];

// _station = _this select 0;
_vehicle = (vehicle player);
_updateInterval = 1;
if (!local _vehicle) exitWith { hint "Not a local Object"; };

_text = ctrlText 8002;
_price = parseNumber (_text);
//_price = _price * 20;

_fuelex = fuel _vehicle;
_fuelex = _fuelex * 100;
_fuelex  = 100 - _fuelex;
diag_log format["||fn_refuel||Tankstelle:%1||liter:%2||",refuel_station,_fuelex];

[[],"TON_fnc_loadTank"] spawn life_fnc_MP;

sleep 0.3;

_lastIndex = -1;
{
	if((_x select 0) == refuel_station) then
	{
		_lastIndex = _forEachIndex;

	};
}foreach tankstellen;

_tankstelle = tankstellen select _lastIndex;
_tankfuel = _tankstelle select 1;


_nomoney = false;

closeDialog 0;

_classname = typeOf _vehicle;
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

_updateInterval = _tank / 10 / 20;
_type = typeOf _vehicle;
_name = getText(configFile >> "cfgVehicles" >> _type >> "displayName");

if (isNil "life_refueling") then {
	life_refueling = true;
	
	if(_price > life_atmcash) exitWith 
	{
		_nomoney = true;
		hint "Auf deinem Konto befindet sich nicht genug Geld um zu Tanken!"
	};
	life_atmcash = life_atmcash - _price;
	
	if (_nomoney) exitWith {};
	
	_vehicle engineOn false;
	titleText [format["Betanke %1 ...", _name], "PLAIN DOWN"];
	
	while {(vehicle player == _vehicle) && (local _vehicle)} do {
		private "_fuel";
		if (_vehicle distance nearestObject[_vehicle, "Land_fs_feed_F"] > 20) exitWith {
			titleText [format["Refueling of %1 stopped", _name], "PLAIN DOWN"];
		};
		_fuel = (fuel _vehicle) + 0.05;
		if (_fuel > 0.99) exitWith {
			_vehicle setFuel 1;
			titleText [format["%1 wurde aufgetankt", _name], "PLAIN DOWN"];
		};
		_vehicle setFuel _fuel;
		sleep _updateInterval;
	};
	_fuelex =_tank / 100 * _fuelex;
	_fuelex = _fuelex * 10;
	_tankfuel = _tankfuel - _fuelex;
	_tankfuel = ceil (_tankfuel);
	[[_lastIndex,refuel_station,_tankfuel],"TON_fnc_saveTank"] spawn life_fnc_MP;
	
	life_refueling = nil;
};

