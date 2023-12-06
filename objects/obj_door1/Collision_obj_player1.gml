if (instance_exists(obj_player2))
{

if (!instance_exists(obj_key1) && (!instance_exists(obj_key2)))
{
	
if (place_meeting(obj_player2.x, obj_player2.y, obj_door2)) {
	room_goto_next();
audio_play_sound(Door,100,false);
}
}
}