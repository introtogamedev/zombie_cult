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

enemy_selection = 4;



function random_enemy_turn(){
	randomise();
	var i = irandom_range(1,3);
	i = round(i);
	
	return i;
	
}

enemy_dmg = 4;
angy_enemy_dmg = 6;

angy_enemy = false;


enemy_heal_text = "THE ZOMBIE CLICKS ANGERILY, RESTORING 3 HP!"

enemy_skip_text = "THE ZOMBIE TRIPS OVER HIS OWN LEGS!\nIT SKIPS HIS TURN!"

enemy_attack_text = "THE ZOMBIE SLAPS YOU IN THE FACE!\nIT DEALS " + string(enemy_dmg) + " DMG!"
angy_enemy_attack_text =  "THE ZOMBIE TRAMPLES YOU OUT OF RAGE!\nIT DEALS " + string(angy_enemy_dmg) + " DMG!"


enemy_death = "THE ZOMBIE PERISHES! IT GIVES\nONE LAST DYING SCREAM FOR THEIR FAMILY..";
	
enemy_skipp = "THE ZOMBIE'S TURN IS PASSED!";
	
	
function enemy_heal(){
	
	obj_text.current = enemy_heal_text;
	global.enemy_health += 3;

}

function enemy_attack(){
	
	if(angy_enemy)
	{
		obj_text.current = angy_enemy_attack_text;
		global.player_health -= angy_enemy_dmg;
		angy_enemy = false;
	}
	else
	{
		global.player_health -= enemy_dmg;
		obj_text.current = enemy_attack_text;
	}

}

function enemy_skip(){
	obj_text.current = enemy_skip_text;
}