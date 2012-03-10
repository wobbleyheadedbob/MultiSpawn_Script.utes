//needs to be done Server-side just in case the client machine disconnects or crashes during the parameter defined delay.
// Author: WobbleyheadedBob aka CptNoPants

private ["_mhq","_locationHQ","_camo","_fobHQtype","_fobHQ","_vectorHQ"];
_mhq = _this select 0;
_locationHQ = position _mhq;
_camo = _mhq getVariable "camo";
_vectorHQ = vectorUp _mhq;
_fobHQtype = [_mhq] call fn_getMHQType;

//Wait a while - Parameter Specified Setup Delay
sleep deployment_Time;

//Remove the MHQ from the list of active HQs
PV_hqArray = PV_hqArray - [_mhq];	
deleteVehicle _mhq;
deleteVehicle _camo;

//Create the FOB HQ
_fobHQ = createVehicle [_fobHQtype, [0,0,0], [], 0, "NONE"];
_fobHQ setDir direction _mhq;
_fobHQ setVectorUp _vectorHQ;
_fobHQ setPos _locationHQ;
_fobHQ setVariable ["MHQState", 1, true];

//Add the new FOB to the list of active HQ's and broadcast the PV
PV_hqArray set [count PV_hqArray, _fobHQ];
publicvariable "PV_hqArray";

//Broadcast the returnMessage and fn_addAction_HQ to all other clients
PV_client_syncHQState = [1, _fobHQ];
publicVariable "PV_client_syncHQState";

if !isDedicated then 
{
	[1, _fobHQ] call fn_client_syncHQState;
};

#ifdef RMM_JIPMARKERS
	private ["_string","_name","_mkr"];
	_string = "Forward Base";
	_name = "mkr" + str(random time + 1);
	_mkr = createMarkerLocal [_name, _locationHQ];
	_mkr setmarkertypeLocal (RMM_jipmarkers_types select (2)); //mil_flag
	_mkr setmarkertextLocal _string;
	_mkr setmarkercolorLocal (RMM_jipmarkers_colors select (1)); //ColorBlack
	_fobHQ setVariable ["MHQ_jipmarker", _mkr, true];
	RMM_jipmarkers set [count RMM_jipmarkers, [_name, _locationHQ, getMarkerType _mkr, _string, playerSide, getMarkerColor _mkr]];
	publicvariable "RMM_jipmarkers";
#endif




