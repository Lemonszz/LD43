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

yscale = approach(yscale, ENTITY_SCALE, 0.2);
xscale = approach(xscale, ENTITY_SCALE, 0.2);

var in = instance_place(x, bbox_top -2, oBird);
if(in != noone && in.onground)
{
	if(!collidePrev)
	{
		yscale = ENTITY_SCALE * 0.60;
		xscale = ENTITY_SCALE * 1.4;
	}
		
	collidePrev = true;
}
else
{
	collidePrev = false;	
}