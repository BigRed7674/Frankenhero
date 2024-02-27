//get user inputs
rightKey = keyboard_check( ord("D") );
leftKey = keyboard_check(ord("A"));
upKey = keyboard_check(ord("W"));
downKey = keyboard_check(ord("S"));
shootKey = mouse_check_button( mb_left )



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
	centerY = y + centerYOffset;
	//aim
	aimDir = point_direction(x, centerY, mouse_x, mouse_y);
	//set correct direction player is facing
	//face = round(aimDir/90); 
	//if face == 4 { face = 0; };
	// for now, face is always 3 from the create event

	// animate sprite (will be necessary for actual art assets)
	if xspeed == 0 && yspeed == 0
	{
		image_index = 0;
	}

	//set player sprites
	mask_index = playerSprite[3];
	sprite_index = playerSprite[face];
#endregion
// shoot the weapon
#region
if shootTimer > 0 { shootTimer -- }
if shootKey && shootTimer <= 0
{
	// reset the timer
	shootTimer = weapon.cooldown
	
	// create the bullet
	var _xOffset = lengthdir_x( weapon.length + weaponOffsetDist, aimDir )
	var _yOffset = lengthdir_y( weapon.length + weaponOffsetDist, aimDir )
	var _bulletInst = instance_create_depth( x + _xOffset , centerY + _yOffset , depth-100 , weapon.bulletObj )
	
	// change the direction
	with( _bulletInst )
	{
		dir = other.aimDir
	}
}
#endregion