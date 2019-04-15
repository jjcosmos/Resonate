/// @description Insert description here
// You can write your code in this editor
if(!colliding){
	sc_trigger_door(linked_door, !triggered);
	colliding = true;
	triggered = !triggered;
}