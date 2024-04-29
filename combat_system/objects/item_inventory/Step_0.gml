if (obj_text.current = obj_item.text){
	visible = true;

	if(obj_text.timer = 0 && keyboard_check_released(vk_enter))
	{
		#region alarm
		if(array_contains(obj_manager.inv, global.item_list.alarm_clock, 0, array_length(obj_manager.inv)))
		{
			if(obj_meter.meter_value < 3)
			{
				obj_text.current = obj_text.no_stamina;
				obj_text.timer += 10;
			}
			else
			{
				global.enemy_health -= 6;
				obj_text.current = global.item_list.alarm_clock.effect;
				obj_text.timer += 10;
				obj_meter.meter_value -= 3;
			}
		}
		#endregion
		#region ax
		if(array_contains(obj_manager.inv, global.item_list.ax_body_spray, 0, array_length(obj_manager.inv)))
		{
			if(obj_meter.meter_value < 4)
			{
				obj_text.current = obj_text.no_stamina;
				obj_text.timer += 10;
			}
			else
			{
				global.enemy_health -= 9;
				obj_text.current = global.item_list.ax_body_spray.effect;
				obj_text.timer += 10;
				obj_meter.meter_value -= 4;
			}
		}
		#endregion
		#region bunny
		if(array_contains(obj_manager.inv, global.item_list.bunny, 0, array_length(obj_manager.inv)))
		{
			if(obj_meter.meter_value < 2)
			{
				obj_text.current = obj_text.no_stamina;
				obj_text.timer += 10;
			}
			else
			{
				obj_text.current = global.item_list.bunny.effect;
				obj_text.timer += 10;
				obj_meter.meter_value -= 2;
			}
		}
		#endregion
		#region burger
		if(array_contains(obj_manager.inv, global.item_list.burger, 0, array_length(obj_manager.inv)))
		{
			obj_text.current = global.item_list.burger.effect;
			obj_text.timer += 10;
		}
		/*for (var i = 0; i < array_length(inv); i ++){
			inv[i].execute_function();
		}*/
		#endregion
		#region cake
		if(array_contains(obj_manager.inv, global.item_list.cake, 0, array_length(obj_manager.inv)))
		{
			if(obj_meter.meter_value < 2)
			{
				obj_text.current = obj_text.no_stamina;
				obj_text.timer += 10;
			}
			else
			{
				obj_text.current = global.item_list.cake;
				obj_text.timer += 10;
				obj_meter.meter_value -= 2;
			}
		}
		#endregion
		#region cat
		if(array_contains(obj_manager.inv, global.item_list.cat, 0, array_length(obj_manager.inv)))
		{
			if(obj_meter.meter_value < 2)
			{
				obj_text.current = obj_text.no_stamina;
				obj_text.timer += 10;
			}
			else
			{
				global.enemy_health -= 5;
				obj_text.current = global.item_list.cat;
				obj_text.timer += 10;
				obj_meter.meter_value -= 2;
			}
		}
		#endregion
		#region cliff_bar
		if(array_contains(obj_manager.inv, global.item_list.cliff_bar, 0, array_length(obj_manager.inv)))
		{
			if(obj_meter.meter_value < 1)
			{
				obj_text.current = obj_text.no_stamina;
				obj_text.timer += 10;
			}
			else
			{
				global.player_health += 2;
				obj_text.current = global.item_list.cliff_bar.effect;
				obj_text.timer += 10;
				obj_meter.meter_value -= 1;
			}
		}
		#endregion
		#region cookies
		if(array_contains(obj_manager.inv, global.item_list.cookies, 0, array_length(obj_manager.inv)))
		{
			if(obj_meter.meter_value < 3)
			{
				obj_text.current = obj_text.no_stamina;
				obj_text.timer += 10;
			}
			else
			{
				global.player_health += 8;
				obj_text.current = global.item_list.cookies;
				obj_text.timer += 10;
				obj_meter.meter_value -= 3;
			}
		}
		#endregion
		#region danish
		if(array_contains(obj_manager.inv, global.item_list.danish, 0, array_length(obj_manager.inv)))
		{
			if(obj_meter.meter_value < 1)
			{
				obj_text.current = obj_text.no_stamina;
				obj_text.timer += 10;
			}
			else
			{
				global.player_health += 5;
				obj_text.current = global.item_list.danish.effect;
				obj_text.timer += 10;
				obj_meter.meter_value -= 1;
			}
		}
		#endregion
		#region dog
		if(array_contains(obj_manager.inv, global.item_list.dog, 0, array_length(obj_manager.inv)))
		{
			if(obj_meter.meter_value < 5)
			{
				obj_text.current = obj_text.no_stamina;
				obj_text.timer += 10;
			}
			else
			{
				global.player_health += 10;
				obj_text.current = global.item_list.dog.effect;
				obj_text.timer += 10;
				obj_meter.meter_value -= 5;
			}
		}
		#endregion
		#region drugs
		if(array_contains(obj_manager.inv, global.item_list.drugs, 0, array_length(obj_manager.inv)))
		{
			obj_text.current = global.item_list.drugs.effect;
			obj_text.timer += 10;
		}
		#endregion
		#region dry_shampoo
		if(array_contains(obj_manager.inv, global.item_list.dry_shampoo, 0, array_length(obj_manager.inv)))
		{
			if(obj_meter.meter_value < 3)
			{
				obj_text.current = obj_text.no_stamina;
				obj_text.timer += 10;
			}
			else
			{
				global.enemy_health -= 5;
				obj_text.current = global.item_list.dry_shampoo.effect;
				obj_text.timer += 10;
				obj_meter.meter_value -= 3;
			}
		}
		#endregion
		#region earrings
		if(array_contains(obj_manager.inv, global.item_list.earrings, 0, array_length(obj_manager.inv)))
		{
			if(obj_meter.meter_value < 1)
			{
				obj_text.current = obj_text.no_stamina;
				obj_text.timer += 10;
			}
			else
			{
				global.player_health += 4;
				obj_text.current = global.item_list.earrings.effect;
				obj_text.timer += 10;
				obj_meter.meter_value -= 1;
			}
		}
		#endregion
		#region hairspray
		if(array_contains(obj_manager.inv, global.item_list.hairspray, 0, array_length(obj_manager.inv)))
		{
			if(obj_meter.meter_value < 3)
			{
				obj_text.current = obj_text.no_stamina;
				obj_text.timer += 10;
			}
			else
			{
				obj_text.current = global.item_list.hairspray.effect;
				obj_text.timer += 10;
				obj_meter.meter_value -= 3;
			}
		}
		#endregion
		#region healthboosts
		if(array_contains(obj_manager.inv, global.item_list.healthboosts, 0, array_length(obj_manager.inv)))
		{
			if(obj_meter.meter_value < 4)
			{
				obj_text.current = obj_text.no_stamina;
				obj_text.timer += 10;
			}
			else
			{
				global.player_health += 10;
				obj_text.current = global.item_list.healthboosts.effect;
				obj_text.timer += 10;
				obj_meter.meter_value -= 4;
			}
		}
		#endregion
		#region hoodie
		if(array_contains(obj_manager.inv, global.item_list.hoodie, 0, array_length(obj_manager.inv)))
		{
			if(obj_meter.meter_value < 3)
			{
				obj_text.current = obj_text.no_stamina;
				obj_text.timer += 10;
			}
			else
			{
				global.player_health += 4;
				obj_text.current = global.item_list.hoodie.effect;
				obj_text.timer += 10;
				obj_meter.meter_value -= 3;
			}
		}
		#endregion
		#region lotion
		if(array_contains(obj_manager.inv, global.item_list.lotion, 0, array_length(obj_manager.inv)))
		{
			if(obj_meter.meter_value < 2)
			{
				obj_text.current = obj_text.no_stamina;
				obj_text.timer += 10;
			}
			else
			{
				global.player_health += 5;
				obj_text.current = global.item_list.lotion.effect;
				obj_text.timer += 10;
				obj_meter.meter_value -= 2;
			}
		}
		#endregion
		#region nerf_gun
		if(array_contains(obj_manager.inv, global.item_list.nerf_gun, 0, array_length(obj_manager.inv)))
		{
			if(obj_meter.meter_value < 3)
			{
				obj_text.current = obj_text.no_stamina;
				obj_text.timer += 10;
			}
			else
			{
				global.enemy_health -= 3;
				obj_text.current = global.item_list.nerf_gun.effect;
				obj_text.timer += 10;
				obj_meter.meter_value -= 3;
			}
		}
		#endregion
		#region perfume
		if(array_contains(obj_manager.inv, global.item_list.perfume, 0, array_length(obj_manager.inv)))
		{
			if(obj_meter.meter_value < 1)
			{
				obj_text.current = obj_text.no_stamina;
				obj_text.timer += 10;
			}
			else
			{
				global.enemy_health -= 3;
				obj_text.current = global.item_list.perfume.effect;
				obj_text.timer += 10;
				obj_meter.meter_value -= 1;
			}
		}
		#endregion
		#region phone
		if(array_contains(obj_manager.inv, global.item_list.phone, 0, array_length(obj_manager.inv)))
		{
			if(obj_meter.meter_value < 5)
			{
				obj_text.current = obj_text.no_stamina;
				obj_text.timer += 10;
			}
			else
			{
				global.enemy_health -= 15;
				obj_text.current = global.item_list.phone.effect;
				obj_text.timer += 10;
				obj_meter.meter_value -= 5;
			}
		}
		#endregion
		#region pizza
		if(array_contains(obj_manager.inv, global.item_list.pizza, 0, array_length(obj_manager.inv)))
		{
			obj_text.current = global.item_list.pizza.effect;
			obj_text.timer += 10;
		}
		#endregion
		#region powder_blush
		if(array_contains(obj_manager.inv, global.item_list.powder_blush, 0, array_length(obj_manager.inv)))
		{
			if(obj_meter.meter_value < 2)
			{
				obj_text.current = obj_text.no_stamina;
				obj_text.timer += 10;
			}
			else
			{
				global.player_health += 4;
				obj_text.current = global.item_list.powder_blush.effect;
				obj_text.timer += 10;
				obj_meter.meter_value -= 2;
			}
		}
		#endregion
		#region rat
		if(array_contains(obj_manager.inv, global.item_list.rat, 0, array_length(obj_manager.inv)))
		{
			if(obj_meter.meter_value < 1)
			{
				obj_text.current = obj_text.no_stamina;
				obj_text.timer += 10;
			}
			else
			{
				global.enemy_health -= 3;
				obj_text.current = global.item_list.rat.effect;
				obj_text.timer += 10;
				obj_meter.meter_value -= 1;
			}
		}
		#endregion
		#region soap
		if(array_contains(obj_manager.inv, global.item_list.soap, 0, array_length(obj_manager.inv)))
		{
			if(obj_meter.meter_value < 2)
			{
				obj_text.current = obj_text.no_stamina;
				obj_text.timer += 10;
			}
			else
			{
				obj_text.current = global.item_list.soap.effect;
				obj_text.timer += 10;
				obj_meter.meter_value -= 2;
			}
		}
		#endregion
		#region squirrel
		if(array_contains(obj_manager.inv, global.item_list.squirrel, 0, array_length(obj_manager.inv)))
		{
			if(obj_meter.meter_value < 2)
			{
				obj_text.current = obj_text.no_stamina;
				obj_text.timer += 10;
			}
			else
			{
				global.enemy_health -= 6;
				obj_text.current = global.item_list.squirrel.effect;
				obj_text.timer += 10;
				obj_meter.meter_value -= 2;
			}
		}
		#endregion
		#region walkie_talkie
		if(array_contains(obj_manager.inv, global.item_list.walkie_talkie, 0, array_length(obj_manager.inv)))
		{
			if(obj_meter.meter_value < 2)
			{
				obj_text.current = obj_text.no_stamina;
				obj_text.timer += 10;
			}
			else
			{
				global.player_health += 6;
				obj_text.current = global.item_list.walkie_talkie.effect;
				obj_text.timer += 10;
				obj_meter.meter_value -= 2;
			}
		}
		#endregion
	}	
}else{
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
