draw_set_color(0);
draw_set_halign(fa_left);
draw_text(xPos, yPos, bar);

if(obj_selection.selected_object = item_bar && used)
{
	draw_line_width(xPos, yPos + 10, xPos + 275, yPos + 10, 3);
	bar = "CLIFF BAR- USED UP";
}


