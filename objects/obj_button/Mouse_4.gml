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
		case (rm_kitchen):
			room = rm_bakery;
			break;
		case (rm_bakery):
			room = rm_kitchen;
			break;
		case (rm_shop):
			room = rm_bakery;
			break;
		case (rm_recipe_book):
			room = rm_bakery;
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
		with (obj_main_control)
		{
			if product_count == stashed_product
			{ 
				switch (obj_recipe_book.product_selected)
				{
					case (1):
						stashed_product_1 += 1;
						break;
					case (2):
						stashed_product_2 += 1;
						break;
					case (3):
						stashed_product_3 += 1;
						break;
				}
				stashed_product += 1;
			}
		}
		confirm_bake = true;
	}
}
else if image_index == 2
{
	with (obj_product)
	{
		if selected
		{
			switch (image_index)
			{
				case (1):
					with (obj_main_control)
					{ stashed_product_1 -= 1; }
					break;
				case (2):
					with (obj_main_control)
					{ stashed_product_2 -= 1; }
					break;
				case (3):
					with (obj_main_control)
					{ stashed_product_3 -= 1; }
					break;
			}
			instance_destroy();
		}
	}
	with (obj_main_control)
	{
		stashed_product -= 1*products_selected;
		money += 25*products_selected;
		sell_exists = false;
		customer_exists = false;
		product_count = stashed_product;
		product_1_count = stashed_product_1;
		product_2_count = stashed_product_2;
		product_3_count = stashed_product_3;
	}
	with (obj_customer)
	{
		instance_destroy();
	}
	instance_destroy();
}
else if image_index == 3 
{
	room = rm_shop;
}
else
{
	room = rm_recipe_book;
}