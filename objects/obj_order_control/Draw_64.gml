if room == rm_bakery
{
	draw_text_colour(
		x-40+x_variation, y-4+y_variation, 
		string(order_count) + "x", 
		c_black, c_black, c_black, c_black, 1);
	draw_sprite_ext(
		spr_product, order_type, x+32+x_variation, y+4+y_variation, 
		0.5, 0.5, 0, -1, 1);
}