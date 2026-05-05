// some variables
ekey = keyboard_check_pressed(ord("E"));
var _count_true = 0;

// customer
if room == rm_bakery
{ 
	if !customer_exists && !instance_exists(obj_order_control)
	{ 
		instance_create_layer(352, 224, "Customer", obj_order_control);
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
		var _spacing = 112;

		for (var i = 0; i < product_count; ++i) 
		{
		    // x position based on i
		    var xx = 128 + (i * _spacing);
		    var yy = 416;

		    var _new_instance = instance_create_layer(xx, yy, "Instances", obj_product);
		}
	}
}

if room == rm_bakery
{
	with (obj_product) 
	{
	    if (variable_instance_exists(id, "selected") && selected) 
		{
	        _count_true++;
	    }
	}
}
else if room == rm_recipe_book
{
	with (obj_product_recipe) 
	{
	    if (variable_instance_exists(id, "selected") && selected) 
		{
	        _count_true++;
	    }
	}
}

products_selected = _count_true;

// create sell button 208, 320 152+(products_selected*56)
if products_selected >= 1 && room == rm_bakery
{
	if !sell_exists
	{ 
		instance_create_layer(152, 320, "Instances", obj_button);
		sell_exists = true;
	}	
}
	
/* show_debug_message(
	"Stash: " + string(stashed_product) + 
	", Real: " + string(product_count) +
	", Exist: " + string(existing_product) +
	"|| Stash 1: " + string(stashed_product_1) + 
	", Real 1: " + string(product_1_count) +
	", Exist 1: " + string(existing_product_1) +
	"|| Stash 2: " + string(stashed_product_2) + 
	", Real 2: " + string(product_2_count) +
	", Exist 2: " + string(existing_product_2) + 
	"|| Stash 3: " + string(stashed_product_3) + 
	", Real 3: " + string(product_3_count) +
	", Exist 3: " + string(existing_product_3)); */