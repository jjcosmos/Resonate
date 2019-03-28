/// @description Insert description here
// You can write your code in this editor
global.newGame = false;

if !directory_exists("SavData")
{
   directory_create("SavData");
}

playerRunes = "";

ini_open("PlayerData.ini");
if(!global.newGame){
	if(!ini_section_exists("Player Information")){
		ini_write_string("Player Information", "Runes", "");
		
	}
	if(ini_key_exists("Player Information", "Runes")){
		playerRunes = ini_read_string("Player Information", "Runes", "");
	}
}
else if(global.newGame){
	if(!ini_section_exists("Player Information")){
		ini_write_string("Player Information", "Runes", "");
	}
	if(ini_key_exists("Player Information", "Runes")){
		playerRunes = ini_read_string("Player Information", "Runes", "");
		playerRunes = "";
	}
}


ini_close();
//show_message(playerRunes);


runtimeRuneArray = ds_list_create();
var my_str = playerRunes;
var sub_str = "";
for(var i = 1; i < string_length(my_str)+1; i++)
{
    var next_char = string_char_at(my_str,i);
    if next_char != " "
    {
        sub_str = sub_str + next_char;
    }
    else
    {
        //ADD TO ARRAY
		
		if(sub_str != " "){
			//show_message("added "+ sub_str);
			ds_list_add(runtimeRuneArray, sub_str);
		}
        sub_str = "";
    }
}

//show_debug_message(string(ds_list_size(runtimeRuneArray)));
if(ds_list_size(runtimeRuneArray) > 0){
	for(i=0; i< ds_list_size(runtimeRuneArray); i++){
		if(asset_get_index(other.runtimeRuneArray[| i]) > -1){
			with(asset_get_index(other.runtimeRuneArray[| i])){
		
				//show_message("now serving "+ other.runtimeRuneArray[| i]);
				sc_RuneActivate();
		
	
			}
		}
		else{
			//show_message("BAD" + other.runtimeRuneArray[| i]);
			
		}
	}
}