if obj_god.current_state == COMBAT{


	if (obj_text.current = obj_text.action || obj_text.current = obj_attack.text  || obj_text.current =obj_item.text ){
		visible = true;
		x = global.AxPos[0] - 10;
		y = global.AyPos[0 + modifier] + 10;
	}else{
		visible = false;
		x = 0;
		y = 0;
	}


	if ((keyboard_check_released(ord("S"))) && modifier < global.array_limit){
		modifier += 1;
	}

	if ((keyboard_check_released(ord("W"))) && modifier > 0){
		modifier -= 1;
	}



//REPLACE THIS LATER WHEN WE GET A WORKING INVENTORY SYSTEM
	if (obj_text.current = obj_text.action){
		if ((obj_selection.y = global.AyPos[0] + 10)){
			selected_object = obj_attack;
		}

		if ((obj_selection.y = global.AyPos[1] + 10)){
			selected_object = obj_flee;
		}

		if ((obj_selection.y = global.AyPos[2] + 10)){
			selected_object = obj_item;
		}
		if ((obj_selection.y = global.AyPos[3] + 10)){
			selected_object = obj_skip;
		}
	}



	if  (obj_text.current = obj_attack.text){
		if ((obj_selection.y = global.AyPos[0] + 10)){
			selected_object = atk_barbed_wire_bat;
		}

		if ((obj_selection.y = global.AyPos[1] + 10)){
			selected_object = atk_emotional_trauma;
		}
	}



	if  (obj_text.current = obj_item.text){
		if ((obj_selection.y = global.AyPos[0] + 10)){
			selected_object = item_bar;
		}

		if ((obj_selection.y = global.AyPos[1] + 10)){
			selected_object = item_axe_spray;
		}
		if ((obj_selection.y = global.AyPos[2] + 10)){
			selected_object = item_lid;
		}
	}



	//show_debug_message(global.selected_object);

}








