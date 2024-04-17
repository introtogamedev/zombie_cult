


if checks == total_checks{
	draw_text(30, 30, "YOU WIN YAYYYYY")
}
else{
	draw_text(20,20,string(checks)+"/"+string(total_checks));
}

if current_state == VICTORY || current_state = DEATH{
	draw_text(300, 300, "press R to restart")
}
	

