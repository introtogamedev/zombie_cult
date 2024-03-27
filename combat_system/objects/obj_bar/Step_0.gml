if (global.current = global.item){
	visible = true;
}else{
	visible = false;
}

if (global.selected_object != obj_bar)
{
	global.bar = "CLIFF BAR";
} 
else if(global.selected_object = obj_bar && !used)
{
	global.bar = "CLIFF BAR- (CON.) GAIN SOME HEALTH BACK!";
}
else if(global.selected_object = obj_bar && used)
{
	draw_set_color(c_gray);
	draw_line(60, 200, 120, 200);
	global.bar = "CLIFF BAR- USED UP";
}


if (global.timer = 0 && obj_bar.visible = true && global.selected_object = obj_bar && keyboard_check_released(vk_enter) && !used){
	
	if(obj_meter.meter_value < 1)
	{
		global.current = global.no_stamina;
		global.timer += 10;
	}
	else
	{
		global.player_health += 2;
		global.current = global.bar_effect;
		global.timer += 10;
		obj_meter.meter_value -= 1;

	
		used = true;
	}

}
if(global.timer = 0 && global.current = global.bar_effect && keyboard_check_released(vk_enter))
{
	global.selected_object = obj_selection;
	global.current = global.action;
}




