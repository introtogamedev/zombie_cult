if (global.current = global.attack){
	visible = true;
}else{
	visible = false;
}



if (global.timer = 0 && obj_barbed_wire_bat.visible = true && global.selected_object = obj_barbed_wire_bat && keyboard_check_released(vk_enter)){
	if(obj_meter.meter_value < 3)
	{
		global.current = global.no_stamina;
		global.timer += 10;
	}
	else
	{
		global.current = global.bat;
		obj_meter.meter_value -= 3;
		global.timer += 10;
		global.enemy_health -= 3;
	}
}
if(global.timer = 0 && global.current = global.bat && keyboard_check_released(vk_enter))
{
	global.selected_object = obj_selection;
	global.current = global.action;
}
if(global.timer = 0 && global.current = global.no_stamina && keyboard_check_released(vk_enter))
{
	global.selected_object = obj_selection;
	global.current = global.action;
}



