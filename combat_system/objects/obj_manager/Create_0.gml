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
	
alarm_clock :
	new create_item(
	"Alarm",
	"Distracts zombies for a turn",
	spr_alarm
	),
	
nerf_gun :
	new create_item(
	"Nerf Gun",
	"Pew Pew",
	spr_nerf_gun
	),
	
soap :
	new create_item(
	"Soap",
	"Slip and slide",
	spr_soap
	),
	
ax_body_spray :
	new create_item(
	"Ax Body Spray",
	"Skips enemy's turn",
	spr_ax_body_spray
	),
	
lotion :
	new create_item(
	"Lotion",
	"Smoooooooooooth",
	spr_lotion
	),
	
powder_blush :
	new create_item(
	"Powder Blush",
	"Don't eat it",
	spr_powder_blush
	),
	
dry_shampoo :
	new create_item(
	"Dry Shampoo",
	"You lazy bum",
	spr_dry_shampoo
	),
	
perfume :
	new create_item(
	"Perfume",
	"Mmm.. Smells like lavender",
	spr_perfume
	),
	
hairspray :
	new create_item(
	"Hairspray",
	"Perfection or bush",
	spr_hairspray
	),
	
cat :
	new create_item(
	"Cat",
	"meow.",
	spr_cat
	),
	
bunny :
	new create_item(
	"Bunny",
	"squeak squeak motherfucker.",
	spr_bunny
	),
	
squirrel :
	new create_item(
	"Squirrel",
	"You can't tell if it has rabies or not..",
	spr_squirrel
	),
	
dog :
	new create_item(
	"Dog",
	"yap yap.",
	spr_dog
	),

rat :
	new create_item(
	"Rat",
	"nibble nibble cheesy dribble.",
	spr_rat
	),

earrings :
	new create_item(
	"Earrings",
	"Made out of 90% fake gold",
	spr_earrings
	),

phone :
	new create_item(
	"Phone",
	"*insert elevator music*",
	spr_phone
	),
	
walkie_talkie :
	new create_item(
	"Walkie Talkie",
	" 'Yipee', Hanna says.",
	spr_walkie_talkie
	),


hoodie :
	new create_item(
	"Hoodie",
	"thicc.",
	spr_hoodie
	),

cake :
	new create_item(
	"Cake",
	"It's a lie. Or is it?",
	spr_cake
	),

cookies :
	new create_item(
	"Cookie",
	"Freshly baked by mom",
	spr_cookies
	),

danish :
	new create_item(
	"Danish",
	"A sugary treat!",
	spr_danish
	),
	
drugs :
	new create_item(
	"Drugs",
	"'Boosts' performance",
	spr_drugs
	),
	
healthboosts :
	new create_item(
	"Healthboosts",
	"Good when used properly",
	spr_healthboost
	),
	
cliff_bar :
	new create_item(
	"Cliff Bar",
	"Good for your body",
	spr_cliff_bar
	),
	
pizza :
	new create_item(
	"Pizza",
	"Pizza Pizza",
	spr_pizza
	),
	}
	
//crate the inventory
//0 is size of array
inv = array_create(0);
selected_item = -1;
	
screen_border = 16;
sep = 16;