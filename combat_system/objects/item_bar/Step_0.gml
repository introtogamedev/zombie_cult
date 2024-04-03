if (obj_text.current = obj_item.text){
	visible = true;
}else{
	visible = false;
}

if (obj_selection.selected_object != item_bar)
{
	bar = "CLIFF BAR";
} 
else if(obj_selection.selected_object = item_bar && !used)
{
	bar = "CLIFF BAR- (CON.) GAIN SOME HEALTH BACK!";
}


if (obj_text.timer = 0 && item_bar.visible = true && obj_selection.selected_object = item_bar && keyboard_check_released(vk_enter) && !used){
	
	if(obj_meter.meter_value < 1)
	{
		obj_text.current = obj_text.no_stamina;
		obj_text.timer += 10;
	}
	else
	{
		global.player_health += 2;
		obj_text.current = bar_effect;
		obj_text.timer += 10;
		obj_meter.meter_value -= 1;

	
		used = true;
	}

}
if(obj_text.timer = 0 && obj_text.current = bar_effect && keyboard_check_released(vk_enter))
{
	obj_selection.selected_object = obj_selection;
	obj_text.timer += 10;
	obj_text.current = obj_text.action;
}




