if (obj_text.current = obj_text.action){
	visible = true;
	obj_arrow.visible = false;
}else{
	visible = false;
	}


if (obj_text.timer = 0 && obj_flee.visible = true && obj_selection.selected_object = obj_flee && keyboard_check_released(vk_enter)){
	
	obj_text.timer += 10;
	fleeing();
	obj_selection.modifier = 0;
	
	if(sum == 5)
	{
		obj_text.current = text;
		sum = 0;
	}
	else
	{
		obj_text.current = failed_text;
		obj_text.timer = 0;
		sum = 0;
	}

}

if (obj_text.timer = 0 && obj_text.current = text && keyboard_check_released(vk_enter)){
	obj_god.new_state = EXPLORE;
	show_debug_message("heloooo");
}

if (obj_text.timer = 0 && obj_text.current = failed_text && keyboard_check_released(vk_enter))
{
	obj_text.player_turn = false;
	obj_text.timer += 10;
	
}

function fleeing()
{
	sum = irandom_range(0,5);
	return sum;
}

