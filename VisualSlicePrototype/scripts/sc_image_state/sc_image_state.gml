switch(sprite_direction){
	case "down":
		sprite_index = Run_Down;
		break;
	case "up":
		sprite_index = Run_Up;
		break;
	case "right":
		sprite_index = Run_Right;
		break;
	case "left":
		sprite_index = Run_Left;
		break;
	default:
		break;
}

if (state == "static"){
	image_speed = 0;
	//image_index = 0;
}
else{
	image_speed = .5;
}
