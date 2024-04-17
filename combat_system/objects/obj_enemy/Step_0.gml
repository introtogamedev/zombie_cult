enemy_attack_text = "ANGRY MAN SLAPS YOU IN THE FACE!\nHE DEALS " + string(enemy_dmg) + " DMG!"



if (global.enemy_health < 1){
	sprite_index = spr_enemy_dead;
}

if (obj_player.status_resistance = true){
	enemy_dmg = 2;
}


//show_debug_message(global.status_resistance);

if (sprite_index = spr_enemy_idle && obj_text.timer = 0 && obj_text.player_turn = false && keyboard_check_released(vk_enter)){

	if (obj_text.current != enemy_start){
		obj_text.timer += 10;
		obj_text.current = enemy_start;
	}else{
		obj_text.timer += 10;
		enemy_selection = random_enemy_turn();
		show_debug_message(enemy_selection);
		if (enemy_selection = 1){
			enemy_heal();
			obj_text.timer += 10;

		}
		if (enemy_selection = 2){
			enemy_attack();
			obj_text.timer += 10;
		
		}
		if (enemy_selection = 3){
			enemy_skip();
			obj_text.timer += 10;

		}
			
		obj_text.player_turn = true;
		
	}

}

if (global.enemy_health < 1 && keyboard_check_released(vk_enter)){
	if (obj_text.current = enemy_death){
		//zombie dies! back to the store & hopefully zombie dies
		obj_god.new_state = EXPLORE;
		obj_god.zombie_death = true;
		show_debug_message("help :(");
	}
	else{
		obj_text.timer += 10;
		obj_text.current = enemy_death;
	}
}


