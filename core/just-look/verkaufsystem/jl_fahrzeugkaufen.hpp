class jl_fahrzeugkaufen {

	idd = 1999
	movingEnable = true;
	enableSimulation = true;
	
	
	class controlsBackground 
	{
	
		class jl_fahrzeugverkaufen_hintergrund: life_RscText
			{
				idc = 1000;
				text="";
				x = 5.5 * GUI_GRID_W + GUI_GRID_X;
				y = -3.5 * GUI_GRID_H + GUI_GRID_Y;
				w = 20 * GUI_GRID_W;
				h = 6.5 * GUI_GRID_H;
				colorBackground[] = {0,0,0,0.7};
			};
	};
	
	class controls
	{
	

		class jl_fahrzeugkaufen_titel: life_RscText
		{
			idc = 1001;
			text = "Es wird dir ein Fahrzeug angeboten:";
			x = 6 * GUI_GRID_W + GUI_GRID_X;
			y = -3 * GUI_GRID_H + GUI_GRID_Y;
			w = 19 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class jl_fahrzeugkaufen_titel2: life_RscText
		{
			idc = 1002;
			text="";
			x = 6.5 * GUI_GRID_W + GUI_GRID_X;
			y = -1.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 9.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class jl_fahrzeugkaufen_titel3: life_RscText
		{
			idc = 1003;
			text = "Preis:";
			x = 6 * GUI_GRID_W + GUI_GRID_X;
			y = -0.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 3 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class jl_fahrzeugkaufen_titel4: life_RscText
		{
			idc = 1004;
			text="";
			x = 9 * GUI_GRID_W + GUI_GRID_X;
			y = -0.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 11 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class jl_fahrzeugkaufen_annehmen: life_RscButtonMenu
		{
			idc = 2400;
			text = "Annehmen"; 
			onButtonClick = "[2] call jl_fnc_fahrzeugkaufen";
			x = 8 * GUI_GRID_W + GUI_GRID_X;
			y = 1 * GUI_GRID_H + GUI_GRID_Y;
			w = 6 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class jl_fahrzeugkaufen_ablehnen: life_RscButtonMenu
		{
			idc = 2401;
			text = "Ablehnen"; 
			onButtonClick = "[3] call jl_fnc_fahrzeugkaufen";
			x = 16.5 * GUI_GRID_W + GUI_GRID_X;
			y = 1 * GUI_GRID_H + GUI_GRID_Y;
			w = 5.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};

	
	};
	
	
};