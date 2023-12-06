// Step event
if (moving_up) {
    // Move up
    y -= move_speed;

    // Check if we've reached the target position
    if (y <= end_y) {
      
        moving_up = false; // Change direction to move down
    }
} else {
    // Move down
    y += move_speed;

    // Check if we've returned to the initial position
    if (y >= start_y) {
       
        moving_up = true; // Change direction to move up
    }
}
