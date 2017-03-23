//make sure to put in your init field of the object at pc1 "player addAction ["Take over checkpoint", pc1.sqf];
//Still in progress

sleep 10; //wait 10s seconds to broadcast 20%
hint "20%";
sleep 10;
hint "40%";
sleep 10;
hint "60%"
sleep 10;
hint "80%";
sleep 10;
hint "100%, Finished!";

"pc1" setMarkerColor "ColorRed";
"pc1" setMarkerText "Rebel Checkpoint";



