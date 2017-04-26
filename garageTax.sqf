/* 
Author: Noordo
Description: A tax system to charge players for their garags
if (playerOwnedGarages > 0) then {
createDialog "//whatever the dialog is called";
};
^ Goes into initPlayerLocal.sqf
*/
private ["_bank"];

pName = profileName

if (payedTaxGarage == true) then {
_bank = bank / 0.5;
bank = bank - _bank;
hintSilent 
} else {
hintSilent "The next time you login your garage will be back on the market. \nOr you can pay your taxes by going to your device and clicking pay";
};
