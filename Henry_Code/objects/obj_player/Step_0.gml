if obj_god.current_state == EXPLORE{
	
	var _new_y = y;
	var _new_x = x;

	hsp = 0;
	vsp = 0;
	
	if obj_god.up {
		vsp = -PLR_WALK_SPD;
	}

	if obj_god.down {
		vsp = PLR_WALK_SPD;
	}

	if obj_god.left {
		hsp = -PLR_WALK_SPD;
	}

	if obj_god.right {
		hsp = PLR_WALK_SPD;
	}	

	_new_x += hsp;
	_new_y += vsp;
	
	
	//if place_meeting(

	var _ydir = sign(vsp);
	var _xdir = sign(hsp);
	
	

	//var _closest_solid = instance_nearest(x, y, obj_solid);
	
	

	y = _new_y;
	x = _new_x;

	show_debug_message(string(x) + ", " + string(y));

}

