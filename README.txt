## Quick Explanation
Players can choose to "Sign in" at specified objects.
Client Side variable(myRespawnPoint) stores their current spawn location.
When they respawn they will be relocated to the postition (mySpawnPoint)

## Additional Notes
Moving the 'HQ' will not change the position stored in mySpawnPoint, if you want to spawn at the new location of the 'HQ' you need to go there and sign in there.

This is intentional! The purpose being that when you leave the safety of your base you will be on your own, you will need manual resupply and re-inforcement. Not some magical teleporting soldiers who can instantly appear in the heat of battle and save the day.


## Future enhancements
* MSO integration of spawnpoint variable - so players retain their spawn point upon reconnect
* Deploy/Undeploy actions with parameter specified delays
* Automatic creation of JIP Markers for FOB's  
* Deployment dialog to name FOB

***
##Script Name: initSpawn.sqf

**Usage: **
```c-objdump
//Add this to an editor placed trigger
//Activation: None / Once / Present
//Type: None
//Condition: local player
//On Act: _dummy = [] execvm "functions\common\initSpawn.sqf"
```

**Code:**
```c-objdump
// Initialises the Local Player's spawn location
// Author: WobbleyheadedBob aka CptNoPants

myRespawnPoint = [0,0,0];

switch(faction player) do
{
	case "USMC":	{myRespawnPoint = (markerPos "respawn_US");}; 
	case "BIS_BAF":	{myRespawnPoint = (markerPos "respawn_UK");}; 
}; //Assign Default Spawn Point based on your faction

//player sideChat format ["Debug : Respawn Coords: %1", myRespawnPoint]; 
```

***
## Script Name: fn_signInFOB.sqf ==
Usage: 
```c-objdump
//In the objects init field:
this addAction ["Sign in", "functions\client\fn_signInFOB.sqf", this, 0, false, true, "", "true"];
```

**Code:**
```c-objdump
// When triggered, updates myRespawnPoint to the object's location
// Author: WobbleyheadedBob aka CptNoPants
private ["_spawnObject"];
_spawnObject = _this select 3;
myRespawnPoint = position _spawnObject;

player sideChat format ["You are now stationed at: %1", myRespawnPoint]; 
```

***
## Script Name: fn_spawnMulti.sqf
**Usage: **
```c-objdump
//Usage: Add this to a trigger at the respawn_west (or any side)
Condition: (vehicle player) in thislist 
On Act: [player] call fn_multiSpawn;
```

**Code:**
```c-objdump
// When called, set the player's postion to 'myRespawnPoint'
// Author: WobbleyheadedBob aka CptNoPants

private ["_mySoldier"];
_mySoldier = _this select 0;

//player sideChat format ["Debug : Respawn script Launched"];

_mySoldier setPos ([myRespawnPoint, 10] call CBA_fnc_randPos);
```
