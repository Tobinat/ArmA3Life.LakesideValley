/*
	
	Author: Mindsaver
	

*/
if(life_job == 99)then{
	_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
	_index = -1;
	if((count life_adacMarker) < 2) then {
		diag_log format["Array kleiner als 2:"];
		life_adacMarker  = [];
	}else{
		{
			_index = _index +1;
				if(_x select 0 == _vehicle)then{
					//diag_log format["Spieler gefunden:%1",_index];
					//diag_log format["life_adacMarker:%1",life_adacMarker];
					life_adacMarker set [_index,objNull];
					//diag_log format["life_adacMarker:%1",life_adacMarker];
					life_adacMarker = life_adacMarker - [objNull];
					//diag_log format["life_adacMarker:%1",life_adacMarker];
				};
		}foreach life_adacMarker;
	};
};