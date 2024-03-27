if (global.current = global.item){
	visible = true;
}else{
	visible = false;
}

if (global.selected_object != obj_lid){
	global.lid = "GARBAGE LID";
} else{
	global.lid = "GARBAGE LID- DECREASE INCOMING DMG!";
}


if (global.timer = 0 && obj_lid.visible = true && global.selected_object = obj_lid && keyboard_check_released(vk_enter)){
	global.current = global.lid_effect;
	global.status_resistance = true;
	
	global.timer += 10;
	global.player_turn = false;
}




