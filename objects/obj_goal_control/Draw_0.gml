if room == rm_goals
{
	draw_set_font(ft_small);
	
	// goal 1
	draw_text_colour(168, 100, goal_1_str + goal_1_completion, c_black, c_black, c_black, c_black, 1);
	if goal_1_arr_sum != 0
	{ NineSliceBoxStretch(spr_bar,156,156,156 + (328 * (goal_1_arr_sum / goal_1_target)), 156 + 24, 0); }
	
	// goal 2
	draw_text_colour(168, 212, goal_2_str + goal_2_completion, c_black, c_black, c_black, c_black, 1);
	if !goal_2_complete
	{ NineSliceBoxStretch(spr_bar,156,268,156 + (328 * (goal_2_current / goal_2_target)), 268 + 24, 0); }
	else
	{ NineSliceBoxStretch(spr_bar,156,268,156 + 328, 268 + 24, 0);}
	
	draw_set_font(ft_normal);
}