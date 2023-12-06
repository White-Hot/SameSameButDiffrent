// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_fail(){
audio_play_sound(soundMove1,100,false);
con_Con.deaths++;
instance_destroy();
}

