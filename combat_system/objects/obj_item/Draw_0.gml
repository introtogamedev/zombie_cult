draw_set_color(0);
draw_set_halign(fa_left);
draw_text(xPos, yPos, "ITEM");

if (obj_item.visible = true && obj_selection.selected_object = obj_item)
{
	draw_text(xPos + 150, yPos, "-" + "LOOK THROUGH YOUR INVENTORY");
}


