if interacting 
{
	draw_text(410, 464, "Can you go grab that ")
}

// show button
with (obj_controller) {
	if (obj_npc.interactable)
	{
		draw_sprite(spr_button_placeholder, 0, 464, 512);
	}
}