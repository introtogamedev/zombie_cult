i=0;
scav = array_create(0);




		//item_names[irandom(struct_names_count(global.item_list)-1)];
		 

	

item_names = struct_get_names(global.item_list);
item_name = array_shuffle(item_names,0,array_length(item_names));
	
for (var i = 0; i < 5; i++)	
	{
		
		list = global.item_list[$ item_name[i]];
		
		
		//draw_text(32,32 + (i * 32), string(list));
		item = list.sprite;
		array_push(scav,item);	
		
	}

	























