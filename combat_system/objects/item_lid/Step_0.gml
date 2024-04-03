if (obj_text.current = obj_item.text){
	visible = true;
}else{
	visible = false;
}

if (obj_selection.selected_object != item_lid){
	lid = "GARBAGE LID";
} 
else if(obj_selection.selected_object = item_lid && !used)
{
	lid = "GARBAGE LID- DECREASE INCOMING DMG!";
}


if (obj_text.timer = 0 && item_lid.visible = true && obj_selection.selected_object = item_lid && keyboard_check_released(vk_enter) && !used){
	
	if(obj_meter.meter_value < 2)
	{
		obj_text.current = obj_text.no_stamina;
		obj_text.timer += 10;
	}
	else
	{
		obj_text.current = lid_effect;
		obj_player.status_resistance = true;
		obj_meter.meter_value -= 2;
	
		obj_text.timer += 10;
		
		used = true;
	}
}
if(obj_text.timer = 0 && obj_text.current = lid_effect && keyboard_check_released(vk_enter))
{
	obj_selection.selected_object = obj_selection;
	obj_text.current = obj_text.action;
	obj_text.timer += 10;
}




