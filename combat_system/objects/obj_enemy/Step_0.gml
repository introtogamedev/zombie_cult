



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
		audio_play_sound(snd_death, 1, false);
	}
}

if(healing_alpha > 0)
{
	healing_alpha -= 0.03;
}

//hit effect
if(obj_text.current = global.item_list.alarm_clock.effect || 
   obj_text.current = global.item_list.nerf_gun.effect ||
   obj_text.current = global.item_list.ax_body_spray.effect ||
   obj_text.current = global.item_list.dry_shampoo.effect ||
   obj_text.current = global.item_list.perfume.effect ||
   obj_text.current = global.item_list.cat.effect ||
   obj_text.current = global.item_list.squirrel.effect||
   obj_text.current = global.item_list.rat.effect ||
   obj_text.current = global.item_list.phone.effect ||
   obj_text.current = atk_barbed_wire_bat.bat_effect  ||
   obj_text.current = atk_emotional_trauma.trauma_effect)
{
	if(global.enemy_health > 0 && getting_hit)
	{
		x = x + sin(current_time / 30) * 3;
		hit_alpha = .55;
		be_red = true;
		enemy_hit_timer ++;


	}
}
else
{
	if(global.enemy_health >= 0)
	{
		be_red = false;
	}
}

if(enemy_hit_timer > enemy_hit_timer_cap && getting_hit)
{
	x = 928;
	enemy_hit_timer = 0;
	getting_hit = false;
}