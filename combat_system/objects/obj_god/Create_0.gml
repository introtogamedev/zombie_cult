#region config
//DON'T DELETE THIS IT MAKES THINGS LOOK GOOD PLEASE DELETING THIS KILLS EVERYONE
gpu_set_tex_filter(false);
#endregion


//check keyboard input
//horzinotal
up =false;
down = false;
//verticle
right = false;
left = false;


//possible game states
Setup_Macros();

current_state = TITLE;
new_state = TITLE;
prev_state = EXPLORE;

in_shelf = false;

coming_from_combat = true;

total_checks = 1;
checks = 0;

zombie_death = false; 

//ambush controls (more in room start)
zomb_hand_speed = 0;
old_hand_placement = 0;

draw_set_font(ScoreFont);
