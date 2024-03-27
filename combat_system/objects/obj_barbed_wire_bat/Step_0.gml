if (global.current = global.attack){
	visible = true;
}else{
	visible = false;
}



if (global.timer = 0 && obj_barbed_wire_bat.visible = true && global.selected_object = obj_barbed_wire_bat && keyboard_check_released(vk_enter)){
	global.current = global.bat;
	global.timer += 10;
	global.enemy_health -= 3;
	global.player_turn = false;
}




