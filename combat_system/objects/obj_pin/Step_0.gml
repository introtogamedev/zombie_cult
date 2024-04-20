if obj_god.current_state == EXPLORE{
	if (keyboard_check_pressed(ord("F"))) && (distance_to_object(obj_player_1) < 15) && (image_index = 0) {
		achieved =true;
		obj_god.checks += 1;
		obj_god.new_state = my_room;
	}
}




