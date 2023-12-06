if (obj_switch.on = true) || (obj_switch2.On = true)
{
	noCollision = true;
}


if (noCollision) {
    mask_index = -1;
	sprite_index = Blank;
	
} else {

    mask_index = sWall;
	sprite_index = sWall;
}

if (obj_switch.on = false) || (obj_switch2.On = false)
{
	noCollision = false;
}