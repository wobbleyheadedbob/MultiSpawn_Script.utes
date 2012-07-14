//Borrowed from Xeno's Domination

class SXRscText {
	type = CT_STATIC;
	idc = -1;
	style = ST_LEFT;
	colorBackground[] = {0, 0, 0, 0};
	XCTextBlack;
	font = FontM;
	sizeEx = 0.015;
};

class RscBG: SXRscText {
	type = CT_STATIC;
	idc = -1;
	style = ST_LEFT;
	colorBackground[] = {0.02, 0.11, 0.27, 0.7};
	colorText[] = {1, 1, 1, 0};
	font = FontM;
	sizeEx = 0.015;
	text="";
};

class RscButton {
	type = CT_BUTTON;
	idc = -1;
	style = ST_CENTER;
	XCTextBlack;
	colorDisabled[] = {1, 1, 1, 0.7};
	colorBackground[] = {0.04, 0.22, 054, 0.7};
	colorBackgroundActive[] = {0.04, 0.22, 0.54, 0.9};
	colorBackgroundDisabled[] = {0.04, 0.22, 0.54, 0.4};
	colorFocused[] = {1, 1, 1, 0.4};
	colorShadow[] = {0, 1, 0, 0};
	colorBorder[] = {0, 1, 0, 0};
	font = FontM;
	soundEnter[] = {"\ca\ui\data\sound\mouse2", 0.15, 1};
	soundPush[] = {"\ca\ui\data\sound\new1", 0.15, 1};
	soundClick[] = {"\ca\ui\data\sound\mouse3", 0.15, 1};
	soundEscape[] = {"\ca\ui\data\sound\mouse1", 0.15, 1};
	sizeEx = 0.02;
	offsetX=0;
	offsetY=0;
	offsetPressedX = 0.002; 
	offsetPressedY = 0.002;
	borderSize=0;
	default = false;
};

class RscNavButton:RscButton {
	w=0.1;
	h=0.04;
	x=0.90;
};

class SXRscListBox {
	type = 5;
	style = 0;
	idc = -1;
	colorBackground[] = {0.2,0.35,0.2,1};
	colorSelect[] = {0.2,0.4,0.2,1};
	colorSelectBackground[] = {0.3,0.6,0.3,1};
	colorText[] = {0.5,0.75,0.5,1};
	font = "Bitstream";
	sizeEx = 0.029;
	rowHeight = 0.03;
	soundSelect[] = {"",0.1,1};
	soundExpand[] = {"",0.1,1};
	soundCollapse[] = {"",0.1,1};
	maxHistoryDelay = 10;
	w = 0.275;
	h = 0.04;
	autoScrollSpeed = -1;
	autoScrollDelay = 5;
	autoScrollRewind = 0;
	colorScrollbar[] = {0.95,0.95,0.95,1};
	period = 1;
	default = false;
	arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
	arrowFull = "#(argb,8,8,3)color(1,1,1,1)";
	class ScrollBar {
		color[] = {1,1,1,0.6};
		colorActive[] = {1,1,1,1};
		colorDisabled[] = {1,1,1,0.3};
		thumb = "\ca\ui\data\ui_scrollbar_thumb_ca.paa";
		arrowFull = "\ca\ui\data\ui_arrow_top_active_ca.paa";
		arrowEmpty = "\ca\ui\data\ui_arrow_top_ca.paa";
		border = "\ca\ui\data\ui_border_scroll_ca.paa";
	};
};

class XD_RscPicture {
	type = CT_STATIC;
	idc = -1;
	style = ST_PICTURE;
	x = 0.1;
	y = 0.1;
	w = 0.4;
	h = 0.2;
	sizeEx = Dlg_TEXTHGT;
	colorBackground[] = {0, 0, 0, 0};
	XCTextBlack;
	font = FontM;
	text = "";
};

