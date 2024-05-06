draw_set_color(0);
draw_set_halign(fa_left);
draw_text(xPos, yPos, "BARBED WIRE BAT");

if (atk_barbed_wire_bat.visible = true && obj_selection.selected_object = atk_barbed_wire_bat)
{
	draw_text(xPos + 265, yPos, "-" + "YOUR TRUSTY WEAPON" + "\n" + "(+3 DMG, USES 2 MANA," + "\n" + " 1/5 CHANCE OF MISSING)");
}


