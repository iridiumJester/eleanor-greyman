if room == rm_goals
{
	draw_set_font(ft_small);
	draw_text_colour(
		168, 100, 
		goal_1_str + " (" + string(goal_1_arr_sum) + " / " + string(goal_1_target) + ")", 
		c_black, c_black, c_black, c_black, 1);
	if goal_1_arr_sum != 0
	{ NineSliceBoxStretch(spr_bar,156,156,156 + (328 * (goal_1_arr_sum / goal_1_target)), 156 + 24, 0); }
	draw_text_colour(
		168, 212, 
		goal_2_str + " (" + string(obj_main_control.money) + " / " + string(goal_2_target) + ")", 
		c_black, c_black, c_black, c_black, 1);
	NineSliceBoxStretch(spr_bar,156,268,156 + (328 * (goal_2_current / goal_2_target)), 268 + 24, 0);
	draw_set_font(ft_normal);
}