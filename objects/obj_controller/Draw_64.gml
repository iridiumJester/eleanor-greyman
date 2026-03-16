// clock
var _sec_display = string_replace_all(string_format(real_seconds, 2, 0), " ", "0");
var _min_display = string_replace_all(string_format(minutes, 2, 0), " ", "0");

draw_text(10, 10, "Time: " + string(hours) + ":" + _min_display + " " + am_pm);


