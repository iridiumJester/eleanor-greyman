if room == rm_menu || room == rm_tutorial
{ in_menu_room = true; }
else
{ in_menu_room = false; }

if in_menu_room && !theme_playing && play_music
{
	if !audio_is_playing(msc_menu_wip)
	{
	audio_play_sound(msc_menu_wip, 3, true);
	}
}

if !in_menu_room && !theme_playing && play_music
{
	audio_stop_sound(msc_menu_wip);
	audio_play_sound(msc_theme_wip, 3, true);
	theme_playing = true;
}