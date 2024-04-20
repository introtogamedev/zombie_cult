//END IT ALL
if keyboard_check_pressed(ord("L")) {game_end()}

//restart if R is pressed
if keyboard_check_pressed(ord("R")) {
	game_restart()
}

//T key toggles combat
if keyboard_check_pressed(ord("T")) {
	//game_restart()
	new_state = COMBAT;
	//show_debug_message("HI")
}

//check keyboard input
//horzinotal
up = keyboard_check(ord("W"))
down = keyboard_check(ord("S"))
//verticle
right=keyboard_check(ord("D"))
left = keyboard_check(ord("A"))

//annoying shelf code
if 	(current_state = BAKERY ||
	current_state = FREEZER ||
	current_state = PRODUCE ||
	current_state = DRY_GOODS ||
	current_state = PHARMACY ||
	current_state = PETS ||
	current_state = CRAFTS ||
	current_state = TOYS ||
	current_state = OUTDOOR ||
	current_state = HOME ||
	current_state = ELECTRONICS ||
	current_state = COSMETICS ||
	current_state = BATH_BODY ||
	current_state = JEWELERY ||
	current_state = CLOTHING ){
		in_shelf = true
}
else{
	in_shelf = false;
}

//e key opens list
if (current_state == EXPLORE || in_shelf){
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
if in_shelf {
	if keyboard_check_pressed(ord("F")){
		new_state = EXPLORE;
	}
}


//MURDER HIM
if zombie_death = true{
	obj_player_1.closest_zombie.is_dead = true;
	zombie_death = false;
}

//MAKE DEM HANDSSSS


if (((current_state = LIST) || (in_shelf)) && make_dem_hands && a_z.ambush ) {
	if (!instance_exists(L)) {instance_create_layer(-1000,-1000,"Hands_Layer",L);}
	if (!instance_exists(R)) {instance_create_layer(-1000,-1000,"Hands_Layer",R);}
	
	show_debug_message("made hands :)");
	
	if (L.x > 639) {new_state = COMBAT;}
	
}
	

#region room controller
if current_state != new_state {
	if new_state = DEATH {room_goto(Death);}
	if new_state = EXPLORE {room_goto(Explore);}
	if new_state = COMBAT {room_goto(Combat);}
	if new_state = SHELF {room_goto(Shelf);}
	if new_state = LIST {room_goto(List);}
	if new_state = VICTORY {room_goto(Victory);}
	
	//ALL THE SHELVES
	if new_state = BAKERY {room_goto(Bakery);}
	if new_state = FREEZER {room_goto(Freezer);}
	if new_state = PRODUCE {room_goto(Produce);}
	if new_state = DRY_GOODS {room_goto(Dry_Goods);}
	if new_state = PHARMACY {room_goto(Pharmacy);}
	if new_state = PETS {room_goto(Pets);}
	if new_state = CRAFTS {room_goto(Crafts);}
	if new_state = TOYS {room_goto(Toys);}
	if new_state = OUTDOOR {room_goto(Outdoor);}
	if new_state = HOME {room_goto(Home);}
	if new_state =  ELECTRONICS {room_goto(Electronics);}
	if new_state = COSMETICS {room_goto(Cosmetics);}
	if new_state = BATH_BODY {room_goto(Bath_Body);}
	if new_state = JEWELERY {room_goto(Jewelery);}
	if new_state = CLOTHING {room_goto(Clothing);}
	
	
	//hey hey. what if we were somewhere else
	current_state = new_state;
}


