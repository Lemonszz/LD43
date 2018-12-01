if(dead || input_released("kill"))
	instance_destroy();

move_hor = -input_down("left") + input_down("right");
move_jump = input_pressed("jump");

hsp = move_hor * moveSpeed;

if(vsp < 10) vsp += grav;

if(place_meeting(x, y + 1, oSolid))
{
	if(!onground)
	{
		//Dust smoke
	}
	
	onground = true;
	hsp = 0;
	vsp = move_jump * -jumpSpeed;
	if(move_jump)
	{
		var scaleChange = 0.5 * ENTITY_SCALE;
		xscale = ENTITY_SCALE - scaleChange;
		yscale = ENTITY_SCALE + scaleChange;
	}
}
else
{
	onground = false;	
}


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