
var new_y = y;
var new_x = x;

if obj_god.up {
	new_y -= WALK_SPEED;
}

if obj_god.down {
	new_y += WALK_SPEED;
}

if obj_god.left {
	new_x -= WALK_SPEED;
}

if obj_god.right {
	new_x += WALK_SPEED;
}

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


