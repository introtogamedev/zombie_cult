if obj_god.current_state == EXPLORE{
	
	var _new_y = y;
	var _new_x = x;

	hsp = 0;
	vsp = 0;
	if (!place_meeting(self.x, self.y - 8, obj_solid))
		{
		if obj_god.up {
			vsp = -PLR_WALK_SPD;
		}
		}
	if (!place_meeting(self.x, self.y + 8, obj_solid))
		{
		if obj_god.down {
			vsp = PLR_WALK_SPD;
		}
		}
	if (!place_meeting(self.x - 8, self.y, obj_solid))
		{
		if obj_god.left {
			hsp = -PLR_WALK_SPD;
		}
		}
	if (!place_meeting(self.x + 8, self.y, obj_solid))
		{
		if obj_god.right {
			hsp = PLR_WALK_SPD;
		}
		}
//cool comment
	_new_x += hsp;
	_new_y += vsp;

	var _ydir = sign(vsp);
	var _xdir = sign(hsp);

	var _closest_solid = instance_nearest(x, y, obj_solid);

	//// other distances (half of the size of the sprite we're hitting)
	////vertical
	//var _VOD = _closest_solid.sprite_height/2;
	////horizontal
	//var _HOD = _closest_solid.sprite_width/2;

	//// self distance (half of our sprite size)
	////vertical
	//var _VSD = sprite_height/2;
	////horizontal
	//var _HSD = sprite_height/2;

	//if (place_meeting(x, _new_y, obj_solid)){
	//	_new_y = (_closest_solid.y - (_VOD * _ydir) - (_VSD * _ydir));
	//}

	//if (place_meeting(x, _new_x, obj_solid)){
	//	_new_x = (_closest_solid.x - (_HOD * _xdir) - (_HSD * _xdir));
	//}

	//while (place_meeting(x, new_y, obj_solid))
	//{
	//	if obj_god.up {new_y -= (-1*ydir);}
	//	if obj_god.down {new_y += (-1*ydir);}
	//}

	//while (place_meeting(new_x, y, obj_solid))
	//{
	//	if obj_god.left {new_x -= (-1*xdir);}
	//	if obj_god.right {new_x += (-1*xdir);}
	//}
	

	y = _new_y;
	x = _new_x;

}

