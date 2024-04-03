sprite_index = spr_enemy_idle

enemy_start = "IT'S ANGRY MAN'S TURN NOW!"

enemy_selection = 4;


function random_enemy_turn(){
	randomise();
	var i = irandom_range(1,3);
	i = round(i);
	
	return i;
	
}

enemy_dmg = 4;


enemy_heal_text = "ANGRY MAN SCREAMS LOUDLY, RESTORING 3 HP!"

enemy_skip_text = "ANGRY MAN IS TOO ANGRY TO DO ANYTHING!\nHE SKIPS HIS TURN!"

enemy_death = "ANGRY MAN PERISHES! HE WAS\nTOO ANGRY FOR HIS OWN GOOD..";
	
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