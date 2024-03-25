if (global.current = global.attack){
	visible = true;
}else{
	visible = false;
}




if (obj_emotional_trauma.visible = true && global.selected_object = obj_emotional_trauma && keyboard_check_released(vk_enter)){
	global.current = global.trauma;
	global.timer += 10;
	global.enemy_health -= 2;
	global.player_turn = false;
}




