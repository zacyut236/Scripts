if (serverTime <= 1200) then {
_position = selectRandom [/*different places*/]
_airDropMarker1 = createMarket ["Airdrop1", _postition];
_airDropMarker2 = createMarket ["Airdrop2", _postition];

_box = "B_supplyCrate_F" createVehicle position [getPos _position select 0, getPos _position select 1, 600];
};
