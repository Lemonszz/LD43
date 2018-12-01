with(oEggSpawn)
{
	event_user(0);	
}

if(surface_exists(global.blood_surf))
{
	surface_set_target(global.blood_surf);
	draw_clear_alpha(1, 0);
	surface_reset_target();
}