// state machine
switch( state )
{
	// wait state
	case "wait":	
		// set the correct speed
		spd = 0
		image_index = 0
		
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
			// go to attack state
			state = "attack"
			spd = attack_spd
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
			state = "attack"
			spd = attack_spd
			attack_timer = 0
			image_index = 0
		}
		
	break
	
	// attack state
	case "attack":
		// attack the player
		attack_timer++
		
		// set direction
		if attack_timer % shoot_time == 1
		{
			// get the player's direction
			if instance_exists (obj_player )
			{
			dir = point_direction( x , y , obj_player.x , obj_player.y )
			}
			dir += irandom_range( -attack_angle , attack_angle )
		}
		
		spd *= 0.99
		
		if attack_timer % (shoot_time*2) == 1
		{
			var _bullet_goose = instance_create_depth( x , y - sprite_height/2  , depth - 999 , obj_bullet_goose)
			_bullet_goose.state = "shoot"
		}
		
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
		instance_destroy()
		
	break
	
	
}

// Inherit the parent event
	// movement, damaged, and dying
event_inherited();

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