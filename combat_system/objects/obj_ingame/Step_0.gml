//change spr index in object creation code with item = global.item_list.(itemname)
sprite_index = item.sprite;
	var _xx = camera_get_view_x(view_camera[0]) ;
	var _yy = camera_get_view_y(view_camera[0]);
		
		
if (place_meeting(x,y,obj_select)&& keyboard_check(vk_enter))
	{
		
		array_push(obj_manager.slot,item);
		obj_manager.win ++;
		show_debug_message(win);
		/*
		for (var i = 0; i < INVENTORY_SLOTS; i+= 1)
	{			
		
		if (obj_manager.inv[i] != -1)
			{
				
				draw_sprite(slot[i].sprite,obj_manager.inv[i],_xx,_yy);
				show_debug_message(slot[i])
			}
	}*/
			Inventory_add(obj_manager,item);
			instance_destroy();
			
	}
