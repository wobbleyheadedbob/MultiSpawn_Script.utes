//needs to be done Server-side just in case the client machine disconnects or crashes during the parameter defined delay
private ["_mhq","_locationHQ","_camo","_fobHQtype","_fobHQ","_vectorHQ"];
_mhq = _this select 0;
_locationHQ = position _mhq;
_camo = _mhq getVariable "camo";
_vectorHQ = vectorUp _mhq;
_fobHQtype = [_mhq] call fn_getHQType;

//Wait a while - Parameter Specified Setup Delay
sleep deployment_Time;

//Delete the Cammo Net and MHQ, then create the static FOB HQ
deleteVehicle _camo;

//Remove the MHQ from the list of active HQs
PV_hqArray = PV_hqArray - [_mhq];	
deleteVehicle _mhq;

//Create the FOB HQ
_fobHQ = createVehicle [_fobHQtype, [0,0,0], [], 0, "NONE"];
_fobHQ setDir direction _mhq;
_fobHQ setVectorUp _vectorHQ;
_fobHQ setPos _locationHQ;
_fobHQ setVariable ["MHQState", 1, true];

//Add the new FOB to the list of active HQ's and broadcast the PV
PV_hqArray set [count PV_hqArray, _fobHQ];
publicvariable "PV_hqArray";

//Broadcast the _returnMessage and fn_addAction_HQ to all other clients
PV_client_syncHQState = [1, _fobHQ];
publicVariable "PV_client_syncHQState";

if !isDedicated then 
{
	[1, _fobHQ] call fn_client_syncHQState;
};