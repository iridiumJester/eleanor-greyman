// array sum
for (var i = 0; i < array_length(goal_1_arr); i++) 
{ goal_1_arr_sum += goal_1_arr[i]; }

goal_2_current = obj_main_control.money;

with (obj_customer)
{
	if doomed
	{
		other.current_customer_type = image_index;
		if other.goal_1_arr[other.current_customer_type-1] != 1
		{ other.goal_1_arr[other.current_customer_type-1] = 1; }
		instance_destroy();
	}
}

// complete conditions
if goal_1_arr_sum >= goal_1_target
{ goal_1_complete = true; }

if goal_2_current >= 500
{ goal_2_complete = true; }

show_debug_message(goal_1_arr);