// hover color
if mouse_x <= x+48 && mouse_x >= x-48 && mouse_y <= y+32 && mouse_y >= y-32
{ image_blend = c_ltgray; }
else
{ image_blend = -1; }

// update value
if confirm_buy
{
	with (obj_ingredient)
	{
		count = stashed_count;
	}
	with (obj_shop_control)
	{
		active_ingredients = [ 0,0,0,0,0,0,0,0,0,0,0,0,0 ];
	}
	confirm_buy = false;
}
