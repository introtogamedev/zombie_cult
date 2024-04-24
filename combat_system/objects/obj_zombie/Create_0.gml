vsp = 0;
hsp = 0;

cooldown = false;

is_dead = false;

chasing = false;
ambush = false;

image_speed = 1;

ZOMB_WALK_SPD = random_range (.6, 1);
APPROACH_SPD = ZOMB_WALK_SPD/APPROACH_SPD_OFFSET;

show_debug_message("zombie create");