  draw_set_font(Text);
    draw_set_color(c_black); // Set the text color (white in this case)
    draw_set_valign(fa_top); // Set vertical alignment to top
    draw_set_halign(fa_left); // Set horizontal alignment to left

    var textx = 10; // X position for the text
    var texty = 10; // Y position for the text

    var text_to_display = "Dev Deaths: " + string(con_Con.DevDeaths) + "   Best Run: " + string(con_Con.BestRun);
    draw_text(textx, texty, text_to_display);
