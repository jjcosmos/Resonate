/// @description Insert description here
// You can write your code in this editor
if(o_Weather_Manager.w_intensity > w_intensity_threshold){
	fading = true;
}
else if(o_Weather_Manager.w_intensity <= w_intensity_threshold){
	fading = false;
}

if(fading){
	if(image_alpha > 0)
		image_alpha-=.1;
	show_debug_message("current alpha is" + string(image_alpha));
	if(image_alpha <= 0){

		x=-1;
		y=-1;
	}
}
else{
	if(image_alpha < 1)
		image_alpha+=.1;
	if(image_alpha >= 0){

		x= start_x;
		y= start_y;
	}
}