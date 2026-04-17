if image_index == 0
{
	with (obj_shop_control)
	{
		quantity_selected += 1;
	}
}
else if image_index == 1
{
	with (obj_shop_control)
	{
		if quantity_selected > 1
		{
			quantity_selected -= 1;
		}
	}
}
else if image_index == 2
{
	if can_buy
	{
		with (obj_shop_control)
		{
			other.cost_owed = cost_owed;
			other.quantity_selected = quantity_selected;
		}
		with (obj_ingredient)
		{
			if selected
			{
				x -= x_difference;
				y -= y_difference;
				stashed_count += other.quantity_selected;
				selected = false;
				with (obj_inventory) 
				{
					ingredients_selected -= 1;
				}
			}
		}
		with (obj_controller)
		{
			money -= other.cost_owed;
		}
		confirm_buy = true;
	}
	else
	{ image_blend = c_red; }
}
else
{
	with (obj_ingredient)
	{
		if selected
		{
			x -= x_difference;
			y -= y_difference;
			selected = false;
			with (obj_inventory) 
			{
				ingredients_selected -= 1;
			}
		}
	}
}