// array sum
for (var i = 0; i < array_length(goal_1_arr); i++) 
{
    goal_1_arr_sum += goal_1_arr[i];
}

goal_2_current = obj_main_control.money;

// complete conditions
if goal_1_arr_sum >= goal_1_target
{ goal_1_complete = true; }

if goal_2_current >= 500
{ goal_2_complete = true; }