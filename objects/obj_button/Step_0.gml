// hover color
if mouse_x <= x+48 && mouse_x >= x-48 && mouse_y <= y+32 && mouse_y >= y-32
{ image_blend = c_ltgray; }
else
{ image_blend = -1; }

// determines if current ingredients are a valid combination
with (obj_recipe_book)
{
	if array_equals(active_ingredients, recipe_1)
	{ 
		other.can_bake = true;
		product_selected = 1;
	}
	else if array_equals(active_ingredients, recipe_2)
	{ 
		other.can_bake = true;
		product_selected = 2;
	}
	else if array_equals(active_ingredients, recipe_3)
	{ 
		other.can_bake = true;
		product_selected = 3;
	}
	else if array_equals(active_ingredients, recipe_4)
	{ 
		other.can_bake = true;
		product_selected = 4;
	}
	else
	{ 
		other.can_bake = false;
		product_selected = 0;
	}
}

// finalizes count
if confirm_bake
{
	with (obj_ingredient)
	{
		count = stashed_count;
		other.confirm_bake = false;
	}
	with (obj_recipe_book)
	{
		active_ingredients = [0, 0, 0, 0, 0];
	}
	with (obj_main_control)
	{
		product_count = stashed_product;
		product_1_count = stashed_product_1;
		product_2_count = stashed_product_2;
		product_3_count = stashed_product_3;
		product_4_count = stashed_product_4;
	}
	can_bake = false;
}

// show_debug_message(string(confirm_bake));