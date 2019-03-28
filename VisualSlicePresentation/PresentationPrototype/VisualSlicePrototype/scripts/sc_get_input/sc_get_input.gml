//change order to set priority
move_x = 0;
move_y = 0;
if(keyboard_check(vk_left)){
	move_x -= movespeed;
	sprite_direction = "left";
	
}
if(keyboard_check(vk_right)){
	move_x += movespeed;
	sprite_direction = "right";
}
if(keyboard_check(vk_down)){
	move_y += movespeed;
	sprite_direction = "down";
}
if(keyboard_check(vk_up)){
	move_y -= movespeed;
	sprite_direction = "up";
}


if(move_x != 0 or move_y != 0){
	state = "moving";
}
else{
	state = "static";
}
