switch (product_selected)
{
	case (0):
		// set all ingredients to 0
		break;
	case (1):
		ing_1 = obj_recipe_book.recipe_1[1];
		ing_2 = obj_recipe_book.recipe_1[2];
		ing_3 = obj_recipe_book.recipe_1[3];
		ing_4 = obj_recipe_book.recipe_1[4];
		selected_name = "Basic Bread";
		break;
	case (2):
		ing_1 = obj_recipe_book.recipe_2[1];
		ing_2 = obj_recipe_book.recipe_2[2];
		ing_3 = obj_recipe_book.recipe_2[3];
		ing_4 = obj_recipe_book.recipe_2[4];
		selected_name = "Apple Pie";
		break;
	case (3):
		ing_1 = obj_recipe_book.recipe_3[1];
		ing_2 = obj_recipe_book.recipe_3[2];
		ing_3 = obj_recipe_book.recipe_3[3];
		ing_4 = obj_recipe_book.recipe_3[4];
		selected_name = "Pumpkin Bread";
		break;
}