class XD_RscMapControl {
	idc = -1;
	type=101;
	style=48;
	x = 0;
	y = 0;
	w = 1;
	h = 1;	
	colorBackground[] = {1, 1, 1, 1};
	colorText[] = {0, 0, 0, 1};
	colorSea[] = {0.56, 0.8, 0.98, 0.5};
	colorForest[] = {0.6, 0.8, 0.2, 0.5};
	colorRocks[] = {0.5, 0.5, 0.5, 0.5};
	colorCountlines[] = {0.65, 0.45, 0.27, 0.5};
	colorMainCountlines[] = {0.65, 0.45, 0.27, 1};
	colorCountlinesWater[] = {0, 0.53, 1, 0.5};
	colorMainCountlinesWater[] = {0, 0.53, 1, 1};
	colorForestBorder[] = {0.4, 0.8, 0, 1};
	colorRocksBorder[] = {0.5, 0.5, 0.5, 1};
	colorPowerLines[] = {0, 0, 0, 1};
	colorNames[] = {0, 0, 0, 1};
	colorInactive[] = {1, 1, 1, 0.5};
	colorLevels[] = {0, 0, 0, 1};
	colorRailWay[] = {0, 0, 0, 1};
	colorOutside[] = {0, 0, 0, 1};
	font = "TahomaB";
	sizeEx = 0.04;
	stickX[] = {0.2, {"Gamma", 1, 1.5}};
	stickY[] = {0.2, {"Gamma", 1, 1.5}};
	ptsPerSquareSea = 6;
	ptsPerSquareTxt = 8;
	ptsPerSquareCLn = 8;
	ptsPerSquareExp = 8;
	ptsPerSquareCost = 8;
	ptsPerSquareFor = "4.0f";
	ptsPerSquareForEdge = "10.0f";
	ptsPerSquareRoad = 2;
	ptsPerSquareObj = 10;
	fontLabel = "Zeppelin32";
	sizeExLabel = 0.034;
	fontGrid = "Zeppelin32";
	sizeExGrid = 0.034;
	fontUnits = "Zeppelin32";
	sizeExUnits = 0.034;
	fontNames = "Zeppelin32";
	sizeExNames = 0.056;
	fontInfo = "Zeppelin32";
	sizeExInfo = 0.034;
	fontLevel = "Zeppelin32";
	sizeExLevel = 0.034;
	maxSatelliteAlpha = 0;
	alphaFadeStartScale = 1.0; 
	alphaFadeEndScale = 1.1;
	showCountourInterval=2;
	scaleDefault = 0.1;
	onMouseButtonClick = "";
	onMouseButtonDblClick = "";
	text = "#(argb,8,8,3)color(1,1,1,1)";
	default = false;
	
	class CustomMark {
		icon = "\ca\ui\data\map_waypoint_ca.paa";
		color[] = {0, 0, 1, 1};
		size = 18;
		importance = 1;
		coefMin = 1;
		coefMax = 1;
	};
	
	class Legend {
		x = -1;
		y = -1;
		w = 0.340;
		h = 0.152;
		font = "Zeppelin32";
		sizeEx = 0.03921;
		colorBackground[] = {0.906, 0.901, 0.88, 0.8};
		color[] = {0, 0, 0, 1};
	};
	
	class Bunker {
		icon = "\ca\ui\data\map_bunker_ca.paa";
		color[] = {0, 0.9, 0, 1};
		size = 14;
		importance = "1.5 * 14 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
	};
	
