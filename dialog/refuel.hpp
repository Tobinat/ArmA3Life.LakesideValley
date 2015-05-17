class refuel
{
	idd = 8000;
	name= "refuel";
	movingEnable = false;
	enableSimulation = true;
	
	class controlsBackground {
		class MainBackground: Life_RscText {
			idc = -1;
			x = 0.396875 * safezoneW + safezoneX;
			y = 0.401 * safezoneH + safezoneY;
			w = 0.159844 * safezoneW;
			h = 0.143 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
			text = "";
		};
	};
	
	class controls 
	{
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by [AMW] Alex, v1.063, #Dyjuby)
		////////////////////////////////////////////////////////

		class refuel_titel: Life_RscText
		{
			idc = 8000;
			text = "Tankstelle: Auftanken"; //--- ToDo: Localize;
			x = 0.396875 * safezoneW + safezoneX;
			y = 0.401 * safezoneH + safezoneY;
			w = 0.159844 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {0.3843,0.7019,0.8862,0.7};
		};
		class refuel_price_titel: Life_RscText
		{
			idc = 8001;
			text = "Preis:"; //--- ToDo: Localize;
			x = 0.402031 * safezoneW + safezoneX;
			y = 0.434 * safezoneH + safezoneY;
			w = 0.0670312 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class refuel_price: Life_RscText
		{
			idc = 8002;
			text = "0"; //--- ToDo: Localize;
			x = 0.474219 * safezoneW + safezoneX;
			y = 0.434 * safezoneH + safezoneY;
			w = 0.0721875 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class refuel_btn_ok: Life_RscButtonMenu
		{
			idc = 8400;
			text = "Auftanken"; //--- ToDo: Localize;
			x = 0.402031 * safezoneW + safezoneX;
			y = 0.511 * safezoneH + safezoneY;
			w = 0.061875 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {0.3843,0.7019,0.8862,0.7};
			onButtonClick = "[] spawn life_fnc_refuel";
		};
		class refuel_btn_cancel: Life_RscButtonMenu
		{
			idc = 8401;
			text = "Abbrechen"; //--- ToDo: Localize;
			x = 0.489687 * safezoneW + safezoneX;
			y = 0.511 * safezoneH + safezoneY;
			w = 0.061875 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {0.3843,0.7019,0.8862,0.7};
			onButtonClick = "closeDialog 0;";
		};
		class refuel_hint: Life_RscText
		{
			idc = 8003;
			text = "Soll für den angegeben Preis"; //--- ToDo: Localize;
			x = 0.402031 * safezoneW + safezoneX;
			y = 0.456 * safezoneH + safezoneY;
			w = 0.144375 * safezoneW;
			h = 0.033 * safezoneH;
		};
		class refuel_hint2: Life_RscText
		{
			idc = 8004;
			text = "getankt werden?"; //--- ToDo: Localize;
			x = 0.402031 * safezoneW + safezoneX;
			y = 0.478 * safezoneH + safezoneY;
			w = 0.134062 * safezoneW;
			h = 0.022 * safezoneH;
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////

	};
};