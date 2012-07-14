// Calls MSO_fnc_deployHQ method on the client machine
// Author: WobbleyheadedBob aka CptNoPants

private ["_hqObject","_returnMessage"];
_hqObject = uiNamespace getVariable "MSO_WHD_dlg_hqObject";

_returnMessage = [_hqObject] call MSO_fnc_deployHQ;
{player sideChat _x} forEach _returnMessage;