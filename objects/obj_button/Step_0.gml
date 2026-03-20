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
}

// show_debug_message(string(confirm_bake));