
//setup for chasing the player
var _zomb_x = self.x;
var _zomb_y = self.y;
var _plr_x = obj_player_1.x;
var _plr_y = obj_player_1.y;

//setup to make room navigation less clunky
var _in_explore = obj_god.current_state == EXPLORE;
var _in_shelf = obj_god.in_shelf;
var _in_list = obj_god.current_state == LIST;

//if we're alive, in explore, in a shelf, or in the list
if (!is_dead && (_in_explore || _in_shelf || _in_list)){

	//if we're in explore be fast
	if _in_explore{var _real_speed = ZOMB_WALK_SPD;}
	
	//if we're creeping up be slower
	else{var _real_speed = APPROACH_SPD;}
	
	var new_y = y;
	var new_x = x;
	
	//where dat player at
	var _distance_x = _zomb_x - _plr_x;
	var _distance_y = _zomb_y - _plr_y;

	//if player gets caught in explore, trigger combat
	if (point_distance(_zomb_x, _zomb_y, _plr_x, _plr_y) < 16) && (!cooldown) && _in_explore {
		obj_god.new_state = COMBAT;
	}

	//if player is in range, start chasing, if they're not, don't
	if point_distance(_zomb_x, _zomb_y, _plr_x, _plr_y) < ZOMB_TRIGGER_RANGE {
		chasing = true;
	}
	else{
		chasing = false;
	}
	
	//if we're chasing them....chase them
	if chasing{
		if (sign (_distance_x)) == 1 { hsp = -_real_speed; }
		if (sign (_distance_x)) == -1 { hsp = _real_speed; }
		if (sign ( _distance_y)) == 1 { vsp = -_real_speed; }
		if (sign ( _distance_y)) == -1 { vsp = _real_speed; }
	}
	//if we're not chasing them
	else if direction_choice{
		
		var time_until_change = irandom_range(3,13);
		alarm_set(1, room_speed*(time_until_change));
		//show_debug_message("i'm changing direction now :)  " + string(random_range(1,5)));
		
		vsp = random_range(-ZOMB_WALK_SPD, ZOMB_WALK_SPD);
		hsp = random_range(-ZOMB_WALK_SPD, ZOMB_WALK_SPD);
		
		direction_choice = false;
	}

	var OS = 1

	//set varables to if we're running into smth or not
	var x_col_l = place_meeting(self.x - OS,self.y,obj_solid);
	var x_col_r = place_meeting(self.x + OS ,self.y,obj_solid);
	var y_col_u = place_meeting(self.x,self.y + OS,obj_solid);
	var y_col_d = place_meeting(self.x,self.y - OS,obj_solid);

	// if we're (not (running into something and moving that direction)) and (not directly across from the player)
	// then set our speed based on what room we're in
	if !(x_col_l && hsp < 0) && !(x_col_r && hsp > 0) && !(abs(_distance_x) < ZOMB_WALK_SPD) {new_x += hsp;}
	if !(y_col_u && vsp > 0) && !(y_col_d && vsp < 0) && !(abs(_distance_y) < ZOMB_WALK_SPD){new_y += vsp;}
	
	//if we're close enough, go to ambush time (only applies when not in explore)
	if ( (abs(_distance_x) < 5) && (abs(_distance_y) < 5) && (!_in_explore) ){
		ambush = true;
	}
	else{
		ambush = false;
	}
	
	//actually update things
	y = new_y;
	x = new_x;
	
}
//also don't do anything if we're dead
else if _in_explore && is_dead{
	//show_debug_message("i am ded");
}
