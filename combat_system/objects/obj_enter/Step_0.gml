if (mouse_x > x && mouse_x < x + sprite_width &&
	mouse_y > y && mouse_y < y + sprite_height){
		image_index = ENTER_GLOW;
		if (mouse_check_button_pressed(mb_left)){
			obj_god.new_state = EXPLORE;
			show_debug_message("pls");
		}
}else{
	image_index = ENTER;
}


if (keyboard_check_pressed(vk_enter)){
	obj_god.new_state = EXPLORE;
}







