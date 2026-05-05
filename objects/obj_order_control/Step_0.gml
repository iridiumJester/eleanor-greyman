if room != rm_bakery
{ image_alpha = 0; }
else
{ image_alpha = 1; }

with (obj_main_control)
{
	other.selected_count = products_selected;
}

if selected_count == order_count && selected_type == order_type
{
	with (obj_button)
	{ can_sell = true; }
}