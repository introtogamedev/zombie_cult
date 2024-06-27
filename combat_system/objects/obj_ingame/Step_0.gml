//change spr index in object creation code with item = global.item_list.(itemname)
sprite_index = item.sprite;
	var _xx = camera_get_view_x(view_camera[0]) ;
	var _yy = camera_get_view_y(view_camera[0]);
		
		//show_debug_message(global.three);
if (place_meeting(x,y,obj_select)&& obj_select.u_got_an_item)
	{
		
		if (item == obj_list.scav[0] && global.zero = false)
			{
				
				global.zero = true;
				global.win ++;
				show_debug_message("AHH");
				instance_destroy();
				
			}
		
			else if (item == obj_list.scav[1] && global.one = false)
			{
				global.one = true;
				global.win ++;
				show_debug_message("AHH");
				instance_destroy();
				
			}
			else if (item == obj_list.scav[2] && global.two = false)
			{
				global.two = true;
				global.win ++;
				//show_debug_message(global.two);
				instance_destroy();
				
			}
			else if (item == obj_list.scav[3] && global.three = false)
			{
				global.three = true;
				global.win ++;
				
				instance_destroy();
				
			}
			else if (item == obj_list.scav[4] && global.four = false)
			{
				global.four = true;
				global.win ++;
				show_debug_message("AHH");
				instance_destroy();
				
			}
		else if (array_length(obj_manager.slot) = 0 || array_length(obj_manager.slot) <= 9)
		{
		
		array_push(obj_manager.slot,item);
		Inventory_add(obj_manager,item);
		instance_destroy();
		show_debug_message(array_length(obj_manager.slot));
		}
		
	
		
		/*
		for (var i = 0; i < INVENTORY_SLOTS; i+= 1)
	{			
		
		if (obj_manager.inv[i] != -1)
			{
				
				draw_sprite(slot[i].sprite,obj_manager.inv[i],_xx,_yy);
				show_debug_message(slot[i])
			}
	}*/
			
			
			
	}
