// Initialises the FOB Multi-Spawn System
// Author: WobbleyheadedBob aka CptNoPants

// Server
if isServer then {
	private ["_initMHQs","_hqObject"];
	if (isNil "PV_Server_SyncHQState") then {
		// set the nil variable with a default value for server and both JIP & 'join at mission start' 
		PV_Server_SyncHQState = [0, ""]; 
	};
	publicvariable "PV_Server_SyncHQState";
	
	//Builds the initial array of all MHQ Vehicles placed in the editor
	_initMHQs = [vehicles] call compile preprocessFile "support\modules\whb_fobspawn\server\init_Server_MHQs.sqf";
	
	// Functions the the Server calls to Deploy/Pack up the HQ's
	fn_DeployHQ = compile preprocessFileLineNumbers "support\modules\whb_fobspawn\server\fn_DeployHQ.sqf";
	fn_unDeployHQ = compile preprocessFileLineNumbers "support\modules\whb_fobspawn\server\fn_unDeployHQ.sqf";
	
	// Functions to determine the HQ Structure/Vehicle type based on the HQ Object supplied
	fn_getHQType = compile preprocessFileLineNumbers "support\modules\whb_fobspawn\server\fn_getHQType.sqf";
	fn_getMHQType = compile preprocessFileLineNumbers "support\modules\whb_fobspawn\server\fn_getMHQType.sqf";
	
	// Simple and slightly redundant function that determines which HQ action to call based on the 'State' sent in from a client
	// I've done it this way as I will be adding more actions to the MHQ at a later date and this simplifies the code a little...
	fn_Server_SyncHQState = compile preprocessFileLineNumbers "support\modules\whb_fobspawn\server\fn_Server_SyncHQState.sqf";
	
	//Listens for events form the client(s)
	"PV_Server_SyncHQState" addPublicVariableEventHandler {(_this select 1) call fn_Server_SyncHQState;};
	
    if !isDedicated then {
		// Apply Deploy/Undeploy/SignIn actions to all HQ objects.
		waituntil{!isNil "PV_hqArray"};
		[] execvm "support\modules\whb_fobspawn\common\init_Client_DefaultSpawnLocations.sqf";
		
		// Event Handler that calls the player relocation on respawn (For host machines)
		player addEventhandler ["respawn", {[player] call fn_playerRespawn}];
    };

// Non-server clients
} else {
	waituntil{!isNil "PV_hqArray"};

	// Initialise the default spawn locations and Deploy/Undeploy/SignIn actions to all HQ objects.
	[] execvm "support\modules\whb_fobspawn\common\init_Client_DefaultSpawnLocations.sqf";
		
	if (isNil "PV_Client_SyncHQState") then
	{
	  // set the nil variable with a default value for server and both JIP & 'join at mission start' 
	  PV_Client_SyncHQState = [0, ""]; 
	};
	
	// Function that gets called on Client when the Server updates the state of an HQ
	fn_Client_SyncHQState = compile preprocessFileLineNumbers  "support\modules\whb_fobspawn\common\fn_Client_SyncHQState.sqf";
	
	// Event Handler to catch the message sent by the server.
	"PV_Client_SyncHQState" addPublicVariableEventHandler {(_this select 1) call fn_Client_SyncHQState};
	
	// Event Handler that calls the player relocation on respawn (for Clients)
	player addEventhandler ["respawn", {[player] call fn_playerRespawn}];
};

// All Machines

//Function that does the actual player relocation
fn_addAction_HQ = compile preprocessFileLineNumbers "support\modules\whb_fobspawn\fn_addAction_HQ.sqf";
fn_playerRespawn = compile preprocessFileLineNumbers "support\modules\whb_fobspawn\common\fn_playerRespawn.sqf";