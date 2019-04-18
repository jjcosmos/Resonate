/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,o_Player)){
	image_index = 2;
}

else{
	if(ticker % 30 == 0){
		frame = !frame;
	}
	image_index = frame;
}
ticker += 1;

if(ticker > 10000){
ticker = 0;
}