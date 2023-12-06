if (con_Con.BestRun > con_Con.deaths)
{
con_Con.BestRun = con_Con.deaths
}
con_Con.deaths = 0;
con_Con.firstRun = false;
room_goto(rmn_MainMenu);