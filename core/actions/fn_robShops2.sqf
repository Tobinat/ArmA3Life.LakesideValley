/* 
file: fn_robShops.sqf
Author: MrKraken
Made from MrKrakens bare-bones shop robbing tutorial on www.altisliferpg.com forums
Description:
Executes the rob shob action!
Idea developed by PEpwnzya v2.0

*/ 
private["_robber","_shop","_kassa","_ui","_progress","_pgText","_cP","_rip"];
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param; //The object that has the action attached to it is _this. ,0, is the index of object, ObjNull is the default should there be nothing in the parameter or it's broken
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param; //Can you guess? Alright, it's the player, or the "caller". The object is 0, the person activating the object is 1
//_kassa = 1000; //The amount the shop has to rob, you could make this a parameter of the call (https://community.bistudio.com/wiki/addAction). Give it a try and post below ;)
_action = [_this,2] call BIS_fnc_param;//Action name

if !(alive _robber) exitWith {};

_rip = true;
_kassa = 10000 + round(random 50000); //setting the money in the registry, anywhere from 3000 to 15000. 
[[_shop,_robber,_action,-1],"TON_fnc_shopState",false,false] spawn life_fnc_MP; //sending information to the server so the animations and removeaction can be performed for all players if the checks clear. 

_chance = random(100); //calling a random number between 0-100. 
if(_chance >= 1) then { hint "Der Kassierer hat heimlich die Polizei informiert!"; _Pos = position player; // <-----------NEU NEU NEU

//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Es wird ausgeraubt , bleib in der nähe (5m) (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.01;

if(_rip) then
{
while{true} do
{
sleep 1.50;
_cP = _cP + 0.01;
_progress progressSetPosition _cP;
_pgText ctrlSetText format["Es wird ausgeraubt , bleib in der nahe (5m) (%1%2)...",round(_cP * 100),"%"];
if(_cP >= 1) exitWith {};
if(_robber distance _shop > 5) exitWith { };
if!(alive _robber) exitWith {};



}; 
if!(alive _robber) exitWith { _rip = false; };
if(_robber distance _shop > 5) exitWith { hint "Du warst zu weit weg! - Hier kannst du nicht mehr ausrauben."; 5 cutText ["","PLAIN"]; _rip = false; };
5 cutText ["","PLAIN"];
titleText[format["Du hast %1€ erbeutet, nichts wie weg hier , die Cops sind vielleicht schon auf dem Weg!",[_kassa] call life_fnc_numberText],"PLAIN"];
life_cash = life_cash + _kassa;
_rip = false;
life_use_atm = false;
sleep (1 + random(1)); 
life_use_atm = true; 
if!(alive _robber) exitWith {};
[[0,format["112 - Tankstelle: %2 wurde gerade  ausgeraubt und hat %3€ erbeutet",name _robber, _shop, [_kassa] call life_fnc_numberText]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
[[0,format["NEWS: Tankstelle: %1 wurde gerade  ausgeraubt und hat %3€ erbeutet", _shop,name _robber, [_kassa] call life_fnc_numberText]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
[[getPlayerUID _robber,name _robber,"211A"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP; 
};
[[_shop,_robber,_action,0],"TON_fnc_shopState",false,false] spawn life_fnc_MP;