// scr_SaveGame

if(instance_exists(con_Con))
{
	
var save_file;
save_file = file_text_open_write("save.txt");

// Save current room index and variables from con_Con
file_text_write_real(save_file, room);
file_text_write_real(save_file, con_Con.deaths);
file_text_write_real(save_file, con_Con.BestRun); // Save BestRun

file_text_close(save_file);


}