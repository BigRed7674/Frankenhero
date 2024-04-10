/// @description Insert description here
// You can write your code in this editor

if instance_exists( obj_player )
{
	switch ( state )
	{
		case "following":
			move_x = obj_player.x
			move_y = obj_player.y
			if distance_to_object( obj_player ) > 0
			{
			spd = move_spd
			}
			else { spd = 0 }
		break
		
		case "attacking":
			timer++
			spd = attack_spd
			//collision
			x_spd = lengthdir_x(spd, dir)
			y_spd = lengthdir_y(spd, dir)
			var _new_x = x + x_spd
			var _new_y = y + y_spd
			// with wall
			if place_meeting( _new_x , _new_y, obj_wall)
			{
				spd = 0
				state = "returning"
				break
			}
			// with enemy
			if place_meeting( _new_x , _new_y , obj_enemy_parent )
			{
				var _enemy = instance_place( _new_x , _new_y , obj_enemy_parent )
				_enemy.dir = dir
				_enemy.spd = spd
				_enemy.attack_timer = 0
				_enemy.state = "recover"
				state = "attack_end"
				break
			}
			// reaches attack destination
			if distance_to_point( move_x , move_y ) < 20
			{
				state = "attack_end"
				break
			}
			if timer > attack_time
			{
				state="attack_end"
				break
			}
		break
		
		case "attack_end":
			timer++
			if timer > return_time
			{
				timer = 0
				spd = 0
				state = "returning"
			}
			
		
		case "returning":
			spd = return_spd
			move_x = obj_player.x
			move_y = obj_player.y
			if distance_to_object( obj_player ) < 5
			{
				state = "following"
			}
		
		break
	}
	
	/*if attacking = false
	{
		
	}
	else
	{
		
		dir = obj_player.aim_dir
		spd = attack_spd
		x_spd = lengthdir_x(spd, dir)
		y_spd = lengthdir_y(spd, dir)
		//collision
		if place_meeting( x + x_spd , y , obj_wall )
		{
			x_spd = 0
		}
		if place_meeting( x , y + y_spd , obj_wall )
		{
			y_spd = 0
		}
		//Move the Ally
		x += x_spd;
		y += y_spd;

	}*/
}


move_towards_point( move_x , move_y , spd)


dir = point_direction( x , y , move_x , move_y )
// get the correct face
if dir > 90 && dir < 270 { face = -1 }
else { face = 1 }