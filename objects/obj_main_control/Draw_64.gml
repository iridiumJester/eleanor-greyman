// clock
var _sec_display = string_replace_all(string_format(real_seconds, 2, 0), " ", "0");
var _min_display = string_replace_all(string_format(minutes, 2, 0), " ", "0");
var _min_limit = string_replace_all(string_format(60-minutes, 2, 0), " ", "0");
var _hour_limit = time_limit-hours;

if hours < 9 
{ _min_limit = "00"; _hour_limit = 0; }
else if minutes == 0
{ _min_limit = string_replace_all(string_format(0, 2, 0), " ", "0"); _hour_limit = time_limit-hours; }
else
{ _hour_limit = time_limit-hours-1; }


if room != rm_tutorial
{
	draw_sprite_ext(spr_button, 5, 32, 40, 1, 1.1, 0, c_white, 1);
	draw_text(8, 16, string(hours) + ":" + _min_display + " " + am_pm);
	draw_text(8, 40, string(money) + "g");
	if _hour_limit < 2
	{
		draw_set_font(ft_small);
		draw_text(128+8, 16+8, "Time remaining: " + string(_hour_limit) + ":" + string(_min_limit));
		draw_set_font(ft_normal);
	}
}