	class Bush {
		icon = "\ca\ui\data\map_bush_ca.paa";
		color[] = {0.55, 0.64, 0.43, 1};
		size = 14;
		importance = "0.2 * 14 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
	};
	class BusStop {
		icon = "\ca\ui\data\map_busstop_ca.paa";
		color[] = {0, 0, 1, 1};
		size = 10;
		importance = "1 * 10 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
	};
	class Command {
		icon = "\ca\ui\data\map_waypoint_ca.paa";
		color[] = {0, 0.9, 0, 1};
		size = 18;
		importance = 1;
		coefMin = 1;
		coefMax = 1;
	};
	class Cross {
		icon = "\ca\ui\data\map_cross_ca.paa";
		color[] = {0, 0.9, 0, 1};
		size = 16;
		importance = "0.7 * 16 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
	};
	class Fortress {
		icon = "\ca\ui\data\map_bunker_ca.paa";
		color[] = {0, 0.9, 0, 1};
		size = 16;
		importance = "2 * 16 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
	};
	class Fuelstation {
		icon = "\ca\ui\data\map_fuelstation_ca.paa";
		color[] = {0, 0.9, 0, 1};
		size = 16;
		importance = "2 * 16 * 0.05";
		coefMin = 0.75;
		coefMax = 4;
	};
	class Fountain {
		icon = "\ca\ui\data\map_fountain_ca.paa";
		color[] = {0, 0.35, 0.7, 1};
		size = 12;
		importance = "1 * 12 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
	};
	class Hospital {
		icon = "\ca\ui\data\map_hospital_ca.paa";
		color[] = {0.78, 0, 0.05, 1};
		size = 16;
		importance = "2 * 16 * 0.05";
		coefMin = 0.5;
		coefMax = 4;
	};
	class Chapel {
		icon = "\ca\ui\data\map_chapel_ca.paa";
		color[] = {0, 0.9, 0, 1};
		size = 16;
		importance = "1 * 16 * 0.05";
		coefMin = 0.9;
		coefMax = 4;
	};
	class Church {
		icon = "\ca\ui\data\map_church_ca.paa";
		color[] = {0, 0.9, 0, 1};
		size = 16;
		importance = "2 * 16 * 0.05";
		coefMin = 0.900000;
		coefMax = 4;
	};
	class Lighthouse {
		icon = "\ca\ui\data\map_lighthouse_ca.paa";
		color[] = {0.78, 0, 0.05, 1};
		size = 20;
		importance = "3 * 16 * 0.05";
		coefMin = 0.9;
		coefMax = 4;
	};
	class Quay {
		icon = "\ca\ui\data\map_quay_ca.paa";
		color[] = {0, 0.9, 0, 1};
		size = 16;
		importance = "2 * 16 * 0.05";
		coefMin = 0.5;
		coefMax = 4;
	};
	class Rock {
		icon = "\ca\ui\data\map_rock_ca.paa";
		color[] = {0, 0.9, 0, 1};
		size = 12;
		importance = "0.5 * 12 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
	};
	class Ruin {
		icon = "\ca\ui\data\map_ruin_ca.paa";
		color[] = {0.78, 0, 0.05, 1};
		size = 16;
		importance = "1.2 * 16 * 0.05";
		coefMin = 1;
		coefMax = 4;
	};
	class SmallTree {
		icon = "\ca\ui\data\map_smalltree_ca.paa";
		color[] = {0.55, 0.64, 0.43, 1};
		size = 12;
		importance = "0.6 * 12 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
	};
	class Stack {
		icon = "\ca\ui\data\map_stack_ca.paa";
		color[] = {0, 0.9, 0, 1};
		size = 20;
		importance = "2 * 16 * 0.05";
		coefMin = 0.9;
		coefMax = 4;
	};
	class Tree {
		icon = "\ca\ui\data\map_tree_ca.paa";
		color[] = {0.55, 0.64, 0.43, 1};
		size = 12;
		importance = "0.9 * 16 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
	};
	class Tourism {
		icon = "\ca\ui\data\map_tourism_ca.paa";
		color[] = {0.78, 0, 0.05, 1};
		size = 16;
		importance = "1 * 16 * 0.05";
		coefMin = 0.700000;
		coefMax = 4;
	};
	class Transmitter {
		icon = "\ca\ui\data\map_transmitter_ca.paa";
		color[] = {0, 0.9, 0, 1};
		size = 20;
		importance = "2 * 16 * 0.05";
		coefMin = 0.9;
		coefMax = 4;
	};
	class ViewTower {
		icon = "\ca\ui\data\map_viewtower_ca.paa";
		color[] = {0, 0.9, 0, 1};
		size = 16;
		importance = "2.5 * 16 * 0.05";
		coefMin = 0.5;
		coefMax = 4;
	};
	class Watertower {
		icon = "\ca\ui\data\map_watertower_ca.paa";
		color[] = {0, 0.35, 0.7, 1};
		size = 32;
		importance = "1.2 * 16 * 0.05";
		coefMin = 0.9;
		coefMax = 4;
	};
	class Waypoint {
		icon = "\ca\ui\data\map_waypoint_ca.paa";
		size = 20;
		color[] = {0, 0.9, 0, 1};
		importance = "1.2 * 16 * 0.05";
		coefMin = 0.9;
		coefMax = 4;
	};
	class Task {
		icon = "\ca\ui\data\ui_taskstate_current_CA.paa";
		iconCreated = "\ca\ui\data\ui_taskstate_new_CA.paa";
		iconCanceled = "#(argb,8,8,3)color(0,0,0,0)";
		iconDone = "\ca\ui\data\ui_taskstate_done_CA.paa";
		iconFailed = "\ca\ui\data\ui_taskstate_failed_CA.paa";
		color[] = {0.863,0.584,0,1};
		colorCreated[] = {0.95,0.95,0.95,1};
		colorCanceled[] = {0.606,0.606,0.606,1};
		colorDone[] = {0.424,0.651,0.247,1};
		colorFailed[] = {0.706,0.0745,0.0196,1};
		size = 27;
		importance = 1;
		coefMin = 1;
		coefMax = 1;
	};
	class WaypointCompleted {
		icon = "\ca\ui\data\map_waypoint_completed_ca.paa";
		size = 20;
		color[] = {0, 0.9, 0, 1};
		importance = "1.2 * 16 * 0.05";
		coefMin = 0.9;
		coefMax = 4;
	};
	class ActiveMarker {
		icon = "\ca\ui\data\map_waypoint_completed_ca.paa";
		size = 20;
		color[] = {0, 0.9, 0, 1};
		importance = "1.2 * 16 * 0.05";
		coefMin = 0.9;
		coefMax = 4;
	};
};
class XD_ButtonBase {
	idc = -1;
	type = 16;
	style = 0;
	text = "";
	action = "";
	x = 0.0; 
	y = 0.0;
	w = 0.23;
	h = 0.104575;
	size = 0.03921;
	sizeEx = 0.03921;
	color[] = {0.543, 0.5742, 0.4102, 1};
	color2[] = {0.95, 0.95, 0.95, 1};
	colorBackground[] = {1, 1, 1, 1};
	colorbackground2[] = {1, 1, 1, 0.4};
	colorDisabled[] = {1, 1, 1, 0.25};
	periodFocus = 1.2;
	periodOver = 0.8;
	default = false;
	class HitZone {
		left = 0.004;
		top = 0.029;
		right = 0.004;
		bottom = 0.029;
	};
	class ShortcutPos {
		left = 0.0145;
		top = 0.026;
		w = 0.0392157;
		h = 0.0522876;
	};
	class TextPos {
		left = 0.05;
		top = 0.034;
		right = 0.005;
		bottom = 0.005;
	};
	textureNoShortcut = "";
	animTextureNormal = "\ca\ui\data\ui_button_normal_ca.paa";
	animTextureDisabled = "\ca\ui\data\ui_button_disabled_ca.paa";
	animTextureOver = "\ca\ui\data\ui_button_over_ca.paa";
	animTextureFocused = "\ca\ui\data\ui_button_focus_ca.paa";
	animTexturePressed = "\ca\ui\data\ui_button_down_ca.paa";
	animTextureDefault = "\ca\ui\data\ui_button_default_ca.paa";
	period = 0.4;
	font = "Zeppelin32";
	soundEnter[] = {"\ca\ui\data\sound\mouse2", 0.09, 1};
	soundPush[] = {"\ca\ui\data\sound\new1", 0.09, 1};
	soundClick[] = {"\ca\ui\data\sound\mouse3", 0.07, 1};
	soundEscape[] = {"\ca\ui\data\sound\mouse1", 0.09, 1};
	class Attributes {
		font = "Zeppelin32";
		color = "#E5E5E5";
		align = "left";
		shadow = "true";
	};
	class AttributesImage {
		font = "Zeppelin32";
		color = "#E5E5E5";
		align = "left";
		shadow = "true";
	};
};

