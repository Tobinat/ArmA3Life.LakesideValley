/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "market": {["Market",["cigarette","zoobeer","Rax's Rum","water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","storagesmall","storagebig","henraw","roosterraw","goatraw","sheepraw","rabbitraw"]]};
	case "rebel": {["Rebel Market",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","blastingcharge"]]};
	case "gang": {["Gang Market", ["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","blastingcharge","boltcutter"]]};
	case "wongs": {["Wong's Food Cart",["turtlesoup","turtle"]]};
	case "coffee": {["Stratis Coffee Club",["coffee","donuts"]]};
	case "heroin": {["Drug Dealer",["cocainep","heroinp","marijuana"]]};
	case "oil": {["Oil Trader",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Altis Fish Market",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "farmingmarket": {["Altis Seed Market",["wheat seed","sunflower seed","corn seed","bean seed","cotton seed","olive seed","opium seed","cannabis seed","pumpkin seed","wheat","sunflower","corn","bean","cotton","olive","pumpkin"]]};	
	case "glass": {["Altis Glass Dealer",["glass"]]};
	case "iron": {["Altis Industrial Trader",["iron_r","copper_r"]]};
	case "diamond": {["Diamond Dealer",["diamond","diamondc"]]};
	case "salt": {["Salt Dealer",["salt_r"]]};
	case "cop": {["Cop Item Shop",["donuts","coffee","spikeStrip","water","rabbit","apple","redgull","fuelF","defusekit","BarGate","RoadBlockConc","RoadBlockWood","RoadCone","RoadConeStrip","RoadConeB","RoadConeStripB"]]};
	case "copplacable": {["Cop Placable's Shop",["smallLeft","smallRight","pole","light","bigLeft","bigRight","barrier","cone"]]};
	case "cement": {["Cement Dealer",["cement"]]};
	case "gold": {["Gold Buyer",["goldbar"]]};
	case "ems": {["EMS Item Shop",["water","rabbit","apple","redgull","tbacon","peach"]]};
	case "burgershop": {["Burger Shop",["burger","fries","koke"]]};
};