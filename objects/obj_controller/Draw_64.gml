// menu
var _xx = gui_w - 900;
if ekey {
	draw_sprite(spr_book_menu, 1, _xx, 64);
	draw_text(string(gui_w), 64, 64)
}


// clock
var _sec_display = string_replace_all(string_format(real_seconds, 2, 0), " ", "0");
var _min_display = string_replace_all(string_format(minutes, 2, 0), " ", "0");

draw_text(10, 10, "Time: " + string(hours) + ":" + _min_display + ":" + _sec_display + " " + am_pm);


