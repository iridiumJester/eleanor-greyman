selected = false;
products_selected = 0;
image_speed = 0;

with (obj_main_control)
{
	if product_count != existing_product
	{
		if product_1_count != existing_product_1
		{ 
			other.image_index = 1;
			existing_product_1 += 1;
		}
		existing_product += 1;
	}
}