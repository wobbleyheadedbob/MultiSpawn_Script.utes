// Script used by the Client to trigger a change in the HQ State
// Author: WobbleyheadedBob aka CptNoPants

private ["_hqObject","_returnMessage"];
_hqObject = _this select 0;

_returnMessage = [_hqObject] call fn_deployHQ;
{player sideChat _x} forEach _returnMessage;