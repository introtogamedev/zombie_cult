if (flicker_timer = 0){
	
	randomize();
	flicker = irandom_range(0,100);
	
	
	if (flicker = 19){
		image_index =FLICKER_FRAME1;
		flicker_timer += 7
	}

	else if (flicker = 7){
		image_index = FLICKER_FRAME2;
		flicker_timer += 7
	}else{
		image_index = TITLE_FRAME;
	}
	
}else{
	flicker_timer --;
}









