if (global.current = global.item){
	visible = true;
}else{
	visible = false;
}



if (global.timer = 0 && obj_energy_bar.visible = true && global.selected_object = obj_energy_bar && keyboard_check_released(vk_enter)){
	global.player_health += 2;
	global.current = global.energy_bar;
	global.timer += 10;
	global.player_turn = false;
}




