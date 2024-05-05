if(keyboard_check(ord("C")))
{
	draw_rectangle_color(0, 0, 1280, 720, c_black, c_black, c_black, c_black, false);
	draw_self();
	
	draw_set_halign(fa_center);
	draw_text_ext_transformed(620, 50, "MADE BY:", 20, 500, 1.5, 1.5, 0);
	//Names
	draw_text_ext_transformed(620, 175, "HENRY", 20, 500, 1, 1, 0);
	draw_text_ext_transformed(620, 250, "JAYCEE", 20, 500, 1, 1, 0);
	draw_text_ext_transformed(620, 325, "HANNA", 20, 500, 1, 1, 0);
	draw_text_ext_transformed(620, 400, "MEGAN", 20, 500, 1, 1, 0);
}































