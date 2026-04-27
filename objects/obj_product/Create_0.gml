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
		else if product_2_count != existing_product_2
		{ 
			other.image_index = 2;
			existing_product_2 += 1;
		}
		else if product_3_count != existing_product_3
		{ 
			other.image_index = 3;
			existing_product_3 += 1;
		}
		existing_product += 1;
	}
}