
if(place_meeting(x, y +1, oSolid))
{
	instance_create_depth(x, y, depth, oBird);		
	instance_create_depth(x, y, depth -1, oFxExplode);
	instance_destroy();
}

hsp = move_hor * moveSpeed;

if(vsp < 10) vsp += grav;

if(place_meeting(x + hsp, y, oSolid))
{
	while(!place_meeting(x + sign(hsp), y, oSolid))
	{
		x += sign(hsp);	
	}
	hsp = 0;
}

x += hsp;

if(place_meeting(x, y + vsp, oSolid))
{
	while(!place_meeting(x, y + sign(vsp), oSolid))
	{
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp;
