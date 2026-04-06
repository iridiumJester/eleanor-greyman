// room swap
if image_index == 0
{
	switch (room)
	{
		case (rm_menu):
		    if y == 416
			{ game_end();}
			else
			{ room = rm_bakery; }
			break;
		case (rm_town_center):
			room = rm_bakery;
			break;
		case (rm_kitchen):
			room = rm_bakery;
			break;
		case (rm_bakery):
			if (x > room_width * 0.75) 
			{
			    // button is on the right
				room = rm_kitchen;
			} 
			else 
			{
			    room = rm_town_center;
			}
			break;
	}
}
else if image_index == 1
{
	if can_bake
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
		with (obj_controller)
		{
			if product_count == stashed_product
			{ stashed_product += 1; }
		}
		confirm_bake = true;
	}
}
else
{
	with (obj_product)
	{
		if selected
		{
			instance_destroy();
		}
	}
	with (obj_controller)
	{
		product_count -= 1;
		money += 10;
		sell_exists = false;
		customer_exists = false;
	}
	with (obj_customer)
	{
		instance_destroy();
	}
	instance_destroy();
}