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
			product_number = 1;
			image_index = 1;
			unlocked = true;
			break;
		case (200):
			product_number = 2;
			image_index = 2;
			unlocked = true;
			break;
		case (312):
			product_number = 3;
			image_index = 3;
			unlocked = true;
			break;
	}
}