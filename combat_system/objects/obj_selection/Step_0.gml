if obj_god.current_state == COMBAT{



	if (obj_text.current = obj_text.action || obj_text.current = obj_attack.text){
		visible = true;
		x = global.AxPos[0] - 10;
		y = global.AyPos[0 + modifier] + 10;
		obj_arrow.visible = false;

		if ((keyboard_check_released(ord("W"))) && modifier > 0){
			modifier -= 1;
		}

		if ((keyboard_check_released(ord("S"))) && modifier < 3){
			modifier += 1;
		}
	}
	else if (obj_text.current = obj_item.text)
	{
		x = global.AxPos[0] - 10;
		y = global.AyPos[0 + modifier] + 10;
		obj_arrow.visible = true;

		if (keyboard_check_released(ord("S")))
		{
			if (modifier < global.array_limit && !item_inventory.last_item){
				modifier += 1;
			}else if (item_inventory.offset_index + modifier < 7 && !item_inventory.last_item)//array_length(obj_manager.inv) - 1){
			{
				item_inventory.offset_index += 1;
			}
			 //show_debug_message([modifier, global.array_limit,  item_inventory.offset_index]);
		}

		if (keyboard_check_released(ord("W"))){
			if (modifier > 0){
				modifier -= 1;
			}else if (item_inventory.offset_index +  modifier > 0){
					item_inventory.offset_index -= 1;
				}
			 //show_debug_message([modifier, global.array_limit,  item_inventory.offset_index]);
		}
	}
	else
	{
		visible = false;
		x = 0;
		y = 0;
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

		selected_object = item_inventory;
	}



	//show_debug_message(global.selected_object);

}

