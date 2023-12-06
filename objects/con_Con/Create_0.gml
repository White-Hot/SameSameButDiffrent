// This code is called on game startup
deaths = 0;
DevDeaths = 43;
BestRun = 9999;




// Load BestRun and firstRun from the save file if it exists
if (file_exists("save.txt")) {
    var save_file;
    save_file = file_text_open_read("save.txt");

    if (save_file != -1) {
        var saved_room = file_text_read_real(save_file);
        var saved_deaths = file_text_read_real(save_file);
        var saved_best_run = file_text_read_real(save_file); // Read the BestRun variable
      

        // Load BestRun and firstRun only if they are saved
        if (!is_undefined(saved_best_run)) {
            BestRun = saved_best_run;
        }
       

        file_text_close(save_file);
    }
}
