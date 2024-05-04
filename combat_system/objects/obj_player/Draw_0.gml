draw_self();

if(healing_alpha > 0)
{
	shader_set(shader_healing);
	
	draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, healing_color, healing_alpha);
	
	shader_reset();
}



































