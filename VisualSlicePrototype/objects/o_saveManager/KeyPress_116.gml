/// @description Insert description here
// You can write your code in this editor
ini_open("PlayerData.ini");
var tempString = "";
for(i=0; i< ds_list_size(runtimeRuneArray); i++){
	tempString = tempString + runtimeRuneArray[| i] + " ";
	//show_message("saved " + runtimeRuneArray[| i]);
}
ini_write_string("Player Information", "Runes", tempString);
ini_close();