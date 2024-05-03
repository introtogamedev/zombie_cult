if (obj_text.current = obj_text.action){
	visible = true;
	obj_arrow.visible = false;
}else{
	visible = false;
}

if (obj_attack.visible = true && obj_selection.selected_object = obj_attack && keyboard_check_released(vk_enter)){
	obj_text.current = text;
	obj_text.timer += 10;
	
	
	obj_selection.modifier = 0;
	
}




