// variables for use in obj_ing
first_zero = array_get_index(active_ingredients, 0);
index_of_current = array_get_index(active_ingredients, ing_num);

// sort numerically
array_sort(active_ingredients, function(elm_1, elm_2)
{ return elm_1 - elm_2; });

show_debug_message(string(active_ingredients) + " : " + string(ing_num) + " : " + string(index_of_current));

// keep variables consistent
with (obj_inventory)
{
	other.ingredients_selected = ingredients_selected;
}

// cost in shop
cost_owed = quantity_selected*ingredients_selected*5;

// prevent player from buying more than they can afford
if cost_owed <= obj_main_control.money
{ with (obj_shop_button) 
	{ can_buy = true; } }
else
{ with (obj_shop_button) 
	{ can_buy = false; } }