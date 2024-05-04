



sprite_index = zombies[name];

/*
if (snap_timer = 0){
	randomize();
	snap =  irandom_range(0,500);
	if (snap = 197){
		sprite_index = spr_kyle_wuh_oh;
		show_debug_message("SNAP")
		snap_timer = 5;
	
	}else{
		sprite_index = spr_kyle_idle;
	}
}

*/

if (global.enemy_health < 1){
	sprite_index = spr_enemy_dead;
}

if (obj_player.status_resistance = true){
	enemy_dmg = 2;
}

if (skip_enemy = true){
	show_debug_message("HI");
	
}

//show_debug_message(global.status_resistance);

if (sprite_index = zombies[name] && obj_text.timer = 0 && obj_text.player_turn = false && keyboard_check_released(vk_enter)){
	if (skip_enemy = false){
		if (obj_text.current != enemy_start){
			obj_text.timer += 10;
			obj_text.current = enemy_start;
		}else{
			obj_text.timer += 10;
			enemy_selection = random_enemy_turn();
			show_debug_message(enemy_selection);
			if (enemy_selection = 1){
				enemy_heal();


			}
			if (enemy_selection = 2){
				enemy_attack();

		
			}
			if (enemy_selection = 3){
				enemy_skip();
	

			}
			obj_text.timer += 10;
		
			if (obj_player.player_dead = false){
				obj_text.player_turn = true;
			}
		}
	}
	else if (skip_enemy = true){
	obj_text.current = enemy_skipp;
	obj_text.timer += 10;
	obj_text.player_turn = true;
	skip_enemy = false;
	}

}

if (global.enemy_health < 1 && keyboard_check_released(vk_enter)){
	if (obj_text.current = enemy_death){
		//zombie dies! back to the store & hopefully zombie dies
		obj_god.new_state = EXPLORE;
		obj_god.zombie_death = true;
		show_debug_message("help :(");
	}
	else
	{
		obj_text.timer += 10;
		obj_text.current = enemy_death;
	}
}




