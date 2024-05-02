for (i = 0; i < array_length(obj_manager.inv) - 1; i++) //sort inventory
{
	var _temp = 0;
	
	if (obj_manager.inv[i] == -1) 
	{
		obj_manager.inv[i] = obj_manager.inv[i+1];
		obj_manager.inv[i+1] = -1;
		
		_temp = 0;
	}
}

if (obj_text.current = obj_item.text)
{
	visible = true;

	for(var i = 0; i < array_length(inv); i++)
	{
		chosen_item = i;
		
		if(obj_text.timer = 0 && chosen_item != 1 && keyboard_check_released(vk_enter))
		{
			inv[current_selection].execute_function();
			array_set(inv, current_selection, -1);
		}
		
		for (var i = 0; i < array_length(obj_manager.inv); i++;)
		{
			show_debug_message("slot " + string(i) + " includes " + string(obj_manager.inv[i]));	
		}
	}

}
else 
{

	visible = false;
}

#region putting text back to normal I hate this please set me free from this ctrl c ctrl v hell lmao
if(obj_text.timer = 0 && obj_text.current = global.item_list.alarm_clock.effect  && keyboard_check_released(vk_enter))
{
	obj_selection.selected_object = obj_selection;
	obj_text.timer += 10;
	obj_text.current = obj_text.action;
}

if(obj_text.timer = 0 && obj_text.current = global.item_list.ax_body_spray.effect  && keyboard_check_released(vk_enter))
{
	obj_selection.selected_object = obj_selection;
	obj_text.timer += 10;
	obj_text.current = obj_text.action;
}

if(obj_text.timer = 0 && obj_text.current = global.item_list.bunny.effect  && keyboard_check_released(vk_enter))
{
	obj_selection.selected_object = obj_selection;
	obj_text.timer += 10;
	obj_text.current = obj_text.action;
	obj_enemy.skip_enemy = true;
}

if(obj_text.timer = 0 && obj_text.current = global.item_list.burger.effect  && keyboard_check_released(vk_enter))
{
	obj_selection.selected_object = obj_selection;
	obj_text.timer += 10;
	obj_text.current = obj_text.action;
}

if(obj_text.timer = 0 && obj_text.current = global.item_list.cake.effect  && keyboard_check_released(vk_enter))
{
	obj_selection.selected_object = obj_selection;
	obj_text.timer += 10;
	obj_text.current = obj_text.action;
	obj_enemy.skip_enemy = true;

	
}

if(obj_text.timer = 0 && obj_text.current = global.item_list.cat.effect  && keyboard_check_released(vk_enter))
{
	obj_selection.selected_object = obj_selection;
	obj_text.timer += 10;
	obj_text.current = obj_text.action;
}

if(obj_text.timer = 0 && obj_text.current = global.item_list.cliff_bar.effect  && keyboard_check_released(vk_enter))
{
	obj_selection.selected_object = obj_selection;
	obj_text.timer += 10;
	obj_text.current = obj_text.action;
}

if(obj_text.timer = 0 && obj_text.current = global.item_list.cookies.effect  && keyboard_check_released(vk_enter))
{
	obj_selection.selected_object = obj_selection;
	obj_text.timer += 10;
	obj_text.current = obj_text.action;
}

if(obj_text.timer = 0 && obj_text.current = global.item_list.danish.effect  && keyboard_check_released(vk_enter))
{
	obj_selection.selected_object = obj_selection;
	obj_text.timer += 10;
	obj_text.current = obj_text.action;
}

if(obj_text.timer = 0 && obj_text.current = global.item_list.dog.effect  && keyboard_check_released(vk_enter))
{
	obj_selection.selected_object = obj_selection;
	obj_text.timer += 10;
	obj_text.current = obj_text.action;
}

if(obj_text.timer = 0 && obj_text.current = global.item_list.drugs.effect  && keyboard_check_released(vk_enter))
{
	obj_selection.selected_object = obj_selection;
	obj_text.timer += 10;
	obj_text.current = obj_text.action;
}

