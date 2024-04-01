draw_set_color(0);
draw_set_halign(fa_left);
draw_text(xPos, yPos, global.lid);

if(global.selected_object = obj_lid && used)
{
	draw_line_width(xPos, yPos + 10, xPos + 300, yPos + 10, 3);
	global.lid = "GARBAGE LID - USED UP";
}


