sprite_index = spr_enemy_idle

global.enemy_start = "IT'S ANGRY MAN'S TURN NOW!"

enemy_selection = 4;


function random_enemy_turn(){
	randomise();
	var i = irandom_range(1,3);
	i = round(i);
	
	return i;
	
}

enemy_dmg = 4;


global.enemy_heal = "ANGRY MAN SCREAMS LOUDLY, RESTORING 3 HP!"

global.enemy_skip = "ANGRY MAN IS TOO ANGRY TO DO ANYTHING!\nHE SKIPS HIS TURN!"

global.enemy_death = "ANGRY MAN PERISHES! HE WAS\nTOO ANGRY FOR HIS OWN GOOD..";
	
function enemy_heal(){
	
	global.current = global.enemy_heal;
	global.enemy_health += 3;

}

function enemy_attack(){
	
	global.current = global.enemy_attack;
	global.player_health -= enemy_dmg;

}

function enemy_skip(){
	global.current = global.enemy_skip;
}