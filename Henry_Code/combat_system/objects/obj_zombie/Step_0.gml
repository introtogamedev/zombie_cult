if obj_god.current_state == EXPLORE{

	var _zomb_x = self.x;
	var _zomb_y = self.y;
	var _plr_x = obj_player_1.x;
	var _plr_y = obj_player_1.y;


	var new_y = y;
	var new_x = x;
	


	if point_distance(_zomb_x, _zomb_y, _plr_x, _plr_y) < 16 {
		obj_god.new_state = COMBAT;
	}


	if point_distance(_zomb_x, _zomb_y, _plr_x, _plr_y) < 230 {
		if (sign (_zomb_x - _plr_x) == 1 && !place_meeting(self.x - 8,self.y,obj_solid)) { hsp = -ZOMB_WALK_SPD; }
		if (sign (_zomb_x - _plr_x) == -1 && !place_meeting(self.x + 8,self.y,obj_solid))  { hsp = ZOMB_WALK_SPD; }
		if (sign (_zomb_y - _plr_y) == 1 && !place_meeting(self.x,self.y - 8,obj_solid))  { vsp = -ZOMB_WALK_SPD; }
		if (sign (_zomb_y - _plr_y) == -1 && !place_meeting(self.x,self.y + 8,obj_solid))  { vsp = ZOMB_WALK_SPD; }
	}


	new_x += hsp;
	new_y += vsp;
	
	y = new_y;
	x = new_x;
}
if obj_god.current_state == COMBAT{
	if keyboard_check_pressed(ord("R")){
		x += 50;
	}
}