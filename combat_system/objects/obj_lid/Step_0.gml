if (global.current = global.item){
	visible = true;
}else{
	visible = false;
}

if (global.selected_object != obj_lid){
	global.lid = "GARBAGE LID";
} else{
	global.lid = "GARBAGE LID- DECREASE INCOMING DMG!";
}


if (global.timer = 0 && obj_lid.visible = true && global.selected_object = obj_lid && keyboard_check_released(vk_enter)){
	
	if(obj_meter.meter_value < 2)
	{
		global.current = global.no_stamina;
		global.timer += 10;
	}
	else
	{
		global.current = global.lid_effect;
		global.status_resistance = true;
		obj_meter.meter_value -= 2;
	
		global.timer += 10;
	}
}
if(global.timer = 0 && global.current = global.lid_effect && keyboard_check_released(vk_enter))
{
	global.selected_object = obj_selection;
	global.current = global.action;
}




