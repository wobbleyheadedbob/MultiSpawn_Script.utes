class MSO_dlg_mhqMenu { // by Wobbleyheadedbob
	idd = -1;
	movingEnable = 0;
	objects[] = {};
	
	class controlsBackground { 
		class mhqMenu_Background : MSO_BackGround {
			x = 0.1;
			y = 0;
			w = 1.5;
			h = 1.3;
		};
	};
	
	class controls {
		class mhqMenu_CloseButton : MSO_ButtonBase {
			text = "Close"; 
			action = "closeDialog 0";
			x = 0.58;
			y = 0.945;
		};

		class mhqMenu_Deploy : MSO_ButtonBase {
			text = "Deploy MHQ";
			action = "execVM ""support\modules\WHB_Multispawn\dialog\dlg_Action_Deploy.sqf"";";
			default = true;
			x = 0.24;
			y = 0.20;
		};
		
		class mhqMenu_UnDeploy : MSO_ButtonBase {
			text = "Pack up HQ";
			action = "execVM ""support\modules\WHB_Multispawn\dialog\dlg_Action_unDeploy.sqf"";";
			x = 0.24;
			y = 0.30;
		};
		
		class mhqMenu_SignIn : MSO_ButtonBase {
			text = "Sign in at HQ";
			action = "execVM ""support\modules\WHB_Multispawn\dialog\dlg_Action_SignInFOB.sqf"";";
			x = 0.24;
			y = 0.40;
		};
	};
};