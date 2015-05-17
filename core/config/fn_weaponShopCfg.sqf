#include <macro.h>
/*
        File: fn_weaponShopCfg.sqf
        Author: Bryan "Tonic" Boardwine
       
        Description:
        Master configuration file for the weapon shops.
       
        Return:
        String: Close the menu
        Array:
        [Shop Name,
        [ //Array of items to add to the store
                [classname,Custom Name (set nil for default),price]
        ]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.
 
switch(_shop) do
{
       
	   
	   
	   
        case "med_supplies":
        {
                switch (true) do
                {
                        case (playerSide != independent): {"You are not an EMS"};
                        default {
                                ["EMS Supplies Shop",
                                        [
											["cse_bandage_basic",nil,5],
											["cse_packing_bandage",nil,5],
											["cse_bandageElastic",nil,9],
											["cse_personal_aid_kit",nil,20],
											["cse_tourniquet",nil,10],
											["cse_splint",nil,10],
											["cse_morphine",nil,10],
											["cse_atropine",nil,10],
											["cse_epinephrine",nil,15],
											["cse_plasma_iv",nil,20],
											["cse_plasma_iv_250",nil,22],
											["cse_plasma_iv_500",nil,25],
											["cse_blood_iv",nil,30],
											["cse_blood_iv_250",nil,32],
											["cse_blood_iv_500",nil,33],
											["cse_saline_iv",nil,30],
											["cse_saline_iv_250",nil,32],
											["cse_saline_iv_500",nil,35],
											["cse_quikclot",nil,35],
											["cse_nasopharyngeal_tube",nil,40],
											["cse_opa",nil,20],
											["cse_liquidSkin",nil,45],
											["cse_chestseal",nil,40]
                                        ]
                                ];
                        };
                };
        };
		case "med_basic":
        {
                switch (true) do
                {
                        case (playerSide != independent): {"You are not an EMS"};
                        default {
                                ["EMS Basic Shop",
                                        [
											["A3L_Extinguisher",nil,100],
											["ItemGPS",nil,100],
											["Binocular",nil,150],
											["ToolKit",nil,250],
											["Chemlight_red",nil,100],
											["NVGoggles",nil,120],
											["tf_ex8550",nil,2000]
                                        ]
                                ];
                        };
                };
        };
	
	
	case "cop_water":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        default
                        {
                                ["Unterwasser Shop",
                                        [
												["U_B_Wetsuit",nil,2000],												
                                                ["G_Diving",nil,500],											
												["V_RebreatherB",nil,5000],											
												["arifle_SDAR_F","Turtle Harpoon",30000],
												["20Rnd_556x45_UW_mag","Underwater magazine",1200]
                                        ]
                                ];
                        };
                };
        };
	
	
	
	
		
          case "cop_basic":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        default
                        {
                                ["Junior Deputy Shop",
                                        [
												["ToolKit",nil,500],
												["tf_anarc210",nil,500],
												
                                                ["A3L_Glock17",nil,2600],
												["A3L_Glock17mag",nil,300],
												
                                                ["Taser_26","Taser",1000],
												
                                                ["26_cartridge",nil,50],
                                                ["Chemlight_red",nil,100],
												
                                                ["Binocular",nil,150],
                                                ["ItemGPS",nil,100],
												["cse_bandage_basic",nil,10],
                                                ["cse_tourniquet",nil,10],
                                                ["NVGoggles",nil,2000],
												["tf_ex8550",nil,2000]
                                        ]
                                ];
                        };
                };
        };
         case "cop_patrol":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a deputy!"};
                        case (__GETC__(life_coplevel) < 2): {"You are not at a deputy rank!"};
                        default
                        {
                                ["Deputy Shop",
                                        [
                                                ["A3L_MP5",nil,4500],
												["A3L_MP5mag",nil,500],	
												["A3L_RedDot",nil,500],
												
                                                ["A3L_Glock17",nil,2600],
												["A3L_Glock17mag",nil,300],
                                                ["Taser_26","Taser",1000],
											
												["26_cartridge",nil,50],
                                                ["Binocular",nil,150],
                                                ["ItemGPS",nil,100],
                                                ["ToolKit",nil,250],
                                                ["NVGoggles",nil,2000]
                                                
                                        ]
                                ];
                        };
                };
        };
         case "cop_sergeant":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 3): {"You are not at a sergeant rank!"};
                        default
                        {
                                ["Sergeant Shop",
                                        [
                                                ["A3L_M4A3",nil,8000],
                                                ["A3L_M4mag",nil,650],
                                                ["A3L_M4Flashlight",nil,500],
												["A3L_CCO",nil,500],
												["A3L_RedDot",nil,500],
                                                ["Taser_26","Taser",1000],
                                                ["26_cartridge",nil,50],
                                                ["Chemlight_red",nil,100],
												["SmokeShellBlue",nil,1000],
                                                ["Binocular",nil,150],
                                                ["ItemGPS",nil,100],
                                                ["ToolKit",nil,250],
                                                ["NVGoggles",nil,2000]
                                        ]
                                ];
                        };
                };
        };
		
      case "cop_swat":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 4): {"You are not at a sergeant rank!"};
                        default
                        {
                                ["SERT Shop",
                                        [
                                                ["A3L_M4A3",nil,8000],
                                                ["A3L_M4mag",nil,650],
                                                ["A3L_M4Flashlight",nil,500],
												["A3L_CCO",nil,500],
												["A3L_CZ550",nil,75000],
												["A3L_CZ550mag",nil,50],
												["A3L_CZ550Scope",nil,36000],
												["A3L_RedDot",nil,500]
                                        ]
                                ];
                        };
                };
        };
      
         case "rebel":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_rebel): {"You don't have a Rebel training license!"};
                        default
                        {
                                ["Mohammed's Jihadi Shop",
                                        [
											["A3L_SA61",nil,45000],
											["A3L_SA61mag",nil,900],
											["A3L_UZI",nil,37250],
											["A3L_UZImag",nil,950],
											["A3L_AK47",nil,120000],
											["A3L_AK47mag",nil,2500],
											["A3L_AK47s",nil,135000],
											["A3L_AK47sgold",nil,175000],											
											["A3L_AK47smag",nil,2750],		
											["A3L_AKS74",nil,190000],
											["A3L_AK47sMag",nil,2750],
											["A3L_RedDot",nil,8500],
											["A3L_CZ550",nil,75000],
                                            ["A3L_CZ550mag",nil,50],
                                            ["A3L_CZ550Scope",nil,36000],
											["arifle_SDAR_F","Turtle Harpoon",30000],
											["20Rnd_556x45_UW_mag","Underwater magazine",1200],
											["tf_fadak",nil,100],
											["tf_mr3000",nil,20000]
										]
                                ];
                        };
                };
        };
       
         case "gun":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_gun): {"You don't have a Firearms license!"};
                        default
                        {
                                ["Billy Joe's Firearms",
                                        [
                                                ["A3L_Glock17",nil,17600],
												["A3L_Glock17mag",nil,500],
												["A3L_M9",nil,17200],
												["A3L_M9mag",nil,400],
												["A3L_makarov",nil,14500],
												["A3L_makarovmag",nil,250],
												["A3L_1911",nil,18000],
												["A3L_1911mag",nil,600],
												["A3L_Taurus",nil,32500],
												["A3L_TaurusGold",nil,35000],
												["A3L_Taurusmag",nil,970]
                                        ]
                                ];
                        };
                };
        };
       
		
        case "rifle":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_rifle): {"You don't have a Rifle license!"};
                        default
                        {
                                ["Hunting Rifle Shop",
                                        [
                                                ["A3L_CZ550",nil,7500],
                                                ["A3L_CZ550mag",nil,100],
                                                ["A3L_CZ550Scope",nil,2500]
                                        ]
                                ];
                        };
                };
        };		
       
        case "gang":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        default
                        {
                                ["Hideout Armament",
                                        [
                                                ["A3L_Glock17",nil,7600],
												["A3L_Glock17mag",nil,500],
												
												["A3L_UZI",nil,12500],
												["A3L_UZImag",nil,500]												
                                        ]
                                ];
                        };
                };
        };
       
        case "genstore":
        {
                ["Altis General Store",
                        [
								["ItemMap",nil,29],
								["cse_bandage_basic",nil,100],
                                ["tf_fadak",nil,500],
                                ["Binocular",nil,150],
                                ["ItemGPS",nil,100],
                                ["ToolKit",nil,250],
                                ["FirstAidKit",nil,150],
                                ["NVGoggles_OPFOR",nil,2000],
                                ["NVGoggles",nil,2000],
                                ["Chemlight_red",nil,300],
                                ["Chemlight_yellow",nil,300],
                                ["Chemlight_green",nil,300],
                                ["Chemlight_blue",nil,300]
                        ]
                ];
        };
		
		case "signstore":
        {
                ["Sign Shop",
                        [
                                ["A3L_sign",nil,500],
                                ["A3L_sign2",nil,150],
                                ["A3L_sign3",nil,100]
                        ]
                ];
        };

};