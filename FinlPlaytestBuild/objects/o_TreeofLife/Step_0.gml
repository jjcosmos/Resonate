/// @description Insert description here
// You can write your code in this editor
//PLEASE HELP
if(o_Weather_Manager.w_intensity > 0.9){
	Glowing= true;
}
else{
	Glowing = false;
}
o_glow.visible = Glowing;
image_index = Glowing;

if(o_Weather_Manager.w_intensity > 0.9 and distance_to_object(o_Player) < 20){
	//fade to white
	temp +=.01;
	layer_background_alpha(back_ID, temp);
	
	//show_message(temp);
	if(temp >= 1.5){
		room_goto(2)
	}
}