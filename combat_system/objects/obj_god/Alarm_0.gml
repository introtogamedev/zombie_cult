
var radio_time = irandom_range(30,90);
	alarm_set(0, 60*radio_time);
	
if (current_state == EXPLORE || current_state == LIST || in_shelf){
	audio_play_sound(Radio_Station,1,false);
}




