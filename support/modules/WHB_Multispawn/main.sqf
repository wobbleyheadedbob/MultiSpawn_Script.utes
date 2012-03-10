// Initialises the FOB Multi-Spawn System
// Author: WobbleyheadedBob aka CptNoPants

// Server
if isServer then {
	private ["_initMHQs","_hqObject"];
	if (isNil "PV_server_syncHQState") then {
		// set the nil variable with a default value for server and both JIP & 'join at mission start' 
		PV_server_syncHQState = [99, ""]; 
	};
	publicvariable "PV_server_syncHQState";
	
	// Builds the initial array of all MHQ Vehicles placed in the editor
	_initMHQs = [vehicles] call compile preprocessFile "support\modules\WHB_Multispawn\server\init_server_MHQs.sqf";
	
	// PV message system for Client-to-Server-to-Client message transmission
	fn_server_syncHQState = compile preprocessFileLineNumbers "support\modules\WHB_Multispawn\server\fn_server_syncHQState.sqf";
	
	// Creates/Removes the actual FOB building, 
	fn_createFOB = compile preprocessFileLineNumbers "support\modules\WHB_Multispawn\server\fn_createFOB.sqf";
	fn_removeFOB = compile preprocessFileLineNumbers "support\modules\WHB_Multispawn\server\fn_removeFOB.sqf";
	
	// Listens for events from the client(s)
	"PV_server_syncHQState" addPublicVariableEventHandler {(_this select 1) call fn_server_syncHQState;};

// Non-server clients
} else {
	waituntil{!isNil "PV_hqArray"};

	if (isNil "PV_client_syncHQState") then
	{
	  // set the nil variable with a default value for server and both JIP & 'join at mission start' 
	  PV_client_syncHQState = [99, ""]; 
	};
	
	// Event Handler to catch the message sent by the server.
	"PV_client_syncHQState" addPublicVariableEventHandler {(_this select 1) call fn_client_syncHQState};
};

//Clients and Hosting Players
if !isDedicated then {
	waituntil{!isNil "PV_hqArray"};
	
	// Initialise the default spawn locations and Deploy/Undeploy/SignIn actions to all HQ objects.
	[] execvm "support\modules\WHB_Multispawn\common\init_client_defaultSpawnLocations.sqf";
	
	// Function that gets called when the Server updates the state of an HQ
	fn_client_syncHQState = compile preprocessFileLineNumbers  "support\modules\WHB_Multispawn\common\fn_client_syncHQState.sqf";
	
	// Event Handler that calls the player relocation on respawn
	player addEventhandler ["respawn", {[player] call fn_playerRespawn}];
};

// All Machines
// Functions to Deploy/Pack/Sign-in HQ's
fn_playerSetSpawn = compile preprocessFileLineNumbers "support\modules\WHB_Multispawn\common\fn_playerSetSpawnpoint.sqf";
fn_DeployHQ = compile preprocessFileLineNumbers "support\modules\WHB_Multispawn\common\fn_deployHQ.sqf";
fn_undeployHQ = compile preprocessFileLineNumbers "support\modules\WHB_Multispawn\common\fn_undeployHQ.sqf";

// Functions to determine the HQ Structure/Vehicle type based on the MHQ Object supplied
fn_getMHQType = compile preprocessFileLineNumbers "support\modules\WHB_Multispawn\common\fn_getMHQType.sqf";

//Function to add actions to the HQ objects
fn_addAction_HQ = compile preprocessFileLineNumbers "support\modules\WHB_Multispawn\common\fn_addAction_HQ.sqf";	

//Function that does the actual player relocation
fn_playerRespawn = compile preprocessFileLineNumbers "support\modules\WHB_Multispawn\common\fn_playerRespawn.sqf";