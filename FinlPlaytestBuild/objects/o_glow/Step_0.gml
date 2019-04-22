/// @description Insert description here
// You can write your code in this editor

if(currentscale <= max_scale){
	currentscale +=.05;
}
image_xscale = currentscale;
image_yscale = currentscale;
image_angle += 10;

if(currentscale >= max_scale){
	currentscale = min_scale;
	image_xscale = currentscale;
	image_yscale = currentscale;
}
image_alpha =clamp(1-(currentscale/max_scale), 0, .5) ;