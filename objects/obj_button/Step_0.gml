// determines if current ingredients are a valid combination
with (obj_recipe_book)
{
	if active_ingredients == recipe_1
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
	can_bake = false;
}

// show_debug_message(string(confirm_bake));