//skydiving script made by noordo

private["_backpack","_backpackcargo"];







parachute = {
  _backpack = backpack player;
  _backpackcargo = getBackpackCargo player;
  cutText ["","BLACK OUT"];
  sleep 2;
  cutText ["","BLACK IN"];
  player setPos [getPos player select 0, getPos player select 1, (getPos player select 2) +600];
  removeBackpack player;
  player addBackpack "B_Parachute";
waitUntil ((getpos player) select 2 < 1) then {
  player addBackpack _backpack;
  player addBackpackCargo _backpackcargo;
  };
};

spawn parachute;
