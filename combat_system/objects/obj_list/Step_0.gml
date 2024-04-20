if (i < 5)
	{
		item_names = struct_get_names(global.item_list);
		item_name = item_names[irandom(struct_names_count(global.item_list)-1)];

		list = global.item_list[$ item_name];
		draw_text(32,32 + (i * 32), string(list));
		show_debug_message(list)
		i += 1;
	}

































