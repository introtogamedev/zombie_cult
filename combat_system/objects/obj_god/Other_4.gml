//annoying shelf code just ignore (it makes all the shelves into shelves)
if 	(current_state = BAKERY ||
	current_state = FREEZER ||
	current_state = PRODUCE ||
	current_state = DRY_GOODS ||
	current_state = PHARMACY ||
	current_state = PETS ||
	current_state = CRAFTS ||
	current_state = TOYS ||
	current_state = OUTDOOR ||
	current_state = HOME ||
	current_state = ELECTRONICS ||
	current_state = COSMETICS ||
	current_state = BATH_BODY ||
	current_state = JEWELERY ||
	current_state = CLOTHING ){
		in_shelf = true;		
}
else{
	in_shelf = false;

}


//ambush controls
L = obj_zombhandL;
R = obj_zombhandR;
a_z = obj_player_1.closest_zombie;
show_debug_message(a_z)
a_z.ambush = false;


if current_state == LIST || in_shelf{
	
	if a_z.chasing{		
		//hand speed = half the width of the room (the distance the hands need to travel)
		// multiplied by the approach speed of the approaching zombie
		var h_s = ((room_width/2 * a_z.APPROACH_SPD)/HAND_START_SPD_DIVIDE);
		zomb_hand_speed = h_s;
		
		//we makin some handsssss
		make_dem_hands = true;
		show_debug_message("making hands...")
		
	}
	
}
else{
	make_dem_hands = false;
	zomb_hand_speed = 0;
	if instance_exists(L){instance_destroy(L);}
	if instance_exists(R){instance_destroy(R);}
	

}

if in_shelf{show_debug_message("in chslef")}


