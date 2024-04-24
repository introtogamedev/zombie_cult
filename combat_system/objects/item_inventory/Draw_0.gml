draw_set_color(c_black);
var display_start_index = offset_index;
var maximum_display_index = 3;

var actual_inventory_length = 0;
for (var j = 0; j < array_length(obj_manager.inv); j ++){
	if (obj_manager.inv[j] != -1) actual_inventory_length ++;
	else break;
}

if(actual_inventory_length < 3)
{
	display_start_index = 0;
	maximum_display_index = actual_inventory_length;
	show_debug_message("Inventory is less than 3");
}else{
	maximum_display_index = display_start_index + 3;
}

for (var i = display_start_index; i < maximum_display_index; i++)
{
	if(display_start_index < i < global.array_limit)
	{
		draw_text(global.AxPos[0], global.AyPos[i - offset_index], inv[i].name);

		if (obj_selection.y == global.AyPos[i - offset_index] + 10)
		{
			draw_text(global.AxPos[0] + 150, global.AyPos[i - offset_index]," -" + obj_manager.inv[i].description);
		}	

		show_debug_message(offset_index);
	}
	else
	{
		obj_text.current = obj_text.no_stamina;
	}
}


































