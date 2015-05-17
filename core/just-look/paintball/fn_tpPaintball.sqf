/*
	File: fn_tpPaintball.sqf
	Author: Mindsaver
	Description:
	Adrinalin
*/

private["_spawnPositions","_playerUniforms","_pic","_filter"];


_spawnPosition = [_this,0] call BIS_fnc_param;
[] call life_fnc_civFetchGear;


life_is_paintball = true;
life_paintball_pos = getPos player;
removeBackpack player;
removeAllContainers player;
removeAllWeapons player;
player setPos _spawnPosition;
_playerUniforms = ["U_B_Protagonist_VR","U_O_Protagonist_VR","U_I_Protagonist_VR"] call BIS_fnc_selectrandom;
player forceAddUniform _playerUniforms;
player addBackpack "B_Kitbag_cbr";

player addItem "FirstAidKit";
player addItem "FirstAidKit";

removeGoggles player;
removeHeadGear player;

player addGoggles "G_Goggles_VR";

player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
player addWeapon "arifle_MXM_Hamr_pointer_F";




