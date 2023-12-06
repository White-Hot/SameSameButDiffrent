if(instance_exists(con_Con))
{
if (con_Con.BestRun > con_Con.deaths)
{
con_Con.BestRun = con_Con.deaths
con_Con.deaths = 0;
con_Con.firstRun = false;
scr_SaveGame();
room_goto(Room0_Title);
}
}