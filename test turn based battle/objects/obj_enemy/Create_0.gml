sprite_index = spr_enemy_idle

global.enemy_start = "IT'S ANGRY MAN'S TURN NOW!"

enemy_selection = 4;


function random_enemy_turn(){
	randomise();
	var i = random_range(0.51,3.49);
	i = round(i);
	
	return i;
	
}

enemy_dmg = 4;

if (global.status_resistance = true){
	enemy_dmg /= 2;
}else{
	enemy_dmg = 4;
}

global.enemy_heal = "ANGRY MAN SCREAMS LOUDLY, RESTORING 3 HP!"
global.enemy_attack = "ANGRY MAN SLAPS YOU IN THE FACE!\nHE DEALS " + string(enemy_dmg) + " DMG!"
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