class XD_LinkButtonBase {
	idc = -1;
	type = CT_BUTTON;
	style = ST_CENTER;
	default = false;
	font = "Zeppelin32";
	sizeEx = 0.029;
	XCTextBlack;
	colorFocused[] = {1, 1, 1, 0};
	colorDisabled[] = {0, 0, 1, 0.7};
	colorBackground[] = {1, 1, 1, 0};
	colorBackgroundDisabled[] = {1, 1, 1, 0.5};
	colorBackgroundActive[] = {1, 1, 1, 0};
	offsetX = 0.003;
	offsetY = 0.003;
	offsetPressedX = 0.002;
	offsetPressedY = 0.002;
	colorShadow[] = {1, 1, 1, 0};
	colorBorder[] = {1, 1, 1, 0};
	borderSize = 0;
	soundEnter[] = {"\ca\ui\data\sound\mouse2", 0.09, 1};
	soundPush[] = {"\ca\ui\data\sound\new1", 0.09, 1};
	soundClick[] = {"\ca\ui\data\sound\mouse3", 0.07, 1};
	soundEscape[] = {"\ca\ui\data\sound\mouse1", 0.09, 1};
	x = 0.06;
	y = 0.11;
	w = 0.15;
	h = 0.1;
	text = "";
	action = "";
};

