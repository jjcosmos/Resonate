/// @description Insert description here
// You can write your code in this editor
if(!colliding){
	
	
	
		
		
		if(is_bridge){
			sc_trigger_door(linked_doors, !triggered);
			colliding = true;
			triggered = !triggered;
		
			sc_trigger_door(obj_turn_on, !triggered);
		}
	
		else{
			sc_trigger_door(linked_doors, !triggered);
			colliding = true;
			triggered = !triggered;
		}
	
}