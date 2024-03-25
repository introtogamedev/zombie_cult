if (global.enemy_health < 1){
	sprite_index = spr_enemy_dead;
}

 if (sprite_index = spr_enemy_idle && global.timer = 0 && global.player_turn = false && keyboard_check_released(vk_enter)){

	if (global.current != global.enemy_start){
		global.timer += 10;
		global.current = global.enemy_start;
	}else{
		global.timer += 10;
		enemy_selection = random_enemy_turn();
		show_debug_message(enemy_selection);
		if (enemy_selection = 1){
			enemy_heal();
			global.timer += 10;

		}
		if (enemy_selection = 2){
			enemy_attack();
			global.timer += 10;
		
		}
		if (enemy_selection = 3){
			enemy_skip();
			global.timer += 10;

		}
			
		global.player_turn = true;
		
	}

}

if (sprite_index = spr_enemy_dead && global.timer = 0 && keyboard_check_released(vk_enter)){
	if (global.current = global.enemy_death){
		game_end();
	}
	else{
		global.timer += 10;
		global.current = global.enemy_death;
	}
}


