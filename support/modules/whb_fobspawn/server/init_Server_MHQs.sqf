// Script used by the Server to build an array of all available MHQs
// State variable is also initialised as they are added to the list.
// Static HQ buildings will need the relevant actions manually added in the editor
// Author: WobbleyheadedBob aka CptNoPants

// State No. 0 - Mobile/Undeployed
// State No. 1 - Deployed
// State No. 2 - Deploying
// State No. 3 - Undeploying/Packing up

private ["_vehicles"];
_vehicles = _this select 0;
PV_hqArray = [];

{
	switch (typeOf _x) do
	{
		//BLUFOR
		case "LAV25_HQ":
		{
			_x setVariable ["MHQState", 0, true];
			PV_hqArray set [count PV_hqArray, _x];
		};
		case "BMP2_HQ_CDF":
		{
			_x setVariable ["MHQState", 0, true];
			PV_hqArray set [count PV_hqArray, _x];
		};
		case "M1130_CV_EP1":
		{
			_x setVariable ["MHQState", 0, true];
			PV_hqArray set [count PV_hqArray, _x];
		};
		
		//OPFOR
		case "BTR90_HQ":
		{
			_x setVariable ["MHQState", 0, true];
			PV_hqArray set [count PV_hqArray, _x];
		};
		case "BMP2_HQ_INS":
		{
			_x setVariable ["MHQState", 0, true];
			PV_hqArray set [count PV_hqArray, _x];
		};
		case "BMP2_HQ_TK_EP1":
		{
			_x setVariable ["MHQState", 0, true];
			PV_hqArray set [count PV_hqArray, _x];
		};
		
		//Independent
		case "BRDM2_HQ_Gue":
		{
			_x setVariable ["MHQState", 0, true];
			PV_hqArray set [count PV_hqArray, _x];
		};
		case "BRDM2_HQ_TK_GUE_EP1":
		{
			_x setVariable ["MHQState", 0, true];
			PV_hqArray set [count PV_hqArray, _x];
		};
		case "BRDM2_HQ_TK_GUE": //Is this valid?
		{
			_x setVariable ["MHQState", 0, true];
			PV_hqArray set [count PV_hqArray, _x];
		};
	//-------------------------------------------------------------------------------------------------
		Default 
		{
			//Do nothing for all other vehicles
		};
	};
} forEach _vehicles;

//Broadcast the new list out to everyone.
publicvariable "PV_hqArray";