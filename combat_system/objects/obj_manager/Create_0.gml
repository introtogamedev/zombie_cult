depth = -999
global.win = 0;
#macro INVENTORY_SLOTS 10
row_length = 5;
global.one = false;
global.two = false;
global.three = false;
global.four = false;
global.zero = false;
//item constructer
function create_item(_name,_desc,_spr, _effect) constructor//, _execute_Function = function(){}) constructor
	{
		name = _name;
		description = _desc;
		sprite = _spr;
		effect = _effect;
		//execute_function = _execute_Function;
	}

//create items

global.item_list = 
	{
		
	
burger :
	new create_item(
	"Burger",
	"A burger (?)",
	spr_burger,
	"It's just a burger :|"
	/*function()
	{
		
		obj_text.current = global.item_list.burger.effect;
		obj_text.timer += 10;
		
	}*/
	),
	//add more items here
	


alarm_clock :
	new create_item(
	"Alarm",
	"Ring ring" + "\n" + "(+6 DMG including you! , uses 3 mana)",
	spr_alarm,
	"The clock rings, making everyone's ears bleed!" + "\n" + "They take 4 damage!"
	),
	
nerf_gun :
	new create_item(
	"Nerf Gun",
	"Pew Pew" + "\n" + "(+3 DMG , uses 3 mana)",
	spr_nerf_gun,
	"Bullseye! You shoot with the nerf gun" + "\n" + "and the enemy takes 3 damage!"
	),
	
soap :
	new create_item(
	"Soap",
	"Slip and slide" + "\n" + "(Stuns, uses 2 mana)",
	spr_soap,
	"The enemy slips on the soap, losing its next turn!"
	),
	
ax_body_spray :
	new create_item(
	"Ax Body Spray",
	"Smells like pain" + "\n" + "(+9 DMG including you! , uses 4 mana)",
	spr_ax_body_spray,
	 "You spritz the axe body spray spray" + "\n" + " and the enemy takes 2 damage!."
	),
	
lotion :
	new create_item(
	"Lotion",
	"Smoooooooooooth" + "\n" + "(+5 HP, uses 2 mana)",
	spr_lotion,
	"You smear some lotion onto your skin! You feel moisturized for the day!" + "\n" + "You gain 5 HP!"
	),
	
powder_blush :
	new create_item(
	"Powder Blush",
	"Don't eat it" + "\n" + "(+4 HP, uses 2 mana)",
	spr_powder_blush,
	"You put on some powder blush. Makes you feel more self-confident!" + "\n" + "You gain +3 HP!"
	),
	
dry_shampoo :
	new create_item(
	"Dry Shampoo",
	"You lazy bum" + "\n" + "(+5 DMG, uses 3 mana)",
	spr_dry_shampoo,
	"You spritz some dry shampoo onto the enemy!" + "\n" + " It cleanses the enemy's soul, taking 5 damage!"
	),
	
perfume :
	new create_item(
	"Perfume",
	"Smells nice" + "\n" + "(+3 DMG, uses 1 mana)",
	spr_perfume,
	"You spray the perfume, the enemy is allergic to it!" + "\n" + "It takes 3 damage!"
	),
	
hairspray :
	new create_item(
	"Hairspray",
	"Perfection or bush" + "\n" + "(Stuns, uses 3 mana)",
	spr_hairspray,
	"You use hairspray, covering the battlefield." + "\n" + "The enemy can't see and it loses its turn!"
	),
	
cat :
	new create_item(
	"Cat",
	"meow." + "\n" + "(+5 DMG, uses 2 mana)",
	spr_cat,
	"You let the cat loose and it sprints up to the enemy!" + "\n" + "The cat tries to scratch its eyes out, the enemy takes 5 damage!"
	),
	
bunny :
	new create_item(
	"Bunny",
	"squeak squeak motherfucker." + "\n" + "(Distracts, uses 2 mana)",
	spr_bunny,
	"The bunny hops in front of the enemy. The enemy is too distracted by its cuteness!" + "\n" + "It loses its turn!"
	),
	
squirrel :
	new create_item(
	"Squirrel",
	"Does it have rabies?" + "\n" + "(+6 dmg depending on chance, uses 2 mana)",
	spr_squirrel,
	"You lunge the squirrel onto the enemy!" + "\n" + "The enemy takes 6 damage!"
	),
	
dog :
	new create_item(
	"Dog",
	"yap yap." + "\n" + "(+10 HP, uses 5 mana)",
	spr_dog,
	"You hold in the dog in your arms. You feel emotionally stable and content wih life!" + "\n" + "You gain 10 HP!"
	),

rat :
	new create_item(
	"Rat",
	"nibble nibble." + "\n" + "(+3 DMG, uses 1 mana)",
	spr_rat,
	"The rat begins to nibble on the enemy's leg. " + "\n" + "The enemy takes 3 damage!"
	),

earrings :
	new create_item(
	"Earrings",
	"Made out of 90% fake gold" + "\n" + "(+4 HP, uses 1 mana)",
	spr_earrings,
	"You clip on some earrings. You feel better about your appearance." + "\n" + "You gain 4 HP!"
	),

phone :
	new create_item(
	"Phone",
	"*insert elevator music*" + "\n" + "(+15 DMG, uses 5 mana)",
	spr_phone,
	"You call the enemy's mom and give it to the enemy. The enemy patiently waits" + "\n" + "for its response but the phone suddenly hangs up." + "\n" + "They gain emotional trauma and takes 15 damage!"
	),
	
walkie_talkie :
	new create_item(
	"Walkie Talkie",
	"Yipee." + "\n" + "(+6 HP, uses 2 mana)",
	spr_walkie_talkie,
	"You turn on the walkie talkie. Someone randomly joins" + "\n" + "saying 'I love you' then only static rings." + "\n" + "You appreciate the gesture, gaining 6 HP!"
	),


hoodie :
	new create_item(
	"Hoodie",
	"thicc." + "\n" + "(+8 HP, uses 3 mana)",
	spr_hoodie,
	"You put on the hoodie. It's very comfy." + "\n" + "You gain 8 HP"
	),

cake :
	new create_item(
	"Cake",
	"It's a lie. Or is it?" + "\n" + "(Distracts, uses 2 mana)",
	spr_cake,
	"You give the enemy some cake. It's apparently their birthday!" + "\n" + "The enemy is mesmerized by the sweetness of the dessert." + "\n" + "The enemy loses its turn!"
	),

cookies :
	new create_item(
	"Cookie",
	"From Mom" + "\n" + "(+8 HP, uses 3 mana)",
	spr_cookies,
	"You snack on the cookie that your mother made just for you." + "\n" + "The warmth brings you joy" + "\n" + "and you gain 8 HP!"
	),

danish :
	new create_item(
	"Danish",
	"A sugary treat!" + "\n" + "(+5 HP, uses 1 mana)",
	spr_danish,
	"You eat the danish. It's unbelievably sweet. /n You gain 3 HP!"
	),
	
drugs :
	new create_item(
	"Drugs",
	"Finally. (?)",
	spr_drugs,
	"Nothing happened. Huh..."
	),
	
healthboosts :
	new create_item(
	"Healthboosts",
	"Good when used properly" + "\n" + "(+10 HP, uses 4 mana)",
	spr_healthboost,
	"You take some healthboosts." + "\n" + "You feel extremely healthy! You gain 10 HP!"
	),
	
cliff_bar :
	new create_item(
	"Cliff Bar",
	"Good for your body" + "\n" + "(+8 HP, uses 3 mana)",
	spr_cliff_bar,
	"You bite into the cliff bar." + "\n" + "MMmmmm, delicious. You gain 8 HP!"
	),
	
pizza :
	new create_item(
	"Pizza",
	"Pizza Pizza (?)",
	spr_pizza,
	"You open the lid, the smell of Little Caeser's" + "\n" + "wafts in the air. You close the box, no thanks."
	),
	}
	;

//crate the inventory
//0 is size of array

inv = array_create(INVENTORY_SLOTS, -1);
slot = array_create(0);

//selected_item = -1;
	
screen_border = 16;
sep = 16;