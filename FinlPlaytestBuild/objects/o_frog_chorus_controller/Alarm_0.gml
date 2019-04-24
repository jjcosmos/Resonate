/// @description Insert description here
// You can write your code in this editor
//show_message(string(current_frog_index));
var current_frog = frogs[| current_frog_index];
current_frog.image_index = 1;

if(current_frog_index + 1 < ds_list_size(frogs)){
	current_frog_index ++;
	
	alarm_set(0, 90);
}

else{
	alarm_set(1, 200);
}