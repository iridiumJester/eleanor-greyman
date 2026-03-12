// room swap
if image_index = 0
{
	switch (room)
	{
		case (rm_menu):
		    if y == 416
			{ game_end();}
			else
			{ room = rm_bakery; }
			break;
		case (rm_town_center):
			room = rm_bakery;
			break;
		case (rm_kitchen):
			room = rm_bakery;
			break;
		case (rm_bakery):
			if (x > room_width * 0.75) 
			{
			    // button is on the right
				room = rm_kitchen;
			} 
			else 
			{
			    room = rm_town_center;
			}
			break;
	}
}
else
{
	with (obj_ingredient)
	{
		if selected
		{
			y -= 192;
			selected = false;
			with (obj_inventory) 
			{
				ingredients_selected -= 1;
			}
		}
	}
}