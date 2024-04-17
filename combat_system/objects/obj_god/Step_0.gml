//END IT ALL
if keyboard_check_pressed(ord("L")) {game_end()}

//restart if R is pressed
if keyboard_check_pressed(ord("R")) {
	//game_restart()
	new_state = EXPLORE;
	show_debug_message("HI")
}

//T key toggles combat
if keyboard_check_pressed(ord("T")) {
	//game_restart()
	new_state = COMBAT;
	show_debug_message("HI")
}

//check keyboard input
//horzinotal
up = keyboard_check(ord("W"))
	

down = keyboard_check(ord("S"))
	
//verticle
right=keyboard_check(ord("D"))
	
left = keyboard_check(ord("A"))

//e key opens list
if (current_state == EXPLORE || current_state == SHELF){
	if keyboard_check(ord("E")){
		//hold onto the previous state while in list
		prev_state = current_state;
		new_state = LIST;
	}
}

//releasing e key returns you to whichever room you were just in
if current_state == LIST{
	if keyboard_check_released(ord("E")){
		new_state = prev_state;
	}
}

//esc key lets you leave shelf 
if current_state == SHELF {
	if keyboard_check(vk_escape){
		new_state = EXPLORE;
	}
}


//MURDER HIM
if zombie_death = true{
	obj_player_1.closest_zombie.is_dead = true;
	zombie_death = false;
}

#region room controller
if current_state != new_state {
	if new_state = DEATH {room_goto(Death);}
	if new_state = EXPLORE {room_goto(Explore);}
	if new_state = COMBAT {room_goto(Combat);}
	if new_state = SHELF {room_goto(Shelf);}
	if new_state = LIST {room_goto(List);}
	//hey hey. what if we were somewhere else
	current_state = new_state;
}


