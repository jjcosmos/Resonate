/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(ord(key_press)) and usingDebug){
	o_Player.x = x;
	o_Player.y = y;
	drawing = true;
	alarm_set(0,60);
}