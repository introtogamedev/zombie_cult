
//BEFORE ACTION SELECTION, TIMER AS TO NOT INSTA-SELECT
if (keyboard_check_released(vk_enter) && global.current = battle_start){
	global.current = global.action;
	global.timer += 10;
}

if(keyboard_check_released(ord("E")))
{
	global.timer += 10;
	global.current = global.action;
}

//ARRAY LIMITS
if (global.current = global.action){
	global.array_limit = 3;
}

if (global.current = global.attack){
	global.array_limit = 1;
}

if (global.current = global.item){
	global.array_limit = 2;
}

if ((keyboard_check_released(vk_enter) && global.timer = 0 && global.player_turn = true)){
	if (global.current = global.enemy_attack || global.current = global.enemy_heal || global.current = global.enemy_skip){
		global.current = global.player_start;
		
		//meter cap
		if(obj_meter.meter_value + 3 >= 5)
		{
			obj_meter.meter_value = 5;
		}
		else
		{
			obj_meter.meter_value += 3;
		}
	
	
		
	}else if (global.current = global.player_start){
	
		global.current = global.action;
		global.timer += 10;
		global.selected_object = obj_selection;
	}

}


//DISPLAY THE CURRENT TEXT
obj_textbox.Activate_Text_Box(global.current);


//show_debug_message(string(global.player_turn));

//show_debug_message(string(global.timer));

if (global.timer > 0){
	global.timer --
}

