// Calls MSO_fnc_playerSetSpawn method on the client machine, when triggered, updates myRespawnPoint to the object's location.
// Author: WobbleyheadedBob aka CptNoPants

private ["_hqObject","_returnMessage"];
_hqObject = uiNamespace getVariable "MSO_WHD_dlg_hqObject";

_returnMessage = [_hqObject] call MSO_fnc_playerSetSpawn;
{player sideChat _x} forEach _returnMessage;