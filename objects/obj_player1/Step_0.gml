// Step Event
var moveInputX = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var jumpInput = keyboard_check_pressed(ord("W"));
var fallInput = keyboard_check(ord("S"));

// Horizontal Movement
var hsp = moveInputX * moveSpeed;

// Apply gravity
vsp += grav;

// Jumping
if (place_meeting(x, y + 1, obj_wall)) && jumpInput && !isJumping {
    vsp = -jumpForce;
	audio_play_sound(soundj2,100,false);
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


if (hsp = 0)
{
	sprite_index = sPlayerId
}

if(hsp != 0) && (vsp = 0)
{
	sprite_index = sPlaye1Walk;
}
if (vsp != 0)
{
	sprite_index = sPlayerId
}

