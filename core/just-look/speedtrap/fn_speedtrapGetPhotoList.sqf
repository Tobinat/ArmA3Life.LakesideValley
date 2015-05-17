


private["_speedtrap", "_photos", "_hinttext", "_customBounty", "_customType", "_speed", "_limit", "_diff", "_side", "_uid", "_name","_set_to_wanted","_var_laptop","_value_laptop"];

_set_to_wanted = [_this,3,0,[0]] call BIS_fnc_param;

_speedtrap = cursorTarget;
if(isNull _speedtrap) exitwith {};


_photos = _speedtrap getVariable ["speedtrap_photos", []];

_hinttext = "";

if((count _photos) != 0) then
{
    {
        //_hinttext = _hinttext + format["Fahrer=%1 Zeit=%2 Gesch=%3 bei=%4 ort=%5 Auto=%6\n", _x select 0, _x select 1, _x select 2, _x select 3, _x select 4, _x select 5];
        _hinttext = _hinttext + format["%1 %2km/h bei %3km/h\n", _x select 0, _x select 2, _x select 3];

        _name  = _x select 0;
        _speed = _x select 2;
        _limit = _x select 3;
        _uid   = _x select 6;
        _side  = _x select 7;
        _diff  = round (_speed - _limit - 10);
        
        if(_set_to_wanted == 1) then
        {
            if(_side != west) then
            {
                //CIVS
                _customBounty = _diff * 500;
                _customType = format["Blitzer %1km/h bei %2km/h",_speed,_limit];
                [[_uid,_name,"customtype",_customBounty,_customType],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
            }
            else
            {
                //COPS
                _customBounty = 10000;
                _customType = format["Blitzer %1km/h bei %2km/h",_speed,_limit];
                [[_uid,_name,"customtype",_customBounty,_customType],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
            };
        };
    } foreach _photos;
    if(_set_to_wanted == 1) then
    {
        _hinttext = _hinttext + "\nAlle Zivilisten wurden auf die Wantedliste geschrieben!";
        _speedtrap setVariable ["speedtrap_photos", [], true];
    };
}
else
{
    _hinttext = "Es wurde hier niemand geblitzt!";
};

hint _hinttext;

