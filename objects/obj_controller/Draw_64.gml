// menu
var _xx = gui_w - 64 - 70;
if ekey draw_sprite(spr_button_placeholder, 1, _xx, 64);
else draw_sprite(spr_button_placeholder, 0, _xx, 64);

// clock
var _sec_display = string_replace_all(string_format(real_seconds, 2, 0), " ", "0");
var _min_display = string_replace_all(string_format(minutes, 2, 0), " ", "0");

draw_text(10, 10, "Time: " + string(hours) + ":" + _min_display + ":" + _sec_display + " " + am_pm);


