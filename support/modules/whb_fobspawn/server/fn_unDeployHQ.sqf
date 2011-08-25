// Function that the Server will call on FOB objects to unDeploy them into MHQs
// Author: WobbleyheadedBob aka CptNoPants
	
// Event No. 0 - Reset
// Event No. 1 - Start Deployment
// Event No. 2- Finnished Deployment
// Event No. 3 - Pack up
// Event No. 4 - finnished packup
private ["_fobHQ", "_locationHQ"];
_fobHQ = _this select 0;
_locationHQ = position _fobHQ;

// 3 - Pack up (Tell the clients)
PV_Client_SyncHQState = [3, _fobHQ];
publicvariable "PV_Client_SyncHQState";

if !isDedicated then {
	player sideChat format ["Packing up FOB HQ now..."];
};
_fobHQ removeAction 0;
_fobHQ removeAction 1;

[_fobHQ, _locationHQ] spawn {
	private ["_fobHQ","_mhq","_mhqType","_locationHQ"];
	_fobHQ = _this select 0;
	_locationHQ = _this select 1;
	_mhqType = [_fobHQ] call fn_getMHQType; //"LAV25_HQ";
	
	//Wait a while...
	sleep undeployment_Time;
	
	//Delete the FOBHQ and Remove from the list of active HQs
	deleteVehicle _fobHQ;
	PV_hqArray = PV_hqArray - [_fobHQ];
	publicvariable "PV_hqArray";

	//Create MHQ again and add it to the list of active HQs
	_mhq = createVehicle [_mhqType, [0,0,0], [], 0, "NONE"];
	_mhq setPos _locationHQ;
	_mhq setDir direction _fobHQ;
	PV_hqArray = PV_hqArray + [_mhq];
	publicvariable "PV_hqArray";

	// 4 - finnished packup (Tell the clients)
	PV_Client_SyncHQState = [4, _mhq];
	publicvariable "PV_Client_SyncHQState";
		
	if !isDedicated then {
		player sideChat format ["FOB HQ has now been packed up..."];
		[_mhq] call fn_addAction_HQ;
	};
	

	// 0 - Reset (All done now tell the clients to reset their state listeners)
	sleep 1;
	PV_Client_SyncHQState = [0, ""];
	PV_Server_SyncHQState = [0, ""];
	publicvariable "PV_Client_SyncHQState";
};