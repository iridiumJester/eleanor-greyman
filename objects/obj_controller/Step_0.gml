// menu ^_^

ekey = keyboard_check_pressed(ord("E"));

if ekey && room != rm_menu
{ 
	if !menu_showing
	{ 
		instance_create_layer(128, 64, "Instances", obj_journal);
		menu_showing = true;
	}
	else
	{
		with (obj_journal)
		{
			instance_destroy();
		}
		menu_showing = false;
	}
}

// clock
if (room != rm_menu) 
{
	real_seconds += 1/speed; 

	var _divisible_check = real_seconds div 5;
	minutes = _divisible_check * 5;

	if (real_seconds = 60) 
	{
	    real_seconds = 0;
	    minutes = 0;
		hours += 1;
	}
	if (hours == 12 && real_seconds == 0)
	{
		if (am_pm == "AM") am_pm = "PM"
		else am_pm = "AM"
	}
	if (hours > 12)
	{
		hours = 1;
	}
}


// show_debug_message("Ingredients active: " + string(ingredients_selected));