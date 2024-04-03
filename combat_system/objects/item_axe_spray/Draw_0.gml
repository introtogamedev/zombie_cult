draw_set_color(0);
draw_set_halign(fa_left);
draw_text(xPos, yPos, spray);

if(obj_selection.selected_object = item_axe_spray && used)
{
	draw_line_width(xPos, yPos + 10, xPos + 350, yPos + 10, 3);
	spray = "AXE BODY SPRAY - USED UP";
}


