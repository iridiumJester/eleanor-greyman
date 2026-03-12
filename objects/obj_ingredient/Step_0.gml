var _click = mouse_check_button_pressed(1);

if mouse_x <= x+48 && mouse_x >= x-48 && mouse_y <= y+64 && mouse_y >= y-32
{
	if count > 0 { image_blend = hover_color; }
	if _click && selected
	{
		y -= 192;
		selected = false;
		count += 1;
		with (obj_inventory) 
		{
			ingredients_selected -= 1;
		}
	}
	else if _click && !selected && ingredients_selected < 4 && count > 0
	{
		y += 192;
		selected = true;
		count -= 1;
		with (obj_inventory) 
		{
			ingredients_selected += 1;
		}
	}
}
else
{
	if count <= 0 && !selected { image_blend = empty_color; }
	else { image_blend = -1; }
}

// fixes layering (partially)
with (all)
{
    depth = -bbox_bottom;
}


with (obj_inventory)
{
	other.ingredients_selected = ingredients_selected;
}

// show_debug_message(string(ingredients_selected));