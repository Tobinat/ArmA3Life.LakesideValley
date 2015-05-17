/*
	File: fn_leavePaintball.sqf
	Author: Mindsaver
	Description:

*/
		private["_spawnPositions","_playerUniforms","_pic","_filter"];
		_uid = getPlayerUID player;
		[[_uid,1],"TON_fnc_handlePaintball",false,false] call life_fnc_MP;
		player setPos life_paintball_pos;
		life_paintball_pos = [];
		life_is_paintball = false;
		player setDamage 0;
		checkPaintballWarteschlange = false;
		[] spawn life_fnc_civloadGear;
