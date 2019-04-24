/// @description Insert description here
// You can write your code in this editor
//draw_self();
if(isDrawing_light){
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(s_light,-1,x + 15,y+20,2,2,0,c_white,.5);
	gpu_set_blendmode(bm_normal);
	show_debug_message("froggo");
}