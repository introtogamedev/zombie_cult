//wahoo zombie time

vsp = 0;
hsp = 0;

cooldown = false;

is_dead = false;

chasing = false;
ambush = false;



	NOT = 0;
	VER = 1
	HOR = 2
navigating = NOT;
ver_moving = -1;
hor_moving = -1;
	
last_h_nav = 0;
last_v_nav = 0;
	
image_speed = 1;

ZOMB_WALK_SPD = random_range (.5, 1);
APPROACH_SPD = ZOMB_WALK_SPD/APPROACH_SPD_OFFSET;

direction_choice = true;

playing_sound = false;

intelligent = false 
var intellegence = irandom_range (0,2)
if intellegence == 0 {intelligent = true}