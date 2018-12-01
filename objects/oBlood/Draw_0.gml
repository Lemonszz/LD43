if(place_meeting(x, y, oWall))
{
	speed = approach(speed, 0, 10);
	image_alpha = approach(image_alpha, 0, 0.05);
	image_xscale = approach(image_xscale, 0, 0.05);
	image_yscale = approach(image_yscale, 0, 0.05);
	
	surface_set_target(global.blood_surf);
	if(collidePrev)
	{
		draw_set_alpha(image_alpha);
		draw_set_color($3b3ba9);
		draw_line_width(xprevious, yprevious, x, y, ENTITY_SCALE);
	}
	if(irandom(3) == 0)
		x += irandom_range(-2, 2);
		
	draw_self();
	surface_reset_target();
	draw_set_color(c_white);
	draw_set_alpha(1);
	collidePrev = true;
}
else
	draw_self();