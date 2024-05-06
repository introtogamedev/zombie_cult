temporary = array_create(9,0);

depth = -1002
global.win = 0;
#macro INVENTORY_SLOTS 10 //-1 because array starts from 0
row_length = 5;
global.one = false;
global.two = false;
global.three = false;
global.four = false;
global.zero = false;
//item constructer
function create_item(_name,_desc,_spr, _effect, _execute_function) constructor//, _execute_Function = function(){}) constructor
	{
		name = _name;
		description = _desc;
		sprite = _spr;
		effect = _effect;
		execute_function = _execute_function;
	}

//create items

global.item_list = 
	{
		
	
burger :
	new create_item(
	"Burger",
	"A burger (?)",
	spr_burger,
	"It's just a burger :|",
	function ()
	{
		obj_text.current = global.item_list.burger.effect;
		obj_text.timer += 10;		
	}
	),
	//add more items here
	


alarm_clock :
	new create_item(
	"Alarm",
	"Ring ring" + "\n" + "(+6 DMG including you!" + "\n" + ", uses 3 mana)",
	spr_alarm,
	"The clock rings," + "\n" +  " making everyone's ears bleed!" + "\n" + "They take 4 damage!",
	function()
	{	
		if(obj_meter.meter_value < 3)
		{
			obj_text.current = obj_text.no_stamina;
			obj_text.timer += 10;
			item_inventory.empty_stamina = true;
		}
		else
		{
			global.enemy_health -= 6;
			global.player_health -= 6;
			obj_text.current = global.item_list.alarm_clock.effect;
			obj_text.timer += 10;
			obj_meter.meter_value -= 3;
			item_inventory.empty_stamina = false;
			obj_player.player_hit = true;
			obj_enemy.getting_hit = true;
		
		}	
	}
	),
	
nerf_gun :
	new create_item(
	"Nerf Gun",
	"Pew Pew" + "\n" + "(+5 DMG , uses 2 mana)",
	spr_nerf_gun,
	"Bullseye! You shoot with the nerf gun" + "\n" + "and the enemy takes 5 damage!",
	function()
	{
		if(obj_meter.meter_value < 2)
		{
			obj_text.current = obj_text.no_stamina;
			obj_text.timer += 10;
			item_inventory.empty_stamina = true;
		}
		else
		{
			global.enemy_health -= 5;
			obj_text.current = global.item_list.nerf_gun.effect;
			obj_text.timer += 10;
			obj_meter.meter_value -= 2;
			item_inventory.empty_stamina = false;
			obj_enemy.getting_hit = true;
		}	
	}
	),
	
soap :
	new create_item(
	"Soap",
	"Slip and slide" + "\n" + "(Stuns, uses 1 mana)",
	spr_soap,
	"The enemy slips on the soap," + "\n" +  " losing its next turn!",
	function()
	{
		if(obj_meter.meter_value < 1)
		{
			obj_text.current = obj_text.no_stamina;
			obj_text.timer += 10;
			item_inventory.empty_stamina = true;
		}
		else
		{
			obj_text.current = global.item_list.soap.effect;
			obj_text.timer += 10;
			obj_meter.meter_value -= 1;
			item_inventory.empty_stamina = false;
			obj_enemy.skip_enemy = true;
		}		
	}
	),
	
ax_body_spray :
	new create_item(
	"Ax Spray",
	"Smells like pain" + "\n" + "(+9 DMG including you! , uses 4 mana)",
	spr_ax_body_spray,
	 "You spritz the axe body spray spray" + "\n" + " and the enemy takes 2 damage!.",
	function()
	{
		if(obj_meter.meter_value < 4)
		{
			obj_text.current = obj_text.no_stamina;
			obj_text.timer += 10;
			item_inventory.empty_stamina = true;
		}
		else
		{
			global.enemy_health -= 9;
			global.player_health -= 9;
			obj_text.current = global.item_list.ax_body_spray.effect;
			obj_text.timer += 10;
			obj_meter.meter_value -= 4;
			item_inventory.empty_stamina = false;
			obj_player.player_hit = true;
			obj_enemy.getting_hit = true;
		}		
	}	 
	),
	
lotion :
	new create_item(
	"Lotion",
	"Smoooooooooooth" + "\n" + "(+3 HP, uses 2 mana)",
	spr_lotion,
	"You smear some lotion onto your skin! You feel moisturized for the day!" + "\n" + "You gain 5 HP!",
	function()
	{
		if(obj_meter.meter_value < 2)
		{
			obj_text.current = obj_text.no_stamina;
			obj_text.timer += 10;
			item_inventory.empty_stamina = true;
		}
		else
		{
			global.player_health += 3;
			obj_text.current = global.item_list.lotion.effect;
			obj_text.timer += 10;
			obj_meter.meter_value -= 2;
			item_inventory.empty_stamina = false;
			got_hp = true;
		}		
	}	
	),
	
powder_blush :
	new create_item(
	"Powder Blush",
	"Don't eat it" + "\n" + "(+4 HP, uses 3 mana)",
	spr_powder_blush,
	"You put on some powder blush." + "\n" +  " Makes you feel more self-confident!" + "\n" + "You gain +4 HP!",
	function()
	{
		if(obj_meter.meter_value < 3)
		{
			obj_text.current = obj_text.no_stamina;
			obj_text.timer += 10;
			item_inventory.empty_stamina = true;
		}
		else
		{
			global.player_health += 4;
			obj_text.current = global.item_list.powder_blush.effect;
			obj_text.timer += 10;
			obj_meter.meter_value -= 3;
			item_inventory.empty_stamina = false;
			got_hp = true;
		}		
	}	
	),
	
dry_shampoo :
	new create_item(
	"Dry Shampoo",
	"You lazy bum" + "\n" + "(+5 DMG, uses 3 mana)",
	spr_dry_shampoo,
	"You spritz some dry shampoo onto the enemy!" + "\n" + " It cleanses the enemy's soul, taking 5 damage!",
	function()
	{
		if(obj_meter.meter_value < 3)
		{
			obj_text.current = obj_text.no_stamina;
			obj_text.timer += 10;
			item_inventory.empty_stamina = true;
		}
		else
		{
			global.enemy_health -= 5;
			obj_text.current = global.item_list.dry_shampoo.effect;
			obj_text.timer += 10;
			obj_meter.meter_value -= 3;
			item_inventory.empty_stamina = false;
			obj_enemy.getting_hit = true;
		}		
	}	
	),
	
perfume :
	new create_item(
	"Perfume",
	"Smells nice" + "\n" + "(+3 DMG, uses 1 mana)",
	spr_perfume,
	"You spray the perfume, the enemy is allergic to it!" + "\n" + "It takes 3 damage!",
	function()
	{
		if(obj_meter.meter_value < 1)
		{
			obj_text.current = obj_text.no_stamina;
			obj_text.timer += 10;
			item_inventory.empty_stamina = true;
		}
		else
		{
			global.enemy_health -= 3;
			obj_text.current = global.item_list.perfume.effect;
			obj_text.timer += 10;
			obj_meter.meter_value -= 1;
			item_inventory.empty_stamina = false;
			obj_enemy.getting_hit = true;
		}		
	}
	),
	
hairspray :
	new create_item(
	"Hairspray",
	"Perfection or bush" + "\n" + "(Stuns, uses 1 mana)",
	spr_hairspray,
	"You use hairspray, covering the battlefield." + "\n" + "The enemy can't see and it loses its turn!",
	function()
	{
		if(obj_meter.meter_value < 1)
		{
			obj_text.current = obj_text.no_stamina;
			obj_text.timer += 10;
			item_inventory.empty_stamina = true;
		}
		else
		{
			obj_text.current = global.item_list.hairspray.effect;
			obj_text.timer += 10;
			obj_meter.meter_value -= 1;
			item_inventory.empty_stamina = false;
			obj_enemy.skip_enemy = true;
		}		
	}	
	),
	
cat :
	new create_item(
	"Cat",
	"meow." + "\n" + "(+5 DMG, uses 2 mana)",
	spr_cat,
	"You let the cat loose and it sprints up to the enemy!" + "\n" + "The cat tries to scratch its eyes out," + "/n" + "the enemy takes 5 damage!",
	function()
	{
		if(obj_meter.meter_value < 2)
		{
			obj_text.current = obj_text.no_stamina;
			obj_text.timer += 10;
			item_inventory.empty_stamina = true;
		}
		else
		{
			global.enemy_health -= 5;
			obj_text.current = global.item_list.cat.effect;
			obj_text.timer += 10;
			obj_meter.meter_value -= 2;
			item_inventory.empty_stamina = false;
			obj_enemy.getting_hit = true;
		}		
	}	
	),
	
bunny :
	new create_item(
	"Bunny",
	"squeak squeak motherfucker." + "\n" + "(Distracts, uses 1 mana)",
	spr_bunny,
	"The bunny hops in front of the enemy." + "\n" +  " The enemy is too distracted by its cuteness!" + "\n" + "It loses its turn!",
	function()
	{
		if(obj_meter.meter_value < 1)
		{
			obj_text.current = obj_text.no_stamina;
			obj_text.timer += 10;
			item_inventory.empty_stamina = true;
		}
		else
		{
			obj_text.current = global.item_list.bunny.effect;
			obj_text.timer += 10;
			obj_meter.meter_value -= 1;
			item_inventory.empty_stamina = false;
			obj_enemy.skip_enemy = true;
		}		
	}	
	),
	
squirrel :
	new create_item(
	"Squirrel",
	"Does it have rabies?" + "\n" + "(+6 dmg, uses 3 mana)",
	spr_squirrel,
	"You lunge the squirrel onto the enemy!" + "\n" + "The enemy takes 6 damage!",
	function()
	{
		if(obj_meter.meter_value < 3)
		{
			obj_text.current = obj_text.no_stamina;
			obj_text.timer += 10;
			item_inventory.empty_stamina = true;
		}
		else
		{
			global.enemy_health -= 6;
			obj_text.current = global.item_list.squirrel.effect;
			obj_text.timer += 10;
			obj_meter.meter_value -= 3;
			item_inventory.empty_stamina = false;
			obj_enemy.getting_hit = true;
		}		
	}	
	),
	
dog :
	new create_item(
	"Dog",
	"yap yap." + "\n" + "(+9 HP, uses 5 mana)",
	spr_dog,
	"You hold in the dog in your arms." + "\n" +  " You feel emotionally stable and content wih life!" + "\n" + "You gain 9 HP!",
	function()
	{
		if(obj_meter.meter_value < 5)
		{
			obj_text.current = obj_text.no_stamina;
			obj_text.timer += 10;
			item_inventory.empty_stamina = true;
		}
		else
		{
			global.player_health += 9;
			obj_text.current = global.item_list.dog.effect;
			obj_text.timer += 10;
			obj_meter.meter_value -= 5;
			item_inventory.empty_stamina = false;
			got_hp = true;
		}		
	}	
	),

rat :
	new create_item(
	"Rat",
	"nibble nibble." + "\n" + "(+3 DMG, uses 2 mana)",
	spr_rat,
	"The rat begins to nibble on the enemy's leg. " + "\n" + "The enemy takes 3 damage!",
	function()
	{
		if(obj_meter.meter_value < 2)
		{
			obj_text.current = obj_text.no_stamina;
			obj_text.timer += 10;
			item_inventory.empty_stamina = true;
		}
		else
		{
			global.enemy_health -= 3;
			obj_text.current = global.item_list.rat.effect;
			obj_text.timer += 10;
			obj_meter.meter_value -= 2;
			item_inventory.empty_stamina = false;
			obj_enemy.getting_hit = true;
		}		
	}	
	),

earrings :
	new create_item(
	"Earrings",
	"Made out of 90% fake gold" + "\n" + "(+4 HP, uses 2 mana)",
	spr_earrings,
	"You clip on some earrings." + "\n" +  " You feel better about your appearance." + "\n" + "You gain 4 HP!",
	function()
	{
		if(obj_meter.meter_value < 2)
		{
			obj_text.current = obj_text.no_stamina;
			obj_text.timer += 10;
			item_inventory.empty_stamina = true;
		}
		else
		{
			global.player_health += 4;
			obj_text.current = global.item_list.earrings.effect;
			obj_text.timer += 10;
			obj_meter.meter_value -= 2;
			item_inventory.empty_stamina = false;
			got_hp = true;
		}		
	}	
	),

phone :
	new create_item(
	"Phone",
	"*insert elevator music*" + "\n" + "(+10 DMG, uses 5 mana)",
	spr_phone,
	"You call the enemy's mom and give it to the enemy. The enemy patiently waits" + "\n" + "for its response but the phone suddenly hangs up." + "\n" + "They gain emotional trauma and takes 10 damage!",
	function()
	{
		if(obj_meter.meter_value < 5)
		{
			obj_text.current = obj_text.no_stamina;
			obj_text.timer += 10;
			item_inventory.empty_stamina = true;
		}
		else
		{
			global.enemy_health -= 10;
			obj_text.current = global.item_list.phone.effect;
			obj_text.timer += 10;
			obj_meter.meter_value -= 5;
			item_inventory.empty_stamina = false;
			obj_enemy.getting_hit = true;
		}		
	}
	),
	
walkie_talkie :
	new create_item(
	"Radio",
	"Yipee." + "\n" + "(+6 HP, uses 3 mana)",
	spr_walkie_talkie,
	"You turn on the radio. Someone randomly joins" + "\n" + "saying 'I love you' then only static rings." + "\n" + "You appreciate the gesture, gaining 6 HP!",
	function()
	{
		if(obj_meter.meter_value < 3)
		{
			obj_text.current = obj_text.no_stamina;
			obj_text.timer += 10;
			item_inventory.empty_stamina = true;
		}
		else
		{
			global.player_health += 6;
			obj_text.current = global.item_list.walkie_talkie.effect;
			obj_text.timer += 10;
			obj_meter.meter_value -= 3;
			item_inventory.empty_stamina = false;
			got_hp = true;
		}		
	}	
	),


hoodie :
	new create_item(
	"Hoodie",
	"thicc." + "\n" + "(+3 HP, uses 1 mana)",
	spr_hoodie,
	"You put on the hoodie. It's very comfy." + "\n" + "You gain 3 HP",
	function()
	{
		if(obj_meter.meter_value < 1)
		{
			obj_text.current = obj_text.no_stamina;
			obj_text.timer += 10;
			item_inventory.empty_stamina = true;
		}
		else
		{
			got_hp = true;
			global.player_health += 3;
			obj_text.current = global.item_list.hoodie.effect;
			obj_text.timer += 10;
			obj_meter.meter_value -= 1;
			item_inventory.empty_stamina = false;
		}		
	}	
	),

cake :
	new create_item(
	"Cake",
	"It's a lie. Or is it?" + "\n" + "(Distracts, uses 1 mana)",
	spr_cake,
	"You give the enemy some cake." + "\n" + "It's apparently their birthday!" + "\n" + "The enemy is mesmerized by" + "\n" + "the sweetness of the dessert." + "\n" + "The enemy loses its turn!",
	function()
	{
		if(obj_meter.meter_value < 1)
		{
			obj_text.current = obj_text.no_stamina;
			obj_text.timer += 10;
			item_inventory.empty_stamina = true;
		}
		else
		{
			obj_text.current = global.item_list.cake.effect;
			obj_text.timer += 10;
			obj_meter.meter_value -= 1;
			item_inventory.empty_stamina = false;
			obj_enemy.skip_enemy = true;
		}		
	}	
	),

cookies :
	new create_item(
	"Cookie",
	"From Mom" + "\n" + "(+4 HP, uses 3 mana)",
	spr_cookies,
	"You snack on the cookie that" + "\n" +  " your mother made just for you." + "\n" + "The warmth brings you joy" + "\n" + "and you gain 4 HP!",
	function()
	{
		if(obj_meter.meter_value < 3)
		{
			obj_text.current = obj_text.no_stamina;
			obj_text.timer += 10;
			item_inventory.empty_stamina = true;
		}
		else
		{
			global.player_health += 4;
			obj_text.current = global.item_list.cookies.effect;
			obj_text.timer += 10;
			obj_meter.meter_value -= 3;
			item_inventory.empty_stamina = false;
			got_hp = true;
		}		
	}	
	),

danish :
	new create_item(
	"Danish",
	"A sugary treat!" + "\n" + "(+3 HP, uses 2 mana)",
	spr_danish,
	"You eat the danish. It's unbelievably sweet. /n You gain 3 HP!",
	function()
	{
		if(obj_meter.meter_value < 2)
		{
			obj_text.current = obj_text.no_stamina;
			obj_text.timer += 10;
			item_inventory.empty_stamina = true;
		}
		else
		{
			global.player_health += 3;
			obj_text.current = global.item_list.danish.effect;
			obj_text.timer += 10;
			obj_meter.meter_value -= 2;
			item_inventory.empty_stamina = false;
			got_hp = true;
		}		
	}	
	),
	
drugs :
	new create_item(
	"Drugs",
	"Finally. (?)",
	spr_drugs,
	"AKJBVKLJBEWKJE4BK4JHBRKTJBHEWKJBEWHJKCBEWKJVBEKJEVN197EKCJWHEJK",
	function()
	{
		obj_text.current = global.item_list.drugs.effect;
		obj_text.timer += 10;	
		obj_god.on_drugs = true;
	}	
	),
	
healthboosts :
	new create_item(
	"Healthboosts",
	"Good when used properly" + "\n" + "(+9 HP, uses 5 mana)",
	spr_healthboost,
	"You take some healthboosts." + "\n" + "You feel extremely healthy!" + "\n" +  "You gain 9 HP!",
	function()
	{
		if(obj_meter.meter_value < 5)
		{
			obj_text.current = obj_text.no_stamina;
			obj_text.timer += 10;
			item_inventory.empty_stamina = true;
		}
		else
		{
			global.player_health += 9;
			obj_text.current = global.item_list.healthboosts.effect;
			obj_text.timer += 10;
			obj_meter.meter_value -= 5;
			item_inventory.empty_stamina = false;
			got_hp = true;
		}		
	}	
	),
	
cliff_bar :
	new create_item(
	"Cliff Bar",
	"Good for your body" + "\n" + "(+3 HP, uses 2 mana)",
	spr_cliff_bar,
	"You bite into the cliff bar." + "\n" + "MMmmmm, delicious." + "\n" +  "You gain 3 HP!",
	function()
	{
		if(obj_meter.meter_value < 2)
		{
			obj_text.current = obj_text.no_stamina;
			obj_text.timer += 10;
			item_inventory.empty_stamina = true;
		}
		else
		{
			global.player_health += 3;
			obj_text.current = global.item_list.cliff_bar.effect;
			obj_text.timer += 10;
			obj_meter.meter_value -= 2;
			item_inventory.empty_stamina = false;
			got_hp = true;
		}		
	}	
	),
	
pizza :
	new create_item(
	"Pizza",
	"Pizza Pizza (?)",
	spr_pizza,
	"You open the lid, the smell of Little Caesar's" + "\n" + "wafts in the air." + "\n" +  " You close the box, no thanks.",
	function()
	{
		obj_text.current = global.item_list.pizza.effect;
		obj_text.timer += 10;	
	}	
	),
	}
	;

//crate the inventory
//0 is size of array

inv = array_create(INVENTORY_SLOTS, -1);
slot = array_create(0);

//selected_item = -1;
//item_inventory.chosen_item = -1;
	
screen_border = 16;
sep = 16;