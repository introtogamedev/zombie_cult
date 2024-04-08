depth = -999


//item constructer
function create_item(_name,_desc,_spr) constructor
	{
		name = _name;
		description = _desc;
		sprite = _spr;
		
	}
	
//create items

global.item_list = 
	{
		
	
burger :
	new create_item(
	"Burger",
	"A burger",
	spr_burger
	),
	//add more items here
	


	}
	
//crate the inventory
//0 is size of array
inv = array_create(0);
selected_item = -1;
	
screen_border = 16;
sep = 16;