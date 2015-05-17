
private["_veh","_veh_type","_factor","_factor_calculated","_manipulation","_fuel","_fuel_old","_fuel_new","_fuel_diff"];
while {true} do
{
	waitUntil {sleep 0.1; (vehicle player != player && (driver (vehicle player)) == player)};
	//hint "enter";
	_veh = vehicle player;
	_veh_type = typeof _veh;
	_fuel_old = fuel _veh;
	

	switch (_veh_type) do
	{
		case "C_Offroad_01_F": { _factor = 10;};
		case "B_G_Offroad_01_F": { _factor = 10;};
		case "B_Quadbike_01_F": { _factor = 10;};
		case "I_Truck_02_covered_F": { _factor = 10;};
		case "I_Truck_02_transport_F": { _factor = 10;};
		case "C_Hatchback_01_F": { _factor = 10;};
		case "C_Hatchback_01_sport_F": { _factor = 10;};
		case "C_SUV_01_F": { _factor = 10;};
		case "C_Van_01_transport_F": { _factor = 10;};
		case "I_G_Van_01_transport_F": { _factor = 10;};
		case "C_Van_01_box_F": { _factor = 10;};
		case "B_Truck_01_box_F": {_factor = 10;};
		case "B_Truck_01_transport_F": { _factor = 10;};
		case "O_Truck_03_transport_F": { _factor = 10;};
		case "B_MRAP_01_F": { _factor = 10;};
		case "O_MRAP_02_F": { _factor = 10;};
		case "I_MRAP_03_F": { _factor = 10;};
		case "B_Heli_Light_01_F": { _factor = 5;};
		case "O_Heli_Light_02_unarmed_F": { _factor = 5;};
		case "I_Heli_Transport_02_F": { _factor = 5;};
		case "O_Heli_Attack_02_black_F": { _factor = 5;};
		
		case "C_Van_01_fuel_F": { _factor = 10;};
		
		default { _factor = 5;};
	};
	
	

	while {true} do
	{
		if(vehicle player == player) exitWith {};
		if((driver (vehicle player)) != player) exitWith {};
		if(!(alive (vehicle player))) exitWith {};
		if(side player == independent) exitWith {};
		if(side player == west) exitWith {};

		
		
		_fuel = fuel _veh;
		_fuel_diff = _fuel_old - _fuel;
		_factor_calculated = _factor;
		if(_fuel_diff > 0) then
		{
			_fuel_new = _fuel - ((_factor_calculated * _fuel_diff) - _fuel_diff);
			if(_fuel_new < 0) then
			{
				_fuel_new = 0;
			};
			if(_factor_calculated != 1) then
			{
				_veh setFuel _fuel_new;
			};
		};
		_fuel_old = fuel _veh;

		//hint format["fuel=%1 diff=%2 _factor=%3", _fuel_old, _fuel_diff, _factor_calculated];
		
		sleep 0.5;
	};

	//hint "exit";
};