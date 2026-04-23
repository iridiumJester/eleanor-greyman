var _click = mouse_check_button_pressed(1);

// indicator of click
if _click { image_blend = c_dkgray; }

// click radius
if mouse_x <= x+20 && mouse_x >= x-20 && mouse_y <= y+32 && mouse_y >= y-20
{
	// make it green
	image_blend = c_lime;
	if _click && selected
	{
		selected = false;
	}
	else if _click && !selected && products_selected < 1
	{
		selected = true;
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