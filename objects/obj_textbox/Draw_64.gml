/// @desc Draw Textbox
NineSliceBoxStretch(spr_textbox,x1,y1,x2,y2,background);

// maybe turn these into a script function for ease of reuse?
draw_set_font(ft_normal)
draw_set_halign(fa_center);
draw_set_valign(fa_top);

// this color is for the text shadow, so modify it however. or just remove shadows altogether if it looks better
draw_set_color(make_color_rgb(20,20,20));

var _print = string_copy(msg,1,textProgress);

// this draws text shadow
// feel free to tweak the number added to the margin right> < here to change the "distance" of the shadow
draw_text(((x1+x2)/2)+shadow_offset, y1+vertical_margin+shadow_offset, _print);


// the below section was used to define text colors to match the different textboxes.
// delete if you'll only have 1 text color or have something else in mind
// (keep the uncommented line, you need that for the general text color, but feel free to change said color)

//switch(background)
//{
//	case 0:
//	draw_set_color(make_color_rgb(247,204,43));
//	break;
//	case 1:
//	draw_set_color(make_color_rgb(239,239,239));
//	break;
//	case 2:
draw_set_color(make_color_rgb(230,230,230));
//	break;
//}


// this draws main text
draw_text(((x1+x2)/2)+text_center_offset, y1+vertical_margin, _print);