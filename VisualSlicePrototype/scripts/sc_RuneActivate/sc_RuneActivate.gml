if(!is_activated){
	name = object_get_name(object_index);
	name = string_char_at(name,7);

	audio_sound_gain(asset_get_index("Rune" + string(name)), 1, 2000);
	//show_message("Rune" + string(name));

	// put code here for GUI integration

	self.is_in_gui = true;
	self.drawn = false;

	

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
	//ds_list_add(o_saveManager.runtimeRuneArray, object_get_name(object_index));
	//show_message(string(ds_list_size(other.runtimeRuneArray)));
	
	//event_perform(ev_gui, 0);
	//show_message(string(x) + " " + string(y));
	
	if(is_in_gui && !drawn){
	//show_debug_message("pos x beforehand = " + string(x) + object_get_name(object_index));
	x = o_InventoryManager.inventory_index * o_InventoryManager.space + o_InventoryManager.space;
	y = o_InventoryManager.space;
	drawn = true;
	
}
}