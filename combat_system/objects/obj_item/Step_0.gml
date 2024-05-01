if (obj_text.current = obj_text.action){
	visible = true;
}else{
	visible = false;
}

if (obj_text.timer = 0 && obj_item.visible = true && obj_selection.selected_object = obj_item && keyboard_check_released(vk_enter)){
	
	if (obj_manager.inv[0] != -1)
	{
		obj_text.current = text;
		obj_text.timer += 10;
	
		obj_selection.modifier = 0;
	}
	else
	{
		obj_text.current = no_items;
		obj_text.timer += 10;	
		obj_selection.modifier = 0;	
	}	
}

//show_debug_message(string(obj_text.timer) + " " + string(empty));


