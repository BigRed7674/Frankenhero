// state machine
switch( state )
{
	// wait state
	case 0:	
		// set the correct speed
		spd = 0
		image_index = 0
		
		/*
		// transition to state 1
		var _cam_left = camera_get_view_x( view_camera[0] )
		var _cam_right = _cam_left + camera_get_view_width( view_camera[0] )
		var _cam_top = camera_get_view_y( view_camera[0] )
		var _cam_bot = _cam_top + camera_get_view_height( view_camera[0] )
		// only add to timer if onscreen
		if bbox_right > _cam_left && bbox_left < _cam_right &&
			bbox_bottom > _cam_top && bbox_top < _cam_bot
		{
			charge_timer++
		}
		*/
		wander_timer++
		if wander_timer > wait_time
		{
			// go to wander state
			state = 1
			wander_timer = irandom( move_time )
		
			// random wander direction
			dir = point_direction( x , y ,
				x + irandom_range( -wander_distance, wander_distance ) ,
				y+ irandom_range( -wander_distance, wander_distance ) )
		}
		
		// check for charge
		if distance_to_object(obj_player) < notice_distance
		{
			charge_timer++
		}
		if charge_timer > notice_time
		{
			// go to windup state
			state = 2
			charge_timer = 0
			image_index = 0
		}
		
	break
	
	// wander state
	case 1:
		wander_timer++
		spd = wander_spd
		
		if wander_timer > move_time
		{
			state = 0
			wander_timer = irandom( wait_time )
		}
		
		// check for charge
		if distance_to_object(obj_player) < notice_distance
		{
			charge_timer++
		}
		if charge_timer > notice_time
		{
			// go to windup state
			state = 2
			charge_timer = 0
			image_index = 0
		}
		
	break
	
	// windup state
	case 2:
		// power up charge
		charge_timer++
		// set charge direction
		spd = 0
		if charge_timer == 1
		{
			// get the player's direction
			if instance_exists (obj_player )
			{
			dir = point_direction( x , y , obj_player.x , obj_player.y )
			}
			sprite_index = sheep_sprite[1]
		}


		// charge after windup time
		if charge_timer > windup_time
		{
			// set the correct speed
			spd = charge_spd
			charge_timer = 0
			state = 3
			sprite_index = sheep_sprite[0]
			image_index = 0
		}
		
	break
	
	// charge state
	case 3:
		// charge the player
		charge_timer++
		spd *= 0.97
		
		// recover and return to state 0
		if charge_timer > recover_time
		{
			// go back to chase state
			state = 0
			// reset the timer for new state
			charge_timer = 0
			notice_time *= 1.5
		}

	break
	
	// death state
	case 4:
		spd = 0
		var _ally_sheep = instance_create_depth( x , y , depth - 1 , obj_ally_sheep)
		with (_ally_sheep)
		{
			image_speed = 0
		}
		_ally_sheep.face = face
		instance_destroy()
	break
	
	
}

// set image animation speed
image_speed = spd
if state == 2
{
	if image_index < 3 { image_speed = 1 }
	else { image_speed = 0 }
}
/*if state == 2
{
	if image_index == 5
	{
		spd = charge_spd
		charge_timer = 0
		state = 3
		sprite_index = sheep_sprite[0]
		image_index = 0
	}
	else if image_index < 3
	{
		image_speed = 1
	}
	else { image_speed = 2 }
}*/

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
	spd *= 0.1
}
if place_meeting( x , y + y_spd , obj_wall )
|| place_meeting( x , y + y_spd , obj_enemy_parent)
{
	y_spd = 0
	spd *= 0.1
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
	state = 4
	// destroy enemy bullet
	if instance_exists( bullet_instance ) && bullet_instance.state == 0
	{
		bullet_instance.destroy = true
	}
}