image_speed = 0;
image_index = irandom_range(0,5);

order_type = 0;
order_count = 0;
order_type_raw = random_range(0,3);
order_count_raw = random_range(0,6);
x_variation = irandom_range(-8,8);
y_variation = irandom_range(-8,8);

// randomize order
if order_type_raw < 1
{ order_type = 1; }
else if order_type_raw < 2
{ order_type = 2; }
else if order_type_raw < 3
{ order_type = 3; }

if order_count_raw < 3
{ order_count = 1; }
else if order_count_raw < 5
{ order_count = 2; }
else if order_count_raw < 6
{ order_count = 3; }