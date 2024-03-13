var _zomb_x = self.x;
var _zomb_y = self.y;
var _plr_x = obj_player.x;
var _plr_y = obj_player.y;


var new_y = y;
var new_x = x;
vsp = 0;
hsp = 0;


if point_distance(_zomb_x, _zomb_y, _plr_x, _plr_y) < 16 {
	obj_god.new_state = DEATH;
}


if point_distance(_zomb_x, _zomb_y, _plr_x, _plr_y) < 230 {
	if sign (_zomb_x - _plr_x) == 1 { hsp = -ZOMB_WALK_SPD; }
	if sign (_zomb_x - _plr_x) == -1 { hsp = ZOMB_WALK_SPD; }
	if sign (_zomb_y - _plr_y) == 1 { vsp = -ZOMB_WALK_SPD; }
	if sign (_zomb_y - _plr_y) == -1 { vsp = ZOMB_WALK_SPD; }
}


new_x += hsp;
new_y += vsp;

var ydir = sign(new_y);
var xdir = sign(new_x);

while (place_meeting(x, new_y, obj_solid))
{
	if obj_god.up {new_y -= (-1*ydir);}
	if obj_god.down {new_y += (-1*ydir);}
}

while (place_meeting(new_x, y, obj_solid))
{
	if obj_god.left {new_x -= (-1*xdir);}
	if obj_god.right {new_x += (-1*xdir);}
}
	

y = new_y;
x = new_x;