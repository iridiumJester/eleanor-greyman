if room == rm_kitchen 
{
	if ingredients_selected > 1
	{ other.able_to_bake = true; }
	else
	{
		with (obj_button)
		{
			if y < 496
			{ instance_destroy(); }
		}
		other.able_to_bake = false;
	}

	if able_to_bake
	{ 
		instance_create_layer(926, 464, "Instances", obj_button);
		able_to_bake = false;
	}
}
else
{ able_to_bake = false; }

with (obj_ingredient)
{
	if ingredient == 1
	{
		other.ingredient_1 = count;
	}
	if ingredient == 2
	{
		other.ingredient_2 = count;
	}
	if ingredient == 3
	{
		other.ingredient_3 = count;
	}
	if ingredient == 4
	{
		other.ingredient_4 = count;
	}
	if ingredient == 5
	{
		other.ingredient_5 = count;
	}
	if ingredient == 6
	{
		other.ingredient_6 = count;
	}
	if ingredient == 7
	{
		other.ingredient_7 = count;
	}
	if ingredient == 8
	{
		other.ingredient_8 = count;
	}
	if ingredient == 9
	{
		other.ingredient_9= count;
	}
	if ingredient == 10
	{
		other.ingredient_10 = count;
	}
	if ingredient == 11
	{
		other.ingredient_11 = count;
	}
	if ingredient == 12
	{
		other.ingredient_12 = count;
	}
}