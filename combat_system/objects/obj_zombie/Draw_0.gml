#macro DEAD_FRAME 4
#macro START_FRAME 0
#macro END_FRAME 4



	
//animation
if self.is_dead{
	image_speed = 0;
	sprite_index = spr_zombie_dead;
}
else{
	if image_index = END_FRAME{
		image_index = START_FRAME
	}
}
			
	

if obj_god.current_state == EXPLORE{
	draw_self();
	depth = -999;
}




