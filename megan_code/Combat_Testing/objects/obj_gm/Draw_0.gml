draw_text(obj_player.sprite_width, obj_player.sprite_height + 10, "HP: " + string(global.player_hp));

if(instance_exists(obj_enemy))
{
	draw_text(obj_enemy.sprite_width + 750, obj_enemy.sprite_height + 10, "HP: " + string(global.enemy_hp));
}
































