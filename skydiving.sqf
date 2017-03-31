//skydiving script made by noordo

private["_plane","_backpack","_backpackcargo"];

_plane = [23,23,600];

_backpack = backpack player;

_backpackcargo = getBackpackCargo player;

parachute = {
  player setPos _plane;
  _backpack = backpack player;
  player removeBackpack;
  player addBackpack "B_Parachute";
  waituntil {isTouchingGround _unit};
  player addBackpack _backpack;
  player addBackpackCargo _backpackcargo;
};

