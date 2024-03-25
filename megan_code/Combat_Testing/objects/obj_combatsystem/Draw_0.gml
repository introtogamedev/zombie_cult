accept_key = keyboard_check_pressed(ord("M"));

textbox_x = camera_get_view_x(view_camera[0]);
textbox_y = camera_get_view_y(view_camera[0]);

if (!setup)
{
	setup = true;
	draw_set_font(global.font_main);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	//loop through the pages
	page_number = array_length(text);
	for(var p = 0; p < page_number; p++)
	{
		
		//find out how many characters are on each page and store that number in the "text length" array//
		text_length[p] = string_length(text[p]);
		
		text_x_offset[p] = 120;
		
		
	}
}

//typing the text
if (draw_char < text_length[page])
{
	draw_char += text_spd;
	draw_char = clamp(draw_char, 0, text_length[page]);
}

if(can_flip)
{
	//flips through page
	if(accept_key)
	{
		//if typing is done
		if(draw_char == text_length[page])
		{
			#region old code
				//next page
				if(page < page_number - 1)
				{
					page ++;
					draw_char = 0;
				}	
				//destroy textbox
				else
				{
					instance_destroy();
				}
			#endregion
		}
		//if typing is not done
		else
		{
			draw_char = text_length[page];
		}
	}
}


//draw textbox
txtb_img += txtb_spd;
textb_spr_w = sprite_get_width(textb_spr);
textb_spr_h = sprite_get_height(textb_spr);
//back of the textbox
draw_sprite_ext(textb_spr, txtb_img, textbox_x + text_x_offset[page] + 550, textbox_y + 620, textbox_width/textb_spr_w + 8, textbox_height/textb_spr_h - 5.5, 0, c_white, 1);


//draw text
var _drawtext = string_copy(text[page], 1, draw_char);
draw_text_ext(textbox_x + text_x_offset[page] + border, textbox_y + 510 + border, _drawtext, line_sep, line_width);

//draw options
if(obj_gm.player_turn)
{
	if(obj_gm.starting_screen && global.enemy_hp != 0)
	{
		draw_text_ext(textbox_x + text_x_offset[page] + border, textbox_y + 590 + border, "FIGHT (1)", line_sep, line_width);
		draw_text_ext(textbox_x + text_x_offset[page] + border + 400, textbox_y + 590 + border, "TALK (2)", line_sep, line_width);
		draw_text_ext(textbox_x + text_x_offset[page] + border + 800, textbox_y + 590 + border, "SUPPORT (3)", line_sep, line_width);
		draw_text_ext(textbox_x + text_x_offset[page] + border, textbox_y + 660 + border, "FLEE (4)", line_sep, line_width);
		draw_text_ext(textbox_x + text_x_offset[page] + border + 400, textbox_y + 660 + border, "END TURN (SPACE)", line_sep, line_width);
	}
	else if(obj_gm.fight_option)
	{
		draw_text_ext(textbox_x + text_x_offset[page] + border, textbox_y + 590 + border, "THESE HANDS (O)", line_sep, line_width);
		draw_text_ext(textbox_x + text_x_offset[page] + border + 800, textbox_y + 590 + border, "PSYCHIC DMG (P)", line_sep, line_width);
	}
	else if(obj_gm.support_option)
	{
		draw_text_ext(textbox_x + text_x_offset[page] + border, textbox_y + 590 + border, "POTION (O)", line_sep, line_width);
		draw_text_ext(textbox_x + text_x_offset[page] + border + 800, textbox_y + 590 + border, "EXPLOSIVE (P)", line_sep, line_width);
	}
	
}
















