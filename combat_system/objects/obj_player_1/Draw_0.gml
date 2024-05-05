

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
/*

draw_set_color(c_white)
draw_rectangle(x-4,y-4, x+4,y+4, false);
draw_set_color(c_black)
draw_rectangle(x-2,y-2, x+2,y+2, false);




