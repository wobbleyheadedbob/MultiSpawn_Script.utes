class MSO_dlg_mhqMenu { // by Wobbleyheadedbob
	idd = -1;
	movingEnable = 0;
	//onLoad = "";
	objects[] = {};
	class controlsBackground {
		class XD_BackGround : XC_RscText {
			idc = -1;
			type = 0;
			style = 48;
			x = 0.1;
			y = 0;
			w = 1.5;
			h = 1.3;
			XCTextBlack;
			colorBackground[] = {0,0,0,0};
			text = "\ca\ui\data\ui_mainmenu_background_ca.paa";
			font = "Zeppelin32";
			sizeEx = 0.032;
		};
	};
	class controls
	{
		class XD_CloseButton : XD_ButtonBase {
			idc = -1;
			text = "Close"; 
			action = "closeDialog 0";
			default = true;
			x = 0.58;
			y = 0.945;
		};

		class XD_DeployMHQ : XD_ButtonBase
		{
			idc = 44444;
			moving = "false";
			text = "Deploy MHQ";
			action = "execVM ""support\modules\WHB_Multispawn\dialog\dlg_Action_Deploy.sqf"";";
			x = 0.24;
			y = 0.20;
		};
		
		class XD_UnDeployMHQ : XD_ButtonBase
		{
			idc = 44445;
			text = "Pack up HQ";
			action = "execVM ""support\modules\WHB_Multispawn\dialog\dlg_Action_unDeploy.sqf"";";
			x = 0.24;
			y = 0.30;
		};
		
		class XD_SignInMHQ : XD_ButtonBase
		{
			idc = 44446;
			text = "Sign in at HQ";
			action = "execVM ""support\modules\WHB_Multispawn\dialog\dlg_Action_SignInFOB.sqf"";";
			x = 0.24;
			y = 0.40;
		};
	};
};