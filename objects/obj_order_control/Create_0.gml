image_speed = 0;
image_index = irandom_range(0,5);

if obj_goal_control.recipes_unlocked[3] == 1 && obj_goal_control.recipes_unlocked[4] == 1
{ order_type = irandom_range(1,5); }
else if obj_goal_control.recipes_unlocked[3] == 1 && obj_goal_control.recipes_unlocked[4] == 0
{ order_type = irandom_range(1,4); }
else if obj_goal_control.recipes_unlocked[3] == 0 && obj_goal_control.recipes_unlocked[4] == 1
{ order_type = irandom_range(1,4); if order_type == 4 { order_type = 5; } }
else
{ order_type = irandom_range(1,3); }
order_count = 0;
order_count_raw = random_range(0,6);
x_variation = irandom_range(-4,4);
y_variation = irandom_range(-4,4);

selected_type = 0;
selected_count = 0;

// randomize order
if order_count_raw < 3
{ order_count = 1; }
else if order_count_raw < 5
{ order_count = 2; }
else if order_count_raw < 6
{ order_count = 3; }