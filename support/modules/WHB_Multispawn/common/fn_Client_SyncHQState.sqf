/* ----------------------------------------------------------------------------
Function: MSO_fnc_client_syncHQState

Description:
Displays a message when HQ is deployed/packed up and adds the 'MHQ Menu' to the new object.

Parameters:
- An MHQ object to be turned into an HQ [Object]

Returns:
- Nothing

Examples:
(begin example)
[_mhqState, _mhqObject]  call MSO_fnc_client_syncHQState;
(end)

See Also:
- <MSO_fnc_server_syncHQState>

Author:
WobbleyheadedBob aka CptNoPants
---------------------------------------------------------------------------- */

// State No. 0 - Mobile/Undeployed
// State No. 1 - Deployed
// State No. 2 - Deploying
// State No. 3 - Undeploying/Packing up

private ["_mhqState","_mhqObject"];
_mhqState = _this select 0;
_mhqObject = _this select 1;

switch (_mhqState) do
{
	case 0: // State No. 0 - Mobile/Undeployed
	{
		PV_client_syncHQState = [99, ""];
		[_mhqObject] call MSO_fnc_addAction_HQ;
		player sideChat format ["FOB has been packed up."];
	};
	//-------------------------------------------------------------------------------------------------
	case 1: // State No. 1 - Deployed
	{
		PV_client_syncHQState = [99, ""];
		[_mhqObject] call MSO_fnc_addAction_HQ;
		player sideChat format ["FOB has been deployed."];
	};
	//-------------------------------------------------------------------------------------------------
	case 2: // State No. 2 - Deploying
	{
		PV_client_syncHQState = [99, ""];
		player sideChat format ["State 2 has started on PV_client_syncHQState"];
	};
	//-------------------------------------------------------------------------------------------------
	case 3: // State No. 3 - Undeploying/Packing up
	{
		PV_client_syncHQState = [99, ""];
		player sideChat format ["State 3 has started on PV_client_syncHQState"];
	};
	//-------------------------------------------------------------------------------------------------
	Default 
	{
		PV_client_syncHQState = [99, ""];
	};
};