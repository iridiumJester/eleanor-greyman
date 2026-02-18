var _sec_display = string_replace_all(string_format(seconds, 2, 0), " ", "0");
draw_text(10, 10, "Time: " + string(hours) + ":" + string(minutes) + ":" + _sec_display);
