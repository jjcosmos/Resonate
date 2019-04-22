/// @description Insert description here
// You can write your code in this editor
for(var i = 0; i < round(o_Weather_Manager.w_intensity * 15); i += 1){
	instance_create_layer(random_range(0, room_width),random_range(0, room_height-room_height/4-50), "FX", o_RainDrop);
}