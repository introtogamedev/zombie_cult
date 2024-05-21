



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
	
	
	#region BROKEN STUFF COMMENT THIS OUT IF U WANT IT TO WORK NORMALLY
	
	/*
	
	
	var alarm_time = 60*random_range(1,2);
	
	
	//the current navigation directions
	var curr_h_nav = 0;
	var curr_v_nav = 0;
	
	//if !(x_col_l || x_col_r || y_col_u || y_col_d){navigating = NOT;}
	
	
	if (x_col_l || x_col_r){
		navigating = VER;
		if (alarm_get(2) == -1 ){
			var _ver_moving = irandom_range(0, 1);
			if _ver_moving == 0 {_ver_moving = -1}
			ver_moving = _ver_moving;
		}
		
		
		
		#region yea no this was a failure
		/*
		navigating = VER;
		//read the current vertical chase direction and set curr_h_nav to that
		curr_h_nav = -sign(_distance_y);
		
		//if we're not already navigating and if the current is DIFFERENT from previous
			//(meaning we don't need to travel further the same direction or we're in a different location)
		if (ver_moving == -1) && (curr_h_nav != last_h_nav){
			//then set ver_moving to the direction of the player
			ver_moving = curr_h_nav*ZOMB_WALK_SPD;
		}
		
		//if we ARE going the same direction
		else if (ver_moving == -1) && (curr_h_nav == last_h_nav){
			
			//keep going that way
			ver_moving = -last_h_nav*ZOMB_WALK_SPD;
		}
			
		//update the previous navigation variable to the current one
		last_h_nav = curr_h_nav;
		
		#endregion
	}
	
	
	if (y_col_u || y_col_d){
		navigating = HOR;
		if (alarm_get(3) == -1 ){
			var _hor_moving = irandom_range(0, 1);
			if _hor_moving == 0 {_hor_moving = -1}
			hor_moving = _hor_moving;
		}
		
	}
	
	*/
	
	#endregion
	
	//if we're not trying to get around something
	if (navigating == NOT){
		// if we're (not (running into something and moving that direction)) and (not directly across from the player)
		// then set our speed based on what room we're in
		if !(x_col_l && hsp < 0) && !(x_col_r && hsp > 0) && !(abs(_distance_x) < ZOMB_WALK_SPD) {new_x += hsp;}
		if !(y_col_u && vsp > 0) && !(y_col_d && vsp < 0) && !(abs(_distance_y) < ZOMB_WALK_SPD){new_y += vsp;}
	}
	else {
		if (alarm_get(2) == -1 ){alarm_set(2, alarm_time);}
		if (alarm_get(3) == -1 ){alarm_set(3, alarm_time);}
		if navigating = VER{
			new_y += ver_moving*ZOMB_WALK_SPD;
		}
		if navigating = HOR{
			new_x += hor_moving*ZOMB_WALK_SPD;
			
		}
	}
	
	
	//if we're close enough, go to ambush time (only applies when not in explore)
	if ( (abs(_distance_x) < 20) && (abs(_distance_y) < 20) && (!_in_explore) ){
		ambush = true;
	}
	else{
		ambush = false;
	}
	
	//actually update things
	if (!intelligent) || (intelligent && !chasing){
		y = new_y;
		x = new_x;
	}

	
	if intelligent && chasing{
		mp_potential_step(obj_player_1.x, obj_player_1.y, _real_speed, false);
	}

}