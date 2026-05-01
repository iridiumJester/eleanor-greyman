if image_index == 0
{
	with (obj_shop_control)
	{
		quantity_selected += 1;
		audio_play_sound(sfx_select, 0, false, obj_msc_control.sfx_volume, 0, 4);
	}
}
else if image_index == 1
{
	with (obj_shop_control)
	{
		if quantity_selected > 1
		{
			quantity_selected -= 1;
			audio_play_sound(sfx_select, 0, false, obj_msc_control.sfx_volume, 0, 2);
		}
	}
}
else if image_index == 2
{
	if can_buy
	{
		with (obj_shop_control)
		{
			other.cost_owed = cost_owed;
			other.quantity_selected = quantity_selected;
		}
		with (obj_ingredient)
		{
			if selected
			{
				x -= x_difference;
				y -= y_difference;
				stashed_count += other.quantity_selected;
				selected = false;
				with (obj_inventory) 
				{
					ingredients_selected -= 1;
				}
			}
		}
		with (obj_main_control)
		{
			money -= other.cost_owed;
		}
		confirm_buy = true;
		if cost_owed > 0
		{ audio_play_sound(sfx_sell_harmony, 1, false, obj_msc_control.sfx_volume, 0, 0.95+(0.01*cost_owed)); }
		else
		{ audio_play_sound(sfx_select, 1, false, obj_msc_control.sfx_volume, 0, 1.5); }
	}
	else
	{ image_blend = c_red; audio_play_sound(sfx_failure, 1, false, obj_msc_control.sfx_volume, 0, 2); }
}
else
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
}