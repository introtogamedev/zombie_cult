draw_set_font(fnt_des);
for (var i = 0; i < array_length(inv); i++)
	{
		var _xx = camera_get_view_x(view_camera[0]) + screen_border;
		var _yy = camera_get_view_y(view_camera[0])+ screen_border;
		var _sep = sep;
		var _col = c_white;
		//icon
		draw_sprite(inv[i].sprite, 0,_xx, _yy + _sep*i);
		
		//get selected color
		if (selected_item == i) {_col = c_purple;};
		draw_set_color(_col);
		//name
		draw_text(_xx + 16,_yy + _sep*i, inv[i].name);
		//description
		if (selected_item == i)
			{
			draw_text_ext(_xx + 16, _yy + _sep*array_length(inv), inv[i].description, 12,80);
			}
		//reset
		draw_set_color(c_white);
	}
