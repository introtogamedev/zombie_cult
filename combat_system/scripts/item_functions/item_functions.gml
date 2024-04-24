/*
//pick up items
function item_add(_item)
	{
		array_push(inv, _item);
		
	}
*/
//search
function inventory_search(rootObject,itemType)
	{
		for (var i = 0; i < INVENTORY_SLOTS; i += 1)
			{
				if (rootObject.inv[i]== itemType)
					{
						return(i);
					}
			}
		return(-1);
	}
function Inventory_remove(rootObject,itemType){
	var _slot = inventory_search(rootObject,itemType);
	if (_slot != -1)
		{
			with (rootObject) inv[_slot] = itemType; //array_delete(rootObject,slot,1);
			return true;
		}
		else return false;
}
function Inventory_add(rootObject,itemType){
	var _slot = inventory_search(rootObject,-1);
	
	if (_slot != -1)
		{
			with (rootObject) inv[_slot] = itemType;
			return true;
		}
		else return false;
}

