if(vsp < 10) vsp += grav;

if(place_meeting(x, y + vsp, oSolid))
{
	while(!place_meeting(x, y + sign(vsp), oSolid))
	{
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp;