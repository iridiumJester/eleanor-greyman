if product_selected != -1
{
	// title, bake, sell
	draw_text_colour(416, 32, selected_name, c_black, c_black, c_black, c_black, 1);
	draw_text_colour(416, 80, "Bake: " + string(selected_time) + " min", c_black, c_black, c_black, c_black, 1);
	draw_text_colour(416, 112, "Sell: " + string(selected_price) + "g", c_black, c_black, c_black, c_black, 1);

	// captions
	/* draw_text_colour(416, 304, "Ingredient", c_black, c_black, c_black, c_black, 1);
	draw_text_colour(560, 304, "Ingredient", c_black, c_black, c_black, c_black, 1);
	draw_text_colour(704, 304, "Ingredient", c_black, c_black, c_black, c_black, 1);
	draw_text_colour(848, 304, "Ingredient", c_black, c_black, c_black, c_black, 1); */

	// little image
	draw_sprite_ext(spr_product, product_selected, 936, 88, 0.5, 0.5, 0, -1, 1);
	if ing_1 != 0
	{
		draw_sprite(spr_ingredients, ing_1-1, 480, 240);
		draw_sprite(spr_ingredients, ing_2-1, 480+144, 240);
		draw_sprite(spr_ingredients, ing_3-1, 480+(144*2), 240);
		draw_sprite(spr_ingredients, ing_4-1, 480+(144*3), 240);
	}
}