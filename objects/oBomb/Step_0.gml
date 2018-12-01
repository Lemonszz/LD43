timer--;

if(timer <= 0)
{
	instance_destroy();
	instance_create_depth(x, y, depth, oFxExplodeBig);
}

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


hsp = approach(hsp, 0, 1.25);