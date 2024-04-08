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


//e key lets you leave shelf
if current_state == SHELF {
	if keyboard_check(vk_escape) {
		new_state = EXPLORE;
	}
}

//MURDER HIM
if zombie_death = true{
	obj_player.closest_zombie.is_dead = true;
}

#region room controller
if current_state != new_state {
	if new_state = DEATH {room_goto(Death);}
	if new_state = EXPLORE {room_goto(Explore);}
	if new_state = COMBAT {room_goto(Combat);}
	if new_state = SHELF {room_goto(Shelf);}
	//hey hey. what if we were somewhere else
	current_state = new_state;
}


