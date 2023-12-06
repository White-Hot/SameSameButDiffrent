
	

/// FollowFurthestRightPlayer()
var player1 = instance_find(obj_player1, 0);
var player2 = instance_find(obj_player2, 0);
var yOffset = 300; // Adjust this value to determine the offset

if (player1 != noone && player2 != noone) {
    var player1Right = player1.x;
    var player2Right = player2.x;

    if (player1Right > player2Right) {
        // obj_player1 is further to the right
        x = player1Right;
        y = (player1.y + player2.y) / 2 + yOffset; // Midpoint between player1 and player2 y positions with a custom Y offset
    } else {
        // obj_player2 is further to the right
        x = player2Right;
        y = (player1.y + player2.y) / 2 + yOffset; // Midpoint between player1 and player2 y positions with a custom Y offset
    }
} else if (player1 != noone) {
    // Only obj_player1 exists
    x = player1.x;
    y = player1.y + yOffset; // Add a custom Y offset to the Y position
} else if (player2 != noone) {
    // Only obj_player2 exists
    x = player2.x;
    y = player2.y + yOffset; // Add a custom Y offset to the Y position
}

/// CheckPlayersDistance()
var player1 = instance_find(obj_player1, 0);
var player2 = instance_find(obj_player2, 0);

// Check if both players exist
if (instance_exists(player1) && instance_exists(player2)) {
    var xDifference = abs(player1.x - player2.x);
    if (xDifference > 1800) {
        // If the x-value difference is greater than 1800, destroy both players
        instance_destroy(player1);
        instance_destroy(player2);
        alarm[0] = 30; // Set alarm[0] to 30 steps
    } else if (player1.x > player2.x) {
        // obj_player1 is further to the right
        x = player1.x;
        y = (player1.y + player2.y) / 2 + yOffset; // Midpoint between player1 and player2 y positions with a custom Y offset
    } else {
        // obj_player2 is further to the right
        x = player2.x;
        y = (player1.y + player2.y) / 2 + yOffset; // Midpoint between player1 and player2 y positions with a custom Y offset
    }
} else if (instance_exists(player1)) {
    // Only obj_player1 exists
    x = player1.x;
    y = player1.y + yOffset; // Add a custom Y offset to the Y position
} else if (instance_exists(player2)) {
    // Only obj_player2 exists
    x = player2.x;
    y = player2.y + yOffset; // Add a custom Y offset to the Y position
}
