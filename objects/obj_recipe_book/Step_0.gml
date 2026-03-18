/*
	find first zero
	if ing selected
		set active[first_zero] to ing value
	else
		if ing value found in active
			set to zero
*/ 


// sort numerically
array_sort(active_ingredients, function(elm_1, elm_2)
{ return elm_1 - elm_2; });