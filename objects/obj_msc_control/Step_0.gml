if room != rm_menu && !theme_playing
{
	audio_stop_sound(msc_menu_wip);
	audio_play_sound(msc_theme_wip, 3, true);
	theme_playing = true;
}