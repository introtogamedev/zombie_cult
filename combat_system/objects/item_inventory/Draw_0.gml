draw_set_color(c_black);
var display_start_index = offset_index;
var maximum_display_index = 3;
if(array_length(obj_manager.inv) < 3)
{
	display_start_index = 0;
	maximum_display_index = array_length(obj_manager.inv)
}else{
	maximum_display_index = display_start_index + 3;
}
for (var i = display_start_index; i < maximum_display_index; i++)
{
	if(offset_index < i < global.array_limit)
	{
		draw_text(global.AxPos[0], global.AyPos[i - offset_index], obj_manager.inv[i].name);

		if (obj_selection.y == global.AyPos[i - offset_index] + 10)
		{
			draw_text(global.AxPos[0] + 120, global.AyPos[i - offset_index]," -" + obj_manager.inv[i].description);
		}	

		show_debug_message(offset_index);
	}
}


































