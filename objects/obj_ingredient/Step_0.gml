var _click = mouse_check_button_pressed(1);
var _selectable = false;
if room == rm_kitchen && count > 0 { _selectable = true; }
else if room == rm_shop { _selectable = true; }
else { _selectable = false; }

// indicator of click
if _click { image_blend = c_dkgray; }

// click radius
if mouse_x <= x+48 && mouse_x >= x-48 && mouse_y <= y+64 && mouse_y >= y-32
{
	// make it green
	if count > 0 { image_blend = hover_color; }
	if _click && selected
	{
		// move back to shelf if on counter
		y -= y_difference;
		x -= x_difference
		selected = false;
		if room == rm_kitchen { stashed_count += 1; }
		with (obj_inventory) 
		{
			ingredients_selected -= 1;
		}
	}
	else if _click && !selected && ingredients_selected < ingredient_limit && _selectable
	{
		// move to counter if on shelf if not item limit and not empty
		y += y_difference;
		x += x_difference
		selected = true;
		if room == rm_kitchen { stashed_count -= 1; }
		with (obj_inventory) 
		{
			ingredients_selected += 1;
		}
	}
}
else
{
	// turn gray if empty
	if count <= 3 && room == rm_shop { image_blend = #ff7070; }
	else if count <= 0 && !selected && room != rm_recipe_book { image_blend = empty_color; }
	else { image_blend = -1; }
}

// write in recipe
if room == rm_kitchen
{
	ingredient_limit = 4;
	if !tracked_in_recipe && selected
	{
		with (obj_recipe_book)
		{
			active_ingredients[first_zero] = other.ingredient;
		}
		tracked_in_recipe = true;
	}
	else if tracked_in_recipe && !selected
	{
		with (obj_recipe_book)
		{
			if index_of_current > -1
			{
				ing_num = other.ingredient;
				active_ingredients[index_of_current] = 0;
				other.alarm[0] = 2;
			}
		}
	}
}
else if room == rm_shop
{
	ingredient_limit = 12;
	
	// first slot is 64, 384
	if ingredient <= 6
	{ x_difference = (-80*ingredient)+32; y_difference = 256+8; }
	else
	{ x_difference = (-80*(ingredient-6))+32; y_difference = 192+16; }
	
	if selected
	{
		image_xscale = 0.5;
		image_yscale = 0.5;
	}
	else
	{
		image_xscale = 1;
		image_yscale = 1;
	}
	if !tracked_in_recipe && selected
	{
		with (obj_shop_control)
		{
			active_ingredients[first_zero] = other.ingredient;
		}
		tracked_in_recipe = true;
	}
	else if tracked_in_recipe && !selected
	{
		with (obj_shop_control)
		{
			if index_of_current > 1
			{
				ing_num = other.ingredient;
				active_ingredients[index_of_current] = 0;
				other.alarm[0] = 2;
			}
		}
	}
}

// fixes layering
with (all)
{
    depth = -bbox_bottom;
}

// keep ing selected consistent across items
with (obj_inventory)
{
	other.ingredients_selected = ingredients_selected;
}