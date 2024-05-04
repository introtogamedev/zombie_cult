if (global.player_health <= 0){
	player_dead = true;	
	sprite_index = spr_player_dead;
}

if(obj_text.current = obj_enemy.angy_enemy_attack_text && player_hit 
   || obj_text.current = obj_enemy.enemy_attack_text && player_hit
   || obj_text.current = global.item_list.alarm_clock.effect && player_hit
   || obj_text.current = global.item_list.ax_body_spray.effect && player_hit)
{
	sprite_index = spr_player_hurt;
	show_debug_message("You should be working");
	player_hurt_timer ++;
	
	x = x + sin(current_time / 30) * 3;
}

if (obj_text.current != obj_enemy.enemy_attack_text && obj_text.current != obj_enemy.angy_enemy_attack_text && !player_dead
 && obj_text.current != global.item_list.alarm_clock.effect
   && obj_text.current != global.item_list.ax_body_spray.effect)
{
	sprite_index = spr_player_idle;
}

//healing effect
if(obj_text.current = global.item_list.hoodie.effect && got_hp || 
   obj_text.current = global.item_list.walkie_talkie.effect && got_hp ||
   obj_text.current = global.item_list.earrings.effect && got_hp ||
   obj_text.current = global.item_list.dog.effect && got_hp ||
   obj_text.current = global.item_list.powder_blush.effect && got_hp ||
   obj_text.current = global.item_list.healthboosts.effect && got_hp ||
   obj_text.current = global.item_list.lotion.effect && got_hp ||
   obj_text.current = global.item_list.cookies.effect && got_hp ||
   obj_text.current = global.item_list.danish.effect && got_hp ||
   obj_text.current = global.item_list.cliff_bar.effect && got_hp)
{
	healing_alpha = .75;
	audio_play_sound(snd_heal, 1, false);
	got_hp = false;
}

if(healing_alpha > 0)
{
	healing_alpha -= 0.03;
}


if(player_hurt_timer > player_hurt_timer_cap && player_hit)
{
	x = 287;
	player_hurt_timer = 0;
	player_hit = false;
	audio_play_sound(snd_hit, 1, false);
}

show_debug_message(got_hp);