// state machine
switch( state )
{
	// chase state
	case 0:	
		// get the player's direction
		if instance_exists (obj_player )
		{
			dir = point_direction( x , y , obj_player.x , obj_player.y )
		}
		// set the correct speed
		spd = chase_spd
		
		// transition to state 1
		var _camLeft = camera_get_view_x( view_camera[0] )
		var _camRight = _camLeft + camera_get_view_width( view_camera[0] )
		var _camTop = camera_get_view_y( view_camera[0] )
		var _camBottom = _camTop + camera_get_view_height( view_camera[0] )
		// only add to timer if onscreen
		if bbox_right > _camLeft && bbox_left < _camRight &&
			bbox_bottom > _camTop && bbox_top < _camBottom
		{
			shootTimer++
		}
		if shootTimer > cooldownTime
		{
			// go to shoot state
			state = 1
			// reset timer for new state
			shootTimer = 0
		}
		
	break
	
	// pause and shoot state
	case 1:
		// get the player's direction
		if instance_exists (obj_player )
		{
			dir = point_direction( x , y , obj_player.x , obj_player.y )
		}
		
		// set the correct speed
		spd = 0
		
		// stop animating / manually set the image index
		image_index = 0
		
		// shoot a bullet
		shootTimer++
		// create a bullet
		if shootTimer == 1
		{
			bulletInst = instance_create_depth( x + bulletXoffset*face ,
						y + bulletYoffset , depth , obj_bulletEnemy )
		}
		// keep the bullet in correct position
		if shootTimer < windupTime && instance_exists( bulletInst )
		{
			bulletInst.x = x + bulletXoffset*face
		}
		// shoot the bullet after windup time
		if shootTimer == windupTime && instance_exists( bulletInst )
		{
			// set bullet state to movement
			bulletInst.state = 1
		}
		// recover and return to state 0
		if shootTimer > windupTime + recoverTime
		{
			// go back to chase state
			state = 0
			// reset the timer for new state
			shootTimer = 0
		}
		
	break
}

// chase player

// getting the speeds
x_spd = lengthdir_x( spd , dir )
y_spd = lengthdir_y( spd , dir )

// get the correct face
if dir > 90 && dir < 270 { face = -1 }
else { face = 1 }

// collisions
if place_meeting( x + x_spd , y , obj_wall )
|| place_meeting( x + x_spd , y , obj_enemyParent)
{
	x_spd = 0
}
if place_meeting( x , y + y_spd , obj_wall )
|| place_meeting( x , y + y_spd , obj_enemyParent)
{
	y_spd = 0
}

// moving
x += x_spd
y += y_spd

// set the depth
depth = -y


// Inherit the parent event
	// getting damaged and dying
event_inherited();