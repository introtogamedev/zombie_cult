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

current_state = EXPLORE;
new_state = EXPLORE;

total_checks =3;
checks = 0;

zombie_death = false; 

draw_set_font(ScoreFont);
