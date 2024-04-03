draw_set_color(0);
draw_set_halign(fa_left);
draw_text(xPos, yPos, lid);

if(obj_selection.selected_object = item_lid && used)
{
	draw_line_width(xPos, yPos + 10, xPos + 300, yPos + 10, 3);
	lid = "GARBAGE LID - USED UP";
}


