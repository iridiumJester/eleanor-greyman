image_speed = 0;
hover_color = #80ff80;
empty_color = #bfbfbf;
selected = false;
ingredient = 0;
ingredients_selected = 0;
count = 3;
ingredient_limit = 4;

x_difference = 0;
y_difference = 192;
start_x = x;
start_y = y;

if y == 120 
{
	switch (x) 
	{
		case (112+(160*0)):
			image_index = 0;
			ingredient = 1;
			y_difference = 224;
			break;
		case (112+(160*1)):
			image_index = 1;
			ingredient = 2;
			x_difference = -32;
			y_difference = 208;
			break;
		case (112+(160*2)):
			image_index = 2;
			ingredient = 3;
			x_difference = -96;
			break;
		case (112+(160*3)):
			image_index = 3;
			ingredient = 4;
			x_difference = 144;
			break;
		case (112+(160*4)):
			image_index = 4;
			ingredient = 5;
			x_difference = 96;
			y_difference = 208;
			break;
		case (112+(160*5)):
			image_index = 5;
			ingredient = 6;
			x_difference = 48;
			y_difference = 224;
			break;
	}
}
else if y == 256 
{
	switch (x) 
	{
		case (112+(160*0)):
			image_index = 0+6;
			ingredient = 7;
			y_difference = 176;
			break;
		case (112+(160*1)):
			image_index = 1+6;
			ingredient = 8;
			x_difference = -48;
			y_difference = 208;
			break;
		case (112+(160*2)):
			image_index = 2+6;
			ingredient = 9;
			x_difference = -96;
			y_difference = 224;
			break;
		case (112+(160*3)):
			image_index = 3+6;
			ingredient = 10;
			x_difference = 96;
			y_difference = 224;
			break;
		case (112+(160*4)):
			image_index = 4+6;
			ingredient = 11;
			x_difference = -288;
			y_difference = 240;
			break;
		case (112+(160*5)):
			image_index = 5+6;
			ingredient = 12;
			x_difference = -352;
			y_difference = 240;
			break;
	}
}
else 
{
	sprite_index = spr_item_pl;
	ingredient = 0;
}