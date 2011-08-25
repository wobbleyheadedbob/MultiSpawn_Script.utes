// Function used to Add all the necessary actions to HQs that are active on the server
// this needs to be done as HQ's could have been deployed/undeployed while the client was offline
// Author: WobbleyheadedBob aka CptNoPants

private ["_hqObject"];
_hqObject = _this select 0;

switch (_hqObject isKindOf "LandVehicle") do
{
//-------------------------------------------------------------------------------------------------
	case True:
	{
		_hqObject addAction [("<t color=""#dddd00"">" + "Deploy FOB HQ" + "</t>"), "support\modules\whb_fobspawn\common\fn_Action_Deploy.sqf"]; 
	};
//-------------------------------------------------------------------------------------------------
	case False:
	{
		_hqObject addAction [("<t color=""#dddd00"">" + "Sign in at FOB" + "</t>"), "support\modules\whb_fobspawn\common\fn_Action_SignInFOB.sqf"];
		_hqObject addAction [("<t color=""#dddd00"">" + "Pack up FOB HQ" + "</t>"), "support\modules\whb_fobspawn\common\fn_Action_unDeploy.sqf"];
	};
//-------------------------------------------------------------------------------------------------
	Default 
	{
		//Do nothing for all other vehicles
		player sideChat format ["addAction_HQ ended with no case match!"];
	};
};