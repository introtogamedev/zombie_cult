// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function select_icon(){
	base_x = 32
	base_y = 80
	
	movement = 320;
	
	x = (obj_select.x_pos * movement) + base_x;
	y = (obj_select.y_pos * movement) + base_y;
	
	show_debug_message(string(x) + " ," + string(y));
}