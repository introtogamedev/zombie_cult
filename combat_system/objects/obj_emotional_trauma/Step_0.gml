if (global.current = global.attack){
	visible = true;
}else{
	visible = false;
}




if (obj_emotional_trauma.visible = true && global.selected_object = obj_emotional_trauma && keyboard_check_released(vk_enter)){
	
	if(obj_meter.meter_value = 5)
	{
		global.current = global.trauma;
		global.timer += 10;
		obj_meter.meter_value -= 5;
		global.enemy_health -= 2;
	}
	else
	{
		global.current = global.no_stamina;
		global.timer += 10;
	}
}
if(global.timer = 0 && global.current = global.trauma && keyboard_check_released(vk_enter))
{
	global.selected_object = obj_selection;
	global.timer += 10;
	global.current = global.action;
}
if(global.timer = 0 && global.current = global.no_stamina && keyboard_check_released(vk_enter))
{
	global.selected_object = obj_selection;
	global.timer += 10;
	global.current = global.action;
}




