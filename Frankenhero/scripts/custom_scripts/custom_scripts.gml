//drawing the player's weapon
function draw_flashlight()
{
	//Draw Flashlight
	//get weapon off the player's body
	var _x_offset = lengthdir_x(weapon.offset_distance, aim_dir);
	var _y_offset = lengthdir_y(weapon.offset_distance, aim_dir);


	// flip the flashlight
	var _weapon_y_scale = 1
	if aim_dir > 90 && aim_dir < 270
	{
		_weapon_y_scale = -1
	}

	draw_sprite_ext(weapon.sprite, 0, x + _x_offset, y_center + _y_offset,
		1 , _weapon_y_scale, aim_dir, image_blend, image_alpha );


}