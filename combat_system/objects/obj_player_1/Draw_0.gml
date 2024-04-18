if obj_god.current_state == EXPLORE{
	depth = -999;
	draw_self();

	if (obj_god.up || obj_god.down || obj_god.left|| obj_god.right){
		image_speed = 1;
	}
	else {
		image_index = 0;
		image_speed = 0;
	}
}




