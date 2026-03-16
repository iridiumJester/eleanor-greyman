var _x = start_x;
var _y = start_y-48;

if ingredient > 6
{ _y += 8; }

draw_circle_colour(_x,_y, 20, c_black, c_black, false);
draw_circle(_x, _y, 16, false);
draw_text_colour(_x-6, _y-12, string(count), c_black, c_black, c_black, c_black, 1);