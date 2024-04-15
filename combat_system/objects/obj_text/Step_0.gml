
//BEFORE ACTION SELECTION, TIMER AS TO NOT INSTA-SELECT
if (keyboard_check_released(vk_enter) && current = battle_start){
	current = action;
	timer += 10;
}

if(keyboard_check_released(ord("E")))
{
	timer += 10;
	current = action;
}

//ARRAY LIMITS
if (current = action){
	global.array_limit = 3;
}

if (current = obj_attack.text){
	global.array_limit = 1;
}

if (current = obj_item.text){
	global.array_limit = 2;
}

if ((keyboard_check_released(vk_enter) && timer = 0 && player_turn = true)){
	if (current = obj_enemy.enemy_attack_text || current = obj_enemy.enemy_heal_text || current = obj_enemy.enemy_skip_text){
		current = player_start;
		
		//meter cap
		if(obj_meter.meter_value + 3 >= 5)
		{
			obj_meter.meter_value = 5;
		}
		else
		{
			obj_meter.meter_value += 3;
		}
	
	
		
	}else if (current = player_start && global.enemy_health >= 1){
	
		current = action;
		timer += 10;
		obj_selection.selected_object = obj_selection;
	}

}


//DISPLAY THE CURRENT TEXT
obj_textbox.Activate_Text_Box(current);


//show_debug_message(string(global.player_turn));

//show_debug_message(string(global.timer));

if (timer > 0){
	timer --
}

