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
		audio_play_sound(sfx_select, 0, false, obj_msc_control.sfx_volume, 0, 1.5);
	}
	else if _click && !selected && products_selected < 3
	{
		selected = true;
		audio_play_sound(sfx_select, 0, false, obj_msc_control.sfx_volume, 0, 3);
	}
}
else
	if selected { image_blend = c_green; }
	else { image_blend = -1; }

// update count
with (obj_main_control)
{
	other.products_selected = products_selected;
}