if (serverTime <= 1200) then {
_position = selectRandom [/*different places*/]


_box = "B_supplyCrate_F" createVehicle position [getPos _position select 0, getPos _position select 1, 600];
};
