/*
	File: fn_vehicleWeightCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle weight.
*/
private["_className"];
_className = [_this,0,"",[""]] call BIS_fnc_param;

switch (_className) do
{
	
	case "B_G_Offroad_01_F": {65};
	
	
	
	
	
	
	
	case "I_G_Van_01_transport_F": {100};
	case "C_Van_01_box_F": {150};
	
	
	case "C_Boat_Civil_01_rescue_F": {85};
	case "B_Truck_01_box_F": {800};
	
	
	case "B_MRAP_01_F": {65};
	case "O_MRAP_02_F": {60};
	case "I_MRAP_03_F": {58};
	
	
	
	//Kart Shop
	
	case "C_Kart_01_Blu_F": {10};
	case "C_Kart_01_Fuel_F": {10};
	case "C_Kart_01_Red_F": {10};
	case "C_Kart_01_Vrana_F": {10};
	case "A3L_Karts": {5};	
	
	//Med Shop
	
	case "A3L_CVPILBFD": {25};
	case "Jonzie_Ambulance": {50};
	case "A3L_AmberLamps": {25};
	case "A3L_Laddertruck": {25};
	case "DAR_TahoeEMS": {25};
	case "DAR_TahoeEMSBase": {25};
	case "I_Truck_02_medical_F": {25};
	case "O_Truck_03_medical_F": {25};
	case "B_Truck_01_medical_F": {25};
	case "med_prius": {25};
	
	
	//Med Air Hs
	case "ivory_b206_rescue": {25};
	case "IVORY_BELL512_RESCUE": {25};
	case "C_Heli_Light_01_civil_F": {25};
	case "O_Heli_Light_02_unarmed_F": {25};
	case "O_Heli_Transport_04_medevac_F": {25};
	
	
	//Civ car
	case "B_Quadbike_01_F": {25};
	case "C_Hatchback_01_F": {40};
	case "cl_insignia_white": {25};
	case "cl_insignia_blue": {25};
	case "cl_insignia_black": {25};
	case "cl_insignia_red": {25};
	case "A3L_VolvoS60RBlack": {25};
	case "A3L_VolvoS60Rred": {25};
	case "S_Skyline_Red": {35};
	case "S_Skyline_Blue": {35};
	case "S_Skyline_Black": {35};
	case "S_Skyline_Yellow": {35};
	case "S_Skyline_Purple": {35};
	case "S_Skyline_White": {35};
	case "A3L_RX7_Blue": {25};
	case "A3L_RX7_Red": {25};
	case "A3L_RX7_White": {25};
	case "A3L_RX7_Black": {25};
	case "A3L_AMC": {35};
	case "A3L_AMXRed": {35};
	case "A3L_AMXWhite": {35};
	case "A3L_AMXBlue": {35};
	case "A3L_AMXGL": {35};
	case "A3L_Cooper_concept_blue": {25};
	case "A3L_Cooper_concept_black": {25};
	case "A3L_Cooper_concept_red": {25};
	case "A3L_Cooper_concept_white": {25};
	case "C_Offroad_01_F": {65};
	case "C_SUV_01_F": {50};
	case "C_Hatchback_01_sport_F": {45};
	case "C_Van_01_transport_F": {50};
	case "wirk_h3_limo": {70};
	
	
	
	
	
	//Truck
	case "I_Truck_02_transport_F": {200}; //650000
	case "I_Truck_02_covered_F": {150}; //1560000
	case "B_Truck_01_transport_F": {350}; //2200000
	case "B_Truck_01_covered_F": {400}; //3500000
	case "O_Truck_03_transport_F": {200}; //1900000
	case "O_Truck_03_covered_F": {400}; //7000000
	case "O_Truck_03_device_F": {420}; //8000000
	case "A3L_F350Black": {85}; //305000
	case "A3L_F350Blue": {85}; //305000
	case "A3L_F350Red": {85}; //305000
	case "A3L_F350White": {85}; //305000
	case "A3L_TowTruck_civ": {20}; //20000
	case "A3L_Dumptruck": {200}; //520000
	case "A3L_Dumptruck_w": {200}; //520000
	case "A3L_Dumptruck_b": {200}; //520000
	case "A3L_Dumptruck_r": {200}; //520000
	case "A3L_Bus": {100}; //750000
	case "ALFR_GeK_Scania_420":{200};//520000
	case "ALFR_GeK_Volvo_FH16_2012": {200};//520000


	//dezzie car
	case "IVORY_PRIUS": {25};
	case "IVORY_R8SPYDER": {25};
	case "IVORY_R8": {25};
	case "IVORY_REV": {25};

	

	//AutoSalonThomsencar
	case "S_McLarenP1_Black": {25};
	case "S_McLarenP1_Blue": {25};
	case "S_McLarenP1_Orange": {25};
	case "S_McLarenP1_White": {25};
	case "S_McLarenP1_Yellow": {25};
	case "S_McLarenP1_Silver": {25};
	case "A3L_Veyron_red": {25};
	case "A3L_Veyron_black": {25};
	case "A3L_Veyron_white": {25};
	case "A3L_Veyron_orange": {25};
	case "cl_veyron_blk_wht": {25};
	case "cl_veyron_wht_lwht": {25};
	case "cl_veyron_lblue_lblue": {25};
	case "cl_veyron_black": {25};
	case "cl_veyron_brn_blk": {25};


	//Chevroletcar
	case "A3L_SuburbanWhite": {45};
	case "A3L_SuburbanBlue": {45};
	case "A3L_SuburbanRed": {45};
	case "A3L_SuburbanBlack": {45};
	case "A3L_SuburbanGrey": {45};
	case "A3L_SuburbanOrange": {45};
	case "A3L_TahoeWhite": {45};
	case "A3L_TahoeRed": {45};
	case "A3L_TahoeBlue": {45};
	case "A3L_Camaro": {55};

	
	
	
	//Fcar
	case "A3L_FordKaBlue": {35};
	case "A3L_FordKaRed": {35};
	case "A3L_FordKaBlack": {35};
	case "A3L_FordKaWhite": {35};
	case "A3L_FordKaGrey": {35};
	case "A3L_CVWhite": {25};
	case "A3L_CVBlack": {25};
	case "A3L_CVGrey": {25};
	case "A3L_CVRed": {25};
	case "A3L_CVPink": {25};
	case "A3L_CVBlue": {25};
	case "A3L_Taurus": {60};
	case "A3L_TaurusBlack": {60};
	case "A3L_TaurusBlue": {60};
	case "A3L_TaurusRed": {60};
	case "A3L_TaurusWhite": {60};
	case "A3L_Escort": {25};
	case "A3L_EscortBlack": {25};
	case "A3L_EscortBlue": {25};
	case "A3L_EscortWhite": {25};
	case "A3L_EscortPink": {25};
	 case "cl3_transit_yellow": {150};
    case "cl3_transit_black": {150};
	case "cl3_transit_blue": {150};
	case "cl3_transit_aqua": {150};
	case "cl3_transit_babypink": {150};
	case "cl3_transit_red": {150};
	case "cl3_transit_burgundy": {150};
	case "cl3_transit_cardinal": {150};
	case "cl3_transit_dark_green": {150};
	case "cl3_transit_gold": {150};
	case "cl3_transit_green": {150};
	case "cl3_transit_grey": {150};
	case "cl3_transit_lavender": {150};
	case "cl3_transit_light_blue": {150}; 
	case "cl3_transit_light_yellow": {150}; 
	case "cl3_transit_lime": {150};
	case "cl3_transit_marina_blue": {150}; 
	case "cl3_transit_navy_blue": {150};
	case "cl3_transit_orange": {150};
	case "cl3_transit_purple": {150};
	case "cl3_transit_sand": {150};
	case "cl3_transit_silver": {150};
	case "cl3_transit_camo": {150};
	case "cl3_transit_camo_urban": {150};
	case "cl3_transit_white": {150}; 
	case "cl3_transit_violet": {150};
	case "cl3_transitnews": {150};

	

	//Dogdecar
	case "A3L_GrandCaravan": {25};
	case "A3L_GrandCaravanBlk": {25};
	case "A3L_GrandCaravanBlue": {25};
	case "A3L_GrandCaravanGreen": {25};
	case "A3L_GrandCaravanRed": {25};
	case "A3L_GrandCaravanPurple": {25};
	
	case "A3L_ChallengerGreen": {60};
	case "A3L_ChallengerRed": {60};
	case "A3L_ChallengerWhite": {60};
	//case "A3L_ChallengerBlack": {60};
	case "A3L_ChallengerBlue": {60};
	case "A3L_ChargerBlack": {60};
	case "A3L_ChargerWhit": {60};
	case "A3L_ChargerCstm": {60};
	case "Jonzie_Viper": {60};
	
	
	
	//LowBudgetCarscar
	case "Jonzie_Mini_Cooper": {25};
	case "A3L_PuntoRed": {35};
	case "A3L_PuntoBlack": {35};
	case "A3L_PuntoWhite": {35};
	case "A3L_PuntoGrey": {35};
	case "A3L_RegalBlack": {35};
	case "A3L_RegalBlue": {35};
	case "A3L_RegalOrange": {35};
	case "A3L_RegalRed": {35};
	case "A3L_RegalWhite": {35};
	case "A3L_JeepWhiteBlack": {35};
	case "A3L_JeepGreenBlack": {35};
	case "A3L_JeepRedTan": {35};
	case "A3L_JeepRedBlack": {35};
	case "A3L_JeepGrayBlack": {35};
	case "cl_honda_civic_vti_white": {35};
	case "cl_honda_civic_vti_blue": {35};
	case "cl_honda_civic_vti_black": {35};
	case "cl_honda_civic_vti_red": {35};
	case "cl3_lada_red": {35};
	case "cl3_lada_white": {35};
	case "cl3_defender_110_yellow": {35};
	case "cl3_defender_110_red": {35};
	case "cl3_s1203_blue": {35};
	//case "cl3_suv_black": {35};
	case "cl3_volha_grey": {35};
	case "cl3_volha_black": {35};

	
	

	//BMWshop
	case "cl_bmw_z4_2008_white": {25};
	case "cl_bmw_z4_2008_blue": {25};
	case "cl3_e60_m5_yellow": {35};
	case "cl3_e60_m5_black": {35};
	case "cl3_e60_m5_blue": {35};
	case "cl3_e60_m5_aqua": {35};
	case "cl3_e60_m5_babypink": {35};
	case "cl3_e60_m5_red": {35};
	case "cl3_e60_m5_burgundy": {35};
	case "cl3_e60_m5_cardinal": {35};
	case "cl3_e60_m5_dark_green": {35};
	case "cl3_e60_m5_gold": {35};
	case "cl3_e60_m5_green": {35};
	case "cl3_e60_m5_grey": {35};
	case "cl3_e60_m5_lavender": {35};
	case "cl3_e60_m5_light_blue": {35};
	case "cl3_e60_m5_light_yellow": {35};
	case "cl3_e60_m5_lime": {35};
	case "cl3_e60_m5_marina_blue": {35};
	case "cl3_e60_m5_navy_blue": {35};
	case "cl3_e60_m5_orange": {35};
	case "cl3_e60_m5_purple": {35};
	case "cl3_e60_m5_sand": {35};
	case "cl3_e60_m5_silver": {35};
	case "cl3_e60_m5_camo": {35};
	case "cl3_e60_m5_camo_urban": {35};
	case "cl3_e60_m5_white": {35};
	case "cl3_e60_m5_violet": {35};

	
	
	
	//Volkswagenshop
	case "cl_polo_gti_white": {25};
	case "cl_polo_gti_blue": {25};
	case "cl_polo_gti_black": {25};
	case "cl_polo_gti_red": {25};
	case "cl_golf_mk2_white": {25};
	case "cl_golf_mk2_blue": {25};
	case "cl_golf_mk2_black": {25};
	case "cl_golf_mk2_red": {25};
	case "cl3_golf_learner_white": {25};
	case "A3L_VolksWagenGolfGTired": {35};
	case "A3L_VolksWagenGolfGTiblack": {35};
	case "A3L_VolksWagenGolfGTiblue": {35};
    case "A3L_VolksWagenGolfGTiwhite": {35};
	

	//Audishop
	case "cl_audi_r8_spyder_white": {25};
	case "cl_audi_r8_spyder_blue": {25};
	case "cl_audi_r8_spyder_black": {25};
	case "cl_audi_r8_spyder_red": {25};
	case "cl3_q7_black": {55};
	case "cl3_q7_blue": {55};
	case "cl3_q7_camo": {55};
	case "cl3_q7_green": {55};
	case "cl3_q7_orange": {55};
	case "cl3_q7_white": {55};
	case "cl3_q7_yellow": {55};
	case "cl3_q7_aqua": {55};
	case "cl3_q7_babypink": {55};
	case "cl3_q7_red": {55};
	case "cl3_q7_burgundy": {55};
    case "cl3_q7_cardinal": {55};
	case "cl3_q7_dark_green": {55};
	case "cl3_q7_gold": {55};
	case "cl3_q7_grey": {55};
	case "cl3_q7_lavender": {55};
    case "cl3_q7_light_blue": {55};
	case "cl3_q7_light_yellow": {55};
	case "cl3_q7_lime": {55};
	case "cl3_q7_marina_blue": {55};
	case "cl3_q7_navy_blue": {55};
	case "cl3_q7_purple": {55};
	case "cl3_q7_sand": {55};
	case "cl3_q7_silver": {55};
	case "cl3_q7_camo_urban": {55};
	case "cl3_q7_violet": {55};
	case "Nhz_audia8limo": {55};

	
	
	
	//Porscheshop
	case "S_PorscheRS_Black": {25};
	case "S_PorscheRS_Yellow": {25};
	case "S_PorscheRS_White": {25};
	case "cl_porsche_carrera_0gt_white": {25};
	case "cl_porsche_carrera_gt_blue": {25};
	case "cl_porsche_carrera_gt_black": {25};
	case "cl_porsche_carrera_gt_red": {25};
	case "wirk_cayenne": {100};
	
	
	

	//Lamborghinishop
	case "cl_lamborghini_gt1_white": {25};
	case "cl_lamborghini_gt1_blue": {25};
	case "cl_lamborghini_gt1_black": {25};
	case "cl3_murcielago_black": {25};
	case "cl3_murcielago_blue": {55};
	case "cl3_murcielago_red": {55};
	case "cl3_murcielago_white": {55};
	case "cl3_lamborghini_gt1": {55};
	case "cl3_lamborghini_gt1_black": {55};
	case "cl3_lamborghini_gt1_blue": {55};
	case "cl3_lamborghini_gt1_red": {55};
	case "cl3_lamborghini_gt1_white": {55};
	case "cl3_reventon_yellow": {55};
	case "cl3_reventon_black": {55};
	case "cl3_reventon_blue": {55};
    case "cl3_reventon_aqua": {55};
	case "cl3_reventon_babypink": {55};
	case "cl3_reventon_red": {55};
	case "cl3_reventon_burgundy": {55};
	case "cl3_reventon_cardinal": {55};
    case "cl3_reventon_dark_green": {55};
	case "cl3_reventon_gold": {55};
	case "cl3_reventon_green": {55};
	case "cl3_reventon_grey": {55};
	case "cl3_reventon_lavender": {55};
	case "cl3_reventon_light_blue": {55};
	case "cl3_reventon_light_yellow": {55};
	case "cl3_reventon_lime": {55};
	case "cl3_reventon_marina_blue": {55};
	case "cl3_reventon_navy_blue": {55};
	case "cl3_reventon_orange": {55};
    case "cl3_reventon_purple": {55};
	case "cl3_reventon_sand": {55};
	case "cl3_reventon_silver": {55};
	case "cl3_reventon_camo": {55};
	case "cl3_reventon_camo_urban": {55};
    case "cl3_reventon_white": {55};
	case "cl3_reventon_violet": {55};
	case "cl3_reventon_flame": {55};
	case "cl3_reventon_flame1": {55};
	case "cl3_reventon_flame2": {55};
	case "cl3_reventon_2tone1": {55};
	case "cl3_reventon_2tone2": {55};
	case "cl3_reventon_2tone3": {55};
	case "cl3_reventon_2tone4": {55};
	case "cl3_reventon_2tone5": {55};

	
	
	
	
	//Ferrarishop
	case "cl_ferrari_458_white": {55};
	case "cl_ferrari_458_blue": {55};
	case "cl_ferrari_458_black": {55};
	case "cl_ferrari_458_red": {55};
	case "ALFR_GeK_Pagani_Zonda": {55};
	
	
	
	
	//RangeRovershop
	case "cl_range_rover_white": {20};
	case "cl_range_rover_blue": {20};
	case "cl_range_rover_black": {20};
	case "cl_range_rover_red": {20};
	case "S_Rangerover_Black": {25};
	case "S_Rangerover_Red": {25};
	case "S_Rangerover_Blue": {25};
	case "S_Rangerover_Green": {25};
	case "S_Rangerover_Purple": {25};
	case "S_Rangerover_Grey": {25};
	case "S_Rangerover_Orange": {25};
	case "S_Rangerover_White": {25};
	
	
	//Mercedesshop
	case "cl_mercedes_e63_amg_white": {55};
	case "cl_mercedes_e63_amg_blue": {55};
	case "cl_mercedes_e63_amg_black": {55};
	case "cl_mercedes_e63_amg_red": {55};
	case "S_McLarenP1_Black": {55};
	case "S_McLarenP1_Blue": {55};
	case "S_McLarenP1_Orange": {55};
	case "S_McLarenP1_White": {55};
	case "S_McLarenP1_Yellow": {55};
	case "S_McLarenP1_Silver": {55};
	
	
	
	//AstonMartincar
	case "cl_aston_dbs_volante_white": {25};
	case "cl_aston_dbs_volante_blue": {25};
	case "cl_aston_dbs_volante_black": {25};
	case "cl_aston_dbs_volante_red": {25};
	case "S_Vantage_Red": {25};
	case "S_Vantage_Blue": {25};
	case "S_Vantage_Yellow": {25};
	case "S_Vantage_Black": {25};
	case "S_Vantage_LightBlue": {25};
	case "S_Vantage_Purple": {25};
	case "S_Vantage_White": {25};
	
	
	
	
	
	
	
	// Civship
	case "A3L_Ship": {100};
	case "A3L_Jetski_yellow": {2};
	case "A3L_Jetski": {2};
	case "C_Rubberboat": {45};
	case "B_SDV_01_F": {45};
	case "C_Boat_Civil_01_F": {85};
	
	
	
	//copship
	case "B_Boat_Transport_01_F": {45};
	case "C_Boat_Civil_01_police_F": {85};
	case "I_Boat_Armed_01_minigun_F": {175};
	
	
	
	
	//jobTankstelle
	case "C_Van_01_fuel_F": {60};
	case "B_Truck_01_fuel_F": {60};
	
	
	//jobTaxi
	case "A3L_EscortTaxi": {25};
	
	//adaccar
	case "A3L_TowTruck_ADAC": {20};
	case "cl3_transit_adac": {150};
	
	
	//adacheli
	case "O_Heli_Transport_04_F": {10};
	
	
	
	
	
	
	
	
	// copcar
	case "A3L_Veyron": {25};
	case "A3L_TaurusFPBLBPD": {25};
	case "A3L_TaurusFPBLBCSO": {25};
	case "A3L_TaurusFPBPD": {25};
	case "A3L_TaurusFPBPDGM": {25};
	case "A3L_TaurusFPBCSO": {25};
	case "A3L_TaurusUCBlack": {25};
	case "A3L_TaurusUCGrey": {25};
	case "A3L_TaurusUCWhite": {25};
	case "A3L_TaurusUCBlue": {25};
	case "A3L_CVPIFPBPD": {25};
	case "A3L_CVPIFPBCSO": {25};
	case "A3L_CVPIFPBFG": {25};
	case "A3L_CVPIFPBLBPD": {25};
	case "A3L_CVPIFPBLBFG": {25};
	case "A3L_TahoeUCPB": {25};
	case "A3L_TahoeUC": {25};
	case "A3L_TahoeUCGMPB": {25};
	case "A3L_TahoeCSOLBPB": {25};
	case "A3L_jailBus": {25};
	case "A3L_Suburban": {25};
	case "A3L_SuburbanCSO": {25};
	case "A3L_SuburbanFG": {25};
	case "A3L_ChargerUC": {25};
	case "A3L_ChargerUCWhite": {25};
	case "A3L_CVPIUC": {25};
	case "A3L_CVPIUCBlack": {25};
	case "A3L_CVPIUCWhite": {25};
	case "A3L_CVPIUCGrey": {25};
	case "A3L_CVPIUCRed": {25};
	case "A3L_CVPIUCPink": {25};
	case "A3L_CVPIUCBlue": {25};
	case "A3L_EvoXFPBLBSO": {25};
	case "A3L_GrandCaravanUC": {25};
	case "A3L_GrandCaravanUCBlack": {25};
	case "GeK_TLC100": {85};
	
	
	//doneter
	case "A3L_Dumptruck_d": {300};
	case "B_Heli_Light_01_F": {10};
	case "I_Heli_Transport_02_F": {20};
	case "O_Boat_Armed_01_hmg_F": {175};

	case "B_G_Boat_Transport_01_F": {45};
	
	
	
	
	case "Land_CargoBox_V1_F": {5000};
	case "Box_IND_Grenades_F": {350};
	case "B_supplyCrate_F": {700};
	
	default {-1};
};