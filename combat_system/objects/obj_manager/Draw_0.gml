//sprite_index = item.sprite;
if(obj_god.current_state == EXPLORE)
{
	draw_set_font(fnt_des);
	for (var i = 0; i < INVENTORY_SLOTS; i+= 1)
		{
			var _xx = camera_get_view_x(view_camera[0]) + (i mod row_length) *16 + 2;//oor screen border
			var _yy = camera_get_view_y(view_camera[0])+ (i div row_length)* 16 +2;
			var _sep = sep;
			var _col = c_white;
			//icon
			draw_sprite(spr_slot, 0,_xx, _yy); //+ _sep*i);
				if (inv[i] != -1)
				{
				
					//if (array_contains(slot,obj_list.scav,0,array_length(slot)-1)){win++}
						draw_sprite(slot[i].sprite,inv[i],_xx,_yy);
					//show_debug_message(slot);
				}
			
			//get selected color
			if (selected_item == i) {_col = c_purple;};
			draw_set_color(_col);
			//name
		//draw_text(_xx + 16,_yy + _sep*i, inv[i].name);
			//description
			/*
			if (selected_item == i)
				{
				draw_text_ext(_xx + 16, _yy + _sep*array_length(inv), inv[i].description, 12,80);
				}
				*/
			//reset
			draw_set_color(c_white);
		}
}