// clock
var _sec_display = string_replace_all(string_format(real_seconds, 2, 0), " ", "0");
var _min_display = string_replace_all(string_format(minutes, 2, 0), " ", "0");

draw_sprite_ext(spr_button, 2, 32, 40, 1, 1.1, 0, c_white, 1);
draw_text(16, 16, string(hours) + ":" + _min_display + " " + am_pm);
draw_text(16, 40, string(money) + "g");


