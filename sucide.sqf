//vest is the suicide vest (V_BandollierB_khk)

private["_vest"]

if ((vest player) == V_BandollierB_khk) then {
player addAction ["Blow up", {call _explode}];
_vest = true;
};

_explode = {
 if (_vest  == true) then {
	"Bo_GBU12_LGB_MI10" createVehicle getPos player;

	player setDamage 1;
	};
};

while (_vest == false) do {
if (!alive player) then {
call _explode; 
};
};
