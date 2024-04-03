// state machine
switch( state )
{
	// idle state
	case 0:	
				// set the correct speed
		spd = 0
		
		// transition to state 1
		var _cam_left = camera_get_view_x( view_camera[0] )
		var _cam_right = _cam_left + camera_get_view_width( view_camera[0] )
		var _cam_top = camera_get_view_y( view_camera[0] )
		var _cam_bot = _cam_top + camera_get_view_height( view_camera[0] )
		// only add to timer if onscreen
		if bbox_right > _cam_left && bbox_left < _cam_right &&
			bbox_bottom > _cam_top && bbox_top < _cam_bot
		{
			shoot_timer++
		}
		if shoot_timer > cooldown_time
		{
			// go to charge state
			state = 1
			// reset timer for new state
			shoot_timer = 0
		}
		
	break
	
	// charge state
	case 1:
		// charge the player
		shoot_timer++
		// set charge direction
		if shoot_timer == 1
		{
			// get the player's direction
			if instance_exists (obj_player )
			{
			dir = point_direction( x , y , obj_player.x , obj_player.y )
			}
			spd = chase_spd
		}

		// charge after windup time
		if shoot_timer == windup_time
		{
			// set the correct speed
			spd = charge_spd
		}
		// recover and return to state 0
		if place_meeting( x , y, obj_wall )
		{
			spd *= 0.1
		}
		else if shoot_timer > windup_time + charge_time
		{
			spd *= 0.9
		}
		if shoot_timer > windup_time + charge_time + recover_time
		{
			// go back to chase state
			state = 0
			// reset the timer for new state
			shoot_timer = 0
		}
	
	break
	
	// death state
	case 2:
		spd = 0
		image_index = 1
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
|| place_meeting( x + x_spd , y , obj_enemy_parent)
{
	x_spd = 0
}
if place_meeting( x , y + y_spd , obj_wall )
|| place_meeting( x , y + y_spd , obj_enemy_parent)
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
// death
if destroy == true
{
	state = 2
	// destroy enemy bullet
	if instance_exists( bullet_instance ) && bullet_instance.state == 0
	{
		bullet_instance.destroy = true
	}
}