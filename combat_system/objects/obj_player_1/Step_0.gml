closest_zombie = instance_nearest(x, y, obj_zombie);

if obj_god.current_state == EXPLORE{
	
	var _new_y = y;
	var _new_x = x;

	hsp = 0;
	vsp = 0;

	if (!place_meeting(self.x, self.y - 2, obj_solid))
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
	
	if (obj_god.up || obj_god.down || obj_god.right || obj_god.left	){
		walking = true;
	}
	else{
		walking = false;
	}

	_new_x += hsp;
	_new_y += vsp;
	
	
	//if place_meeting(

	var _ydir = sign(vsp);
	var _xdir = sign(hsp);
	
	

	y = _new_y;
	x = _new_x;

	//show_debug_message(closest_zombie);
	
	if place_meeting(x,y,obj_gods_light){
		obj_god.new_state = VICTORY;
	}

}

//SOUND SECTION
if (walking && !walk_sound){
	audio_pause_sound(Player_Walk)
	audio_sound_gain(Player_Walk, 1, 0);
	audio_play_sound(Player_Walk, 1, true);
	walk_sound = true;
}
else if !walking && walk_sound{
	audio_sound_gain(Player_Walk, 0, 500);
	walk_sound = false;
}
	