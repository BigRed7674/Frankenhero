//get user inputs
var _right_key = global.rightkey;
var _left_key = global.leftkey;
var _up_key = global.upkey;
var _down_key = global.downkey;
var _shoot_key = global.shootkey;


// for ability testing, comment _swap_key_pressed for submission
var _swap_key_pressed = mouse_check_button_pressed( mb_right )


//player movement
#region
	
	//get the direction
	var _horiz_key = _right_key - _left_key
	var _vert_key = _down_key - _up_key
	move_dir = point_direction(0, 0, _horiz_key, _vert_key)
	
	//get x,y speed
	var _speed = 0;
	var _input_level = point_distance(0, 0, _horiz_key, _vert_key)
	_input_level = clamp(_input_level, 0, 1)
	_speed = move_speed * _input_level
	
	x_speed = lengthdir_x(_speed, move_dir)
	y_speed = lengthdir_y(_speed, move_dir)
	
	//collision
	if place_meeting( x + x_speed , y , obj_wall )
	{
		x_speed = 0
	}
	if place_meeting( x , y + y_speed , obj_wall )
	{
		y_speed = 0
	}
	if (x_speed != 0 || y_speed != 0)
	{
		walking_count += 1;
		if walking_count == 17
		{
			walking_count = 0;
			audio_play_sound(snd_walking, 0, false);
		}
	} else {
		walking_count = 0;
	}	
	//Move the Player
	x += x_speed;
	y += y_speed;
#endregion

//sprite control
#region
	//player aiming
	y_center = y + y_center_offset;
	//aim
	aim_dir = point_direction(x, y_center, mouse_x, mouse_y);
	//set correct direction player is facing
	face = round(aim_dir/90); 
	if face == 4 { face = 0; };
	/*face is always 3 from the create event */

	// animate sprite (will be necessary for actual art assets)
	if x_speed == 0 && y_speed == 0
	{
		image_index = 0;
	}

	//set player sprites
	mask_index = player_sprite[3];
	sprite_index = player_sprite[face];
	
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
if shoot_timer > 0 { shoot_timer -- }

if (_shoot_key && shoot_timer <= 0)
{
	// flashlight bullet
	if room_get_name(room) == "rm_sheep"
	
	{
		// reset the timer
		shoot_timer = weapon.cooldown
	
		// create the bullet
		var _x_offset = lengthdir_x( weapon.length + weapon.offset_distance, aim_dir )
		var _y_offset = lengthdir_y( weapon.length + weapon.offset_distance, aim_dir )

	
		var _spread = weapon.spread
		var _spread_div = _spread / max( 1 , weapon.bullet_num - 1 )
		
		// create the correct number of bullets
		for ( var _num = 0 ; _num < weapon.bullet_num ; _num++ )
		{
			var _bullet_instance = instance_create_depth( x + _x_offset , y_center + _y_offset , depth-100 , weapon.bullet_object )
	
			// change the direction
			with( _bullet_instance )
			{
				dir = other.aim_dir - _spread/2 + _spread_div*_num
			}
		}
		audio_play_sound(snd_flashlight, 0, false);
	}
	// ally sheep
	if room_get_name(room) == "rm_credits"
	{
		// reset the timer
		shoot_timer = 1
	
		if instance_exists(player_ally[0])
		{
			if ( player_ally[0].state = "following" )
			{
				player_ally[0].state = "attacking"
				player_ally[0].move_x = mouse_x
				player_ally[0].move_y = mouse_y
				player_ally[0].dir = aim_dir
			}
		}

	}
}
#endregion

//player damage
#region
if (invincible > 0)
{
	invincible--;
	if invincible mod 5 == 0
	{
		if image_alpha == 1
		{
			image_alpha = 0;
		} else {
			image_alpha = 1;
		}
	}
}

// damage from bullet
if place_meeting( x , y , obj_damage_player )
{
	var _inst = instance_place( x , y , obj_damage_player )
	
	if invincible == 0
	{
		// take damage from specific instance
		hp -= _inst.damage;
		invincible = itime;
	}
	
	// tell the damage instance to destroy itself
	_inst.destroy = true;
	
}

// damage from charge
if place_meeting( x , y, obj_enemy_parent )
{
	var _inst = instance_place( x , y , obj_enemy_parent )
	
	if invincible == 0
	{
		// take damage from specific instance
		hp -= _inst.damage;
		invincible = itime;
	}
	

}

//death / game over
if hp <= 0
{
	instance_create_depth(0, 0, -10000, obj_game_over);
	//destroy ourself
	instance_destroy();
}
#endregion
