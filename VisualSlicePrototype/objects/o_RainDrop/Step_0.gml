/// @description Insert description here
// You can write your code in this editor
if(moving){
	y+= rain_speed;
	x-=1.5;
}
if(y > max_travel_offset){
	moving = false;	
	image_yscale = 1;
	image_angle = 0;
	image_xscale = 1;
}
if(!moving){
	image_alpha-= .01;
	if(image_alpha <= 0){
		instance_destroy();
	}
}