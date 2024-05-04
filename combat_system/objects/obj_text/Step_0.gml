
//BEFORE ACTION SELECTION, TIMER AS TO NOT INSTA-SELECT
if (keyboard_check_released(vk_enter) && current = battle_start){
	current = action;
	timer += 10;
}

if(current = battle_start)
{
	obj_arrow.visible = false;
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

if ((keyboard_check_released(vk_enter) && timer = 0)){
	if (current = obj_enemy.enemy_skipp || current = obj_enemy.enemy_attack_text || current = obj_enemy.enemy_heal_text || current = obj_enemy.enemy_skip_text || current = obj_flee.failed_text || current = obj_enemy.angy_enemy_attack_text){
		if (player_turn = true){
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
		}
		if (obj_player.player_dead = true){
			current = dead;
			timer += 10;
		}
	
	
	}else if (current = dead){
		obj_god.new_state = DEATH;
	}else if (current = player_start && global.enemy_health >= 1){
	
		current = action;
		timer += 10;
		obj_selection.selected_object = obj_selection;
	}
	

}

if (obj_text.timer = 0 && obj_text.current = obj_item.no_items && keyboard_check_released(vk_enter))
{
	obj_selection.selected_object = obj_selection;
	obj_text.timer += 10;
	obj_text.current = obj_text.action;
}

//DISPLAY THE CURRENT TEXT

obj_textbox.Activate_Text_Box(current);


//show_debug_message(string(global.player_turn));

//show_debug_message(string(global.timer));

if (timer > 0){
	timer --
}

