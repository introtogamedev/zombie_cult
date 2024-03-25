if(player_turn)
{
	if(keyboard_check_direct(ord("1")) && 
		fled = false &&
		fight_h = false &&
		fight_p = false &&
		talk = false &&
		support_option = false &&
		support_p = false &&
		support_e = false)
	{
		obj_combatsystem.page = 2;
		starting_screen = false;
		fight_option = true;
	}
	else if(keyboard_check_direct(ord("4")) &&
		fight_option = false &&
		fight_h = false &&
		fight_p = false &&
		talk = false &&
		support_option = false &&
		support_p = false &&
		support_e = false)
	{
		obj_combatsystem.page = 80;
		starting_screen = false;		
		fled = true;
		obj_combatsystem.can_flip = true;
	}
	else if(keyboard_check_direct(ord("3")) &&
		fled = false &&
		fight_h = false &&
		fight_p = false &&
		talk = false &&
		fight_option = false &&
		support_p = false &&
		support_e = false)
	{
		obj_combatsystem.page = 3;
		starting_screen = false;
		support_option = true;
	}
	else if(keyboard_check_direct(ord("2")) &&
		fled = false &&
		fight_h = false &&
		fight_p = false &&
		fight_option = false &&
		support_option = false &&
		support_p = false &&
		support_e = false &&
		talk = false)
	{
		obj_combatsystem.page = 30;
		starting_screen = false;		
		talk = true;
		obj_combatsystem.can_flip = true;
	}
	else if(keyboard_check_direct(vk_space) &&
		fled = false &&
		fight_h = false &&
		fight_p = false &&
		fight_option = false &&
		support_option = false &&
		support_p = false &&
		support_e = false &&
		talk = false)
	{
		player_turn = false;
		enemy_turn = true;
		
		fight_option = false;
		fled = false;
		fight_h = false;
		fight_p = false;
		talk = false;
		support_option = false;
		support_p = false;
		support_e = false;
	}
	
	/////Fighting/////
	//Weak
	if(keyboard_check(ord("O")) && fight_option)
	{
		if(obj_meter.meter_value >= 1)
		{
			obj_meter.meter_value -= 1;
			obj_combatsystem.page = 10;	
			obj_combatsystem.can_flip = true;
			fight_option = false;
			fight_h = true;
		}
		else
		{
			obj_combatsystem.page = 90;
		}
	}
	if(obj_combatsystem.page == 11 && obj_combatsystem.accept_key)
	{
		global.enemy_hp -= 1;
		obj_enemy.sprite_index = spr_enemy_hurt;
	}
	if(obj_combatsystem.page > 11 && fight_h && obj_combatsystem.accept_key)
	{
		starting_screen = true;
		fight_h = false;
		obj_combatsystem.can_flip = false;
		obj_combatsystem.page = 1;
		obj_enemy.sprite_index = spr_enemy;
	}
	//Strong >:>
	if(keyboard_check_direct(ord("P")) && fight_option)
	{	
		if(obj_meter.meter_value >= 3)
		{
			obj_meter.meter_value -= 3;
			obj_combatsystem.page = 20;	
			obj_combatsystem.can_flip = true;	
			fight_option = false;
			fight_p = true;
		}
		else
		{
			obj_combatsystem.page = 90;
		}
	}
	if(obj_combatsystem.page == 21 && obj_combatsystem.accept_key)
	{
		attack = round(random_range(4, 6));
		global.enemy_hp -= attack;
		obj_enemy.sprite_index = spr_enemy_hurt;
	}
	if(obj_combatsystem.page > 21 && fight_p && obj_combatsystem.accept_key)
	{
		starting_screen = true;
		fight_p = false;
		obj_combatsystem.can_flip = false;
		obj_combatsystem.page = 1;
		obj_enemy.sprite_index = spr_enemy;
	}
	
	/////Support/////
	//Potion
	if(keyboard_check(ord("O")) && support_option)
	{
		if(obj_meter.meter_value >= 1)
		{
			obj_meter.meter_value -= 1;
			obj_combatsystem.page = 40;	
			obj_combatsystem.can_flip = true;
			support_option = false;
			support_p = true;
		}
		else
		{
			obj_combatsystem.page = 90;
		}
		
	}
	if(obj_combatsystem.page == 41 && obj_combatsystem.accept_key)
	{
		global.player_hp += 5;
	}
	if(obj_combatsystem.page > 41 && support_p && obj_combatsystem.accept_key)
	{
		starting_screen = true;
		support_p = false;
		obj_combatsystem.can_flip = false;
		obj_combatsystem.page = 1;
	}
	//Explosive
	if(keyboard_check_direct(ord("P")) && support_option)
	{	
		if(obj_meter.meter_value >= 5)
		{
			obj_meter.meter_value -= 5;
			obj_combatsystem.page = 42;	
			obj_combatsystem.can_flip = true;	
			support_option = false;
			support_e = true;
		}
		else
		{
			obj_combatsystem.page = 90;
		}
	}
	if(obj_combatsystem.page == 43 && obj_combatsystem.accept_key)
	{
		global.enemy_hp -= 9999999999999;
		obj_enemy.sprite_index = spr_enemy_hurt;
	}
	if(obj_combatsystem.page > 23 && support_e && obj_combatsystem.accept_key)
	{
		support_e = false;
		obj_combatsystem.can_flip = false;
		obj_combatsystem.page = 1;
	}
	
	//Talking
	if(talk)
	{
		obj_player.sprite_index = spr_player_rizz;
	}
	else
	{
		obj_player.sprite_index = spr_player;		
	}
	if(obj_combatsystem.page > 32 && talk && obj_combatsystem.accept_key)
	{
		starting_screen = true;
		talk = false;
		obj_combatsystem.can_flip = false;
		obj_combatsystem.page = 1;
	}
	
	//Fleeing
	if(fled && obj_combatsystem.accept_key)
	{
		game_end();
	}
	
	//Has no mana
	if(obj_combatsystem.page == 90 && obj_combatsystem.accept_key)
	{
		starting_screen = true;
		obj_combatsystem.page = 1;
		
		fight_option = false;
		fled = false;
		fight_h = false;
		fight_p = false;
		talk = false;
		support_option = false;
		support_p = false;
		support_e = false;
	}
}

