// state machine
switch( state )
{
	// wait state
	case "wait":	
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
			attack_timer++
		}
		*/
		wander_timer++
		if wander_timer > wait_time
		{
			// go to wander state
			state = "wander"
			wander_timer = irandom( move_time )
		
			// random wander direction
			dir = point_direction( x , y ,
				x + irandom_range( -wander_distance, wander_distance ) ,
				y+ irandom_range( -wander_distance, wander_distance ) )
		}
		
		// check for attack
		if distance_to_object(obj_player) < notice_distance
		{
			attack_timer++
		}
		if attack_timer > notice_time
		{
			// go to windup state
			state = "charge"
			attack_timer = 0
			image_index = 0
		}
		
	break
	
	// wander state
	case "wander":
		wander_timer++
		spd = wander_spd
		
		if wander_timer > move_time
		{
			state = "wait"
			wander_timer = irandom( wait_time )
		}
		
		// check for attack
		if distance_to_object(obj_player) < notice_distance
		{
			attack_timer++
		}
		if attack_timer > notice_time
		{
			// go to charge state
			state = "charge"
			attack_timer = 0
			image_index = 0
		}
		
	break
	
	// charge state
	case "charge":
		// power up charge
		attack_timer++
		// set charge direction
		spd = 0
		if attack_timer == 1
		{
			// get the player's direction
			if instance_exists (obj_player )
			{
			dir = point_direction( x , y , obj_player.x , obj_player.y )
			}
			sprite_index = sheep_sprite[1]
		}


		// launch after windup time
		if attack_timer > charge_time
		{
			// set the correct speed
			spd = attack_spd
			attack_timer = 0
			state = "attack"
			sprite_index = sheep_sprite[0]
			image_index = 0
			//For Daniel: Enemy attacking sound
			audio_play_sound(snd_enemy_attack, 0, false);
		}
		
	break
	
	/* launch state
	case "launch":

		// attack after launch
		if image_index == 3
		{
			attack_timer = 0
			spd = attack_spd
			state = "attack"
			sprite_index = sheep_sprite[0]
		}
		
	break*/
	
	// attack state
	case "attack":
		// attack the player
		attack_timer++
		
		if place_meeting( x , y , obj_bullet_flashlight)
		{
			spd *= 0.94
		}
		else { spd *= 0.99 }
		// recover and return to state 0
		if attack_timer > attack_time
		{
			// go back to wait state
			state = "recover"
			// reset the timer for new state
			attack_timer = 0
		}

	break
	
	// attack state
	case "recover":
		// attack the player
		attack_timer++
		spd *= 0.9
		// recover and return to state 0
		if attack_timer > recover_time
		{
			// go back to wait state
			state = "wait"
			// reset the timer for new state
			attack_timer = 0
		}

	break
	
	// dead state
	case "dead":
		spd = 0
		var _enemy_sheep_white = instance_create_depth( x , y , depth + 1001 , obj_enemy_sheep_white)
		_enemy_sheep_white.face = face
		instance_destroy()
		
	break
	
	
}

/*if state == 2
{
	if image_index == 5
	{
		spd = attack_spd
		attack_timer = 0
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


// Inherit the parent event
	// getting damaged and dying
event_inherited();

// set image animation speed
if state == "charge"
{
	if image_index < 3 { image_speed = 1 }
	else { image_speed = 0 }
}

// death
if destroy == true
{
	state = "dead"
	// destroy enemy bullet
	/*if instance_exists( bullet_instance ) && bullet_instance.state == 0
	{
		bullet_instance.destroy = true
	}*/
}