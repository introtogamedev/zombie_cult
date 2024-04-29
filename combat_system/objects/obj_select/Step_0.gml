if obj_god.in_shelf{
	
	#macro X_CLAMP 3
	#macro Y_CLAMP 1
	#macro ZERO 0
	
	right = keyboard_check_pressed(ord("D"));
	left = keyboard_check_pressed(ord("A"));
	up = keyboard_check_pressed(ord("W"));
	down = keyboard_check_pressed(ord("S"));
	
	var _x_pos = x_pos;
	var _y_pos = y_pos;
	
	if right{
		_x_pos += 1;
	}
	if left{
		_x_pos -= 1;
	}
	if up{
		_y_pos -= 1;
	}
	if down{
		_y_pos += 1;
	}

	if _x_pos < ZERO {_x_pos = ZERO;}
	if _x_pos > X_CLAMP {_x_pos = X_CLAMP;}
	if _y_pos < ZERO {_y_pos = ZERO;}
	if _y_pos > Y_CLAMP {_y_pos = Y_CLAMP;}


	if x_pos != _x_pos {
		x_pos = _x_pos;
	}
	if y_pos != _y_pos {
		y_pos = _y_pos;
	}
	
	select_icon();
	
	//THIS IS THE TIME IT TAKES TO GET THE OBJECT CODE
	if ((keyboard_check(vk_return)) && (pickup_time < 17 )) {
		pickup_time += .1; //this number is the tuning one for select time
	}
	if keyboard_check_released(vk_return){
		pickup_time = 0;
		u_got_an_item = false;
	}
	if pickup_time > 16.5{
		u_got_an_item = true;
	}
		
show_debug_message(u_got_an_item);
}




