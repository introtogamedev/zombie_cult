draw_self();

if(healing_alpha > 0 && !be_red)
{
	shader_set(shader_healing);
	
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, healing_color, healing_alpha);
	
	shader_reset();
}

if(be_red)
{
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, hit_color, hit_alpha);
}
else
{
	shader_reset();	
}






























