first_zero = array_get_index(active_ingredients, 0);
index_of_current = array_get_index(active_ingredients, ing_num);

// sort numerically
array_sort(active_ingredients, function(elm_1, elm_2)
{ return elm_1 - elm_2; });

show_debug_message(active_ingredients);