if (image_index = 0)
{
	if (obj_MusicCon.on = true)
	{
		obj_MusicCon.on = false;
	}
	else
	{
		obj_MusicCon.on = true;
	}
		
}

if (image_index = 1)
{
	audio_play_sound(P1move,100,false);
	instance_create_layer(x,y,"Instances_1",obj_YorN);
}

if (image_index = 2)
{
	room_goto(rmn_MainMenu);
	audio_play_sound(Door,100,false);
}