class XD_UIList {
	w = 0.275;
	h = 0.04;
	colorSelect[] = {0.023529,0,0.0313725,1};
	colorText[] = {0.023529,0,0.0313725,1};
	colorBackground[] = {0.95,0.95,0.95,1};
	colorSelectBackground[] = {0.543,0.5742,0.4102,1};
	colorScrollbar[] = {0.023529,0,0.0313725,1};
	arrowEmpty = "\ca\ui\data\ui_arrow_combo_ca.paa";
	arrowFull = "\ca\ui\data\ui_arrow_combo_active_ca.paa";
	wholeHeight = 0.45;
	color[] = {0,0,0,0.6};
	colorActive[] = {0,0,0,1};
	colorDisabled[] = {0,0,0,0.3};
	font = "Zeppelin32";
	sizeEx = 0.029;
	soundSelect[] = {"",0.1,1};
	soundExpand[] = {"",0.1,1};
	soundCollapse[] = {"",0.1,1};
	maxHistoryDelay = 1;
	default = false;
	class ScrollBar {
		color[] = {1, 1, 1, 0.6};
		colorActive[] = {1, 1, 1, 1};
		colorDisabled[] = {1, 1, 1, 0.3};
		thumb = "\ca\ui\data\ui_scrollbar_thumb_ca.paa";
		arrowFull = "\ca\ui\data\ui_arrow_top_active_ca.paa";
		arrowEmpty = "\ca\ui\data\ui_arrow_top_ca.paa";
		border = "\ca\ui\data\ui_border_scroll_ca.paa";
	};
};
class XD_UIComboBox:XD_UIList {
	type = UICOMBO;
	style = 0;
	idc = -1;
	sizeEx = 0.025;
	wholeHeight = 0.3;
};
class X3_RscText {
	access = ReadAndWrite;
	type = CT_STATIC;
	idc = -1;
	style = ST_CENTER;
	w = 0.05;
	h = 0.05;
	font = "Zeppelin32";
	sizeEx = 0.032;
	colorBackground[] = {0, 0, 0, 0};
	colorText[] = {0.643, 0.5742, 0.4102, 1};
	text = "";
};
class XC_RscText {
	type = CT_STATIC;
	idc = -1;
	style = ST_LEFT;
	x = 0.0;
	y = 0.0;
	w = 0.3;
	h = 0.03;
	sizeEx = 0.023;
	colorBackground[] = {0.5, 0.5, 0.5, 0.75};
	colorText[] = {0, 0, 0, 1};
	font = "Zeppelin32";
	text = "";
};
class XC_SliderH {
	idc = -1;
	type = 43;
	style = "0x400 + 0x10";
	x = 0;
	y = 0;
	h = 0.029412;
	w = 0.4;
	default = false;
	color[] = {1, 1, 1, 0.4};
	colorActive[] = {1, 1, 1, 1};
	colorDisabled[] = {1, 1, 1, 0.2};
	arrowEmpty = "\ca\ui\data\ui_arrow_left_ca.paa";
	arrowFull = "\ca\ui\data\ui_arrow_left_active_ca.paa";
	border = "\ca\ui\data\ui_border_frame_ca.paa";
	thumb = "\ca\ui\data\ui_slider_bar_ca.paa";
};