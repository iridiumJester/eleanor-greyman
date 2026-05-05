if room != rm_bakery
{ image_alpha = 0; }
else
{ 
	image_alpha = 1;
	var _layer_id = layer_get_id("Customer");
	layer_add_instance(_layer_id, id);
}