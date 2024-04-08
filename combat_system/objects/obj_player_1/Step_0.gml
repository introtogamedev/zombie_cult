if obj_god.current_state == EXPLORE{
	
	var _new_y = y;
	var _new_x = x;

	hsp = 0;
	vsp = 0;

	if (!place_meeting(self.x, self.y - 3, obj_solid))
		{
		if obj_god.up {
			vsp = -PLR_WALK_SPD;
		}
		}
	if (!place_meeting(self.x, self.y + 2, obj_solid))
		{
		if obj_god.down {
			vsp = PLR_WALK_SPD;
		}
		}
	if (!place_meeting(self.x - 4, self.y, obj_solid))
		{
		if obj_god.left {
			hsp = -PLR_WALK_SPD;
		}
		}
	if (!place_meeting(self.x + 4, self.y, obj_solid))
		{
		if obj_god.right {
			hsp = PLR_WALK_SPD;
		}
	}

	_new_x += hsp;
	_new_y += vsp;
	
	
	//if place_meeting(

	var _ydir = sign(vsp);
	var _xdir = sign(hsp);
	

	
	

	y = _new_y;
	x = _new_x;

	closest_zombie = instance_nearest(x, y, obj_zombie);

}

