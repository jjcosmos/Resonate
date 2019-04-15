/// @description Insert description here
// You can write your code in this editor
gpu_set_blendmode(bm_inv_src_color);
draw_sprite_ext(s_DarkenLayer, -1, 0,0,room_width, room_height,0,c_white, clamp(o_Weather_Manager.w_intensity,0,.7));
gpu_set_blendmode(bm_normal);
