if product_selected != -1
{
	// title, bake, sell
	draw_text_colour(416, 32, "Name", c_black, c_black, c_black, c_black, 1);
	draw_text_colour(416, 80, "Bake: " + "time" + " min", c_black, c_black, c_black, c_black, 1);
	draw_text_colour(416, 112, "Sell: " + "price" + "g", c_black, c_black, c_black, c_black, 1);

	// captions
	draw_text_colour(416, 304, "Ingredient", c_black, c_black, c_black, c_black, 1);
	draw_text_colour(560, 304, "Ingredient", c_black, c_black, c_black, c_black, 1);
	draw_text_colour(704, 304, "Ingredient", c_black, c_black, c_black, c_black, 1);
	draw_text_colour(848, 304, "Ingredient", c_black, c_black, c_black, c_black, 1);

	// little image
	draw_sprite(spr_product, product_selected, 936, 88);
}