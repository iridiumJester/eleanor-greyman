selected = false;
product_number = 0;
unlocked = false;
products_selected = 0;
image_speed = 0;

if y == 216 
{
	switch (x) 
	{
		case (88):
			if obj_goal_control.recipes_unlocked[0] == 1
			{
				product_number = 1;
				image_index = 1;
				unlocked = true;
			}
			break;
		case (200):
			if obj_goal_control.recipes_unlocked[1] == 1
			{
				product_number = 2;
				image_index = 2;
				unlocked = true;
			}
			break;
		case (312):
			if obj_goal_control.recipes_unlocked[2] == 1
			{
				product_number = 3;
				image_index = 3;
				unlocked = true;
			}
			break;
	}
}
else if y == 328
{
	switch (x) 
	{
		case (88):
			if obj_goal_control.recipes_unlocked[3] == 1
			{
				product_number = 4;
				image_index = 4;
				unlocked = true;
			}
			break;
		case (200):
			if obj_goal_control.recipes_unlocked[4] == 1
			{
				product_number = 5;
				image_index = 5;
				unlocked = true;
			}
			break;
	}
}