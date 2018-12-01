if(input_released("reset"))
{
	room_restart();	
}

if(keyboard_check_released(vk_enter))
	room_goto_next();