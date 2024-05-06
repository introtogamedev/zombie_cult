//wahoo zombie time

vsp = 0;
hsp = 0;

cooldown = false;

is_dead = false;

chasing = false;
ambush = false;

image_speed = 1;

ZOMB_WALK_SPD = random_range (.5, 1);
APPROACH_SPD = ZOMB_WALK_SPD/APPROACH_SPD_OFFSET;

direction_choice = true;

playing_sound = false;
