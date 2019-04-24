/// @description Insert description here
// You can write your code in this editor
if(canPlay){
	
	Rune_A_Gain = audio_sound_get_gain(RuneA);
	Rune_B_Gain = audio_sound_get_gain(RuneB);
	Rune_C_Gain = audio_sound_get_gain(RuneC);
	Rune_E_Gain = audio_sound_get_gain(RuneE);
	Rune_F_Gain = audio_sound_get_gain(RuneF);
	
	audio_sound_gain(RuneA, 0 , 1);
	audio_sound_gain(RuneB, 0 , 1);
	audio_sound_gain(RuneC, 0 , 1);
	audio_sound_gain(RuneE, 0 , 1);
	audio_sound_gain(RuneF, 0 , 1);
	
	alarm_set(0,1);
	audio_play_sound(frog_chrorus_piano, 17, false);
	canPlay = false;
	canSetCanPlay = false;
	
	isDrawing_light = true;
	
}