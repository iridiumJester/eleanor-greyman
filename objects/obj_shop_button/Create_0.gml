image_speed = 0;
cost_owed = 0;
quantity_selected = 0;
can_buy = false;
confirm_buy = false;

if x == 664 
{
	switch (y) 
	{
		case (360):
			image_index = 0;
			break;
		case (360+(64*2)):
			image_index = 1;
			break;
	}
}
else if x == 944 
{
	switch (y) 
	{
		case (384):
			image_index = 2;
			break;
		case (464):
			image_index = 3;
			break;
	}
}