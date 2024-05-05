if (obj_god.on_drugs = true){
	visible = true;
	show_debug_message("YEPp")

}

if (room = Explore){
x = obj_player_1.x - sprite_width/2;
y = obj_player_1.y - sprite_height/2;

image_xscale = .25;
image_yscale = .25;
}

if (room = Combat){
	x = 0;
	y = 0;
}


