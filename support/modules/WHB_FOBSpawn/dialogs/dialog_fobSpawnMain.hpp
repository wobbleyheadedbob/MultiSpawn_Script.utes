#include ""support\modules\whb_fobspawn\dialog\dialog_constants.hpp"
class WHB_fobspawn_mainMenu { // by Wobbleyheadedbob
//A sample Dialog from a dialog tutorial
	idd = -1;
	movingEnable = false;
	controlsBackground[] = {};
	controls[] = {"ButtonControl"};
	objects[] = {};
  
	class ButtonControl {
	// Here we will add our control properties
		idc = -1;
		type = CT_BUTTON;
		style = 2;
		moving = false;
		x = 0.45;
		y = 0.9;
		h = 0.05;
		w = 0.1;
		font = "Zeppelin32";
		sizeEx = 0.025;
		// action uses script commands to close dialog and display a hint
		action = "closeDialog 0; hint ""Close pushed"";"
		text = "Close";
		default = false;
		colorText[] = {1,0,0,1}; // white
		colorFocused[] = {0,1,0,1}; // green
		colorShadow[] = {0.8,0.8,0.8,1}; // darkgrey
		colorBorder[] = {0.5,0.5,0.5,1}; // grey
		colorBackground[] = {0,1,1,1};
		colorBackgroundActive[] = {0,1,0,1}; // green
		colorDisabled[] = {1,0,0,1}; // red
		colorBackgroundDisabled[] = {0.5,0.5,0.5,1}; // grey
		borderSize = 0.015;
		offsetX = 0.005;
		offsetY = 0.005;
		offsetPressedX = 0.002;
		offsetPressedY = 0.002;
		soundEnter[] = {"",0,1}; // NoSound
		soundPush[] = {"",0,1}; // NoSound
		soundClick[] = {"",0,1}; // NoSound
		soundEscape[] = {"",0,1}; // NoSound
	};
  
	Class HintButton : ButtonControl {
		x = 0.6;
		text = "Hint";
		action = "hint ""Hint from second button! "";";
	};
};