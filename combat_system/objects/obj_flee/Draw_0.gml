draw_set_color(0);
draw_set_halign(fa_left);
draw_text(xPos, yPos, "FLEE");

if (obj_flee.visible = true && obj_selection.selected_object = obj_flee)
{
	draw_text(xPos + 150, yPos, "-" + "DON'T BE A COWARD..." + "\n" + "(1/5 CHANCE TO ESCAPE," + "\n" + " DOES NOT REGEN MANA IF FAILED)");
}




