class MSO_dlg_mhqMenu { // by Wobbleyheadedbob
	idd = -1;
	movingEnable = 0;
	objects[] = {};
	
	class controlsBackground { 
		class mhqMenu_Background : MSO_dlg_MainDialog {
			x = 0.1;
			y = 0;
			w = 1.5;
			h = 1.3;
		};
	};
	
	class controls {
		class mhqMenu_CloseButton : MSO_dlg_Button {
			text = "Close"; 
			action = "closeDialog 0";
			x = 0.58;
			y = 0.945;
		};

		class mhqMenu_Deploy : MSO_dlg_Button {
			text = "Deploy MHQ";
			action = "execVM ""support\modules\WHB_Multispawn\dialog\dlg_Action_Deploy.sqf"";";
			default = true;
			x = 0.24;
			y = 0.20;
		};
		
		class mhqMenu_UnDeploy : MSO_dlg_Button {
			text = "Pack up HQ";
			action = "execVM ""support\modules\WHB_Multispawn\dialog\dlg_Action_unDeploy.sqf"";";
			x = 0.24;
			y = 0.30;
		};
		
		class mhqMenu_SignIn : MSO_dlg_Button {
			text = "Sign in at HQ";
			action = "execVM ""support\modules\WHB_Multispawn\dialog\dlg_Action_SignInFOB.sqf"";";
			x = 0.24;
			y = 0.40;
		};
	};
};