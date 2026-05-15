// for draw
if !goal_1_complete 
{ goal_1_completion = " (" + string(goal_1_arr_sum) + " / " + string(goal_1_target) + ")"; }
else
{ goal_1_completion = " (Done!)"; }
if !goal_2_complete 
{ goal_2_completion = " (" + string(goal_2_current) + " / " + string(goal_2_target) + ")"; }
else
{ goal_2_completion = " (Done!)"; }

// array sum
goal_1_arr_sum = goal_1_arr[0] + goal_1_arr[1] + goal_1_arr[2] + goal_1_arr[3] + goal_1_arr[4];

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