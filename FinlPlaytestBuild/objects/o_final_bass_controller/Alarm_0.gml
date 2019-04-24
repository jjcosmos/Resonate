/// @description Insert description here
// You can write your code in this editor
if(o_Weather_Manager.w_intensity > .9){
	audio_sound_gain(Final_Bassline, 200/ distance_to_object(o_Player), 200);
}
else{
	audio_sound_gain(Final_Bassline, 0, 200);
}
alarm_set(0, 20);