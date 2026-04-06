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
money = 125;

// menu button
ekey = false;
menu_showing = false;
gui_w = display_get_gui_width();

// product
product_count = 1;
stashed_product = product_count;
products_selected = 0;
sell_exists = false;


// speed for text scrolling in textboxes, change to suit your taste
// (or add an in-game settings option for players to change it!)
global.textSpeed = 0.75;

// sorry if this fucks anything up
surface_resize(application_surface,RESOLUTION_W,RESOLUTION_H);