timer--;

if(timer == 0)
{
	timer = MAX_TIME;
	
	var cX = lengthdir_x( 5 + (sprite_width / 2), image_angle);
	var cY = lengthdir_y(5 + (sprite_height / 2), image_angle);
	var arrow = instance_create_depth(x + cX, y + cY, depth, oBomb);
	
	arrow.hsp = cX;
	arrow.vsp = cY;
}