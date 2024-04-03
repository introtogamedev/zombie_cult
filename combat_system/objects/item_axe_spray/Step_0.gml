if (obj_text.current = obj_item.text){
	visible = true;
}else{
	visible = false;
}

if (obj_selection.selected_object != item_axe_spray){
	spray = "AXE BODY SPRAY";
} 
else
{
	if(!used)
	{
		spray = "AXE BODY SPRAY- (CON.) *violent gagging*";
	}
}


if (obj_text.timer = 0 && item_axe_spray.visible = true && obj_selection.selected_object = item_axe_spray && keyboard_check_released(vk_enter)&& !used){
	
	if(obj_meter.meter_value < 2)
	{
		obj_text.current = obj_text.no_stamina;
		obj_text.timer += 10;
	}
	else
	{
		obj_text.current = spray_effect;
		global.enemy_health -= 1;
		obj_text.timer += 10;
		obj_meter.meter_value -= 2;
		
		used = true;
	}
	

}	
if (obj_text.timer = 0 && obj_text.current = spray  && keyboard_check_released(vk_enter)){		
		obj_text.current = obj_text.player_start;
		
		obj_text.timer += 10;
}
if(obj_text.timer = 0 && obj_text.current = spray_effect && keyboard_check_released(vk_enter))
{
	obj_selection.selected_object = obj_selection;
	obj_text.current = obj_text.action;
	obj_text.timer += 10;
}




