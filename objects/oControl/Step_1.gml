if(input_released("reset"))
{
	if(room == DONE)
		game_restart();
	else
		room_restart();	
}

if(keyboard_check_released(vk_enter))
{
	if(room == DONE)
		game_restart();
	else
		room_goto_next();		
}


if(keyboard_check_released(ord("M")))
{
	if(playing)
		audio_stop_sound(s);
	else
	{
		s =audio_play_sound(snMuFlightless, 0, true);
		audio_sound_gain(s, 0.60, 0);	
	}
	
	playing = !playing;
}

if(keyboard_check_released(ord("B")))
	blood=  !blood;