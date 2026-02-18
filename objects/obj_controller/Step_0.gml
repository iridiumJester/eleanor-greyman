// menu ^_^

ekey = keyboard_check_pressed(ord("E"));

if ekey 
{ 
	if room == rm_menu exit;
	else 
	
	alarm[0] = 10; 
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