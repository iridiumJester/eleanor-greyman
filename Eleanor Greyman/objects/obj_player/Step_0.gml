var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

move_and_collide(_hor * move_speed, _ver * move_speed, tilemap);


if (_hor != 0 or _ver != 0)
{
    sprite_index = spr_ellie_pl_walk;
	if (_hor > 0) image_xscale = 1;
    else if (_hor < 0) image_xscale = -1;
}
else
	sprite_index = spr_ellie_pl;