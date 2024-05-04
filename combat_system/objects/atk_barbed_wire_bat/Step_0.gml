if (obj_text.current = obj_attack.text){
	visible = true;
}else{
	visible = false;
}



if (obj_text.timer = 0 && atk_barbed_wire_bat.visible = true && obj_selection.selected_object = atk_barbed_wire_bat && keyboard_check_released(vk_enter)){
	if(obj_meter.meter_value < 2)
	{
		obj_text.current = obj_text.no_stamina;
		obj_text.timer += 10;
	}
	else
	{
		obj_text.current = bat_effect;
		obj_meter.meter_value -= 2;
		obj_text.timer += 10;
		global.enemy_health -= 3;
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



