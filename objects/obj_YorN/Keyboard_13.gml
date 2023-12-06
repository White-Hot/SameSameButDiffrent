if (on = true)
{
scr_WipeSave();
con_Con.firstRun = true;
room_goto(rmn_MainMenu);
con_Con.BestRun = 9999;
scr_SaveGame();
}