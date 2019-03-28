/// @description Insert description here
// You can write your code in this editor
sc_image_state();
sc_get_input();
//try_move();


if(!place_meeting(x + move_x,y, o_Collider)){
	x = x+ move_x;	
}


if(!place_meeting(x,y + move_y, o_Collider)){
	y = y+ move_y;
}

if(!place_meeting(x + move_x,y, o_Collider) and !place_meeting(x,y + move_y, o_Collider)){
	hit_playing = false;
}


if (!hit_playing and place_meeting(x + move_x ,y, o_Collider) and move_y == 0){
	audio_play_sound(Hit_Hurt, 10, false);
	audio_sound_gain(Hit_Hurt, .1, 0);
	hit_playing = true;
}
if (!hit_playing and move_x == 0 and place_meeting(x,y + move_y, o_Collider)){
	audio_play_sound(Hit_Hurt, 10, false);
	audio_sound_gain(Hit_Hurt, .1, 0);
	hit_playing = true;
}

/*
if(hit_playing){
	//show_debug_message("YEET");
}
*/