/// @description Insert description here
// You can write your code in this editor
window_set_caption("Prototype");
window_set_color(c_red);
index = 0;
while (audio_exists(index)){
	show_debug_message(string_char_at(audio_get_name(index), 0));
	if(string_char_at(audio_get_name(index), 1) == "R"){
		audio_play_sound(asset_get_index(audio_get_name(index)), index, true);
		audio_sound_gain(index, 0, 0);
		show_debug_message("started");
	}
	index++;
}