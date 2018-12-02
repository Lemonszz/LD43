if(!surface_exists(global.blood_surf))
	global.blood_surf = surface_create(room_width, room_height);
	
if(blood)
	draw_surface(global.blood_surf, 0, 0);