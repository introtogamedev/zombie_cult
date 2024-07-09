
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

if current_state == LIST || in_shelf{
	
	a_z = obj_player_1.closest_zombie;
	
	if (a_z.chasing && !a_z.is_dead){		
		//hand speed = half the width of the room (the distance the hands need to travel)
		// multiplied by the approach speed of the approaching zombie
		var h_s = ((room_width/2 * a_z.APPROACH_SPD)/HAND_START_SPD_DIVIDE);
		zomb_hand_speed = h_s;
		
		//we makin some handsssss
		make_dem_hands = true;	
	}
	
}
else{
	make_dem_hands = false;
	zomb_hand_speed = 0;
	if instance_exists(L){instance_destroy(L);}
	if instance_exists(R){instance_destroy(R);}

}

//combat
if current_state == COMBAT{
	old_hand_placement = 0;
	
	audio_stop_all();
	
	audio_play_sound(Store_Music_Fucked,1,true);
}

//explore
if current_state = EXPLORE{
	
	if prev_state == COMBAT{
		audio_stop_all();
		//audio_play_sound(Store_Music_Normal,1,true);
	}
	
	if prev_state == TITLE{
		var radio_time = irandom_range(1,20);
		alarm_set(0, 60*radio_time);
	}
	
	if prev_state == LIST{
		audio_play_sound(List_Open,1,false);
	}
	
}

//title music
if current_state = TITLE{
	audio_play_sound(Store_Music_Normal,1,true);
}

//death music
if current_state == DEATH{
	audio_stop_all();
	
	audio_play_sound(Music_Death,1,false);
}

if current_state == LIST{
	audio_play_sound(List_Open,1,false);
}