// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_WipeSave(){

if file_exists("save.txt")
{
    file_delete("save.txt");
}
}
