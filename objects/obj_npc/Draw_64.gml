if interacting 
{
	//draw_text(410, 464, "Can you go grab that ");
	NewTextBox("Can you go grab that", false);
	NewTextBox("pleadse,", true);
//	the text function gets called every frame, so you need to end the activation condition instantly
//	for now the easiest way is to just end interaction immediately, as below:
	interacting = false;
//	but you'll need another way if you end up locking player controls while in dialogue
}

// show button
with (obj_controller) {
	if (obj_npc.interactable)
	{
		draw_sprite(spr_button_placeholder, 0, 464, 512);
	}
}