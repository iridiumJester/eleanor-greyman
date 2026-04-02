// determines if current ingredients are a valid combination
with (obj_recipe_book)
{
	if array_equals(active_ingredients, recipe_1)
	{ other.can_bake = true; }
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
		active_ingredients = [0, 0, 0, 0];
	}
	with (obj_controller)
	{
		product_count = stashed_product;
	}
	can_bake = false;
}

// show_debug_message(string(confirm_bake));