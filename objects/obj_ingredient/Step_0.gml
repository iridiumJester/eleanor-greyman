var _click = mouse_check_button_pressed(1);

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
		stashed_count += 1;
		with (obj_inventory) 
		{
			ingredients_selected -= 1;
		}
	}
	else if _click && !selected && ingredients_selected < ingredient_limit && count > 0
	{
		// move to counter if on shelf if not item limit and not empty
		y += y_difference;
		x += x_difference
		selected = true;
		stashed_count -= 1;
		with (obj_inventory) 
		{
			ingredients_selected += 1;
		}
	}
}
else
{
	// turn gray if empty
	if count <= 0 && !selected { image_blend = empty_color; }
	else { image_blend = -1; }
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

// show_debug_message(string(count) + " - " + string(stashed_count));