/// @desc 

lerpProgress += (1 - lerpProgress) / 50;
textProgress += global.textSpeed;

x1 = lerp(x1,x1Target,lerpProgress);
x2 = lerp(x2,x2Target,lerpProgress);

// IMPORTANT !
// YOU MAY NEED TO MODIFY THIS CODE LATER TO ACCOUNT FOR PAUSING OR LOCKING PLAYER MOVEMENT CONTROLS

if (keyboard_check_pressed(vk_space))
{
	var _messageLength = string_length(msg);
	if (textProgress >= _messageLength)
	{

		instance_destroy();
		if (instance_exists(obj_textbox_queued))
		{
			with obj_textbox_queued {ticket--}
		}
	}
	else
	{
		if (textProgress > 2)
		{
			textProgress = _messageLength;
		}
	}
}
