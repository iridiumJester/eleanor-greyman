image_speed = 0;
hover_color = c_lime;
selected = false;
ingredient = 0;
ingredients_selected = 0;

if y == 120 
{
	switch (x) 
	{
		case (112+(160*0)):
			image_index = 0;
			ingredient = 1;
			break;
		case (112+(160*1)):
			image_index = 1;
			ingredient = 2;
			break;
		case (112+(160*2)):
			image_index = 2;
			ingredient = 3;
			break;
		case (112+(160*3)):
			image_index = 3;
			ingredient = 4;
			break;
		case (112+(160*4)):
			image_index = 4;
			ingredient = 5;
			break;
		case (112+(160*5)):
			image_index = 5;
			ingredient = 6;
			break;
		case (112+(160*6)):
			image_index = 6;
			ingredient = 7;
			break;
	}
}
else if y == 256 
{
	switch (x) 
	{
		case (112+(160*0)):
			image_index = 0+6;
			ingredient = 8;
			break;
		case (112+(160*1)):
			image_index = 1+6;
			ingredient = 9;
			break;
		case (112+(160*2)):
			image_index = 2+6;
			ingredient = 10;
			break;
		case (112+(160*3)):
			image_index = 3+6;
			ingredient = 11;
			break;
		case (112+(160*4)):
			image_index = 4+6;
			ingredient = 12;
			break;
		case (112+(160*5)):
			image_index = 5+6;
			ingredient = 13;
			break;
		case (112+(160*6)):
			image_index = 6+6;
			ingredient = 14;
			break;
	}
}
else 
{
	sprite_index = spr_item_pl;
	ingredient = 0;
}