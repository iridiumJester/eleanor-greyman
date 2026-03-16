if room == rm_kitchen
{
	selected = false;
	ingredients_selected = 0;
	stashed_count = count;
}
else
{
	with (obj_button)
	{
		if !confirm_bake
		{ other.stashed_count = 0; }
	}
}