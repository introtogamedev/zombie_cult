zombies = [spr_kyle_idle, spr_markus_idle, spr_barbara_idle];

function random_zombie_sprite(){
	randomize();
	var i = irandom_range(0,2);
	
	return i;
}

name = random_zombie_sprite();

skip_enemy = false;


sprite_index = spr_kyle_idle
image_xscale = 1.5;
image_yscale = 1.5;

enemy_start = "IT'S THE ZOMBIE'S TURN NOW!"

enemy_selection = 11;



function random_enemy_turn(){
	randomise();
	var i = irandom_range(1,10);
	//i = round(i);
	
	return i;
	
	//show_debug_message(i);
}

enemy_dmg = 4;
angy_enemy_dmg = 6;

angy_enemy = false;

getting_hit = false;
be_red = false;
stop_shaking = true;


enemy_heal_text = "THE ZOMBIE CLICKS ANGERILY, RESTORING 3 HP!"

enemy_skip_text = "THE ZOMBIE TRIPS OVER HIS OWN LEGS!\nIT SKIPS HIS TURN!"

enemy_attack_text = "THE ZOMBIE SLAPS YOU IN THE FACE!\nIT DEALS " + string(enemy_dmg) + " DMG!"
angy_enemy_attack_text =  "THE ZOMBIE TRAMPLES YOU OUT OF RAGE!\nIT DEALS " + string(angy_enemy_dmg) + " DMG!"


enemy_death = "THE ZOMBIE PERISHES! IT GIVES\nONE LAST DYING SCREAM FOR THEIR FAMILY..";
	
enemy_skipp = "THE ZOMBIE'S TURN IS PASSED!";
	
healing_alpha = 0;
healing_color = c_green;

hit_alpha = 0;
hit_color = c_maroon;

enemy_hit_timer = 0;
enemy_hit_timer_cap = 20;
	
function enemy_heal(){
	
	obj_text.current = enemy_heal_text;
	healing_alpha = 0.75;
	audio_play_sound(snd_heal, 1, false);
	global.enemy_health += 3;

}

function enemy_attack(){
	if(angy_enemy)
	{
		obj_text.current = angy_enemy_attack_text;
		global.player_health -= angy_enemy_dmg;
		angy_enemy = false;
		obj_player.player_hit = true;
	}
	else
	{
		global.player_health -= enemy_dmg;
		obj_text.current = enemy_attack_text;
		obj_player.player_hit = true;
	}

}

function enemy_skip(){
	obj_text.current = enemy_skip_text;
}