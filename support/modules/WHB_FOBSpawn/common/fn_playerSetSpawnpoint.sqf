// When triggered, updates myRespawnPoint to the object's location.

// Still a work in Progress:
// This will later be modified so that it is actually tied to the object and uses NOMAD to store the player spawn.
// another eventHandler will be setup to monitor the state of the HQ Building.
// Author: WobbleyheadedBob aka CptNoPants

// State No. 0 - Mobile/Undeployed
// State No. 1 - Deployed
// State No. 2 - Deploying
// State No. 3 - Undeploying/Packing up

private ["_fobHQ","_fobState","_returnMessage"];
_fobHQ = _this select 0;
_fobState = _fobHQ getVariable "MHQState";
_returnMessage = [];

// DEBUG - Check for null stateVariable
if (isNil "_fobState") exitWith
{
	_returnMessage = ["MHQState is null..."];
	_returnMessage;
};

switch (_fobState) do
{
//-------------------------------------------------------------------------------------------------
	case 0: // State No. 0 - Mobile/Undeployed
	{
		_returnMessage = ["You need to deploy the MHQ first!"];
	};
	
	case 1: // State No. 1 - Deployed
	{
		myRespawnPoint = position _fobHQ;
		_returnMessage = ["You will spawn here if KIA"];
	};
	
	case 2: // State No. 2 - Deploying
	{
		_returnMessage = ["MHQ is currently deploying! You cannot Sign-in here until it has finnished setting up."];
	};
		
	case 3: // State No. 3 - Undeploying/Packing up
	{
		_returnMessage = ["MHQ is currently packing up, you cannot Sign-in here!"];
	};
	
	Default 
	{
		_returnMessage = ["Unrecognised MHQState"];
	};
};

_returnMessage