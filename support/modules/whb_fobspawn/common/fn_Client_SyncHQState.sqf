// Script used by the Client to trigger events based on the puclicVariableEventHandler (PV_Client_SyncHQState)
// The server updates and broadcasts the 'hqState'
// the Client listens and performs the necessary actions on the 'hqObject'
// Author: WobbleyheadedBob aka CptNoPants

private ["_hqState","_hqObject"];
_hqState = _this select 0;
_hqObject = _this select 1;

// Event No. 0 - Reset
// Event No. 1 - Start Deployment
// Event No. 2- Finnished Deployment
// Event No. 3 - Pack up
// Event No. 4 - finnished packup

switch (_hqState) do
{
//-------------------------------------------------------------------------------------------------
	case 0: //Reset
	{
		//Do nothing, we're just resetting the state so it can listen for more events
		//Actually... don't think I need this :P
	};
//-------------------------------------------------------------------------------------------------
	case 1: //Start Deployment
	{
		player sideChat format ["Setting up FOB HQ now..."];
		_hqObject removeAction 0;
		_hqObject setFuel 0;
	};
//-------------------------------------------------------------------------------------------------
	case 2: //Finnished Deployment
	{
		player sideChat format ["FOB HQ has been setup."];
		[_hqObject] call fn_addAction_HQ;
	};
//-------------------------------------------------------------------------------------------------
	case 3: //Pack up
	{
		player sideChat format ["Packing up FOB HQ now..."];
		_hqObject removeAction 0;
		_hqObject removeAction 1;
	};
//-------------------------------------------------------------------------------------------------
	case 4: //Finnished Pack up
	{
		player sideChat format ["FOB HQ has now been packed up."];
		[_hqObject] call fn_addAction_HQ;
	};
//-------------------------------------------------------------------------------------------------
	Default 
	{
		//Do nothing but... wtf state did you enter???
	};
};