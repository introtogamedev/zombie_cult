if (global.current = global.item){
	visible = true;
}else{
	visible = false;
}

if (global.selected_object != obj_axe_spray){
	global.spray = "AXE BODY SPRAY";
} else{
	global.spray = "AXE BODY SPRAY- (CON.) *violent gagging*";
}


if (global.timer = 0 && obj_axe_spray.visible = true && global.selected_object = obj_axe_spray && keyboard_check_released(vk_enter)){
		global.current = global.spray_effect;
		global.enemy_health -= 1;
		global.timer += 10;
		
		global.player_turn = true;
	

}	
if (global.timer = 0 && global.current = global.spray  && keyboard_check_released(vk_enter)){		
		global.current = global.player_start;
		
		global.timer += 10;
}