if(enemy_turn)
{
	/*if(!enemy_moved)
	{
		obj_combatsystem.page = 50;
		enemy_fight = true;
		obj_combatsystem.can_flip = true;
		enemy_moved = true;
	}*/
	if(!result)
	{
		enemy_choice = choice();
		result = true;
	}
	if(result && enemy_choice <= 5 && !enemy_moved)
	{
		enemy_fight = true;
		obj_combatsystem.page = 50;
		obj_combatsystem.can_flip = true;
		enemy_moved = true;
	}
	else if(result && enemy_choice >= 6 && !enemy_moved)
	{
		enemy_heal = true;
		obj_combatsystem.page = 60;
		obj_combatsystem.can_flip = true;		
	}
	
	if(enemy_fight && obj_combatsystem.accept_key && obj_combatsystem.page == 51)
	{
		global.player_hp -= 3;
		obj_player.sprite_index = spr_player_hurt;
	}
	else
	{
		obj_player.sprite_index = spr_player;
	}
	if(enemy_heal && obj_combatsystem.accept_key && obj_combatsystem.page == 61)
	{
		global.enemy_hp += 5;
	}
	
	if(obj_combatsystem.page > 51 && obj_combatsystem.accept_key && enemy_fight)
	{
		enemy_fight = false;
		enemy_moved = false;
		enemy_turn = false;
		player_turn = true;
		starting_screen = true;
		obj_combatsystem.page = 1;
		obj_combatsystem.can_flip = false;
		obj_meter.meter_value += 3;
	}
	
	if(obj_combatsystem.page > 61 && obj_combatsystem.accept_key && enemy_heal)
	{
		enemy_turn = false;
		player_turn = true;
		enemy_heal = false;
		enemy_moved = false;
		starting_screen = true;
		obj_combatsystem.page = 1;
		obj_combatsystem.can_flip = false;
		obj_meter.meter_value += 3;
		result = false;
	}
}

function choice()
{
	 var _result = irandom_range(0, 10);
	return _result;
}

//WINNER
if(global.enemy_hp <= 0 && obj_combatsystem.accept_key)
{
	obj_combatsystem.page = 70;
}
if(obj_combatsystem.page == 70)
{
	obj_combatsystem.can_flip = false;
}

//LOSER
if(global.player_hp <= 0 && obj_combatsystem.accept_key)
{
	obj_combatsystem.page = 100;
}
if(obj_combatsystem.page == 100)
{
	obj_combatsystem.can_flip = false;
}

show_debug_message(enemy_moved);













