var _click = mouse_check_button_pressed(1);

// indicator of click
if _click { image_blend = c_dkgray; }

// click radius
if mouse_x <= x+48 && mouse_x >= x-48 && mouse_y <= y+64 && mouse_y >= y-32
{
	// make it green
	image_blend = c_lime;
	if _click && selected
	{
		// move back to shelf if on counter
		y += y_difference;
		x += x_difference
		selected = false;
		with (obj_controller) 
		{
			products_selected -= 1;
		}
	}
	else if _click && !selected && products_selected < 3
	{
		// move to counter if on shelf if not item limit
		y -= y_difference;
		x -= x_difference
		selected = true;
		with (obj_controller) 
		{
			products_selected += 1;
		}
	}
}
else
	if selected { image_blend = c_green; }
	else { image_blend = -1; }

// update count
with (obj_controller)
{
	other.products_selected = products_selected;
}