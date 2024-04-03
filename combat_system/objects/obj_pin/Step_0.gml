if (keyboard_check_pressed(vk_enter)) && (distance_to_object(obj_player_1) < 20) && (image_index = 0) {
	achieved =true;
	obj_god.checks += 1;
	obj_god.new_state = SHELF;
}




