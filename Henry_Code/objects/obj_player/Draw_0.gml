draw_self();

if (obj_god.up || obj_god.down || obj_god.left|| obj_god.right){
	show_debug_message("MOBVING");
	image_speed = 1;
}
else {
	image_index = 0;
	image_speed = 0;
}




