xscale = approach(xscale, image_xscale, 0.25);
yscale = approach(yscale, image_yscale, 0.25);

var haz = instance_place(x, y, oHazard);
if(haz != noone)
{
	dead = true;
}

if(place_meeting(x, y, oFin))
{
	var s = audio_play_sound(snVictory, 0, false);
	audio_sound_gain(s, 0.15, 0);
	room_goto_next();
}

if(place_meeting(x, y, oFxExplodeBig) || place_meeting(x, y, oDoor))
{
	doSpawn = false;
	instance_destroy();
}