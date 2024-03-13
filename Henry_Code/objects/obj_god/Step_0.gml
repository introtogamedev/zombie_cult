if keyboard_check_pressed(vk_escape) {game_end()}
if keyboard_check_pressed(ord("R")) {game_restart()}

//check keyboard input
//horzinotal
up = keyboard_check(ord("W"))
down = keyboard_check(ord("S"))
//verticle
right = keyboard_check(ord("D"))
left = keyboard_check(ord("A"))

#region room controller
if current_state != new_state {
	if new_state = DEATH {
		room = Death
	}
	if new_state = EXPLORE {
		room = Explore
	}
	current_state = new_state
}