function NineSliceBoxStretch()
{
	/// NineSliceBoxStretch(sprite, x1, y1, x2, y2);
	/// @arg sprite
	/// @arg x1 left
	/// @arg y1 top
	/// @arg x2 right
	/// @arg y2 bottom
	/// @arg index image index

	var _size = sprite_get_width(argument0) / 3;
	var _x1 = argument1;
	var _y1 = argument2;
	var _x2 = argument3;
	var _y2 = argument4;
	var _index = argument5;
	var _w = _x2 - _x1;
	var _h = _y2 - _y1;

	// MIDDLE
	draw_sprite_part_ext(argument0, _index, _size, _size, 1, 1, _x1+_size, _y1+_size, _w-(_size*2), _h-(_size*2), c_white, 1);

	// CORNERS
	// top left
	draw_sprite_part(argument0, _index, 0, 0, _size, _size, _x1, _y1);
	// top right
	draw_sprite_part(argument0, _index, _size*2, 0, _size, _size, _x1+_w-_size, _y1);
	// bottom left
	draw_sprite_part(argument0, _index, 0, _size*2, _size, _size, _x1, _y1+_h-_size);
	// bottom right
	draw_sprite_part(argument0, _index, _size*2, _size*2, _size, _size, _x1+_w-_size, _y1+_h-_size);

	// EDGES
	// left edge
	draw_sprite_part_ext(argument0, _index, 0, _size, _size, 1, _x1, _y1+_size, 1, _h-(_size*2), c_white, 1);
	// right edge
	draw_sprite_part_ext(argument0, _index, _size*2, _size, _size, 1, _x1+_w-_size, _y1+_size, 1, _h-(_size*2), c_white, 1);
	// top edge
	draw_sprite_part_ext(argument0, _index, _size, 0, 1, _size, _x1+_size, _y1, _w-(_size*2), 1, c_white, 1);
	// bottom edge
	draw_sprite_part_ext(argument0, _index, _size, _size*2, 1, _size, _x1+_size, _y1+_h-(_size), _w-(_size*2), 1, c_white, 1);
}

function NewTextBox()
{
	/// NewTextBox_2(message, background);
	/// @arg textmessage
	/// @arg followup
	/// @arg background
	
	var _obj;
	if (instance_exists(obj_textbox)) {_obj = obj_textbox_queued;} else {_obj = obj_textbox;}
	with (instance_create_layer(0,0,"Instances",_obj))
	{
		msg = argument[0];
		followup = argument[1];
		if (instance_exists(other)) {originInstance = other.id} else {originInstance = noone;}
//		if (argument_count == 3) {background = argument[1];} else {background = 0;}
		// ^^ use this line if you implement textbox backgrounds!
		// it checks if there's a second argument provided and takes the value as the spriteframe to use as the text box
		// if there's no second argument it defaults to the first frame
	}	
}