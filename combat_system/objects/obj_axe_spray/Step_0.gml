if (global.current = global.item){
	visible = true;
}else{
	visible = false;
}

if (global.selected_object != obj_axe_spray){
	global.spray = "AXE BODY SPRAY";
} 
else
{
	if(!used)
	{
		global.spray = "AXE BODY SPRAY- (CON.) *violent gagging*";
	}
}


if (global.timer = 0 && obj_axe_spray.visible = true && global.selected_object = obj_axe_spray && keyboard_check_released(vk_enter)&& !used){
	
	if(obj_meter.meter_value < 2)
	{
		global.current = global.no_stamina;
		global.timer += 10;
	}
	else
	{
		global.current = global.spray_effect;
		global.enemy_health -= 1;
		global.timer += 10;
		obj_meter.meter_value -= 2;
		
		used = true;
	}
	

}	
if (global.timer = 0 && global.current = global.spray  && keyboard_check_released(vk_enter)){		
		global.current = global.player_start;
		
		global.timer += 10;
}
if(global.timer = 0 && global.current = global.spray_effect && keyboard_check_released(vk_enter))
{
	global.selected_object = obj_selection;
	global.current = global.action;
	global.timer += 10;
}




