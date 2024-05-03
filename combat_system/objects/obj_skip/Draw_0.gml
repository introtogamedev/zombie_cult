draw_set_color(0);
draw_set_halign(fa_left);
draw_text(xPos, yPos, "SKIP");

if (obj_skip.visible = true && obj_selection.selected_object = obj_skip)
{
	draw_text(xPos + 150, yPos, "-" + "HOW POLITE OF YOU..." + "\n" + "(PASS YOUR TURN TO THE ZOMBIE)");
}

