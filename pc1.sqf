//make sure to put in your init field of the object at pc1 "player addAction ["Take over checkpoint", pc1.sqf];
//Still in progress
private ["_pc1"]


switch (playerSide) do {
    case west: {
        if (_pc1 == true) then {

sleep 10; //wait 10s seconds to broadcast 20%
hint "20%";
sleep 10;
hint "40%";
sleep 10;
hint "60%";
sleep 10;
hint "80%";
sleep 10;
hint "100%, You have retaken this checkpoint";

"pc1" setMarkerColor "ColorBlue";
"pc1" setMarkerText "Police Checkpoint 1";
_pc1 = false;
};
    };
    case civ: {
        if (_pc1 == false) then {

sleep 10; //wait 10s seconds to broadcast 20%
hint "20%";
sleep 10;
hint "40%";
sleep 10;
hint "60%";
sleep 10;
hint "80%";
sleep 10;
hint "100%, Defend this checkpoint!";

"pc1" setMarkerColor "ColorRed";
"pc1" setMarkerText "Rebel Checkpoint";
_pc1 = true;
};
    };
};






