/// FollowLowestYPlayer()
var player1 = instance_find(obj_player1, 0);
var player2 = instance_find(obj_player2, 0);
var yOffset = 300; // Adjust this value to determine the offset

if (player1 != noone && player2 != noone) {
    var player1Y = player1.y;
    var player2Y = player2.y;

    if (player1Y < player2Y) {
        // obj_player1 has the lowest Y coordinate
        x = (player1.x + player2.x) / 2 + yOffset; // Midpoint between player1 and player2 X positions with a custom X offset
        y = player1Y;
    } else {
        // obj_player2 has the lowest Y coordinate
        x = (player1.x + player2.x) / 2 + yOffset; // Midpoint between player1 and player2 X positions with a custom X offset
        y = player2Y;
    }
} else if (player1 != noone) {
    // Only obj_player1 exists
    x = player1.x + yOffset; // Add a custom X offset to the X position
    y = player1.y;
} else if (player2 != noone) {
    // Only obj_player2 exists
    x = player2.x + yOffset; // Add a custom X offset to the X position
    y = player2.y;
}

/// CheckPlayersDistance()
var player1 = instance_find(obj_player1, 0);
var player2 = instance_find(obj_player2, 0);

// Check if both players exist
if (instance_exists(player1) && instance_exists(player2)) {
    var yDifference = abs(player1.y - player2.y);
    if (yDifference > 680) {
        // If the Y-coordinate difference is greater than 1000, destroy both players
        instance_destroy(player1);
        instance_destroy(player2);
        alarm[0] = 30; // Set alarm[0] to 30 steps
    } else if (player1.y < player2.y) {
        // obj_player1 has the lowest Y coordinate
        x = (player1.x + player2.x) / 2 + yOffset; // Midpoint between player1 and player2 X positions with a custom X offset
        y = player1.y;
    } else {
        // obj_player2 has the lowest Y coordinate
        x = (player1.x + player2.x) / 2 + yOffset; // Midpoint between player1 and player2 X positions with a custom X offset
        y = player2.y;
    }
} else if (instance_exists(player1)) {
    // Only obj_player1 exists
    x = player1.x + yOffset; // Add a custom X offset to the X position
    y = player1.y;
} else if (instance_exists(player2)) {
    // Only obj_player2 exists
    x = player2.x + yOffset; // Add a custom X offset to the X position
    y = player2.y;
}
