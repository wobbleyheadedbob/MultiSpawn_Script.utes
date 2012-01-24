
class WHB_FOBSpawn_mainMenu
{
	name=WHB_FOBSpawn_mainMenu;
	idd=-1;
	movingEnable=0;
	controlsBackground[]={};
	objects[]={};
	controls[]={btn_undeployMHQ, txt_baseName, btn_closeMain, btn_deployMHQ, FOBSpawn_Menu};

	class btn_undeployMHQ:RscButton
	{
		idc=-1;
		text="Pack up HQ";
		x=0.24;
		y=0.22;
		w=0.075;
		h=0.03;
	};

	class txt_baseName:RscText
	{
		idc=-1;
		x=0.34;
		y=0.18;
		w=0.11;
		h=0.03;
	};

	class btn_closeMain:RscButton
	{
		idc=-1;
		text="Close";
		action="closeDialog 0;";
		x=0.4;
		y=0.4;
		w=0.07;
		h=0.03;
	};

	class btn_deployMHQ:RscButton
	{
		idc=-1;
		moving="false";
		text="Deploy MHQ";
		x=0.24;
		y=0.18;
		w=0.075;
		h=0.0.3;
	};

	class FOBSpawn_Menu:RscBgFrame
	{
		idc=-1;
		x=0.2;
		y=0.15;
		w=0.2;
		h=0.3;
	};
};