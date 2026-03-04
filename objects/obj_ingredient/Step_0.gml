var _click = mouse_check_button_pressed(1);

if mouse_x <= x+48 && mouse_x >= x-48 && mouse_y <= y+64 && mouse_y >= y-32
{
	image_blend = hover_color;
	if _click && selected
	{
		y -= 256;
		selected = false;
		with (obj_controller) 
		{
			ingredients_selected -= 1;
			other.ingredients_selected = ingredients_selected;
		}
	}
	else if _click && !selected && ingredients_selected < 4
	{
		y += 256;
		selected = true;
		with (obj_controller) 
		{
			ingredients_selected += 1;
			other.ingredients_selected = ingredients_selected;
		}
	}
	 
}
else
{
	image_blend = -1;
}