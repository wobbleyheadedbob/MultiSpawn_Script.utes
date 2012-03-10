/********************************************************************************************************
Name: fn_getMHQType 
Parameters: HQ Object 
Example: [hqObject] call fn_getMHQType; 
Return Value: MHQ Object 
Description: Determines the HQ Vehicle type based on the HQ Object supplied.
Author: WobbleyheadedBob aka CptNoPants
********************************************************************************************************/

private ["_MHQtype","_mhq"];
_mhq = _this select 0;

switch (typeOf _mhq) do
{
	//BLUFOR
	case "LAV25_HQ_unfolded":			{_MHQtype = "LAV25_HQ";};
	case "BMP2_HQ_CDF_unfolded":		{_MHQtype = "BMP2_HQ_CDF";};
	case "M1130_HQ_unfolded_EP1":		{_MHQtype = "M1130_CV_EP1";};
	case "M1130_HQ_unfolded_Base_EP1":	{_MHQtype = "M1130_CV_EP1";};
	
	//OPFOR
	case "BTR90_HQ_unfolded":				{_MHQtype = "BTR90_HQ";};
	case "BMP2_HQ_INS_unfolded":			{_MHQtype = "BMP2_HQ_INS";};
	case "BMP2_HQ_TK_unfolded_EP1":			{_MHQtype = "BMP2_HQ_TK_EP1";};
	case "BMP2_HQ_TK_unfolded_Base_EP1":	{_MHQtype = "BMP2_HQ_TK_EP1";};
	
	//Independent
	case "BRDM2_HQ_Gue_unfolded":				{_MHQtype = "BRDM2_HQ_Gue";};
	case "BRDM2_HQ_TK_GUE_unfolded_EP1":		{_MHQtype = "BRDM2_HQ_TK_GUE_EP1";};
	case "BRDM2_HQ_TK_GUE_unfolded_Base_EP1":	{_MHQtype = "BRDM2_HQ_TK_GUE_EP1";};
//-------------------------------------------------------------------------------------------------
	Default 
	{
		//Do nothing for all other vehicles
		_MHQtype = "Old_bike_TK_INS_EP1";
	};
};

_MHQtype