show_debug_message(string(confirm_bake));

// finalizes count
if confirm_bake
{
	with (obj_ingredient)
	{
		count = stashed_count;
		other.confirm_bake = false;
	}
}