//change spr index in object creation code with item = global.item_list.(itemname)
sprite_index = item.sprite;

if (place_meeting(x,y,obj_select)&& keyboard_check(vk_enter))
	{
	if (inventory < 11)
		{
			item_add(item);
			instance_destroy();
		}
		inventory += 1
	}

show_debug_message(inventory);
