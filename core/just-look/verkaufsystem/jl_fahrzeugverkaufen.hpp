class jl_fahrzeugverkaufen {

	idd = 1999
	movingEnable = true;
	enableSimulation = true;
	onLoad="[] call jl_fnc_spielernaeheladen";
	
	class controlsBackground {
	
		class jl_autoverkaufen_hintergrund: life_RscText
		{
			idc = 1000;
			x = 3 * GUI_GRID_W + GUI_GRID_X;
			y = 2 * GUI_GRID_H + GUI_GRID_Y;
			w = 27.5 * GUI_GRID_W;
			h = 9.5 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.7};
		};
	};
	
	class controls {
	
		class jl_autoverkaufen_titel: life_RscText
		{
			idc = 1001;
			text = "Fahrzeug verkaufen:"; 
			x = 4 * GUI_GRID_W + GUI_GRID_X;
			y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 9.5 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
		class jl_autoverkaufen_typ: life_RscText
		{
			idc = 1002;
			text="";
			x = 14 * GUI_GRID_W + GUI_GRID_X;
			y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 11.5 * GUI_GRID_W;
			h = 2.5 * GUI_GRID_H;
		};
		class jl_autoverkaufen_verkaufspreis: life_RscText
		{
			idc = 1003;
			text = "Preis:"; 
			x = 4.5 * GUI_GRID_W + GUI_GRID_X;
			y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 7 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
		class jl_autoverkaufen_preiseingabe: life_RscEdit
		{
			idc = 1400;
			x = 7.5 * GUI_GRID_W + GUI_GRID_X;
			y = 5 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class jl_autoverkaufen_spielerauswaehlen: life_RscCombo
		{
			idc = 2100;
			x = 17.5 * GUI_GRID_W + GUI_GRID_X;
			y = 5 * GUI_GRID_H + GUI_GRID_Y;
			w = 11 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class jl_autoverkaufen_verkaufenbtn: life_RscButtonMenu
		{
			idc = 2400;
			text = "Verkauf anbieten";
			onButtonClick = "[1] call jl_fnc_fahrzeugVerkaufen.sqf;";
			
			x = 5.5 * GUI_GRID_W + GUI_GRID_X;
			y = 8 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class jl_autoverkaufen_abbrechen: life_RscButtonMenu
		{
			idc = 2401;
			text = "Abbrechen"; 
			onButtonClick = "closeDialog 0;";
			x = 20 * GUI_GRID_W + GUI_GRID_X;
			y = 8 * GUI_GRID_H + GUI_GRID_Y;
			w = 6 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
	};
};