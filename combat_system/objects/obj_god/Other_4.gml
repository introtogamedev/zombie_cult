
//ambush controls
L = obj_zombhandL;
R = obj_zombhandR;
a_z = obj_player_1.closest_zombie;


if current_state == LIST || in_shelf{
	
	if a_z.chasing{		
		//hand speed = half the width of the room (the distance the hands need to travel)
		// multiplied by the approach speed of the approaching zombie
		var h_s = ((room_width/2 * a_z.APPROACH_SPD)/200);
		zomb_hand_speed = h_s;
		
		//we makin some handsssss
		make_dem_hands = true;
		show_debug_message("making hands...")
		
	}
	
}


if !(current_state == LIST || in_shelf) {
	make_dem_hands = false;
	zomb_hand_speed = 0;
	if instance_exists(L){instance_destroy(L);}
	if instance_exists(R){instance_destroy(R);}
	
	
	//a_z.x = obj_player_1.x;
	//a_z.y = obj_player_1.y;
}




