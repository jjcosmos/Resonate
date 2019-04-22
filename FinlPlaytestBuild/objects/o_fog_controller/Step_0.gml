/// @description Insert description here
// You can write your code in this editor
if(fogAlpha < fogAlphaTarget){
	fogAlpha += .002;
}
else if(fogAlpha > fogAlphaTarget){
	fogAlpha -= .002;
}