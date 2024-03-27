if (global.current = global.action || global.current = global.attack  || global.current = global.item ){
	visible = true;
	x = global.AxPos[0] - 10;
	y = global.AyPos[0 + global.modifier] + 10;
}else{
	visible = false;
	x = 0;
	y = 0;
}


if ((keyboard_check_released(ord("S"))) && global.modifier < global.array_limit){
	global.modifier += 1;
}

if ((keyboard_check_released(ord("W"))) && global.modifier > 0){
	global.modifier -= 1;
}


if (global.current = global.action){
	if ((obj_selection.y = global.AyPos[0] + 10)){
		global.selected_object = act_attack;
	}

	if ((obj_selection.y = global.AyPos[1] + 10)){
		global.selected_object = act_flee;
	}

	if ((obj_selection.y = global.AyPos[2] + 10)){
		global.selected_object = act_item;
	}
	if ((obj_selection.y = global.AyPos[3] + 10)){
		global.selected_object = act_skip;
	}
}



if  (global.current = global.attack){
	if ((obj_selection.y = global.AyPos[0] + 10)){
		global.selected_object = obj_barbed_wire_bat;
	}

	if ((obj_selection.y = global.AyPos[1] + 10)){
		global.selected_object = obj_emotional_trauma;
	}
}



if  (global.current = global.item){
	if ((obj_selection.y = global.AyPos[0] + 10)){
		global.selected_object = obj_bar;
	}

	if ((obj_selection.y = global.AyPos[1] + 10)){
		global.selected_object = obj_axe_spray;
	}
	if ((obj_selection.y = global.AyPos[2] + 10)){
		global.selected_object = obj_lid;
	}
}



show_debug_message(global.selected_object);








