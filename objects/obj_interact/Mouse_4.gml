switch (room)
{
	case (rm_menu):
	    room = rm_bakery;
		break;
	case (rm_town_center):
		room = rm_bakery;
		break;
	case (rm_kitchen):
		room = rm_bakery;
		break;
	case (rm_bakery):
		var _interact = instance_nearest(x, y, obj_interact);
		if (instance_exists(_interact)) 
		{
		    if (_interact.x > room_width / 2) 
			{
		        // button is on the right
				room = rm_kitchen;
		    } 
			else 
			{
		        room = rm_town_center;
		    }
		}
		break;
}
