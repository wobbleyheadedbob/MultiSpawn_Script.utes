// Script used by the Server to build an array of all available MHQs
// Static HQ buildings will need the relevant actions manually added in the editor
// Author: WobbleyheadedBob aka CptNoPants

private ["_vehicles","_array1","_array2"];
_vehicles = _this select 0;
PV_hqArray = [];

{
	switch (typeOf _x) do
	{
		//BLUFOR
		case "LAV25_HQ":
		{
			_array1 = PV_hqArray;
			_array2 = [_x];
			PV_hqArray = _array1 + _array2;
		};
		case "BMP2_HQ_CDF":
		{
			_array1 = PV_hqArray;
			_array2 = [_x];
			PV_hqArray = _array1 + _array2;
		};
		case "M1130_CV_EP1":
		{
			_array1 = PV_hqArray;
			_array2 = [_x];
			PV_hqArray = _array1 + _array2;
		};
		
		//OPFOR
		case "BTR90_HQ":
		{
			_array1 = PV_hqArray;
			_array2 = [_x];
			PV_hqArray = _array1 + _array2;
		};
		case "BMP2_HQ_INS":
		{
			_array1 = PV_hqArray;
			_array2 = [_x];
			PV_hqArray = _array1 + _array2;
		};
		case "BMP2_HQ_TK_EP1":
		{
			_array1 = PV_hqArray;
			_array2 = [_x];
			PV_hqArray = _array1 + _array2;
		};
		
		//Independent
		case "BRDM2_HQ_Gue":
		{
			_array1 = PV_hqArray;
			_array2 = [_x];
			PV_hqArray = _array1 + _array2;
		};
		case "BRDM2_HQ_TK_GUE_EP1":
		{
			_array1 = PV_hqArray;
			_array2 = [_x];
			PV_hqArray = _array1 + _array2;
		};
		case "BRDM2_HQ_TK_GUE": //Is this valid?
		{
			_array1 = PV_hqArray;
			_array2 = [_x];
			PV_hqArray = _array1 + _array2;
		};
	//-------------------------------------------------------------------------------------------------
		Default 
		{
			//Do nothing for all other vehicles
		};
	};
	//Broadcast the new list out to everyone.
	publicvariable "PV_hqArray";
} forEach _vehicles;

























