private ["_mhq","_fobHQtype"];
_mhq = _this select 0;

switch (typeOf _mhq) do
{
	//BLUFOR
	case "LAV25_HQ":		{_fobHQtype = "LAV25_HQ_unfolded";};
	case "BMP2_HQ_CDF":		{_fobHQtype = "BMP2_HQ_CDF_unfolded";};
	case "M1130_CV_EP1":	{_fobHQtype = "M1130_HQ_unfolded_EP1";};
	//case "M1130_CV_EP1":		{_fobHQtype = "M1130_HQ_unfolded_Base_EP1";};
	
	//OPFOR
	case "BTR90_HQ":		{_fobHQtype = "BTR90_HQ_unfolded";};
	case "BMP2_HQ_INS":		{_fobHQtype = "BMP2_HQ_INS_unfolded";};
	case "BMP2_HQ_TK_EP1":	{_fobHQtype = "BMP2_HQ_TK_unfolded_EP1";};
	//case "BMP2_HQ_TK_EP1"	{_fobHQtype = "BMP2_HQ_TK_unfolded_Base_EP1";};
	
	//Independent
	case "BRDM2_HQ_Gue":	{_fobHQtype = "BRDM2_HQ_Gue_unfolded";};
	case "BRDM2_HQ_TK_GUE":	{_fobHQtype = "BRDM2_HQ_TK_GUE_unfolded_EP1";};
	//case "BRDM2_HQ_TK_GUE":	{_fobHQtype = "BRDM2_HQ_TK_GUE_unfolded_Base_EP1";};
//-------------------------------------------------------------------------------------------------
	Default 
	{
		//Do nothing for all other vehicles
		_fobHQtype = "Garbage_container";
	};
};

_fobHQtype