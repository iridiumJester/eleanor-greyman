if dialogue 
{
	draw_text(410, 464, "What do you want?")
}

// show button
with (obj_controller) {
	if (obj_npc.talkable)
	{
		draw_sprite(spr_button_placeholder, 0, 464, 512);
	}
}