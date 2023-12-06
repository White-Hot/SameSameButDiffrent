// scr_LoadGame
if(instance_exists(con_Con))
{
// scr_LoadGame
if (instance_exists(con_Con)) {
    var save_file;
    if (file_exists("save.txt")) {
        save_file = file_text_open_read("save.txt");

        if (save_file != -1) {
            var saved_room = file_text_read_real(save_file);
            var saved_deaths = file_text_read_real(save_file);
            var saved_best_run = file_text_read_real(save_file); // Read the BestRun variable
         
            // Load the saved data into con_Con
            room_goto(saved_room);
            con_Con.deaths = saved_deaths;
            con_Con.BestRun = saved_best_run;
   

            file_text_close(save_file);
        }
    } else {
        show_debug_message("Save file not found.");
    }
}

}