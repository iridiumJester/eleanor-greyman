switch (room)
{
	case (rm_menu):
	    if y == 296
		{ room = rm_bakery;}
		else
		{ game_end(); }
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
