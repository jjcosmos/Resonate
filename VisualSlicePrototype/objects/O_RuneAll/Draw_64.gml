/// @description Insert description here
// You can write your code in this editor

if(is_in_gui && !drawn){
	//show_debug_message("pos x beforehand = " + string(x) + object_get_name(object_index));
	x = o_InventoryManager.inventory_index * o_InventoryManager.space + o_InventoryManager.space;
	y = o_InventoryManager.space;
	drawn = true;
	
}
if(is_in_gui){
	//draw_sprite(object_get_sprite(object_index), -1, x, y);
	draw_sprite_ext(object_get_sprite(object_index), -1, x, y, 1, 1, 0, c_white, is_playing +.5);
}
//if(is_in_gui)
	//show_debug_message("pos x= " + string(x) + object_get_name(object_index));