if (global.current = global.item){
	visible = true;
}else{
	visible = false;
}

if (global.selected_object != obj_lid){
	global.bar = "GARBAGE LID";
} else{
	global.bar = "GARBAGE LID- INCREASE YOUR DEFENSES!";
}


if (global.timer = 0 && obj_lid.visible = true && global.selected_object = obj_lid && keyboard_check_released(vk_enter)){
	global.current = global.lid;
	global.status_resistance = true;
	
	global.timer += 10;
	global.player_turn = false;
}




