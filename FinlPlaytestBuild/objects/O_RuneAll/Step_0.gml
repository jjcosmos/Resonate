/// @description Insert description here
// You can write your code in this editor
if (mouse_check_button_pressed(mb_left)) {
	if (point_in_circle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x, y, sprite_get_width(s_RuneA)/2)) {
		if(is_playing and is_activated){
			audio_sound_gain(asset_get_index("Rune" + string(name)), 0, 2000);
			is_playing = false;
			o_Weather_Manager.w_intensity -= rune_wOffset;
			//show_message("trying");
			
			if(found_list){
			var j;
			for(j = 0; j < array_length_1d(rune_linked_crystals); j++){
				instance_activate_object(rune_linked_crystals[j]);
			}
			}
			audio_play_sound(thunder,17,false);
			audio_sound_gain(thunder, .1,0);
		}
		else if (is_activated){
			audio_sound_gain(asset_get_index("Rune" + string(name)), 1, 2000);
			is_playing = true;
			o_Weather_Manager.w_intensity += rune_wOffset;
			//show_message("trying");
			
			if(found_list){
			var j;
			for(j = 0; j < array_length_1d(rune_linked_crystals); j++){
				instance_deactivate_object(rune_linked_crystals[j]);
			}
			}
			audio_play_sound(thunder,17,false);
			audio_sound_gain(thunder, .1,0);
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

if(!found_list and  crystal_toggle_type != 0){
	
	var i;
	for (i = 0; i < instance_number(crystal_toggle_type); i += 1)
	{
		rune_linked_crystals[i] = instance_find(crystal_toggle_type,i);
	}
	
	found_list = true;
}
