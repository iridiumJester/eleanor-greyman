interactable = point_distance(x, y, obj_player.x, obj_player.y) < 80;

if (instance_exists(obj_player)) {
    if (interactable)
	{
		image_blend = c_lime;
        if keyboard_check_pressed(ord(keybind))
			if interacting
				interacting = false;
			else
				interacting = true;
    }
	else
		image_blend = -1;
}