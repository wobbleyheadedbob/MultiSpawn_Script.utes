// Function used to Add all the necessary actions to HQs that are active on the server
// Author: WobbleyheadedBob aka CptNoPants

private ["_hqObject"];
_hqObject = _this select 0;

_hqObject addAction [("<t color=""#dddd00"">" + "MHQ Menu" + "</t>"), "support\modules\WHB_Multispawn\common\fn_openDialog.sqf"];
