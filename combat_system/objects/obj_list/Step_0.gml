
if( i < 5)
	{
		item_names = struct_get_names(global.item_list);
		item_name = item_names[irandom(struct_names_count(global.item_list)-1)];
		
		list = global.item_list[$ item_name];
		
		draw_text(32,32 + (i * 32), string(list));
		item = list.sprite;
		array_push(scav,item);
		
		
		i++;
	}
if (array_contains(obj_manager.slot,scav,0,array_length(obj_manager.slot)))
{
show_debug_message(scav);
}































