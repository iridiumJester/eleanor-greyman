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
		var _roomSwap = instance_nearest(x, y, obj_room_swap);
		if (instance_exists(_roomSwap)) 
		{
		    if (_roomSwap.x > room_width / 2) 
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
