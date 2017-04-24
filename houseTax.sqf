/* 
Author: Noordo
Description: A tax system to charge players for their money

if (playerOwnedHouses > 0) then {
createDialog "//whatever the dialog is called";
};
^ Goes into initPlayerLocal.sqf
*/
private ["_bank"];


if (payedTax == true) then {
_bank = bank / 0.5;
bank = bank - _bank;
hintSilent 
} else {
hintSilent "You have 3 hours, or until the server restarts, to remove all of your items from your house. \nIt will be removed from you. \nOr you can pay it by going to your device and clicking pay";
remoteExec ["execVM 'serverTax.sqf'",2];
};
