if (serverTime <= 1200) then {
private ["_position"];


_locations = [ //Different Locations
[6249.08,19399,600],
[9570.99,12907.6,600],
[19871.9,13090.4,600],
[24199.6,20770.4,600],
[15178.6,21166.6,600]
];

_position = selectRandom _locations;
_airDropMarker1 = createMarker ["Airdrop", _position];

"Airdrop" setMarkerType "mil_warning";
"Airdrop" setMarkerColor "colorBlack";
"Airdrop" setMarkerText "Airdrop";



_chute = createVehicle ["B_Parachute_02_F", [0,0,100], [], 0, ""];
_chute setPos _position;
_box = "B_supplyCrate_F" createVehicle _position;
_box attachTo [_chute,[0,0,0]]; 
};
