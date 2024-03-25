if (global.current = global.action){
	visible = true;
}else{
	visible = false;
}


if (global.timer = 0 && act_skip.visible = true && global.selected_object = act_skip && keyboard_check_released(vk_enter)){
	global.current = global.skip;
	global.timer += 10;
	
	global.modifier = 0;
	global.player_turn = false;
}



