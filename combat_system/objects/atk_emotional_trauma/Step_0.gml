if (obj_text.current = obj_attack.text){
	visible = true;
}else{
	visible = false;
}


if (atk_emotional_trauma.visible = true && obj_selection.selected_object = atk_emotional_trauma && keyboard_check_released(vk_enter)){
	
	if(obj_meter.meter_value >= 4)
	{
		chance();
		
		if(ed_sum == !1)
		{
			obj_text.current = trauma_effect;
			obj_text.timer += 10;
			obj_meter.meter_value -= 4;
			obj_enemy.getting_hit = true;
			//please for the love of god work I beg you
			global.enemy_health -= 10;
		}
		else
		{
			obj_text.current = failed_attempt;
			obj_text.timer += 10;
		}
	}
	else
	{
		obj_text.current = obj_text.no_stamina;
		obj_text.timer += 10;
	}
}
if(obj_text.timer = 0 && obj_text.current = trauma_effect && keyboard_check_released(vk_enter))
{
	obj_selection.selected_object = obj_selection;
	obj_text.timer += 10;
	obj_text.current = obj_text.action;
}
if(obj_text.timer = 0 && obj_text.current = obj_text.no_stamina && keyboard_check_released(vk_enter))
{
	obj_selection.selected_object = obj_selection;
	obj_text.timer += 10;
	obj_text.current = obj_text.action;
}

if (obj_text.timer = 0 && obj_text.current = failed_attempt && keyboard_check_released(vk_enter))
{
	obj_text.player_turn = false;
	obj_text.timer += 10;
	obj_enemy.angy_enemy = true;
	obj_text.current = obj_enemy.enemy_start;
}

function chance()
{
	ed_sum = irandom_range(0,5);
	return ed_sum;
}

//show_debug_message(ed_sum);

