//textbox parameters
textbox_width = 672;
textbox_height = 608;

border = 8;
line_sep = 80;
line_width = textbox_width;
textb_spr = spr_combatsystem;
txtb_img = 0;
txtb_spd = 6/60;

can_flip = false;

//the text
page = 0;
page_number = 0;
//start
text[0] = "ANGY STANDS IN YOUR WAY";
text[1] = "WHAT DO YOU WANT TO DO?";

//FIGHT
text[2] = "HOW SHOULD YOU FIGHT?";
//weak fight
text[10] = "YOU PUNCH THE ENEMY";
text[11] = "ENEMY TAKES 1 DAMAGE";
//strong attack
text[20] = "YOU INFLICT TRAUMA";
text[21] = "SUPER EFFECTIVE! ENEMY TAKES HUGE DAMAGE!";

//TALK
text[30] = "YOU ATTEMPT TO RIZZ HIM UP.";
text[31] = "THE ZOMBIE GURGLES IN RESPONSE.";
text[32] = "NOTHING HAPPENS. (WHAT'D YOU EXPECT...)";

//SUPPORT
text[3] = "WHAT ITEM DO YOU WANT TO USE?"
text[40] = "PLAYER USES POTION."
text[41] = "YOU GAIN +5 HP!";
text[42] = "PLAYER THROWS AN EXPLOSIVE AT THE ENEMY";
text[43] = "ENEMY TAKES 9999999999999 DAMAGE!"

//ENEMY'S TURN
//attack
text[50] = "ENEMY WHACKS YOU IN THE HEAD!";
text[51] = "YOU TAKE 3 DAMAGE";

//support
text[60] = "ENEMY PULLS OUT A POTION";
text[61] = "ENEMY RECOVERS 5 HP";

//enemy dies
text[70] = "ENEMY IS DEFEATED, PLAYER WINS!";
//Player flees
text[80] = "PLAYER ESCAPES SUCCESSFULLY!";
//Player has no mana
text[90] = "YOU DON'T HAVE ENOUGH STAMINA!";
text[91] = "YOU HAVE NO MORE POTIONS!";
//Player dies
text[100] = "YOU LOST! D:";

text_length[0] = string_length(text[0]);
draw_char = 0;
text_spd = 1;

setup = false;






























