if room == rm_kitchen 
{
	if ingredients_selected > 1
	{
		other.able_to_bake = true;
	}
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

show_debug_message("Can bake: " + string(able_to_bake));