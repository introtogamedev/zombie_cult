if (obj_text.current = obj_attack.text){
	visible = true;
}else{
	visible = false;
}



if (obj_text.timer = 0 && atk_barbed_wire_bat.visible = true && obj_selection.selected_object = atk_barbed_wire_bat && keyboard_check_released(vk_enter)){
	if(obj_meter.meter_value < 3)
	{
		obj_text.current = obj_text.no_stamina;
		obj_text.timer += 10;
	}
	else
	{
		bat_chance();
		
		if(bat_sum == 0 || bat_sum == 2)
		{	
			obj_text.current = bat_effect;
			obj_meter.meter_value -= 3;
			obj_text.timer += 10;
			global.enemy_health -= 3;
			audio_play_sound(snd_bat_attack, 1, false);
			obj_enemy.getting_hit = true;
		}
		else
		{
			obj_text.current = failed_bat;
			obj_meter.meter_value -= 3;
			obj_text.timer += 10;
			audio_play_sound(snd_bat_attack, 1, false);
			
		}
	}
}
if(obj_text.timer = 0 && obj_text.current = bat_effect && keyboard_check_released(vk_enter))
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
if(obj_text.timer = 0 && obj_text.current = failed_bat && keyboard_check_released(vk_enter))
{
	obj_selection.selected_object = obj_selection;
	obj_text.timer += 10;
	obj_text.current = obj_text.action;
}

function bat_chance()
{
	bat_sum = irandom_range(0,3);
	return bat_sum;
}



