/// @description Insert description here
// You can write your code in this editor
if (mouse_check_button_pressed(mb_left)) {
	if (point_in_circle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x + sprite_get_width(s_RuneA)/2, y + sprite_get_height(s_RuneA)/2, sprite_get_height(s_RuneA)/2)) {
		if(is_playing and is_activated){
			audio_sound_gain(asset_get_index("Rune" + string(name)), 0, 2000);
			is_playing = false;
			o_Weather_Manager.w_intensity -= rune_wOffset;
			//show_message("trying");
		}
		else if (is_activated){
			audio_sound_gain(asset_get_index("Rune" + string(name)), 1, 2000);
			is_playing = true;
			o_Weather_Manager.w_intensity += rune_wOffset;
			//show_message("trying");
		}
	}
}
if(is_playing){
	image_xscale = 1;
	image_yscale = 1;
}
else{
	image_xscale = .5;
	image_yscale = .5;
}