if(obj_text.timer = 0 && obj_text.current = global.item_list.dry_shampoo.effect  && keyboard_check_released(vk_enter))
{
	obj_selection.selected_object = obj_selection;
	obj_text.timer += 10;
	obj_text.current = obj_text.action;
}

if(obj_text.timer = 0 && obj_text.current = global.item_list.earrings.effect  && keyboard_check_released(vk_enter))
{
	obj_selection.selected_object = obj_selection;
	obj_text.timer += 10;
	obj_text.current = obj_text.action;
}

if(obj_text.timer = 0 && obj_text.current = global.item_list.hairspray.effect  && keyboard_check_released(vk_enter))
{
	obj_selection.selected_object = obj_selection;
	obj_text.timer += 10;
	obj_text.current = obj_text.action;
	obj_enemy.skip_enemy = true;
}

if(obj_text.timer = 0 && obj_text.current = global.item_list.healthboosts.effect  && keyboard_check_released(vk_enter))
{
	obj_selection.selected_object = obj_selection;
	obj_text.timer += 10;
	obj_text.current = obj_text.action;
}

if(obj_text.timer = 0 && obj_text.current = global.item_list.hoodie.effect  && keyboard_check_released(vk_enter))
{
	obj_selection.selected_object = obj_selection;
	obj_text.timer += 10;
	obj_text.current = obj_text.action;
}

if(obj_text.timer = 0 && obj_text.current = global.item_list.lotion.effect  && keyboard_check_released(vk_enter))
{
	obj_selection.selected_object = obj_selection;
	obj_text.timer += 10;
	obj_text.current = obj_text.action;
}

if(obj_text.timer = 0 && obj_text.current = global.item_list.nerf_gun.effect  && keyboard_check_released(vk_enter))
{
	obj_selection.selected_object = obj_selection;
	obj_text.timer += 10;
	obj_text.current = obj_text.action;
}

if(obj_text.timer = 0 && obj_text.current = global.item_list.perfume.effect  && keyboard_check_released(vk_enter))
{
	obj_selection.selected_object = obj_selection;
	obj_text.timer += 10;
	obj_text.current = obj_text.action;
}

if(obj_text.timer = 0 && obj_text.current = global.item_list.phone.effect  && keyboard_check_released(vk_enter))
{
	obj_selection.selected_object = obj_selection;
	obj_text.timer += 10;
	obj_text.current = obj_text.action;
}

if(obj_text.timer = 0 && obj_text.current = global.item_list.pizza.effect  && keyboard_check_released(vk_enter))
{
	obj_selection.selected_object = obj_selection;
	obj_text.timer += 10;
	obj_text.current = obj_text.action;
}

if(obj_text.timer = 0 && obj_text.current = global.item_list.powder_blush.effect  && keyboard_check_released(vk_enter))
{
	obj_selection.selected_object = obj_selection;
	obj_text.timer += 10;
	obj_text.current = obj_text.action;
}

if(obj_text.timer = 0 && obj_text.current = global.item_list.rat.effect  && keyboard_check_released(vk_enter))
{
	obj_selection.selected_object = obj_selection;
	obj_text.timer += 10;
	obj_text.current = obj_text.action;
}

if(obj_text.timer = 0 && obj_text.current = global.item_list.soap.effect  && keyboard_check_released(vk_enter))
{
	obj_selection.selected_object = obj_selection;
	obj_text.timer += 10;
	obj_text.current = obj_text.action;
	obj_enemy.skip_enemy = true;
}

if(obj_text.timer = 0 && obj_text.current = global.item_list.squirrel.effect  && keyboard_check_released(vk_enter))
{
	obj_selection.selected_object = obj_selection;
	obj_text.timer += 10;
	obj_text.current = obj_text.action;
}

if(obj_text.timer = 0 && obj_text.current = global.item_list.walkie_talkie.effect  && keyboard_check_released(vk_enter))
{
	obj_selection.selected_object = obj_selection;
	obj_text.timer += 10;
	obj_text.current = obj_text.action;
}
#endregion
