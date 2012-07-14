/* ----------------------------------------------------------------------------
Function: MSO_fnc_server_syncHQState

Description:
Creates/Removes FOB on the server after the defined delay.

Parameters:
- A state variable [Num]
- A vehicle object to be turned into an FOB [Object]

Returns:
Nothing

Examples:
(begin example)
[_hqState, _hqObject]  call MSO_fnc_server_syncHQState;
(end)

See Also:
- <MSO_fnc_createFOB>
- <MSO_fnc_removeFOB>
- <MSO_fnc_client_syncHQState>

Author:
WobbleyheadedBob aka CptNoPants
---------------------------------------------------------------------------- */

private ["_mhqObject","_mhqState"];
_mhqState = _this select 0;
_mhqObject = _this select 1;

switch (_mhqState) do
{
	case 0: // State No. 0 - Mobile/Undeployed
	{
		PV_server_syncHQState = [99, ""];
		PV_client_syncHQState = [0, ""];
		publicVariable "PV_client_syncHQState";
	};
	//-------------------------------------------------------------------------------------------------
	case 1: // State No. 1 - Deployed
	{
		PV_server_syncHQState = [99, ""];
		PV_client_syncHQState = [1, ""];
		publicVariable "PV_client_syncHQState";
	};
	//-------------------------------------------------------------------------------------------------
	case 2: // State No. 2 - Deploying
	{
		PV_server_syncHQState = [99, ""];
		[_mhqObject] spawn 
				{
					private ["_mhq"];
					_mhq = _this select 0;
					[_mhq] call MSO_fnc_createFOB;
				};
	};
	//-------------------------------------------------------------------------------------------------
	case 3: // State No. 3 - Undeploying/Packing up
	{
		PV_server_syncHQState = [99, ""];
		[_mhqObject] spawn
			{
				private ["_fobHQ"];
				_fobHQ = _this select 0;
				[_fobHQ] call MSO_fnc_removeFOB;
			};
	};
	//-------------------------------------------------------------------------------------------------
	Default 
	{
		PV_server_syncHQState = [99, ""];
	};
};