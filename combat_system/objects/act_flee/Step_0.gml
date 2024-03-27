if (global.current = global.action){
	visible = true;
}else{
	visible = false;
}



if (global.timer = 0 && act_flee.visible = true && global.selected_object = act_flee && keyboard_check_released(vk_enter)){
	global.current = global.flee;
	global.timer += 10;

}

if (global.timer = 0 && global.current = global.flee && keyboard_check_released(vk_enter)){
	game_end();
}




