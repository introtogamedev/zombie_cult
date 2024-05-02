if obj_god.current_state == EXPLORE{
	depth = -999;
	draw_self();

	if (obj_god.up){
		sprite_index = spr_radish_up;
		
	}
	else if(obj_god.down){
		
		sprite_index = spr_radish_down;
		
	}
	else if (obj_god.left || obj_god.right){
		sprite_index = spr_radish_side;
		if(obj_god.right){
			image_xscale = -.69;
		}else{
			image_xscale = .69;
		}
		
	}
	else {
		sprite_index = spr_radish_idle;

	}
}




