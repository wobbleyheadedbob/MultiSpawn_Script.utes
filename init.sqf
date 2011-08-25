#include <support\modules\modules.hpp>

//http://community.bistudio.com/wiki/enableSaving
enableSaving [false, false];

// FOB HQ MultiSpawn
#ifdef WHB_FOBSPAWN
	[] call compile preprocessFileLineNumbers "support\modules\whb_fobspawn\main.sqf";
#endif

// Mission Parameters (MSO already does this for you)
if (!isNil "paramsArray") then {
        for "_i" from 0 to ((count paramsArray)-1) do {
                missionNamespace setVariable [configName ((missionConfigFile/"Params") select _i),paramsArray select _i];
        };
};