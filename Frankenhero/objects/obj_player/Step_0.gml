//get user inputs
rightKey = keyboard_check( ord("D") );
leftKey = keyboard_check(ord("A"));
upKey = keyboard_check(ord("W"));
downKey = keyboard_check(ord("S"));
shootKey = mouse_check_button( mb_left )

// for ability testing, comment _swap_key_pressed for submission
var _swap_key_pressed = mouse_check_button_pressed( mb_right )


//player movement
#region
	//get the direction
	var _horizKey = rightKey - leftKey;
	var _vertKey = downKey - upKey;
	moveDir = point_direction(0, 0, _horizKey, _vertKey);
	
	//get x,y speed
	var _speed = 0;
	var _inputLevel = point_distance(0, 0, _horizKey, _vertKey);
	_inputLevel = clamp(_inputLevel, 0, 1);
	_speed = moveSpeed * _inputLevel;
	
	xspeed = lengthdir_x(_speed, moveDir);
	yspeed = lengthdir_y(_speed, moveDir);
	
	//collision
	if place_meeting(x+xspeed,y, obj_wall)
	{
		xspeed = 0;
	}
	if place_meeting(x,y+yspeed,obj_wall)
	{
		yspeed = 0;
	}
		
	//Move the Player
	x+=xspeed;
	y+=yspeed;
#endregion

//sprite control
#region
	//player aiming
	y_center = y + centerYOffset;
	//aim
	aimDir = point_direction(x, y_center, mouse_x, mouse_y);
	//set correct direction player is facing
	/*face = round(aimDir/90); 
	if face == 4 { face = 0; };
	face is always 3 from the create event */

	// animate sprite (will be necessary for actual art assets)
	if xspeed == 0 && yspeed == 0
	{
		image_index = 0;
	}

	//set player sprites
	mask_index = playerSprite[3];
	sprite_index = playerSprite[face];
#endregion

// weapon swapping
#region
var _player_weapon_inventory = global.player_weapon_inventory
// cycle through weapons
if _swap_key_pressed
{
	// change the selection and wrap around
	selected_weapon++
	if selected_weapon >= array_length( _player_weapon_inventory ) { selected_weapon = 0 }
	// set the new weapon
	weapon = _player_weapon_inventory[selected_weapon]
}
#endregion

// shoot the weapon
#region
if shootTimer > 0 { shootTimer -- }
if shootKey && shootTimer <= 0
{
	// reset the timer
	shootTimer = weapon.cooldown
	
	// create the bullet
	var _xOffset = lengthdir_x( weapon.length + weapon.offset_distance, aimDir )
	var _yOffset = lengthdir_y( weapon.length + weapon.offset_distance, aimDir )

	
	var _spread = weapon.spread
	var _spread_div = _spread / max( 1 , weapon.bullet_num - 1 )
	
	// create the correct number of bullets
	for ( var _num = 0 ; _num < weapon.bullet_num ; _num++ )
	{
		var _bullet_instance = instance_create_depth( x + _xOffset , y_center + _yOffset , depth-100 , weapon.bullet_object )
	
		// change the direction
		with( _bullet_instance )
		{
			dir = other.aimDir - _spread/2 + _spread_div*_num
		}
	}
}
#endregion