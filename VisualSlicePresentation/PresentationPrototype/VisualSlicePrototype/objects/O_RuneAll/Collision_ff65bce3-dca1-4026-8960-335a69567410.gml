/// @description Rune Activation col
if(!is_activated){
	name = object_get_name(object_index);
	name = string_char_at(name,7);

	audio_sound_gain(asset_get_index("Rune" + string(name)), 1, 2000);
	//show_message("Rune" + string(name));

	// put code here for GUI integration

	is_in_gui = true;
	drawn = false;

	with(o_InventoryManager){
		//show_message(instance_id_get(o_InventoryManager));
		event_user(0);
		//show_message(object_get_name(object_index));
		//show_message(o_InventoryManager.inventory_index);
	}
	solid = false;
	is_activated = true;
	is_playing = true;
	audio_play_sound(Get_Rune, 11, false);
	audio_sound_gain(Get_Rune, .1, 0);
	instance_create_layer(x,y,"FX", o_MusicFX);
	o_Weather_Manager.w_intensity += rune_wOffset;
	ds_list_add(o_saveManager.runtimeRuneArray, object_get_name(object_index));
	//show_message("BAD STUFF");
}