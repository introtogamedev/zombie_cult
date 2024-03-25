if (global.current = global.action){
	visible = true;
}else{
	visible = false;
}

if (act_attack.visible = true && global.selected_object = act_attack && keyboard_check_released(vk_enter)){
	global.current = global.attack;
	global.timer += 10;
	
	
	global.modifier = 0;
	
}




