// font for text
draw_set_font(ft_normal);

// menu button
ekey = false;
menu_showing = false;

gui_w = display_get_gui_width();

// clock
real_seconds = 0;
minutes = 0;
hours = 6;
am_pm = "AM"
speed = 60;

// product
product_count = 0;

// speed for text scrolling in textboxes, change to suit your taste
// (or add an in-game settings option for players to change it!)
global.textSpeed = 0.75;

// sorry if this fucks anything up
surface_resize(application_surface,RESOLUTION_W,RESOLUTION_H);