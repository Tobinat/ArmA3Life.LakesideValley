class jl_taxianfrage {

	idd = 88888;
	name = "jl_taxianfrage";
	movingEnable = false;
	enableSimulation = true;
	
	
	class controlsBackground{
		class jl_taxianfragebackground: Life_RscText
			{
				idc = 3750;
				text="";
				x = 5.5 * GUI_GRID_W + GUI_GRID_X;
				y = -4 * GUI_GRID_H + GUI_GRID_Y;
				w = 20.5 * GUI_GRID_W;
				h = 8 * GUI_GRID_H;
				colorBackground[] = {0,0,0,0.7};
				
			};
	
	};
	
	
	class controls {
	
		class jl_taxianfragetitel: Life_RscText
			{
				idc = 3751;
				text = "Taxianfrage";
				x = 6.5 * GUI_GRID_W + GUI_GRID_X;
				y = -3.5 * GUI_GRID_H + GUI_GRID_Y;
				w = 5.5 * GUI_GRID_W;
				h = 1 * GUI_GRID_H;
			};
			
		class jl_taxianfrageKundenname: Life_RscText
			{
				idc = 3752;
				text="";
				x = 6.5 * GUI_GRID_W + GUI_GRID_X;
				y = -2 * GUI_GRID_H + GUI_GRID_Y;
				w = 11 * GUI_GRID_W;
				h = 1 * GUI_GRID_H;
			};
			
		class jl_taxianfrageKundendistanz: Life_RscText
			{
				idc = 3753;
				x = 18.5 * GUI_GRID_W + GUI_GRID_X;
				y = -2 * GUI_GRID_H + GUI_GRID_Y;
				w = 5.5 * GUI_GRID_W;
				h = 1 * GUI_GRID_H;
			};
			
		class jl_taxianfrageakzeptieren: Life_RscButtonMenu
			{
				idc = 3754;
				text = "Akzeptieren";
				onButtonClick = "closeDialog 0;[[true,getPlayerUID player,position player,name player],""jl_fnc_handleTaxiFahrerAntwort"",kundenuid,false] spawn life_fnc_MP;[[3,getPlayerUID player],""JL_fnc_handlealleTaxis"",false,false] spawn life_fnc_MP;taxiused=true;";
				x = 7 * GUI_GRID_W + GUI_GRID_X;
				y = 0.5 * GUI_GRID_H + GUI_GRID_Y;
				w = 7.5 * GUI_GRID_W;
				h = 1.5 * GUI_GRID_H;
			};
			
		class jl_taxianfrageablehnen: Life_RscButtonMenu
			{
				idc = 3755;
				text = "Ablehnen"; 
				x = 16 * GUI_GRID_W + GUI_GRID_X;
				y = 0.5 * GUI_GRID_H + GUI_GRID_Y;
				w = 7 * GUI_GRID_W;
				h = 1.5 * GUI_GRID_H;
				onButtonClick = "closeDialog 0;[[false,getPlayerUID player,position player],""jl_fnc_handleTaxiFahrerAntwort"",kundenuid,false] spawn life_fnc_MP;";
			};
			
	
	};
	
};

