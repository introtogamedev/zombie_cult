zombies = [spr_kyle_idle, spr_markus_idle];

function random_zombie_sprite(){
	randomize();
	var i = irandom_range(0,1);
	
	return i;
}

name = random_zombie_sprite();


sprite_index = spr_kyle_idle
image_xscale = 1.5;
image_yscale = 1.5;

enemy_start = "IT'S THE ZOMBIE'S TURN NOW!"

enemy_selection = 4;


snap = 0;
snap_timer = 0;

function random_enemy_turn(){
	randomise();
	var i = irandom_range(1,3);
	i = round(i);
	
	return i;
	
}

enemy_dmg = 4;


enemy_heal_text = "THE ZOMBIE CLICKS ANGERILY, RESTORING 3 HP!"

enemy_skip_text = "THE ZOMBIE TRIPS OVER HIS OWN LEGS!\nHE SKIPS HIS TURN!"

enemy_death = "THE ZOMBIE PERISHES! HE GIVES\nONE LAST DYING SCREAM FOR HIS FAMILY..";
	
function enemy_heal(){
	
	obj_text.current = enemy_heal_text;
	global.enemy_health += 3;

}

function enemy_attack(){
	
	obj_text.current = enemy_attack_text;
	global.player_health -= enemy_dmg;

}

function enemy_skip(){
	obj_text.current = enemy_skip_text;
}