 
draw_set_color(c_black);
var display_start_index = offset_index;
var maximum_display_index = array_length(obj_manager.inv);



var actual_inventory_length = 0;
for (var j = 0; j < array_length(obj_manager.inv); j ++){
	if (obj_manager.inv[j] != -1) actual_inventory_length ++;
	else break;
}


if(actual_inventory_length < 3)
{
	display_start_index = 0;
	maximum_display_index = actual_inventory_length;
	//show_debug_message("Inventory is less than 3");
}else{
	maximum_display_index = display_start_index + 3;
	//show_debug_message("Inventory is more than 3");
}

for (var i = display_start_index; i < maximum_display_index; i++)
{

	if (current_selection + 2 > actual_inventory_length)
	{
		last_item = true;
		//draw_text(global.AxPos[0], global.AyPos[i - offset_index], obj_manager.inv[i].name);
		/*
		if (obj_selection.y == global.AyPos[i - offset_index] + 10)
		{	
			draw_text(global.AxPos[0] + 150, global.AyPos[i - offset_index]," -" + obj_manager.inv[i].description);
			current_selection = i;
		}	
		*/
	}
	else
	{
		last_item = false;
		//obj_arrow.visible = true;
	}
	
	if (current_selection + 1 > actual_inventory_length)
	{
		obj_arrow.visible = true;
	}
	else
	{
		obj_arrow.visible = false;		
	}
	
	if (obj_manager.inv[i] != -1)
	{
		draw_text(global.AxPos[0], global.AyPos[i - offset_index], obj_manager.inv[i].name);
	
		if (obj_selection.y == global.AyPos[i - offset_index] + 10)
		{	
			draw_text(global.AxPos[0] + 250, global.AyPos[i - offset_index]," -" + obj_manager.inv[i].description);
			current_selection = i;
		}
	}
}



































