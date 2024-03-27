if (global.current = global.item){
	visible = true;
}else{
	visible = false;
}

if (global.selected_object != obj_flour){
	global.flour = "BAG O' FLOUR";
} else{
	global.flour = "BAG O' FLOUR- (CON.) SMOKE THE ENEMY!";
}


if (global.timer = 0 && obj_flour.visible = true && global.selected_object = obj_flour && keyboard_check_released(vk_enter)){
		global.current = global.flour_effect;
	
		global.timer += 10;
		
		global.player_turn = true;
	

}	
if (global.timer = 0 && global.current = global.flour  && keyboard_check_released(vk_enter)){		
		global.current = global.player_start;
		
		global.timer += 10;
}




