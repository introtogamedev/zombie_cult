if obj_god.current_state == EXPLORE && !is_dead{

	var _zomb_x = self.x;
	var _zomb_y = self.y;
	var _plr_x = obj_player_1.x;
	var _plr_y = obj_player_1.y;


	var new_y = y;
	var new_x = x;
	
	var _distance_x = _zomb_x - _plr_x;
	var _distance_y = _zomb_y - _plr_y;

	if (point_distance(_zomb_x, _zomb_y, _plr_x, _plr_y) < 16) && (!cooldown) {
		obj_god.new_state = COMBAT;
	}


	if point_distance(_zomb_x, _zomb_y, _plr_x, _plr_y) < 230 {
		if (sign (_distance_x)) == 1 { hsp = -ZOMB_WALK_SPD; }
		if (sign (_distance_x)) == -1 { hsp = ZOMB_WALK_SPD; }
		if (sign ( _distance_y)) == 1 { vsp = -ZOMB_WALK_SPD; }
		if (sign ( _distance_y)) == -1 { vsp = ZOMB_WALK_SPD; }
	}



	if (!(place_meeting(self.x - 4,self.y,obj_solid) || place_meeting(self.x + 4,self.y,obj_solid))) && 
	 !(abs(_distance_x) < ZOMB_WALK_SPD) {
		new_x += hsp;
	}
	if !(place_meeting(self.x,self.y - 4,obj_solid) || place_meeting(self.x,self.y + 4,obj_solid)) &&
	!(abs(_distance_y) < ZOMB_WALK_SPD){
		new_y += vsp;
	}
	
	y = new_y;
	x = new_x;
	
}
else if obj_god.current_state == EXPLORE && is_dead{
	//show_debug_message("i am ded");
}
