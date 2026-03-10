/// @desc

x1 = RESOLUTION_W/2;
y1 = RESOLUTION_H-150;
x2 = RESOLUTION_W/2;
y2 = RESOLUTION_H-20;

// text_center_offset is the value that determines how far away from the center of the textbox
// the center of the text is   (positive value moves it to the right, negative to the left)
text_center_offset = 0;
shadow_offset = 3;
// vertical_margin is the distance from the top of the textbox the text is drawn
vertical_margin = 20;

x1Target = 20;
x2Target = RESOLUTION_W-20;

// "lerp" means "linear interpolation"
lerpProgress = 0;
textProgress = 0;

// this defines how many frames after the textbox spawning the portrait spawns
// so use it if you add speaker portraits :)
//alarm[2] = 12;

background = 0;
// NewTextBox() has an optional second argument which will change this variable
// the integer provided as the argument will be the frame of spr_textbox that is drawn
// meaning you can have different textbox designs as different frames within the same sprite :)
// just remember that spriteframes are indexed starting at 0!

alarm[0] = 1;