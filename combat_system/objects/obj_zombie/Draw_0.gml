#macro DEAD_FRAME 6
#macro START_FRAME 0
#macro END_FRAME 5



	
//animation
if self.is_dead{
	image_speed = 0;
	image_index = DEAD_FRAME;
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




