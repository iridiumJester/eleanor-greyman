// clock
var _sec_display = string_replace_all(string_format(real_seconds, 2, 0), " ", "0");
var _min_display = string_replace_all(string_format(minutes, 2, 0), " ", "0");

draw_sprite_ext(spr_button, 2, 30, 40, 1, 1.1, 0, c_white, 1);
draw_text(10, 10, string(hours) + ":" + _min_display + " " + am_pm);
draw_text(10, 40, string(money) + "g");


