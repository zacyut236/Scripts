if (serverTime <= 1200) then {
_locations = [ //Different Locations
[6249.08,19399],
[9570.99,12907.6],
[19871.9,13090.4],
[24199.6,20770.4],
[15178.6,21166.6]
];

_position = selectRandom _locations;
_airDropMarker1 = createMarker ["Airdrop1", _postition];

"Airdrop1" setMarkerType "Warning";
"Airdrop1" setMarkerColor "Black";
"Airdrop1" setMarkerText "Airdrop";

_airDropMarker2 = createMarker ["Airdrop2", _postition];

"Airdrop2" setMarkerType "Ellipse";
"Airdrop2 setMarkerColor "Red";

_para = createVehicle ["B_Parachute_02_F", [0,0,100], [], 0, ""];
_para setPos [getPos _position select 0, getPos _position select 1, 600];
_box = "B_supplyCrate_F" createVehicle position [getPos _position select 0, getPos _position select 1, 600];
_box attachTo [_para,[0,0,0]]; 


};
