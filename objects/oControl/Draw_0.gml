if(!surface_exists(global.blood_surf))
	surface_free(global.blood_surf);
	
if(blood)
	draw_surface(global.blood_surf, 0, 0);