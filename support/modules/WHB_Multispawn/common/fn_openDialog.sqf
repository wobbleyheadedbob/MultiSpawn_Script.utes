// Calls MSO_fnc_deployHQ method on the client machine
// Author: WobbleyheadedBob aka CptNoPants

private ["_hqObject"];
_hqObject = _this select 0;

uiNamespace setVariable ["MSO_WHD_dlg_hqObject", _hqObject];
createDialog "MSO_dlg_mhqMenu";