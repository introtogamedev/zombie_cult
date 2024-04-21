//change spr index in object creation code with item = global.item_list.(itemname)
sprite_index = item.sprite;
	var _xx = camera_get_view_x(view_camera[0]) ;
	var _yy = camera_get_view_y(view_camera[0]);
		
		
if (place_meeting(x,y,obj_select)&& keyboard_check(vk_enter))
	{
			
			Inventory_add(obj_manager,item);
			instance_destroy();
			
	}
