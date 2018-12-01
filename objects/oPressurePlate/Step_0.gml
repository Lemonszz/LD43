if(place_meeting(x, y, oBird) || place_meeting(x, y, oBirdSolid))
{
	image_index = 1;	
	with(oDoor)
	{
		if(openID == other.openID)
		{
			open = true;	
		}
	}
}
else
{
	image_index = 0;	
	with(oDoor)
	{
		if(openID == other.openID)
		{
			open = false;	
		}
	}
}