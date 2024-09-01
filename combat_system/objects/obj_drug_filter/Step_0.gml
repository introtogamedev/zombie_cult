if (obj_god.on_drugs = true){
	visible = true;

}

if (room = Explore) {
x = obj_player_1.x - sprite_width/2;
y = obj_player_1.y - sprite_height/2;

image_xscale = .25;
image_yscale = .25;
}

if (room = Combat) {
	x = 0;
	y = 0;
}

if (room == List) || (obj_god.in_shelf){
	x = 0;
	y = 0;
	image_xscale = 4;
	image_yscale = 4;
}


