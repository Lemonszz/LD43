timer--;

if(timer == 0)
{
	timer = MAX_TIME;
	
	var cX = lengthdir_x(sprite_width / 2, image_angle);
	var cY = lengthdir_y(sprite_width / 2, image_angle);
	var arrow = instance_create_depth(x + cX, y + cY, depth, oArrow);
	arrow.direction = image_angle;
	arrow.image_angle = arrow.direction;
	arrow.speed = 15;
	arrow.image_xscale = ENTITY_SCALE;
	arrow.image_yscale = ENTITY_SCALE;
}