image_speed = 0;

if y == 120 
{
	switch (x) 
	{
		case (112+(160*0)):
			image_index = 0;
			break;
		case (112+(160*1)):
			image_index = 1;
			break;
		case (112+(160*2)):
			image_index = 2;
			break;
		case (112+(160*3)):
			image_index = 3;
			break;
		case (112+(160*4)):
			image_index = 4;
			break;
		case (112+(160*5)):
			image_index = 5;
			break;
		case (112+(160*6)):
			image_index = 6;
			break;
	}
}
else if y == 256 
{
	switch (x) 
	{
		case (112+(160*0)):
			image_index = 0+6;
			break;
		case (112+(160*1)):
			image_index = 1+6;
			break;
		case (112+(160*2)):
			image_index = 2+6;
			break;
		case (112+(160*3)):
			image_index = 3+6;
			break;
		case (112+(160*4)):
			image_index = 4+6;
			break;
		case (112+(160*5)):
			image_index = 5+6;
			break;
		case (112+(160*6)):
			image_index = 6+6;
			break;
	}
}
else 
{
	sprite_index = spr_item_pl;
}