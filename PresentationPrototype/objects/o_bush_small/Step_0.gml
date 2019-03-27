/// @description Insert description here
// You can write your code in this editor
if(o_Weather_Manager.w_intensity > .1){
	fading = true;
}
if(fading){
	image_alpha-=.05;
	if(image_alpha <= 0){

		with(linked_col){
			instance_destroy(self);
		}
		instance_destroy();
	}
}