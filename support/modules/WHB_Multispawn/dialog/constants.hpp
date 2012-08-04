//-----------------------------------------------------------------------------
// CT_TYPES - Control Types
// - http://community.bistudio.com/wiki/Dialog_Control#CT_TYPES
// - http://ru.armacomref.wikia.com/wiki/Dialog_Control
#define CT_STATIC           0
#define CT_BUTTON           1
#define CT_EDIT             2
#define CT_SLIDER           3
#define CT_COMBO            4
#define CT_LISTBOX          5
#define CT_TOOLBOX          6
#define CT_CHECKBOXES       7
#define CT_PROGRESS         8
#define CT_HTML             9
#define CT_STATIC_SKEW      10
#define CT_ACTIVETEXT       11
#define CT_TREE             12
#define CT_STRUCTURED_TEXT  13
#define CT_CONTEXT_MENU     14
#define CT_CONTROLS_GROUP   15
#define CT_SHORTCUT_BUTTON  16 // Arma 2 - textured button

#define CT_XKEYDESC         40
#define CT_XBUTTON          41
#define CT_XLISTBOX         42
#define CT_XSLIDER          43
#define CT_XCOMBO           44
#define CT_ANIMATED_TEXTURE 45
#define CT_OBJECT           80
#define CT_OBJECT_ZOOM      81
#define CT_OBJECT_CONTAINER 82
#define CT_OBJECT_CONT_ANIM 83
#define CT_LINEBREAK        98
#define CT_USER             99
#define CT_MAP              100
#define CT_MAP_MAIN         101
#define CT_List_N_Box       102 // Arma 2 - N columns list box

//-----------------------------------------------------------------------------
// CT_STYLE - Style Types
// - http://community.bistudio.com/wiki/Dialog_Control#CT_STYLE
// - http://ru.armacomref.wikia.com/wiki/Dialog_Control
#define ST_POS            0x0F
#define ST_HPOS           0x03
#define ST_VPOS           0x0C
#define ST_LEFT           0x00
#define ST_RIGHT          0x01
#define ST_CENTER         0x02
#define ST_DOWN           0x04
#define ST_UP             0x08
#define ST_VCENTER        0x0c
#define ST_TYPE           0xF0

#define ST_SINGLE         0
#define ST_MULTI          16
#define ST_TITLE_BAR      32
#define ST_PICTURE        48
#define ST_FRAME          64
#define ST_BACKGROUND     80
#define ST_GROUP_BOX      96
#define ST_GROUP_BOX2     112
#define ST_HUD_BACKGROUND 128
#define ST_TILE_PICTURE   144
#define ST_WITH_RECT      160
#define ST_LINE           176

#define ST_SHADOW         0x100
#define ST_NO_RECT        0x200
#define ST_KEEP_ASPECT_RATIO  0x800
#define ST_TITLE          ST_TITLE_BAR + ST_CENTER

//-----------------------------------------------------------------------------
// Slider Styles
#define SL_DIR            0x400
#define SL_VERT           0
#define SL_HORZ           0x400
#define SL_TEXTURES       0x10

//-----------------------------------------------------------------------------
// Listbox Styles
#define LB_TEXTURES       0x10
#define LB_MULTI          0x20

#define FontM             "Zeppelin32"
#define MSO_TextBlack     {1, 1, 1, 1}

//-----------------------------------------------------------------------------
// UI Classes
class MSO_RscText {
	idc = -1;
	type = CT_STATIC;
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

class MSO_BackGround : MSO_RscText {
	idc = -1;
	type = CT_STATIC;
	style = ST_PICTURE;
	x = 0.25;
	y = 0.5;
	w = 0.5;
	h = 0.5;
	colorText[] = MSO_TextBlack;
	colorBackground[] = {0,0,0,0};
	text = "\ca\ui\data\ui_mainmenu_background_ca.paa";
	font = FontM;
	sizeEx = 0.032;
};

class MSO_ButtonBase {
	idc = -1;
	type = CT_SHORTCUT_BUTTON;
	style = ST_SINGLE;
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
		font = FontM;
		color = "#E5E5E5";
		align = "left";
		shadow = "true";
	};
	class AttributesImage {
		font = FontM;
		color = "#E5E5E5";
		align = "left";
		shadow = "true";
	};
};
//-----------------------------------------------------------------------------