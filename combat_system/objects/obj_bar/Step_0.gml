if (global.current = global.item && used = false){
	visible = true;
}else{
	visible = false;
}

if (global.selected_object != obj_bar){
	global.bar = "CLIFF BAR";
} else{
	global.bar = "CLIFF BAR- (CON.) GAIN SOME HEALTH BACK!";
}


if (global.timer = 0 && obj_bar.visible = true && global.selected_object = obj_bar && keyboard_check_released(vk_enter)){
		
	global.player_health += 2;
	global.current = global.bar_effect;
	global.timer += 10;
	global.player_turn = false;

	
	used = true;

}




