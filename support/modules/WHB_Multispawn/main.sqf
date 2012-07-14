// Initialises the FOB Multi-Spawn System
// Author: WobbleyheadedBob aka CptNoPants

// All Machines
//--------------------------------------------------------------------------------------------------------------------------------
MSO_fnc_getMHQType = compile preprocessFileLineNumbers "support\modules\WHB_Multispawn\common\fn_getMHQType.sqf";

// Server
//--------------------------------------------------------------------------------------------------------------------------------
if isServer then {
	private ["_initMHQs","_hqObject"];
	
	// Initialise server 'event listener' variable
	PV_server_syncHQState = [99, ""]; 

	// Build the initial array of all MHQ Vehicles placed in the editor
	_initMHQs = [vehicles] call compile preprocessFile "support\modules\WHB_Multispawn\server\init_server_MHQs.sqf";
	
	// PV message system for Client-to-Server-to-Client message transmission
	MSO_fnc_server_syncHQState = compile preprocessFileLineNumbers "support\modules\WHB_Multispawn\server\fn_server_syncHQState.sqf";
	MSO_fnc_createFOB = compile preprocessFileLineNumbers "support\modules\WHB_Multispawn\server\fn_createFOB.sqf";
	MSO_fnc_removeFOB = compile preprocessFileLineNumbers "support\modules\WHB_Multispawn\server\fn_removeFOB.sqf";
	
	// Listens for events from the client(s)
	"PV_server_syncHQState" addPublicVariableEventHandler {(_this select 1) call MSO_fnc_server_syncHQState;};

// Non-server clients
//--------------------------------------------------------------------------------------------------------------------------------
} else {
	waituntil{!isNil "PV_hqArray"};

	if (isNil "PV_client_syncHQState") then
	{
	  // Initialise client 'event listener' variable
	  PV_client_syncHQState = [99, ""]; 
	};
	
	// Event Handler to catch the message sent by the server.
	"PV_client_syncHQState" addPublicVariableEventHandler {(_this select 1) call MSO_fnc_client_syncHQState};
};

//Clients and Hosting Players
//--------------------------------------------------------------------------------------------------------------------------------
if !isDedicated then {
	waituntil{!isNil "PV_hqArray"};
	
	MSO_fnc_playerSetSpawn = compile preprocessFileLineNumbers "support\modules\WHB_Multispawn\common\fn_playerSetSpawnpoint.sqf";
	MSO_fnc_deployHQ = compile preprocessFileLineNumbers "support\modules\WHB_Multispawn\common\fn_deployHQ.sqf";
	MSO_fnc_undeployHQ = compile preprocessFileLineNumbers "support\modules\WHB_Multispawn\common\fn_undeployHQ.sqf";
	MSO_fnc_addAction_HQ = compile preprocessFileLineNumbers "support\modules\WHB_Multispawn\common\fn_addAction_HQ.sqf";	
	MSO_fnc_playerRespawn = compile preprocessFileLineNumbers "support\modules\WHB_Multispawn\common\fn_playerRespawn.sqf";
	
	// Add 'MHQ Menu' to all vehicles
	{[_x] call MSO_fnc_addAction_HQ} forEach PV_hqArray;
	
	// Initialise player default spawn location
	myRespawnPoint = (markerPos format["respawn_%1", faction player]);
	if (str myRespawnPoint == "[0,0,0]") then
	{
		myRespawnPoint = (markerPos format["respawn_%1", side player]);
	};
	
	// Function that gets called when the Server updates the state of an HQ
	MSO_fnc_client_syncHQState = compile preprocessFileLineNumbers  "support\modules\WHB_Multispawn\common\fn_client_syncHQState.sqf";
	
	// Event Handler that calls the player relocation on respawn
	player addEventhandler ["respawn", {[player] call MSO_fnc_playerRespawn}];
};