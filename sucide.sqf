//vest is the suicide vest (V_BandollierB_khk)

if ((vest player) == V_BandollierB_khk) then {
player addAction ["Blow up", {call _explode}];
_vest = true;
};

_explode = {
	"Bo_GBU12_LGB_MI10" createVehicle getPos player;

	player setdammage 1;
};

if (!alive player) then {} else {
call _explode; 
};
