// some variables
ekey = keyboard_check_pressed(ord("E"));
var _count_true = 0;

// customer
if room == rm_bakery && product_count > 0
{ 
	if !customer_exists
	{ 
		instance_create_layer(128, 152, "Customer", obj_customer);
		customer_exists = true;
	}
}

// clock
if (room != rm_menu) 
{
	real_seconds += 1/speed; 

	var _divisible_check = real_seconds div 5;
	minutes = _divisible_check * 5;

	if (real_seconds = 60) 
	{
	    real_seconds = 0;
	    minutes = 0;
		hours += 1;
	}
	if (hours == 12 && real_seconds == 0)
	{
		if (am_pm == "AM") am_pm = "PM"
		else am_pm = "AM"
	}
	if (hours > 12)
	{
		hours = 1;
	}
}

// create product in bakery
if !instance_exists(obj_product)
{
	if product_count != 0 && room == rm_bakery
	{
		// spacing between instances
		var _spacing = 56;

		for (var i = 0; i < product_count; ++i) 
		{
		    // x position based on i
		    var xx = 128 + (i * _spacing);
		    var yy = 416;

		    var _new_instance = instance_create_layer(xx, yy, "Instances", obj_product);
		}
	}
}

with (obj_product) 
{
    if (variable_instance_exists(id, "selected") && selected) 
	{
        _count_true++;
    }
}

products_selected = _count_true;

// create sell button 208, 320 152+(products_selected*56)
if products_selected >= 1
	if !sell_exists
	{ 
		instance_create_layer(152, 320, "Instances", obj_button);
		sell_exists = true;
	}
	
show_debug_message(products_selected);