	instance_create_depth(x, y, depth -1, oFxExplode);
	instance_create_depth(x, y, depth -2, oFxBlood);
	
	repeat(25)
		instance_create_depth(x, y, depth -3, oBlood);
	
	if(doSpawn)
		instance_create_depth(x, y, depth, oBirdSolid);
	with(oEggSpawn)
	{
		event_user(0);	
	}
	
var s = audio_play_sound(snDead, 0, false);
audio_sound_pitch(s, random_range(0.7, 1.3));