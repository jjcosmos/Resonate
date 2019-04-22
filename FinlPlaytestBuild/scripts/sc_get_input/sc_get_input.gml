//change order to set priority
move_x = 0;
move_y = 0;
if(keyboard_check(vk_left) or keyboard_check(ord("A"))){
	move_x -= movespeed;
	sprite_direction = "left";
	
}
if(keyboard_check(vk_right)  or keyboard_check(ord("D"))){
	move_x += movespeed;
	sprite_direction = "right";
}
if(keyboard_check(vk_down)  or keyboard_check(ord("S")) ){
	move_y += movespeed;
	sprite_direction = "down";
}
if(keyboard_check(vk_up)  or keyboard_check(ord("W")) ){
	move_y -= movespeed;
	sprite_direction = "up";
}


if(move_x != 0 or move_y != 0){
	state = "moving";
}
else{
	state = "static";
}
