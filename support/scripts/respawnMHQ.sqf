// Used in Conjunction with Vehilce respawn Script
// Sets the AddAction on Respawned Vehicles
// 0 = [this, 43200, 9999999, 0, FALSE, FALSE, "[this] execVM 'support\scripts\respawnMHQ.sqf'"]  execVM "support\scripts\vehicle.sqf"
waituntil{!isNil "PV_hqArray"};

private ["_mhq","_mhqState"];
_mhq = _this select 0;
_mhqState = _mhq getVariable "MHQState";

if (isNil "_mhqState") then
{
	_mhq setVariable ["MHQState", 0, true];
	PV_hqArray set [count PV_hqArray, _mhq];
	publicvariable "PV_hqArray";

	if !isDedicated then {
		[_mhq] call MSO_fnc_addAction_HQ;
	};
};