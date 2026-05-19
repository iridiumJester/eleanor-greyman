// variables for use in obj_product
first_zero = array_get_index(active_products, 0);
index_of_current = array_get_index(active_products, product_num);

// sort numerically
array_sort(active_products, function(elm_1, elm_2)
{ return elm_1 - elm_2; });

// hide
if room != rm_bakery
{ image_alpha = 0; }
else
{ image_alpha = 1; }

with (obj_main_control)
{
	other.selected_count = products_selected;
}

if order_count == 1
{ 
	if active_products[3] == order_type && selected_count == 1
	{ order_correct = true; }
}
else if order_count == 2
{ 
	if active_products[3] == order_type && active_products[2] == order_type && selected_count == 2
	{ order_correct = true; }
}
else if order_count == 3
{ 
	if active_products[3] == order_type && active_products[2] == order_type && active_products[1] == order_type && selected_count == 3
	{ order_correct = true; }
}

if order_correct
{
	with (obj_button)
	{ can_sell = true; }
}

show_debug_message(string(active_products));