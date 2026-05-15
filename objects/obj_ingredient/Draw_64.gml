var _x = start_x;
var _x_offset = 0;
var _y = start_y-48;

if ingredient > 6
{ _y += 8; }
if count > 9
{ _x_offset -= 8;}

if room != rm_recipe_book
{
	draw_circle_colour(_x,_y, 20, c_black, c_black, false);
	draw_circle(_x, _y, 16, false);
	draw_text_colour(_x-6+_x_offset, _y-12, string(count), c_black, c_black, c_black, c_black, 1);
}