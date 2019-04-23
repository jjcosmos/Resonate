/// @description Insert description here
// You can write your code in this editor
if(room_get_name(room) == "StartScreen"){
	audio_stop_all();
}
if(room_get_name(room) == "The_End"){
	game_restart();
}
else
	room_goto(room_num)