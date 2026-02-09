switch (room) 
{
	case (rm_town_center):
		var _roomSwap = instance_nearest(x, y, obj_room_swap);
		if (instance_exists(_roomSwap)) 
		{
			if (_roomSwap.x < 64 and _roomSwap.y < room_height / 2) 
			{
		        // button is on the far left and up
				room = rm_town_test_up;
				obj_player.x = 992;
		    }
		}
		break;

}