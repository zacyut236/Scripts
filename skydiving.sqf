//skydiving script made by noordo

private["_plane","_backpack","_backpackcargo"];

_plane = [23,23,600];


parachute = {
  _backpack = backpack player;
  _backpackcargo = getBackpackCargo player;
  player setPos _plane;
  _backpack = backpack player;
  player removeBackpack;
  player addBackpack "B_Parachute";
  waituntil {isTouchingGround _unit};
  player addBackpack _backpack;
  player addBackpackCargo _backpackcargo;
};

