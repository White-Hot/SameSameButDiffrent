if (image_index = 0)
{
	room_goto(Room1);
	audio_play_sound(Door,100,false);
	con_Con.deaths = 0;
}

if (image_index = 1)
{
	scr_LoadGame();
	audio_play_sound(Door,100,false);
}

if (image_index = 2)
{
	room_goto(Settings);
	audio_play_sound(Door,100,false);
}

if (image_index = 3)
{
	audio_play_sound(soundMove1,100,false);
	alarm[0] = 20;
}