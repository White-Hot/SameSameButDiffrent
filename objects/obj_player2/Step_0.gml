// Step Event
var moveInputX = keyboard_check(vk_right) - keyboard_check(vk_left);
var jumpInput = keyboard_check_pressed(vk_up);
var fallInput = keyboard_check(vk_down);

// Horizontal Movement
var hsp = moveInputX * moveSpeed;

// Apply gravity
vsp += grav;

// Jumping
if (place_meeting(x, y + 1, obj_wall) && jumpInput && !isJumping) {
    vsp = -jumpForce;
	audio_play_sound(soundj1,100,false);
    isJumping = true;
}

// Faster falling with 'S'
if (vsp > 0 && fallInput) {
    vsp += grav * (fallMultiplier - 1);
}

// Apply movement
if (!place_meeting(x + hsp, y, obj_wall)) {
    x += hsp;
}

if (place_meeting(x, y + vsp, obj_wall)) {
    while (!place_meeting(x, y + sign(vsp), obj_wall)) {
        y += sign(vsp);
    }
    vsp = 0;
    isJumping = false;
}

y += vsp;

if (moveInputX < 0) {
    // Player is moving left, so flip the sprite horizontally
    image_xscale = -1;
} else if (moveInputX > 0) {
    // Player is moving right, restore the original sprite direction
    image_xscale = 1;
}

// Adjust the sprite index logic based on hsp and vsp
if (hsp != 0 && vsp == 0) {
    sprite_index = sPlayer2walk; // Change this to the walking sprite index
} else if (vsp == 0) {
    sprite_index = sPlayeridle2; // Change this to the idle sprite index
}
