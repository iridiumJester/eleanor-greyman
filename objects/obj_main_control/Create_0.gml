randomize();
last_room = 1;

// clock
real_seconds = 0;
minutes = 0;
hours = 6;
am_pm = "AM"
speed = 60;

// customer
customer_exists = false;

// font for text
draw_set_font(ft_normal);

// currency
money = 100;

// menu button
ekey = false;
menu_showing = false;
gui_w = display_get_gui_width();

// products
products_selected = 0;
sell_exists = false;
product_count = 1;
stashed_product = product_count;
existing_product = 0;
product_1_count = 1;
stashed_product_1 = product_1_count;
existing_product_1 = 0;
product_2_count = 0;
stashed_product_2 = product_2_count;
existing_product_2 = 0;
product_3_count = 0;
stashed_product_3 = product_3_count;
existing_product_3 = 0;


// speed for text scrolling in textboxes, change to suit your taste
// (or add an in-game settings option for players to change it!)
global.textSpeed = 0.75;

// sorry if this fucks anything up
surface_resize(application_surface,RESOLUTION_W,RESOLUTION_H);