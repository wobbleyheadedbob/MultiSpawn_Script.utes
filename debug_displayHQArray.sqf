_loopCounter = 0;
{
	player sideChat format ["PV_hqArray entry %1 is: %2",_loopCounter, _x];
	_loopCounter = _loopCounter + 1,
} forEach PV_hqArray;
//PV_hqArray