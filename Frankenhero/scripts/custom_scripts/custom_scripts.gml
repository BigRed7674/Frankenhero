//drawing the player's weapon
function draw_flashlight()
{
	//Draw Flashlight
	//get weapon off the player's body
	var _xOffset = lengthdir_x(weapon.offset_distance, aimDir);
	var _yOffset = lengthdir_y(weapon.offset_distance, aimDir);


	// flip the flashlight
	var _weaponYscl = 1
	if aimDir > 90 && aimDir < 270
	{
		_weaponYscl = -1;
	}

	draw_sprite_ext(weapon.sprite, 0, x + _xOffset, centerY + _yOffset, 1, _weaponYscl, aimDir, image_blend, image_alpha );


}