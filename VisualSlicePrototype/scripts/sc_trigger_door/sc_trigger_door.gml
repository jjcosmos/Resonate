/// @param {real} instance_id The unique instance ID value of the instance to check.
door = argument0;
isActive = argument1;
if(!isActive){
	instance_activate_object(door);
}
else{
	instance_deactivate_object(door);
}
