// Calls MSO_fnc_undeployHQ method on the client machine to pack up a deployed FOB
// Author: WobbleyheadedBob aka CptNoPants

private ["_hqObject","_returnMessage"];
_hqObject = uiNamespace getVariable "MSO_WHD_dlg_hqObject";

_returnMessage = [_hqObject] call MSO_fnc_undeployHQ;
{player sideChat _x} forEach _returnMessage;