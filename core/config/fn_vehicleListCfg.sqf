#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "dezzie_car":
	{
		_return = [
			["IVORY_PRIUS",25000],
			["IVORY_R8",130000],
			["IVORY_R8SPYDER",130000],
			["IVORY_REV",200000]
		];
	};
	case "kart_shop":
	{
		_return = [
			["A3L_Karts",10000],
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "med_shop":
	{
		_return = [
			["IVORY_PRIUS",10000],
			["A3L_CVPILBFD",10000],
			["DAR_TahoeEMS",50000],
			["Jonzie_Ambulance",50000],
			["A3L_AmberLamps",50000],
			["cl3_dodge_charger_emt",16000],
			["A3L_Laddertruck",70000]
		];
	};
	case "med_air_hs": {
		_return = [
			["ivory_b206_rescue",45000],
			["IVORY_BELL512_RESCUE",85000],
			["C_Heli_Light_01_civil_F",50000],
			["O_Heli_Light_02_unarmed_F",75000],
			["O_Heli_Transport_04_medevac_F", 150000]
		];
	};
	
	case "onscheck_shop": {
		_return = [
			["cl_golf_mk2_white",450000],
			["cl_golf_mk2_blue",450000],
			["cl_golf_mk2_black",450000],
			["cl_golf_mk2_red",450000],
			
			["cl_honda_civic_vti_white", 500000],
			["cl_honda_civic_vti_blue", 500000],
			["cl_honda_civic_vti_black", 500000],
			["cl_honda_civic_vti_red", 500000],
			
			["cl_porsche_carrera_gt_white", 650000],
			["cl_porsche_carrera_gt_blue", 650000],
			["cl_porsche_carrera_gt_black", 650000],
			["cl_porsche_carrera_gt_red", 650000],
			
			["cl_bmw_z4_2008_white", 750000],
			["cl_bmw_z4_2008_blue", 750000],
			["cl_bmw_z4_2008_black", 750000],
			["cl_bmw_z4_2008_red", 750000],
			
			["cl_insignia_white", 250000],
			["cl_insignia_blue", 250000],
			["cl_insignia_black", 250000],
			["cl_insignia_red", 250000],
			
			["cl_ferrari_458_white", 1250000],
			["cl_ferrari_458_blue", 1250000],
			["cl_ferrari_458_black", 1250000],
			["cl_ferrari_458_red", 1250000],
			
			["cl_lamborghini_gt1_white", 1300000],
			["cl_lamborghini_gt1_blue", 1300000],
			["cl_lamborghini_gt1_black", 1300000],
			["cl_lamborghini_gt1_red", 1300000],
			
			["cl_audi_r8_spyder_white", 1300000],
			["cl_audi_r8_spyder_blue", 1300000],
			["cl_audi_r8_spyder_black", 1300000],
			["cl_audi_r8_spyder_red", 1300000],
			
			["cl_polo_gti_white", 250000],
			["cl_polo_gti_blue", 250000],
			["cl_polo_gti_black", 250000],
			["cl_polo_gti_red", 250000],
			
			["cl_aston_dbs_volante_white", 550000],
			["cl_aston_dbs_volante_blue", 550000],
			["cl_aston_dbs_volante_black", 550000],
			["cl_aston_dbs_volante_red", 550000],
			
			["cl_range_rover_white", 200000],
			["cl_range_rover_blue", 200000],
			["cl_range_rover_black", 200000],
			["cl_range_rover_red", 200000],
			
			["cl_veyron_blk_wht", 1500000],
			["cl_veyron_wht_lwht", 1500000],
			["cl_veyron_lblue_lblue", 1500000],
			["cl_veyron_black", 1500000],
			["cl_veyron_brn_blk", 1500000],
			
			["cl_mercedes_e63_amg_white", 750000],
			["cl_mercedes_e63_amg_blue", 750000],
			["cl_mercedes_e63_amg_black", 750000],
			["cl_mercedes_e63_amg_red", 750000]
			
			
			
			
			
			
			
			
			
			
			
			
			
		];
	};
	
	
	
	
	
	
	case "exo_car":
	{
		_return = [
			["A3L_Cooper_concept_blue",45000],
			["A3L_Cooper_concept_black",45000],
			["A3L_Cooper_concept_red",45000],
			["A3L_Cooper_concept_white",45000],
			
			["A3L_RX7_Blue",120000],
			["A3L_RX7_Red",120000],
			["A3L_RX7_White",120000],
			["A3L_RX7_Black",120000],
			
			
			["A3L_AMC",80000],
			["A3L_AMXRed",80000],
			["A3L_AMXWhite",80000],
			["A3L_AMXBlue",80000],
			["A3L_AMXGL",85000],
			["A3L_VolvoS60RBlack",70000],
			["A3L_VolvoS60Rred",70000],
			["S_Skyline_Red",95000],
			["S_Skyline_Blue",95000],
			["S_Skyline_Black",95000],
			["S_Skyline_Yellow",95000],
			["S_Skyline_Purple",95000],
			["S_Skyline_White",95000],
			["S_Vantage_Red",350000],
			["S_Vantage_Blue",350000],
			["S_Vantage_Black",350000],
			["S_Vantage_Yellow",350000],
			["S_Vantage_LightBlue",350000],
			["S_Vantage_Purple",350000],
			["S_Vantage_White",350000],
			["A3L_Ferrari458black",530000],
			["A3L_Ferrari458white",530000],
			["A3L_Ferrari458blue",530000],
			["S_PorscheRS_Black",450000],
			["S_PorscheRS_Yellow",450000],
			["S_PorscheRS_White",450000],
			["S_McLarenP1_Black",850000],
			["S_McLarenP1_Blue",850000],
			["S_McLarenP1_Orange",850000],
			["S_McLarenP1_White",850000],
			["S_McLarenP1_Yellow",850000],
			["S_McLarenP1_Silver",850000],
			
			["A3L_Veyron",1500000],
			["A3L_Veyron_red",1500000],
			["A3L_Veyron_black",1500000],
			["A3L_Veyron_white",1500000],
			["A3L_Veyron_orange",1500000]
		];
	};
	case "chev_car":
	{
		_return = [
			["A3L_SuburbanWhite",190000],
			["A3L_SuburbanBlue",190000],
			["A3L_SuburbanRed",190000],
			["A3L_SuburbanBlack",190000],
			["A3L_SuburbanGrey",190000],
			["A3L_SuburbanOrange",190000],
			["A3L_TahoeWhite",105000],
			["A3L_TahoeRed",105000],
			["A3L_TahoeBlue",105000],
			["A3L_Camaro",195000]
		];
	};
	case "ford_car":
	{
		_return = [
			["A3L_FordKaBlue",30000],
			["A3L_FordKaRed",30000],
			["A3L_FordKaBlack",30000],
			["A3L_FordKaWhite",30000],
			["A3L_FordKaGrey",30000],
			["A3L_CVWhite",60000],
			["A3L_CVBlack",60000],
			["A3L_CVGrey",60000],
			["A3L_CVRed",60000],
			["A3L_CVPink",60000],
			["A3L_CVBlue",60000],
			["A3L_Taurus",90000],
			["A3L_TaurusBlack",90000],
			["A3L_TaurusBlue",90000],
			["A3L_TaurusRed",90000],
			["A3L_TaurusWhite",90000]

		];
	};
	case "dodge_car":
	{
		_return =
		[

			["A3L_GrandCaravan",90000],
			["A3L_GrandCaravanBlk",90000],
			["A3L_GrandCaravanBlue",90000],
			["A3L_GrandCaravanGreen",90000],
			["A3L_GrandCaravanRed",90000],
			["A3L_GrandCaravanPurple",90000],
			["A3L_Challenger",105000],
			["A3L_ChallengerGreen",105000],
			["A3L_ChallengerRed",105000],
			["A3L_ChallengerWhite",105000],
			["A3L_ChallengerBlack",105000],
			["A3L_ChallengerBlue",105000],
			//["A3L_ChargerBlack",150000],
			["A3L_ChargerWhit",150000],
			//["A3L_ChargerCstm",150000],
			["Jonzie_Viper",650000]
		];
	};
	case "civ_car":
	{
		_return =
		[
			["Jonzie_Mini_Cooper",10000],
			["B_Quadbike_01_F",5000],
			["A3L_Escort",12000],
			["A3L_EscortTaxi",12000],
			["A3L_EscortBlack",12000],
			["A3L_EscortBlue",12000],
			["A3L_EscortWhite",12000],
			["A3L_EscortPink",12000],
			
			["A3L_PuntoRed",18000],
			["A3L_PuntoBlack",18000],
			["A3L_PuntoWhite",18000],
			["A3L_PuntoGrey",18000],
			["A3L_RegalBlack",22000],
			["A3L_RegalBlue",22000],
			["A3L_RegalOrange",22000],
			["A3L_RegalRed",22000],
			["A3L_RegalWhite",22000],
			["A3L_JeepWhiteBlack",25000],
			["A3L_JeepGreenBlack",25000],
			["A3L_JeepRedTan",25000],
			["A3L_JeepRedBlack",25000],
			["A3L_JeepGrayBlack",25000],
			["A3L_VolksWagenGolfGTired",36000],
			["A3L_VolksWagenGolfGTiblack",36000],
			["A3L_VolksWagenGolfGTiblue",36000],
			["A3L_VolksWagenGolfGTiwhite",36000],
			["S_Rangerover_Black",85000],
			["S_Rangerover_Red",85000],
			["S_Rangerover_Blue",85000],
			["S_Rangerover_Green",85000],
			["S_Rangerover_Purple",85000],
			["S_Rangerover_Grey",85000],
			["S_Rangerover_Orange",85000],
			["S_Rangerover_White",85000]
		];
	};
	case "civ_truck":
	{
		_return =
		[
			["I_Truck_02_transport_F",1900000], //200 | 500
			["I_Truck_02_covered_F",1560000],  //150
			["B_Truck_01_transport_F",2200000], //350 | 650
			["B_Truck_01_covered_F",3500000], //400 | 700
			["O_Truck_03_transport_F",1900000], //200 | 600
			["O_Truck_03_covered_F",7000000], //400 | 700
			["O_Truck_03_device_F",8000000], //420
			["A3L_F350Black",305000],
			["A3L_F350Blue",305000],
			["A3L_F350Red",305000],
			["A3L_F350White",305000],
			["A3L_TowTruck_civ",20000],
			["A3L_Dumptruck",1900000],
			["A3L_Dumptruck_w",1900000],
			["A3L_Dumptruck_b",1900000],
			["A3L_Dumptruck_r",1900000],
			["ALFR_GeK_Scania_420",520000],
			["ALFR_GeK_Volvo_FH16_2012",520000],
			["wirk_h3_limo",270000],
			["GeK_TLC100",370000]	
		];
	};
	
	
	case "Quad_Cart_shop":
	{
		_return = [
			["A3L_Karts",100000],
			["C_Kart_01_Blu_F",150000],
			["C_Kart_01_Fuel_F",150000],
			["C_Kart_01_Red_F",150000],
			["C_Kart_01_Vrana_F",150000],
			["B_Quadbike_01_F",5000]

		];
	};
	
	
	case "Auto_Salon_Thomsen_car":
	{
		_return = [

		
			["S_McLarenP1_Black",950000],
			["S_McLarenP1_Blue",950000],
			["S_McLarenP1_Orange",950000],
			["S_McLarenP1_White",950000],
			["S_McLarenP1_Yellow",950000],
			["S_McLarenP1_Silver",950000],
			["A3L_Veyron_red",1600000],
			["A3L_Veyron_black",1600000],
			["A3L_Veyron_white",1600000],
			["A3L_Veyron_orange",1600000],
			["cl_veyron_blk_wht",1600000],
			["cl_veyron_wht_lwht",1600000],
			["cl_veyron_lblue_lblue",1600000],
			["cl_veyron_black",1700000],
			["cl_veyron_brn_blk",1600000]		
		];
	};
	
	case "Chevrolet_car":
	{
		_return =[
			["A3L_SuburbanWhite",290000],
			["A3L_SuburbanBlue",290000],
			["A3L_SuburbanRed",290000],
			["A3L_SuburbanBlack",290000],
			["A3L_SuburbanGrey",290000],
			["A3L_SuburbanOrange",290000],
			["A3L_Camaro",295000]
		];
	};
	
	
	
	case "F_car":
	{
		_return =[
			["A3L_FordKaBlue",60000],
			["A3L_FordKaRed",60000],
			["A3L_FordKaBlack",60000],
			["A3L_FordKaWhite",60000],
			["A3L_FordKaGrey",60000],
			["A3L_CVWhite",90000],
			["A3L_CVBlack",90000],
			["A3L_CVGrey",90000],
			["A3L_CVRed",90000],
			["A3L_CVPink",90000],
			["A3L_CVBlue",90000],
			["A3L_Taurus",90000],
			["A3L_TaurusBlack",100000],
			["A3L_TaurusBlue",100000],
			["A3L_TaurusRed",100000],
			["A3L_TaurusWhite",100000],
			["A3L_Escort",22000],
			["A3L_EscortBlack",22000],
			["A3L_EscortBlue",22000],
			["A3L_EscortWhite",22000],
			["A3L_EscortPink",22000],
			["cl3_transit_yellow",176000],
			["cl3_transit_black",176000],
			["cl3_transit_blue",176000],
			["cl3_transit_aqua",176000],
			["cl3_transit_babypink",176000], 
			["cl3_transit_red",176000], 
			["cl3_transit_burgundy",176000], 
			["cl3_transit_cardinal",176000],
			["cl3_transit_dark_green",176000], 
			["cl3_transit_gold",176000], 
			["cl3_transit_green",176000], 
			["cl3_transit_grey",176000],
			["cl3_transit_lavender",176000], 
			["cl3_transit_light_blue",176000], 
			["cl3_transit_light_yellow",176000], 
			["cl3_transit_lime",176000], 
			["cl3_transit_marina_blue",176000], 
			["cl3_transit_navy_blue",176000], 
			["cl3_transit_orange",176000], 
			["cl3_transit_purple",176000], 
			["cl3_transit_sand",176000], 
			["cl3_transit_silver",176000], 
			["cl3_transit_camo",176000],
			["cl3_transit_camo_urban",176000], 
			["cl3_transit_white",176000],
			["cl3_transit_violet",176000], 
			["cl3_transitnews",176000]
		];
	};
	
	
	
	case "Low_Budget_Cars_car":
	{
		_return =[
			["Jonzie_Mini_Cooper",10000],
			["A3L_PuntoRed",55000],
			["A3L_PuntoBlack",55000],
			["A3L_PuntoWhite",55000],
			["A3L_PuntoGrey",55000],
			["A3L_RegalBlack",52000],
			["A3L_RegalBlue",52000],
			["A3L_RegalOrange",52000],
			["A3L_RegalRed",52000],
			["A3L_RegalWhite",52000],
			["A3L_JeepWhiteBlack",65000],
			["A3L_JeepGreenBlack",65000],
			["A3L_JeepRedTan",65000],
			["A3L_JeepRedBlack",65000],
			["A3L_JeepGrayBlack",65000],
			["cl_honda_civic_vti_white",600000],
			["cl_honda_civic_vti_blue",600000],
			["cl_honda_civic_vti_black",600000],
			["cl_honda_civic_vti_red",600000],
			["cl3_lada_red",5500], 
			["cl3_lada_white",5500],
			["cl3_defender_110_yellow",20500], 
			["cl3_defender_110_red",20500], 
			["cl3_s1203_blue",7500],
			["cl_suv_black",9500],
			["cl3_volha_grey",6500],
			["cl3_volha_black",6500]
		];
	};
	
	case "BMW_shop": {
		_return = [
			//["cl_bmw_z4_2008_white",850000],
			//["cl_bmw_z4_2008_blue",850000],
		
			["cl3_e60_m5_yellow,950000"],
			["cl3_e60_m5_black",950000],
			["cl3_e60_m5_blue",950000],
			["cl3_e60_m5_aqua",950000],
			["cl3_e60_m5_babypink",950000],
			["cl3_e60_m5_red",950000],
			["cl3_e60_m5_burgundy",950000],
			["cl3_e60_m5_cardinal",950000],
			["cl3_e60_m5_dark_green",950000],
			["cl3_e60_m5_gold",950000],
			["cl3_e60_m5_green",950000],
			["cl3_e60_m5_grey",950000],
			["cl3_e60_m5_lavender",950000],
			["cl3_e60_m5_light_blue",950000],
			["cl3_e60_m5_light_yellow",950000],
			["cl3_e60_m5_lime",950000],
			["cl3_e60_m5_marina_blue",950000],
			["cl3_e60_m5_navy_blue",950000],
			["cl3_e60_m5_orange",950000],
			["cl3_e60_m5_purple",950000],
			["cl3_e60_m5_sand",950000],
			["cl3_e60_m5_silver",950000],
			["cl3_e60_m5_camo",950000],
			["cl3_e60_m5_camo_urban",950000],
			["cl3_e60_m5_white",950000],
			["cl3_e60_m5_violet",950000]
		];
	};
	
	
	
	
	case "Volkswagen_shop":
	{
		_return = [
			["cl_polo_gti_white",250000],
			["cl_polo_gti_blue",250000],
			["cl_polo_gti_black",250000],
			["cl_polo_gti_red",250000],
			["A3L_VolksWagenGolfGTired",450000],
			["A3L_VolksWagenGolfGTiblack",450000],
			["A3L_VolksWagenGolfGTiblue",450000],
			["A3L_VolksWagenGolfGTiwhite",450000],
			["cl_golf_mk2_white",450000],
			["cl_golf_mk2_blue",450000],
			["cl_golf_mk2_black",450000],
			["cl_golf_mk2_red",450000],
			["cl3_golf_learner_white",500000]
		];
	};
	
	
	
	case "Audi_shop":
	{
		_return = [	
			["cl_audi_r8_spyder_white",2300000],
			["cl_audi_r8_spyder_blue",2300000],
			["cl_audi_r8_spyder_black",2300000],
			["cl_audi_r8_spyder_red",2300000],
			["cl3_q7_black",170000],
            ["cl3_q7_blue",170000],
            ["cl3_q7_camo",170000],
            ["cl3_q7_green",170000],
            ["cl3_q7_orange",170000],
			["cl3_q7_white",170000],
            ["cl3_q7_yellow",170000],
			["cl3_q7_aqua",170000],
			["cl3_q7_babypink",170000],
			["cl3_q7_red",170000],
			["cl3_q7_burgundy",170000],
			["cl3_q7_cardinal",170000],
		    ["cl3_q7_dark_green",170000],
			["cl3_q7_gold",170000],
			["cl3_q7_grey",170000],
			["cl3_q7_lavender",170000],
			["cl3_q7_light_blue",170000],
			["cl3_q7_light_yellow",170000],
			["cl3_q7_lime",170000],
			["cl3_q7_marina_blue",170000],
			["cl3_q7_navy_blue",170000],
			["cl3_q7_purple",170000],
			["cl3_q7_sand",170000],
			["cl3_q7_silver",170000],
			["cl3_q7_camo_urban",170000],
			["cl3_q7_violet",170000],
			["Nhz_audia8limo",318000]
		];
	};
	
	case "Porsche_shop":
	{
		_return = [
		    ["cl_porsche_carrera_0gt_white",850000],
			["cl_porsche_carrera_gt_blue",850000],
			["cl_porsche_carrera_gt_black",850000],
			["cl_porsche_carrera_gt_red",850000],
			["S_PorscheRS_Black",650000],
			["S_PorscheRS_Yellow",650000],
			["S_PorscheRS_White",650000],
			["wirk_cayenne",270000]
		];
	};	
				
	case "Lamborghini_shop":
	{
		_return = [
			["cl_lamborghini_gt1_white",3300000],
			["cl_lamborghini_gt1_blue",3300000],
			["cl_lamborghini_gt1_black",3300000],
			["cl3_murcielago_black",5300000],
			["cl3_murcielago_blue",5300000],
			["cl3_murcielago_red",5300000],
			["cl3_murcielago_white",5300000],
			["cl3_lamborghini_gt1",5300000],
			["cl3_lamborghini_gt1_black",5300000],
			["cl3_lamborghini_gt1_blue",5300000],
			["cl3_lamborghini_gt1_red",5300000],
			["cl3_lamborghini_gt1_white",5300000],
			["cl3_reventon_yellow",5300000],
			["cl3_reventon_black",5300000], 
			["cl3_reventon_blue",5300000],			
			["cl3_reventon_aqua",5300000], 
			["cl3_reventon_babypink",5300000],
			["cl3_reventon_red",5300000],
			["cl3_reventon_burgundy",5300000], 
			["cl3_reventon_cardinal",5300000],
			["cl3_reventon_dark_green",5300000], 
			["cl3_reventon_gold",5300000], 
			["cl3_reventon_green",5300000], 
			["cl3_reventon_grey",5300000], 
			["cl3_reventon_lavender",5300000],
			["cl3_reventon_light_blue",5300000],
			["cl3_reventon_light_yellow",5300000], 
			["cl3_reventon_lime",5300000], 
			["cl3_reventon_marina_blue",5300000], 
			["cl3_reventon_navy_blue",5300000], 
			["cl3_reventon_orange",5300000], 
			["cl3_reventon_purple",5300000], 
			["cl3_reventon_sand",5300000], 
			["cl3_reventon_silver",5300000], 
			["cl3_reventon_camo",5300000],
			["cl3_reventon_camo_urban",5300000], 
			["cl3_reventon_white",5300000], 
			["cl3_reventon_violet",5300000], 
			["cl3_reventon_flame",5300000],
			["cl3_reventon_flame1",5300000],
			["cl3_reventon_flame2",5300000],
			["cl3_reventon_2tone1",5300000],
			["cl3_reventon_2tone2",5300000],
			["cl3_reventon_2tone3",5300000],
			["cl3_reventon_2tone4",5300000], 
			["cl3_reventon_2tone5",5300000]
			
		];
	};	

	case "Ferrari_shop":
	{
		_return = [
			["cl_ferrari_458_white",3250000],
			["cl_ferrari_458_blue",3250000],
			["cl_ferrari_458_black",3250000],
			["cl_ferrari_458_red",3250000],
			["ALFR_GeK_Pagani_Zonda",3250000]
			
		    ];
	};
	
	
	
	
	
	
	case "Range_Rover_shop":
	{
		_return = [
		
			["S_Rangerover_Black",500000],
			["S_Rangerover_Red",500000],
			["S_Rangerover_Blue",500000],
			["S_Rangerover_Green",500000],
		    ["S_Rangerover_Purple",500000],
			["S_Rangerover_Grey",500000],
			["S_Rangerover_Orange",500000],
			["S_Rangerover_White",500000],
		    ["cl_range_rover_white",500000],
			["cl_range_rover_blue",500000],
			["cl_range_rover_black",500000],
			["cl_range_rover_red",500000]
			];
	};
	
	
	case "Mercedes_shop":
	{
		_return = [
			["cl_mercedes_e63_amg_white",950000],
			["cl_mercedes_e63_amg_blue",950000],
			["cl_mercedes_e63_amg_black",950000],
			["cl_mercedes_e63_amg_red",950000],
			["S_McLarenP1_Black",1500000],
			["S_McLarenP1_Blue",1500000],
			["S_McLarenP1_Orange",1500000],
			["S_McLarenP1_White",1500000],
			["S_McLarenP1_Yellow",1500000],
			["S_McLarenP1_Silver",1500000]
		];
	};
	
	
	case "Trucker_Tony_truck":
	{
		_return =[
			["A3L_F350Black",305000],
			["A3L_F350Blue",305000],
			["A3L_F350Red",305000],
			["A3L_F350White",305000],
			["A3L_Dumptruck",520000],
			["C_Van_01_box_F",120000],
			["C_Van_01_transport_F",120000],
			["A3L_Bus",500000]	
		];
	};
	
	case "Aston_Martin_car":
	{
		_return =[
			["cl_aston_dbs_volante_white",850000],
			["cl_aston_dbs_volante_blue",850000],
			["cl_aston_dbs_volante_black",850000],
			["cl_aston_dbs_volante_red",850000],
			["S_Vantage_Red",650000],
			["S_Vantage_Blue",650000],
			["S_Vantage_Black",650000],
			["S_Vantage_Yellow",650000],
			["S_Vantage_LightBlue",650000],
			["S_Vantage_Purple",650000],
			["S_Vantage_White",650000]
		];
	};
	
	
	
	case "Autohaus_Lakeside_car":
	{
		_return =[
			["cl_insignia_white",550000],
			["cl_insignia_blue",550000],
			["cl_insignia_black",550000],
			["cl_insignia_red",550000],
			["A3L_VolvoS60RBlack",90000],
			["A3L_VolvoS60Rred",90000],
			["S_Skyline_Red",105000],
			["S_Skyline_Blue",105000],
			["S_Skyline_Black",105000],
			["S_Skyline_Yellow",105000],
			["S_Skyline_Purple",105000],
			["S_Skyline_White",105000],
			["A3L_RX7_Blue",150000],
			["A3L_RX7_Red",150000],
			["A3L_RX7_White",150000],
			["A3L_RX7_Black",150000],
			["A3L_AMC",99000],
			["A3L_AMXRed",99000],
			["A3L_AMXWhite",99000],
			["A3L_AMXBlue",99000],
			["A3L_AMXGL",99000],
			["A3L_Cooper_concept_blue",90000],
			["A3L_Cooper_concept_black",90000],
			["A3L_Cooper_concept_red",90000],
			["A3L_Cooper_concept_white",90000]
		];
	};
	
	
	
	
	
	
	
	
	
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",5000],
			["B_Heli_Light_01_F",800000]
		];

		if(license_civ_rebel) then
		{
		};
	};
	case "cop_car":
	{
		_return =
		[
			["IVORY_PRIUS",15000],
			//["IVORY_REV",100000],
			
			["A3L_TaurusFPBCSO",12500],
			["A3L_TaurusFPBLBCSO",12500],
			["A3L_CVPIFPBCSO",14500],
			["A3L_CVPIFPBLBCSO",14500],
			["A3L_EvoXFPBLBSO",17000],
			["A3L_SuburbanCSO",15500],
			["A3L_GrandCaravanUC",12500],
			["A3L_GrandCaravanUCBlack",12500],
			
			
			["A3L_TaurusUCBlack",12500],
			["A3L_TaurusUCGrey",12500],
			["A3L_TaurusUCWhite",12500],
			["A3L_TaurusUCBlue",12500],
			["A3L_TaurusUCRed",12500],
			
			["DAR_DAR_02FirebirdSSVPolice",12500],
			["DAR_CVPIAuxiliary",12500],
			["DAR_CVPISlick",12500],
			["DAR_CVPIPolice",12500],
			["DAR_ChargerPolice",12500],
			["DAR_ChargerPoliceStateSlick",15000],
			["DAR_ChargerPoliceState",12500],
			["DAR_ExplorerPolice",12500],
			["DAR_ExplorerPoliceStealth",12500],
			["DAR_TaurusPolice",12500],
			["DAR_ImpalaPoliceDet",12500],
			["DAR_ImpalaPolice",12500],
			["DAR_ImpalaPoliceSlick",12500],
			["DAR_SWATPolice",12500],
			
			
			["A3L_CVPIFPBPD",14500],
			["A3L_CVPIFPBCSO",14500],
			["A3L_CVPIFPBFG",14500],
			["A3L_CVPIFPBLBPD",14500],
			["A3L_CVPIFPBLBCSO",14500],
			["A3L_CVPIFPBLBFG",14500],
			["A3L_CVPIFPBLBSP",14500],
			["A3L_CVPIFPBLBSP2",14500],
			["A3L_ChargerLB",16000],
			
			
			
			
			["A3L_CVPIUC",15000],
			
			["A3L_CVPIUCWhite",15000],
			
			["A3L_CVPIUCBlack",15000],
			
			["A3L_CVPIGrey",15000],
			
			["A3L_CVPIUCRed",15000],
			
			["A3L_CVPIUCPink",15000],
			
			["A3L_CVPIUCBlue",15000],
			["A3L_Suburban",15000],
			
			["A3L_ChargerUC",16000],
			["A3L_ChargerUCWhite",16000],
			["cl3_dodge_charger_patrol",16000],
			["cl3_dodge_charger_etu",16000],
			["cl3_dodge_charger_traffic",16000],
			["cl3_dodge_charger_cn",16000],
			
			["A3L_jailBus",15000]
			

		];
	};
	case "civ_air":
	{
		_return =
		[
			["IVORY_T6A_1",300000],
			["C_Heli_Light_01_civil_F",300000],
			["ivory_b206",350000],
			["ivory_b206_news",400000],
			["IVORY_BELL512",500000],
			["O_Heli_Light_02_unarmed_F",750000],
			["IVORY_CRJ200_1",1000000],
			["IVORY_ERJ135_1",1000000],
			["IVORY_YAK42D_1",1000000]
		];
	};
	case "cop_air":
	{
		_return =
		[
			["A3L_POLB",450000],
			["ivory_b206_police",450000],
			["IVORY_BELL512_POLICE",850000]
		];
	};
	case "cop_airhq":
	{
		_return =
		[
			["A3L_POLB",450000],
			["ivory_b206_police",450000],
			["IVORY_BELL512_POLICE",850000]
		];
	};
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",30000],
			["C_Boat_Civil_01_F",175000],
			["A3L_Ship",700000],
			["A3L_Jetski",150000],
			["A3L_Jetski_yellow",150000]
		];
	};
	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",30000],
			["C_Boat_Civil_01_police_F",200000],
			["B_SDV_01_F",1000000]
		];
	};
};

_return;
