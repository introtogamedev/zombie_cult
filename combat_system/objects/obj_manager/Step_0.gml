//PRINT INVENTORY WITH NUMBERS
for (var i = 0; i < array_length(obj_manager.inv); i++;)
{
	if (obj_manager.inv[i] != -1)
	{
		temporary[i] = "O";	
	}
	else 
	{
		temporary[i] = "X";	
	}
}
show_debug_message(string(temporary));

//get selected item
selected_item = -1;
for (var i = 0; i < array_length(inv); i++)
	{
		var _xx = camera_get_view_x(view_camera[0]) + screen_border;
		var _yy = camera_get_view_y(view_camera[0])+ screen_border + sep*i;
		
		
		if (mouse_x > _xx && mouse_x < _xx + 16 && mouse_y > _yy && mouse_y < _yy + 16)
			{
				selected_item = i;
				
			}
	}


