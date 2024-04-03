if (obj_text.current = obj_attack.text){
	visible = true;
}else{
	visible = false;
}




if (atk_emotional_trauma.visible = true && obj_selection.selected_object = atk_emotional_trauma && keyboard_check_released(vk_enter)){
	
	if(obj_meter.meter_value = 5)
	{
		obj_text.current = trauma_effect;
		obj_text.timer += 10;
		obj_meter.meter_value -= 5;
		global.enemy_health -= 2;
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




