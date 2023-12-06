// Step event
if (moving_right) {
    // Move right
    x += move_speed;

    // Check if we've reached the target position
    if (x >= end_x) {
        x = end_x; // Ensure we're exactly at the target position
        moving_right = false; // Change direction to move left
    }
} else {
    // Move left
    x -= move_speed;

    // Check if we've returned to the initial position
    if (x <= start_x) {
        x = start_x; // Ensure we're exactly at the initial position
        moving_right = true; // Change direction to move right
    }
}
